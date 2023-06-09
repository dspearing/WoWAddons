--[[

	This file is part of 'Masque', an add-on for World of Warcraft. For bug reports,
	documentation and license information, please visit https://github.com/SFX-WoW/Masque.

	* File...: Options\General.lua
	* Author.: StormFX

	'General Settings' Group/Panel

]]

local MASQUE, Core = ...

----------------------------------------
-- WoW API
---

local ReloadUI = ReloadUI

----------------------------------------
-- Internal
---

-- @ Options\Core
local Setup = Core.Setup

----------------------------------------
-- Setup
---

-- Creates the 'General Settings' group/panel.
function Setup.General(self)
	-- @ Locales\enUS
	local L = self.Locale

	-- @ Masque
	local CRLF = Core.CRLF

	local Reload = "\n|cff0099ff"..L["Requires an interface reload."].."|r"
	local Tooltip = "|cffffffff"..L["Select to view."].."|r"

	local Options = {
		type = "group",
		name = L["General Settings"],
		order = 2,
		args = {
			Head = {
				type = "header",
				name = MASQUE.." - "..L["General Settings"],
				hidden = self.GetStandAlone,
				order = 0,
				disabled = true,
				dialogControl = "SFX-Header",
			},
			Desc = {
				type = "description",
				name = L["This section will allow you to adjust Masque's interface and performance settings."]..CRLF,
				order = 1,
				fontSize = "medium",
			},
			Interface = {
				type = "group",
				name = L["Interface"],
				desc = Tooltip,
				order = 2,
				args = {
					Head = {
						type = "header",
						name = L["Interface Settings"],
						order = 0,
						disabled = true,
						dialogControl = "SFX-Header",
					},
					Desc = {
						type = "description",
						name = L["This section will allow you to adjust settings that affect Masque's interface."]..CRLF,
						order = 1,
						fontSize = "medium",
					},
					Standlone = {
						type = "toggle",
						name = L["Stand-Alone GUI"],
						desc = L["Use a resizable, stand-alone options window."],
						get = function() return Core.db.profile.StandAlone end,
						set = function(i, v) Core.db.profile.StandAlone = v end,
						order = 3,
					},
					Sort = {
						type = "toggle",
						name = L["Alternate Sorting"],
						desc = L["Causes the skins included with Masque to be listed above third-party skins."],
						get = function() return Core.db.profile.AltSort end,
						set = function(i, v) Core.db.profile.AltSort = v end,
						order = 4,
					},
					Icon = {
						type = "select",
						name = L["Menu Icon"],
						desc = L["Select where Masque's menu icon is displayed."],
						values = {
							[0] = L["None"],
							[1] = L["Minimap"],
							[2] = L["Add-On Compartment"],
						},
						get = function()
							return Core.db.profile.LDB.position or 0
						end,
						set = function(i, v)
							local LDBI = Core.LDBI
							if v == 1 then
								LDBI:Show(MASQUE)
								LDBI:RemoveButtonFromCompartment(MASQUE)
							elseif v == 2 then
								LDBI:Hide(MASQUE)
								LDBI:AddButtonToCompartment(MASQUE)
							else
								LDBI:Hide(MASQUE)
								LDBI:RemoveButtonFromCompartment(MASQUE)
							end
							Core.db.profile.LDB.position = v
						end,
						order = 5,
						disabled = function() return not Core.LDBI end,
					},
				},
			},
			Performance = {
				type = "group",
				name = L["Performance"],
				desc = Tooltip,
				order = 3,
				args = {
					Head = {
						type = "header",
						name = L["Performance Settings"],
						order = 1,
						disabled = true,
						dialogControl = "SFX-Header",
					},
					Desc = {
						type = "description",
						name = L["This section will allow you to adjust settings that affect Masque's performance."]..CRLF,
						order = 2,
						fontSize = "medium",
					},
					SkinInfo = {
						type = "toggle",
						name = L["Skin Information"],
						desc = L["Load the skin information panel."]..Reload,
						get = function() return Core.db.profile.SkinInfo end,
						set = function(i, v)
							Core.db.profile.SkinInfo = v
							Core.Setup("Info")
						end,
						order = 3,
					},
					SPC01 = {
						type = "description",
						name = " ",
						--order = 100,
					},
					Reload = {
						type = "execute",
						name = L["Reload Interface"],
						desc = L["Click to load reload the interface."],
						func = function() ReloadUI() end,
						order = -1,
					},
				},
			},
			Developer = {
				type = "group",
				name = L["Developer"],
				desc = Tooltip,
				order = 4,
				args = {
					Head = {
						type = "header",
						name = L["Developer Settings"],
						order = 0,
						disabled = true,
						dialogControl = "SFX-Header",
					},
					Desc = {
						type = "description",
						name = L["This section will allow you to adjust settings that affect working with Masque's API."]..CRLF,
						order = 1,
						fontSize = "medium",
					},
					Debug = {
						type = "toggle",
						name = L["Debug Mode"],
						desc = L["Causes Masque to throw Lua errors whenever it encounters a problem with an add-on or skin."],
						get = function() return Core.db.profile.Debug end,
						set = self.ToggleDebug,
						order = 3,
					},
					SPC01 = {
						type = "description",
						name = " ",
						--order = 100,
					},
					Purge = {
						type = "execute",
						name = L["Clean Database"],
						desc = L["Click to purge the settings of all unused add-ons and groups."],
						func = Core.CleanDB,
						order = -1,
						confirm = true,
						confirmText = L["This action cannot be undone. Continue?"],
					},
				},
			},
		},
	}

	self.Options.args.General = Options

	local Path = "General"
	self:AddOptionsPanel(Path, LibStub("AceConfigDialog-3.0"):AddToBlizOptions(MASQUE, L["General Settings"], MASQUE, Path))

	-- GC
	Setup.General = nil
end
