local L = LibStub("AceLocale-3.0"):GetLocale("IceHUD", false)
IceCustomHealth = IceCore_CreateClass(IceTargetHealth)

-- Constructor --
function IceCustomHealth.prototype:init()
	IceCustomHealth.super.prototype.init(self, "IceCustomHealth", "focustarget")

-- these aren't working...don't know why
--[[	self:SetDefaultColor("CustomHealthHostile", 231, 31, 36)
	self:SetDefaultColor("CustomHealthFriendly", 46, 223, 37)
	self:SetDefaultColor("CustomHealthNeutral", 210, 219, 87)
]]--
end

function IceCustomHealth.prototype:GetDefaultSettings()
	local settings = IceCustomHealth.super.prototype.GetDefaultSettings(self)

	settings["side"] = IceCore.Side.Left
	settings["offset"] = -3
	settings["classColor"] = false
	settings["barVerticalOffset"] = 0
	settings["scale"] = 1
	settings["customBarType"] = "Health"
	settings["unitToTrack"] = "focustarget"

	return settings
end


-- OVERRIDE
function IceCustomHealth.prototype:GetOptions()
	local opts = IceCustomHealth.super.prototype.GetOptions(self)

	opts["hideBlizz"] = nil

	opts["customHeader"] = {
		type = 'header',
		name = L["Custom bar settings"],
		order = 30.1,
	}

	opts["deleteme"] = {
		type = 'execute',
		name = L["Delete me"],
		desc = L["Deletes this custom module and all associated settings. Cannot be undone!"],
		func = function()
			local dialog = StaticPopup_Show("ICEHUD_DELETE_CUSTOM_MODULE")
			if dialog then
				dialog.data = self
			end
		end,
		order = 20.1,
	}

	opts["duplicateme"] = {
		type = 'execute',
		name = L["Duplicate me"],
		desc = L["Creates a new module of this same type and with all the same settings."],
		func = function()
			IceHUD:CreateCustomModuleAndNotify(self.moduleSettings.customBarType, self.moduleSettings)
		end,
		order = 20.2,
	}

	opts["type"] = {
		type = "description",
		name = string.format("%s %s", L["Module type:"], tostring(self:GetBarTypeDescription("Health"))),
		order = 21,
	}

	opts["name"] = {
		type = 'input',
		name = L["Bar name"],
		desc = L["The name of this bar (must be unique!).\n\nRemember to press ENTER after filling out this box with the name you want or it will not save."],
		get = function()
			return self.elementName
		end,
		set = function(info, v)
			if v~= "" then
				IceHUD.IceCore:RenameDynamicModule(self, v)
			end
		end,
		disabled = function()
			return not self.moduleSettings.enabled
		end,
		usage = "<a name for this bar>",
		order = 30.3,
	}

	opts["unitToTrack"] = {
		type = 'input',
		name = L["Unit to track"],
		desc = L["Enter which unit that this bar should be monitoring the health of (e.g.: focustarget, pettarget, etc.)\n\nRemember to press ENTER after filling out this box with the name you want or it will not save."],
		get = function()
			return self.moduleSettings.unitToTrack
		end,
		set = function(info, v)
			v = string.lower(v)
			self.moduleSettings.unitToTrack = v
			self:SetUnit(v)
			self:Redraw()
			self:CheckCombat()
		end,
		disabled = function()
			return not self.moduleSettings.enabled
		end,
		order = 30.4,
	}

	return opts
end


function IceCustomHealth.prototype:Enable(core)
	--self.registerEvents = false
	IceCustomHealth.super.prototype.Enable(self, core)

	self:SetUnit(self.moduleSettings.unitToTrack)
	self:CreateFrame()
end

function IceCustomHealth.prototype:MyOnUpdate()
	IceCustomHealth.super.prototype.MyOnUpdate(self)

	if UnitExists(self.unit) then
		self:Update()
	end
end

function IceCustomHealth.prototype:Update(unit)
	self.color = "CustomHealthFriendly" -- friendly > 4

	local reaction = UnitReaction(self.unit, "player")

	if (reaction and (reaction == 4)) then
		self.color = "CustomHealthNeutral"
	elseif (reaction and (reaction < 4)) then
		self.color = "CustomHealthHostile"
	end

	if (self.moduleSettings.classColor) and (not self.moduleSettings.npcHostilityColor or UnitPlayerControlled("target")) then
		self.color = self.unitClass
	end

	if (self.moduleSettings.scaleHealthColor) then
		self.color = "ScaledHealthColor"
	elseif self.moduleSettings.lowThresholdColor and self.healthPercentage and self.healthPercentage <= self.moduleSettings.lowThreshold then
		self.color = "ScaledHealthColor"
	end

	if (self.tapped) then
		self.color = "Tapped"
	end

	--self.determineColor = false
	IceCustomHealth.super.prototype.Update(self, self.unit)
end

function IceCustomHealth.prototype:SetUnit(unit)
	IceCustomHealth.super.prototype.SetUnit(self, unit)
	if self.frame ~= nil and self.frame.button ~= nil then
		self.frame.button:SetAttribute("unit", self.unit)
	end
	self:RegisterFontStrings()
end

function IceCustomHealth.prototype:OnShow()
	IceCustomHealth.super.prototype.OnShow(self)
	self:Update(self.unit)
end
