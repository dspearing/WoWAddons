local addonName, addon = ...

local CLASSIC = select(4, GetBuildInfo()) < 100000

local GetContainerItemLink = GetContainerItemLink or C_Container.GetContainerItemLink -- 10.0.2

local Molinari = CreateFrame('Button', addonName, UIParent, 'SecureActionButtonTemplate, SecureHandlerStateTemplate, SecureHandlerEnterLeaveTemplate, AutoCastShineTemplate')
Molinari:RegisterForClicks('AnyUp', 'AnyDown') -- we need to register both in Dragonflight, doesn't seem to hurt in older expansions
Molinari:SetFrameStrata('TOOLTIP')
Molinari:Hide()

-- inject event handler
Mixin(Molinari, addon.eventMixin)

local LibProcessable = LibStub('LibProcessable')

-- ugly hack as there is no target-bag/slot equivalent for the trade window
local MACRO_TRADE = [[
/cast %s
/run ClickTargetTradeButton(7)
]]
function Molinari:ApplySpell(itemLink, spellID, r, g, b)
	local bagID, slotID = self:GetBagAndSlotID()
	if bagID and slotID and GetContainerItemLink(bagID, slotID) == itemLink then
		self:SetAttribute(self:GetModifier() .. '-type1', 'spell')
		self:SetAttribute('spell', spellID)

		self:SetAttribute('target-bag', bagID)
		self:SetAttribute('target-slot', slotID)
	elseif GetTradeTargetItemLink(7) == itemLink then
		self:SetAttribute(self:GetModifier() .. '-type1', 'macro')
		self:SetAttribute('macrotext', MACRO_TRADE:format((GetSpellInfo(spellID))))

		-- store the item link so we can use it for the tooltip
		self.itemLink = itemLink
	else
		return
	end

	self:SetAttribute('_entered', true)

	self:SetGlowColor(r, g, b)
	self:Attach()
	self:Show()
end

function Molinari:ApplyItem(_, itemID, r, g, b)
	local bagID, slotID = self:GetBagAndSlotID()
	if not bagID or not slotID then
		return
	end

	self:SetAttribute(self:GetModifier() .. '-type1', 'item')
	self:SetAttribute('item', 'item:' .. itemID)

	self:SetAttribute('target-bag', bagID)
	self:SetAttribute('target-slot', slotID)

	self:SetAttribute('_entered', true)

	self:SetGlowColor(r, g, b)
	self:Attach()
	self:Show()
end

-- to prospect or mill since the 10.0.0 patch we need to cast the expansion-specific milling spell
-- for a given ore or herb, which is not a spell but rather a tradeskill recipe. we'll use the
-- tradeskill API for salvaging items to do this, which requires a hardware event, hence the macro.
local MACRO_TRADESKILL = '/run C_TradeSkillUI.CraftSalvage(%d, 1, ItemLocation:CreateFromBagAndSlot(%d, %d))'
function Molinari:ApplyTradeSkill(itemLink, recipeSpellID, r, g, b)
	local bagID, slotID = self:GetBagAndSlotID()
	if not bagID or not slotID then
		return
	end

	if GetContainerItemLink(bagID, slotID) ~= itemLink then
		return
	end

	self:SetAttribute(self:GetModifier() .. '-type1', 'macro')
	self:SetAttribute('macrotext', MACRO_TRADESKILL:format(recipeSpellID, bagID, slotID))

	self:SetAttribute('target-bag', bagID)
	self:SetAttribute('target-slot', slotID)

	self:SetAttribute('_entered', true)

	self:SetGlowColor(r, g, b)
	self:Attach()
	self:Show()
end

function Molinari:GetBagAndSlotID()
	local parent = GetMouseFocus()
	if not parent then
		return
	end

	local bagID, slotID
	if parent.GetSlotAndBagID then
		-- this is the preferred API to use, added in Dragonflight, as it's 100% accurate
		slotID, bagID = parent:GetSlotAndBagID()
	elseif parent.GetBagID then
		-- the above is preferred
		bagID = parent:GetBagID()
		slotID = parent:GetID()
	elseif parent.GetID then
		-- TODO: remove this section if classic starts using the above APIs,
		--       it'll be up to bag addons to support the same API then
		local grandParent = parent:GetParent()
		if grandParent and grandParent.GetID then
			-- this is a complete guesswork, bag addons should implement one of the two above APIs
			bagID = grandParent:GetID()
			slotID = parent:GetID()
		end
	end

	if bagID and bagID >= 0 and slotID and slotID >= 0 then
		return bagID, slotID
	end
end

function Molinari:Attach()
	self:ClearAllPoints()
	self:SetAllPoints(GetMouseFocus())
end

function Molinari:SetGlowColor(r, g, b)
	self.color = CreateColor(r, g, b)
end

function Molinari:GetGlowColor()
	return self.color
end

function Molinari:GetModifier()
	local modifier = addon.db.profile.general.modifierKey
	if modifier == 'CTRL' then
		return 'alt-ctrl'
	elseif modifier == 'SHIFT' then
		return 'alt-shift'
	else
		-- the default
		return 'alt'
	end
end

function Molinari:GetModifierCondition()
	local modifier = addon.db.profile.general.modifierKey
	if modifier == 'CTRL' then
		return '[mod:alt,mod:ctrl]'
	elseif modifier == 'SHIFT' then
		return '[mod:alt,mod:shift]'
	else
		-- the default
		return '[mod:alt]'
	end
end

-- hook show/hide/leave to apply/remove glow
Molinari:HookScript('OnLeave', AutoCastShine_AutoCastStop)
Molinari:HookScript('OnHide', AutoCastShine_AutoCastStop)
Molinari:HookScript('OnShow', function(self)
	AutoCastShine_AutoCastStart(self, self:GetGlowColor():GetRGB())
end)

-- use SecureHandlerEnterLeaveTemplate to securely deactivate whenever the mouse leaves the item
Molinari:SetAttribute('_onleave', 'self:ClearAllPoints() self:Hide()')

-- use SecureHandlerStateTemplate to securely deactivate whenever the modifier key is released
Molinari:SetAttribute('_onstate-visible', [[
	if(newstate == 'hide' and self:IsShown()) then
		self:ClearAllPoints()
		self:Hide()
	end
]])

-- pass through clicks that are not handled by us
Molinari:HookScript('OnClick', function(self, button, down)
	if button ~= 'LeftButton' then
		local _, parent = self:GetPoint()
		if parent then
			local onClick = parent:GetScript('OnClick')
			if onClick then
				onClick(parent, button, down)
			end

			local onMouseDown = parent:GetScript('OnMouseDown')
			if down and onMouseDown then
				onMouseDown(parent, button)
			end

			local onMouseUp = parent:GetScript('OnMouseUp')
			if not down and onMouseUp then
				onMouseUp(parent, button)
			end
		end
	end
end)

function Molinari:UpdateStateDriver()
	if InCombatLockdown() then
		-- wait with registering the state driver until we leave combat
		self:RegisterEvent('PLAYER_REGEN_ENABLED', self.UpdateStateDriver)
	else
		-- register visibility state so we can securely deactivate whenever the modifier key is released
		RegisterStateDriver(self, 'visible', self:GetModifierCondition() .. ' show; hide')

		if self:IsEventRegistered('PLAYER_REGEN_ENABLED', self.UpdateStateDriver) then
			self:UnregisterEvent('PLAYER_REGEN_ENABLED', self.UpdateStateDriver)
		end
	end
end

local function shouldActivate(itemLink)
	if not itemLink then
		return false
	elseif InCombatLockdown() then
		return false
	elseif UnitHasVehicleUI and UnitHasVehicleUI('player') then
		return false
	elseif EquipmentFlyoutFrame and EquipmentFlyoutFrame:IsVisible() then
		return false
	elseif AuctionFrame and AuctionFrame:IsVisible() then
		return false
	elseif AuctionHouseFrame and AuctionHouseFrame:IsVisible() then
		return false
	elseif not IsAltKeyDown() then
		return false
	elseif addon.db.profile.general.modifierKey == 'CTRL' and not IsControlKeyDown() then
		return false
	elseif addon.db.profile.general.modifierKey == 'SHIFT' and not IsShiftKeyDown() then
		return false
	end

	return true
end

local function handleItem(itemLink)
	if not shouldActivate(itemLink) then
		-- there are a lot of conditions that we look for to _not_ activate
		return
	end

	local itemID = GetItemInfoFromHyperlink(itemLink)
	if not itemID or addon.db.profile.blocklist.items[itemID] then
		-- don't activate on invalid items
		return
	end

	local isMillable, millingSpellID, useMortar = LibProcessable:IsMillable(itemID)
	if isMillable and GetItemCount(itemID) >= 5 then
		if useMortar then
			Molinari:ApplyItem(itemLink, 114942, 1/2, 1, 1/2)
		elseif CLASSIC then
			Molinari:ApplySpell(itemLink, 51005, 1/2, 1, 1/2)
		elseif millingSpellID then
			Molinari:ApplyTradeSkill(itemLink, millingSpellID, 1/2, 1, 1/2)
		end
		return
	end

	local isProspectable, prospectingSpellID = LibProcessable:IsProspectable(itemID)
	if isProspectable and GetItemCount(itemID) >= 5 then
		if CLASSIC then
			Molinari:ApplySpell(itemLink, 31252, 1, 1/3, 1/3)
		elseif prospectingSpellID then
			Molinari:ApplyTradeSkill(itemLink, prospectingSpellID, 1, 1/3, 1/3)
		end
		return
	end

	if LibProcessable:IsDisenchantable(itemLink) then
		Molinari:ApplySpell(itemLink, 13262, 1/2, 1/2, 1)
		return
	end

	local isOpenable, spellID = LibProcessable:IsOpenable(itemID)
	if isOpenable then
		Molinari:ApplySpell(itemLink, spellID, 0, 1, 1)
		return
	end

	local isOpenableProfession, keyItemID = LibProcessable:IsOpenableProfession(itemID)
	if isOpenableProfession then
		Molinari:ApplyItem(itemLink, keyItemID, 0, 1, 1)
		return
	end

	local isScrappable, scrappingSpellID = LibProcessable:IsScrappable(itemID)
	if isScrappable and GetItemCount(itemID) >= 5 then
		Molinari:ApplyTradeSkill(itemLink, scrappingSpellID, 1/5, 1/5, 1/5)
		return
	end
end

if select(4, GetBuildInfo()) >= 100002 then
	TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Item, function(tooltip, data)
		if tooltip:GetOwner() == Molinari then
			-- avoid triggering on ourselves
			return
		end

		local itemLink = data.guid and C_Item.GetItemLinkByGUID(data.guid) or data.hyperlink
		if itemLink then
			handleItem(itemLink)
		end
	end)
else
	GameTooltip:HookScript('OnTooltipSetItem', function(self)
		if self:GetOwner() == Molinari then
			-- avoid triggering on ourselves
			return
		end

		local _, itemLink = self:GetItem()
		handleItem(itemLink)
	end)
end

-- adjust the glow sparkles
for _, sparkle in next, Molinari.sparkles do
	sparkle:SetHeight(sparkle:GetHeight() * 3)
	sparkle:SetWidth(sparkle:GetWidth() * 3)
end

-- tooltip
Molinari:HookScript('OnLeave', GameTooltip_Hide)
Molinari:SetScript('OnEnter', function(self)
	if(self:GetRight() >= (GetScreenWidth() / 2)) then
		GameTooltip:SetOwner(self, 'ANCHOR_LEFT')
	else
		GameTooltip:SetOwner(self, 'ANCHOR_RIGHT')
	end

	if self.itemLink then
		-- this is only ever triggered by the trade skill window
		GameTooltip:SetHyperlink(self.itemLink)
	else
		GameTooltip:SetBagItem(self:GetAttribute('target-bag'), self:GetAttribute('target-slot'))
	end
end)

Molinari:RegisterEvent('PLAYER_LOGIN', function(self)
	-- attempt to register our state driver
	self:UpdateStateDriver()
end)

Molinari:RegisterEvent('BAG_UPDATE_DELAYED', function(self)
	-- hide securely whenever a bag update occurs
	if self:IsShown() and not InCombatLockdown() then
		self:Hide()
	end
end)

Molinari:RegisterEvent('MODIFIER_STATE_CHANGED', function(self)
	-- the state driver doesn't trigger a mouse movement, so we'll update the tooltip whenever
	-- the modifier changes
	if self:IsShown() then
		self:GetScript('OnEnter')(self)
	end
end)