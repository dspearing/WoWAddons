local _, addon = ...

function addon:GetBagAndSlotID(parent)
	-- wrapper for the multitudes for APIs that exist for getting bag and slot IDs
	if not parent then
		return
	end

	local bagID, slotID
	if parent.GetSlotAndBagID then
		-- this is the preferred API to use, added in Dragonflight, as it's 100% accurate
		slotID, bagID = parent:GetSlotAndBagID()
	elseif parent.GetBagID then
		-- still accurate, but requires two calls, the above is preferred
		bagID = parent:GetBagID()
		slotID = parent:GetID()
	elseif parent.GetID then
		-- this is still required to support classic, and is prone to errors
		local grandParent = parent:GetParent()
		if grandParent and grandParent.GetID then
			-- bag addons should implement one of the two above APIs
			bagID = grandParent:GetID()
			slotID = parent:GetID()
		end
	end

	if bagID and bagID >= 0 and slotID and slotID >= 0 then
		return bagID, slotID
	end
end

function addon:HookTooltip(callback)
	if addon:IsRetail() then
		TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Item, function(tooltip, data)
			local itemLink = data.guid and C_Item.GetItemLinkByGUID(data.guid) or data.hyperlink
			if itemLink then
				callback(tooltip, itemLink)
			end
		end)
	else
		GameTooltip:HookScript('OnTooltipSetItem', function(tooltip)
			local _, itemLink = tooltip:GetItem()
			if itemLink then
				callback(tooltip, itemLink)
			end
		end)
	end
end
