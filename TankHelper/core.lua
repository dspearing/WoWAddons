local _, TankHelper = ...
local THBORDERALPHA = 0.5
local obr = 6 -- Outside Border
local ibr = 1 -- Icon Border
local cbr = 3 -- Cell Border
local iconsize = 16
local iconbr = 4
local iconbtn = iconsize + 2 * iconbr

local pt = {3, 5, 10, 20}

local wms = {5, 6, 3, 2, 7, 1, 4, 8}

local updatewms = true
local ricons1 = {}
local ricons2 = {}
local rows = 3
local cols = 9

if not IsRaidMarkerActive then
	rows = 2
end

function TankHelper:CreateButton(name, parent)
	local btn = CreateFrame("Button", name, parent)
	btn.text = btn:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	--btn.text:SetFont(STANDARD_TEXT_FONT, 11, "")
	btn.text:SetText("")
	btn.text:SetPoint("CENTER", btn, "CENTER", 0, 0)

	function btn:SetText(text)
		btn.text:SetText(text)
	end

	return btn
end

frameCockpit = CreateFrame("Frame", "frameCockpit", UIParent)
frameCockpit:SetPoint("Center", UIParent, "Center")
frameCockpit:SetSize(cols * iconbtn + (cols - 1) * ibr + 2 * obr, rows * iconbtn + (rows - 1) * cbr + 2 * obr)
frameCockpit:SetClampedToScreen(true)
frameCockpit:SetMovable(true)
frameCockpit:EnableMouse(true)
frameCockpit:RegisterForDrag("LeftButton")

frameCockpit:SetScript("OnDragStart", function(self)
	frameCockpit:StartMoving()
end)

frameCockpit:SetScript("OnDragStop", function(self)
	frameCockpit:StopMovingOrSizing()
	local point, parent, relativePoint, ofsx, ofsy = self:GetPoint()
	THTAB["frameCockpit" .. "point"] = point
	THTAB["frameCockpit" .. "parent"] = parent
	THTAB["frameCockpit" .. "relativePoint"] = relativePoint
	THTAB["frameCockpit" .. "ofsx"] = ofsx
	THTAB["frameCockpit" .. "ofsy"] = ofsy
end)

frameCockpit:HookScript("OnUpdate", function(self, elapsed)
	frameCockpit.hovered = frameCockpit.hovered or false

	if frameCockpit.hovered ~= MouseIsOver(frameCockpit) then
		frameCockpit.hovered = MouseIsOver(frameCockpit)

		if TankHelper.UpdateColors then
			TankHelper:UpdateColors()
		end
	end
end)

frameCockpit.tBRl = frameCockpit:CreateTexture(nil, "BACKGROUND")
frameCockpit.tBRr = frameCockpit:CreateTexture(nil, "BACKGROUND")
frameCockpit.tBRt = frameCockpit:CreateTexture(nil, "BACKGROUND")
frameCockpit.tBRb = frameCockpit:CreateTexture(nil, "BACKGROUND")
frameCockpit.tBG = frameCockpit:CreateTexture(nil, "BACKGROUND")

function TankHelper:ShouldShow()
	return IsInInstance() or UnitInParty("PLAYER") or UnitInRaid("PLAYER")
end

function TankHelper:RW(msg)
	if TankHelper:GetWoWBuild() ~= "RETAIL" and IsInRaid() and (UnitIsGroupAssistant("PLAYER") or UnitIsGroupLeader("PLAYER")) then
		SendChatMessage(msg, "RAID_WARNING")
	else
		if TankHelper:ShouldShow() then
			SendChatMessage(msg)
		else
			TankHelper:MSG(TankHelper:GT("youmustbeinagrouporaraid", true) .. "!")
		end
	end
end

function TankHelper:PullIn(t)
	if TankHelper:ShouldShow() then
		if TankHelper:GetConfig("PULLTIMERMODE", "AUTO") == "AUTO" or TankHelper:GetConfig("PULLTIMERMODE", "AUTO") == "ONLYTHIRDPARTY" or TankHelper:GetConfig("PULLTIMERMODE", "AUTO") == "BOTH" then
			if SlashCmdList["DEADLYBOSSMODS"] then
				SlashCmdList["DEADLYBOSSMODS"]("pull " .. t)
			elseif IsAddOnLoaded("BigWigs") then
				DEFAULT_CHAT_FRAME.editBox:SetText("/pull " .. t)
				ChatEdit_SendText(DEFAULT_CHAT_FRAME.editBox, 0)
			else
				if C_PartyInfo and C_PartyInfo.DoCountdown then
					C_PartyInfo.DoCountdown(t)
				end
			end
		else
			if C_PartyInfo and C_PartyInfo.DoCountdown then
				C_PartyInfo.DoCountdown(t)
			end
		end

		if (TankHelper:GetConfig("PULLTIMERMODE", "AUTO") == "AUTO" and (not IsAddOnLoaded("DBM-Core") and not IsAddOnLoaded("BigWigs"))) or TankHelper:GetConfig("PULLTIMERMODE", "AUTO") == "ONLYTH" or TankHelper:GetConfig("PULLTIMERMODE", "AUTO") == "BOTH" or TankHelper:GetConfig("PULLTIMERMODE", "AUTO") == "ONLYTHIRDPARTY" and not IsAddOnLoaded("DBM-Core") and not IsAddOnLoaded("BigWigs") then
			if TankHelper:GetConfig("PULLTIMERMODE", "AUTO") == "ONLYTHIRDPARTY" and not IsAddOnLoaded("DBM-Core") and not IsAddOnLoaded("BigWigs") then
				TankHelper:MSG("Found no Thirdparty countdown addon" .. "!" .. " Using Default timer.")
			end

			TankHelper:RW(format(TankHelper:GT("pullinx"), t))

			for i = 1, t do
				C_Timer.After(i, function()
					if t - i == 0 then
						TankHelper:RW(TankHelper:GT("go") .. "!")
					else
						TankHelper:RW(t - i)
					end
				end)
			end
		end
	else
		TankHelper:MSG(TankHelper:GT("youmustbeinagrouporaraid", true) .. "!")
	end
end

function TankHelper:ResetIcons1()
	for i, v in pairs(ricons1) do
		if frameCockpit:IsShown() then
			v.bgtexture:SetTexture("")
		end
	end
end

function TankHelper:UpdateRaidIcons()
	for i = 0, 8 do
		local rembtn = frameCockpit["btn" .. i].texture

		if i == 0 then
			if not GetRaidTargetIndex("TARGET") or GetRaidTargetIndex("TARGET") == 0 then
				rembtn:SetDesaturated(true)
			else
				rembtn:SetDesaturated(false)
			end
		else
			if not UnitExists("TARGET") then
				rembtn:SetDesaturated(true)
			else
				rembtn:SetDesaturated(false)
			end
		end
	end
end

local Y = 1

for i = 0, 8 do
	frameCockpit["btn" .. i] = TankHelper:CreateButton("btn" .. i, frameCockpit)
	frameCockpit["btn" .. i]:SetPoint("TOPLEFT", frameCockpit, "TOPLEFT", obr + (i - 1) * (iconbtn + ibr), -obr)
	frameCockpit["btn" .. i]:SetSize(iconbtn, iconbtn)
	frameCockpit["btn" .. i].bgtexture = frameCockpit["btn" .. i]:CreateTexture(nil, "OVERLAY")
	frameCockpit["btn" .. i].bgtexture:SetTexture("Interface\\SpellActivationOverlay\\IconAlert")
	frameCockpit["btn" .. i].bgtexture:SetTexCoord(0.00781250, 0.50781250, 0.53515625, 0.78515625)
	frameCockpit["btn" .. i].bgtexture:SetSize(iconbtn * 1.2, iconbtn * 1.2)
	frameCockpit["btn" .. i].bgtexture:SetPoint("CENTER", frameCockpit["btn" .. i], "CENTER", 0, 0)
	frameCockpit["btn" .. i].bgtexture:SetVertexColor(1, 1, 0, THBORDERALPHA)
	frameCockpit["btn" .. i].texture = frameCockpit["btn" .. i]:CreateTexture(nil, "ARTWORK")

	if i > 0 then
		frameCockpit["btn" .. i].texture:SetTexture("Interface\\TargetingFrame\\UI-RaidTargetingIcon_" .. i)
	else
		frameCockpit["btn" .. i].texture:SetTexture("Interface\\Buttons\\UI-GroupLoot-Pass-Up")
	end

	frameCockpit["btn" .. i].texture:SetSize(iconsize, iconsize)
	frameCockpit["btn" .. i].texture:SetPoint("CENTER", frameCockpit["btn" .. i], "CENTER", 0, 0)
	frameCockpit["btn" .. i]:RegisterForClicks("LeftButtonDown", "RightButtonDown")

	frameCockpit["btn" .. i]:SetScript("OnClick", function(self, btn, down)
		if btn == "LeftButton" then
			if i > 0 then
				SetRaidTarget("TARGET", i)
			else
				SetRaidTarget("TARGET", 0)
				TankHelper:UpdateRaidIcons()
			end
		elseif btn == "RightButton" and i > 0 then
			TankHelper:ResetIcons1()

			if TankHelper:GetConfig("autoselect", nil) ~= i then
				if frameCockpit:IsShown() then
					self.bgtexture:SetTexture("Interface\\SpellActivationOverlay\\IconAlert")
				end

				THTAB["autoselect"] = i
			else
				THTAB["autoselect"] = nil
			end
		end
	end)

	table.insert(ricons1, frameCockpit["btn" .. i])

	if IsRaidMarkerActive then
		frameCockpit["btnwm" .. i] = CreateFrame("Button", "btnwm" .. i, frameCockpit, "SecureActionButtonTemplate")
		frameCockpit["btnwm" .. i]:SetPoint("TOPLEFT", frameCockpit, "TOPLEFT", obr + (i - 1) * (iconbtn + ibr), -obr - iconbtn - cbr)
		frameCockpit["btnwm" .. i]:SetSize(iconbtn, iconbtn)
		frameCockpit["btnwm" .. i].texture = frameCockpit["btnwm" .. i]:CreateTexture(nil, "ARTWORK")
		frameCockpit["btnwm" .. i].texture:SetTexture("Interface\\RaidFrame\\Raid-WorldPing")
		frameCockpit["btnwm" .. i].texture:SetSize(iconsize, iconsize)
		frameCockpit["btnwm" .. i].texture:SetPoint("CENTER", frameCockpit["btnwm" .. i], "CENTER", 0, 0)
		frameCockpit["btnwm" .. i].texture:SetDrawLayer("ARTWORK", 1)
		frameCockpit["btnwm" .. i].tBG = frameCockpit["btnwm" .. i]:CreateTexture(nil, "ARTWORK")

		if i > 0 then
			frameCockpit["btnwm" .. i].tBG:SetTexture("Interface\\TargetingFrame\\UI-RaidTargetingIcon_" .. i)
		else
			frameCockpit["btnwm" .. i].tBG:SetTexture("Interface\\Buttons\\UI-GroupLoot-Pass-Up")
		end

		frameCockpit["btnwm" .. i].tBG:SetSize(iconsize / 1.2, iconsize / 1.2)
		frameCockpit["btnwm" .. i].tBG:SetPoint("BOTTOMLEFT", frameCockpit["btnwm" .. i], "BOTTOMLEFT", 0, 0)
		frameCockpit["btnwm" .. i].tBG:SetDrawLayer("ARTWORK", 2)
		frameCockpit["btnwm" .. i].tBG:SetVertexColor(1, 1, 1, 1)
		frameCockpit["btnwm" .. i]:SetAttribute("type", "macro")

		if i > 0 then
			frameCockpit["btnwm" .. i]:SetAttribute("macrotext1", "/wm " .. wms[i])
			frameCockpit["btnwm" .. i]:SetAttribute("macrotext2", "/cwm " .. wms[i])
		else
			frameCockpit["btnwm" .. i]:SetAttribute("macrotext1", "/cwm 0")
			frameCockpit["btnwm" .. i]:SetAttribute("macrotext2", "/cwm 0")
		end

		frameCockpit["btnwm" .. i]:RegisterForClicks("LeftButtonDown", "RightButtonDown")
		local btn = frameCockpit["btnwm" .. i]

		function btn.think()
			local btn1 = frameCockpit["btnwm" .. i].texture
			local btn2 = frameCockpit["btnwm" .. i].tBG

			if i > 0 then
				if IsRaidMarkerActive and frameCockpit["btnwm" .. i].status ~= IsRaidMarkerActive(wms[i]) then
					frameCockpit["btnwm" .. i].status = IsRaidMarkerActive(wms[i])
					updatewms = true

					if frameCockpit["btnwm" .. i].status == false then
						btn1:SetDesaturated(true)
						btn2:SetDesaturated(true)
						btn1:SetAlpha(0.5)
						btn2:SetAlpha(0.5)
					else
						btn1:SetDesaturated(false)
						btn2:SetDesaturated(false)
						btn1:SetAlpha(1)
						btn2:SetAlpha(1)
					end
				end
			elseif updatewms then
				updatewms = false
				local canremove = false

				for id = 1, 8 do
					if IsRaidMarkerActive and IsRaidMarkerActive(wms[id]) then
						canremove = true
						break
					end
				end

				if canremove == false then
					btn1:SetDesaturated(true)
					btn2:SetDesaturated(true)
					btn1:SetAlpha(0.5)
					btn2:SetAlpha(0.5)
				else
					btn1:SetDesaturated(false)
					btn2:SetDesaturated(false)
					btn1:SetAlpha(1)
					btn2:SetAlpha(1)
				end
			end

			C_Timer.After(0.33, btn.think)
		end

		btn.think()
		table.insert(ricons2, frameCockpit["btnwm" .. i])
		Y = Y + 1
	end

	if i <= #pt then
		frameCockpit["btnp" .. i] = TankHelper:CreateButton("btnp" .. i, frameCockpit)
		frameCockpit["btnp" .. i]:SetPoint("TOPLEFT", frameCockpit, "TOPLEFT", obr + (i - 1) * (iconbtn + ibr), -obr - Y * (iconbtn + cbr))
		frameCockpit["btnp" .. i]:SetSize(iconbtn, iconbtn)
		frameCockpit["btnp" .. i]:SetText(pt[i])

		frameCockpit["btnp" .. i]:SetScript("OnClick", function(self, btn, down)
			TankHelper:PullIn(pt[i])
		end)
	end
end

frameCockpit["btnReadycheck"] = TankHelper:CreateButton("btnReadycheck", frameCockpit)
frameCockpit["btnReadycheck"]:SetPoint("TOPLEFT", frameCockpit, "TOPLEFT", obr + (5 - 1) * (iconbtn + ibr), -obr - Y * (iconbtn + cbr))

if IsRaidMarkerActive or InitiateRolePoll then
	frameCockpit["btnReadycheck"]:SetSize(50, iconbtn)
	frameCockpit["btnReadycheck"]:SetText(string.sub(READY_CHECK, 1, 6))
else
	frameCockpit["btnReadycheck"]:SetSize(100, iconbtn)
	frameCockpit["btnReadycheck"]:SetText(string.sub(READY_CHECK, 1, 12))
end

frameCockpit["btnReadycheck"]:SetScript("OnClick", function(self, btn, down)
	DoReadyCheck()
end)

if InitiateRolePoll then
	frameCockpit["btnRolepoll"] = TankHelper:CreateButton("btnRolepoll", frameCockpit)
	frameCockpit["btnRolepoll"]:SetPoint("TOPLEFT", frameCockpit, "TOPLEFT", obr + (5 - 1) * (iconbtn + ibr) + ibr + 50, -obr - Y * (iconbtn + cbr))
	frameCockpit["btnRolepoll"]:SetSize(50, iconbtn)
	frameCockpit["btnRolepoll"]:SetText(string.sub(ROLE_POLL, 1, 6))

	frameCockpit["btnRolepoll"]:SetScript("OnClick", function(self, btn, down)
		InitiateRolePoll()
	end)
end

frameCockpit["btnDiscord"] = TankHelper:CreateButton("btnDiscord", frameCockpit)
frameCockpit["btnDiscord"]:SetPoint("TOPLEFT", frameCockpit, "TOPLEFT", obr + 100 + ibr + 100 + ibr, -obr - Y * (iconbtn + cbr))
frameCockpit["btnDiscord"]:SetSize(iconbtn, iconbtn)
frameCockpit["btnDiscord"]:SetText("D")

frameCockpit["btnDiscord"]:SetScript("OnClick", function(self, btn, down)
	local s = CreateFrame("Frame", nil, UIParent)
	s:SetSize(300, 2 * iconbtn + 2 * 10)
	s:SetPoint("CENTER")
	s.texture = s:CreateTexture(nil, "BACKGROUND")
	s.texture:SetColorTexture(0, 0, 0, 0.5)
	s.texture:SetAllPoints(s)
	s.text = s:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	s.text:SetText("Feedback")
	s.text:SetPoint("CENTER", s, "TOP", 0, -10)
	local eb = CreateFrame("EditBox", "logEditBox", s, "InputBoxTemplate")
	eb:SetFrameStrata("DIALOG")
	eb:SetSize(280, iconbtn)
	eb:SetAutoFocus(false)
	eb:SetText("https://discord.gg/UeBsafs")
	eb:SetPoint("TOPLEFT", 10, -10 - iconbtn)
	s.close = TankHelper:CreateButton("closediscord", s)
	s.close:SetFrameStrata("DIALOG")
	s.close:SetPoint("TOPLEFT", 300 - 10 - iconbtn, -10)
	s.close:SetSize(iconbtn, iconbtn)
	s.close:SetText("X")

	s.close:SetScript("OnClick", function(sel, sbtn, sdown)
		s:Hide()
	end)
end)

local ts = 0
local setts = 0
local delay = 1
local targetGUID = UnitGUID("TARGET")

function TankHelper:TargetIconLogic()
	delay = TankHelper:GetConfig("targettingdelay", 0.8)

	if UnitGroupRolesAssigned then
		local role = UnitGroupRolesAssigned("PLAYER")
		if TankHelper:GetConfig("onlytank", true) and role ~= "TANK" then return false end -- Only Tank?
	end

	if TankHelper:GetConfig("autoselect", nil) == nil then return false end -- no Auto marking

	-- No Unit
	if not UnitExists("TARGET") then
		ts = GetTime()
		targetGUID = nil

		return true
	end

	if GetRaidTargetIndex("TARGET") ~= nil then return true end -- Already Has Raid Target Icon

	-- if target is the current one
	if targetGUID and UnitGUID("TARGET") == targetGUID and ts <= GetTime() and setts <= GetTime() then
		if IsInRaid() and (UnitIsGroupAssistant("PLAYER") or UnitIsGroupLeader("PLAYER")) then
			setts = GetTime() + 0.1
			SetRaidTarget("TARGET", TankHelper:GetConfig("autoselect", nil))
		elseif not IsInRaid() then
			SetRaidTarget("TARGET", TankHelper:GetConfig("autoselect", nil))
		end
	end

	-- if is not enemy reset the time
	if not UnitIsEnemy("TARGET", "PLAYER") then
		ts = GetTime()
		targetGUID = nil
	else
		-- switch from enemy to enemy, then add delay
		if targetGUID and UnitGUID("TARGET") ~= targetGUID then
			ts = GetTime() + delay
		end

		targetGUID = UnitGUID("TARGET")
	end

	return true
end

function TankHelper:UpdateTargetIcon()
	TankHelper:TargetIconLogic()
	C_Timer.After(0.1, TankHelper.UpdateTargetIcon)
end

TankHelper:UpdateTargetIcon()
frameCockpit:RegisterEvent("PLAYER_ENTERING_WORLD")
frameCockpit:RegisterEvent("PLAYER_TARGET_CHANGED")
frameCockpit:RegisterEvent("RAID_TARGET_UPDATE")
frameCockpit:RegisterEvent("UNIT_HEALTH")
frameCockpit:RegisterEvent("UNIT_POWER_UPDATE")
frameCockpit:RegisterEvent("GROUP_ROSTER_UPDATE")
frameCockpit:RegisterEvent("RAID_ROSTER_UPDATE")
frameCockpit:RegisterEvent("ADDON_LOADED")

frameCockpit:HookScript("OnEvent", function(self, e, ...)
	if e == "PLAYER_ENTERING_WORLD" and TankHelper:GetConfig("autoselect", nil) ~= nil then
		local btn = frameCockpit["btn" .. TankHelper:GetConfig("autoselect", nil)]

		if frameCockpit:IsShown() then
			btn.bgtexture:SetTexture("Interface\\SpellActivationOverlay\\IconAlert")
		end
	end

	if (e == "PLAYER_ENTERING_WORLD" or e == "PLAYER_TARGET_CHANGED" or e == "RAID_TARGET_UPDATE") and (not UnitExists("TARGET") or not UnitIsEnemy("TARGET", "PLAYER")) then
		TankHelper:UpdateRaidIcons()
	end

	if e == "PLAYER_TARGET_CHANGED" then
		TankHelper:TargetIconLogic()
	end

	if e == "UNIT_HEALTH" or e == "UNIT_POWER_UPDATE" or e == "GROUP_ROSTER_UPDATE" or e == "RAID_ROSTER_UPDATE" then
		TankHelper:SetStatusText()
	end
end)

frameStatus = CreateFrame("Frame", "frameStatus", UIParent)
frameStatus:SetPoint("Center", UIParent, "Center")
frameStatus:SetSize(frameCockpit:GetWidth(), 1 * iconbtn + 4 * obr)
frameStatus:SetClampedToScreen(true)
frameStatus:SetMovable(true)
frameStatus:EnableMouse(true)
frameStatus:RegisterForDrag("LeftButton")

frameStatus:SetScript("OnDragStart", function(self)
	frameStatus:StartMoving()
end)

frameStatus:SetScript("OnDragStop", function(self)
	frameStatus:StopMovingOrSizing()
	local point, parent, relativePoint, ofsx, ofsy = self:GetPoint()
	THTAB["frameStatus" .. "point"] = point
	THTAB["frameStatus" .. "parent"] = parent
	THTAB["frameStatus" .. "relativePoint"] = relativePoint
	THTAB["frameStatus" .. "ofsx"] = ofsx
	THTAB["frameStatus" .. "ofsy"] = ofsy
end)

frameStatus.texture = frameStatus:CreateTexture(nil, "BACKGROUND")
frameStatus.texture:SetAllPoints(frameStatus)
frameStatus.text = frameStatus:CreateFontString(nil, "ARTWORK", "GameFontNormal")
frameStatus.text:SetText("")
frameStatus.text:SetPoint("CENTER", frameStatus, "CENTER", 0, 0)
frameDesign = CreateFrame("Frame", "frameDesign", UIParent)

function TankHelper:DesignThink()
	if not InCombatLockdown() then
		if TankHelper:GetConfig("hidestatus", false) then
			frameStatus:Hide()
		else
			if TankHelper:ShouldShow() then
				frameStatus:Show()
			else
				frameStatus:Hide()
			end
		end

		if TankHelper:GetConfig("showalways", false) then
			frameCockpit:Show()
		else
			if TankHelper:ShouldShow() then
				frameCockpit:Show()
			else
				frameCockpit:Hide()
			end
		end

		frameCockpit:SetMovable(not TankHelper:GetConfig("fixposition", false))
		frameCockpit:EnableMouse(not TankHelper:GetConfig("fixposition", false))
		frameStatus:SetMovable(not TankHelper:GetConfig("fixposition", false))
		frameStatus:EnableMouse(not TankHelper:GetConfig("fixposition", false))
	end

	C_Timer.After(0.33, TankHelper.DesignThink)
end

C_Timer.After(0.1, TankHelper.DesignThink)

local THStatusColor = {1, 1, 1, 1}

function TankHelper:SetStatusText()
	if frameCockpit == nil or frameStatus == nil then return end

	if not TankHelper:GetConfig("hidestatus", false) then
		local text = TankHelper:GT("ready", true) .. "!"

		THStatusColor = {0, 1, 0, 0.5}

		if InCombatLockdown() then
			text = GARRISON_LANDING_STATUS_MISSION_COMBAT .. "!"

			THStatusColor = {1, 0, 0, 0.75}
		else
			local health = 1
			local power = 1
			local dead = false

			if UnitExists("PLAYER") then
				local percent = UnitHealth("PLAYER") / UnitHealthMax("PLAYER")

				if percent < health then
					health = percent
				end

				local powertype = UnitPowerType("PLAYER")
				local percent2 = UnitPower("PLAYER") / UnitPowerMax("PLAYER")

				if powertype == 0 and percent2 < power then
					power = percent2
				end

				if UnitIsDead("PLAYER") then
					dead = true
				end
			end

			for i = 1, 4 do
				if UnitExists("PARTY" .. i) then
					local percent = UnitHealth("PARTY" .. i) / UnitHealthMax("PARTY" .. i)

					if percent < health then
						health = percent
					end

					local powertype = UnitPowerType("PARTY" .. i)

					if powertype == 0 and UnitPower("PARTY" .. i) > 0 and UnitPowerMax("PARTY" .. i) > 0 and UnitPower("PARTY" .. i) / UnitPowerMax("PARTY" .. i) < power then
						power = UnitPower("PARTY" .. i) / UnitPowerMax("PARTY" .. i)
					end

					if UnitIsDead("PARTY" .. i) then
						dead = true
					end
				end
			end

			if dead then
				text = TankHelper:GT("playerdead", true) .. "!"

				THStatusColor = {0, 0, 0, 1}
			elseif health < 0.3 then
				text = TankHelper:GT("playerlowhp", true) .. "!"

				THStatusColor = {1, 0, 0, 1 - health + 0.1}
			elseif health < 0.9 then
				text = TankHelper:GT("playernotfull", true) .. "!"

				THStatusColor = {1, 0, 0, 1 - health + 0.1}
			elseif power < 0.9 then
				text = TankHelper:GT("playerhavenotenoughpower", true) .. "!"

				THStatusColor = {0, 0, 1, 1 - power + 0.1}
			end
		end

		frameStatus.text:SetText(text)

		if frameStatus.texture.SetColorTexture and THStatusColor[1] and THStatusColor[2] and THStatusColor[3] then
			if THStatusColor[4] > 1 then
				THStatusColor[4] = 1
			end

			if THStatusColor[4] < 0 then
				THStatusColor[4] = 0
			end

			frameStatus.texture:SetColorTexture(THStatusColor[1], THStatusColor[2], THStatusColor[3], THStatusColor[4])
		end
	end
end

function TankHelper:UpdateDesign()
	local scalecockpit = TankHelper:GetConfig("scalecockpit", 1)
	local scalestatus = TankHelper:GetConfig("scalestatus", 1)

	if THTAB["obr"] ~= nil and THTAB["obr"] >= 16 then
		THTAB["obr"] = 6
	end

	if THTAB["ibr"] ~= nil and THTAB["ibr"] >= 16 then
		THTAB["ibr"] = 1
	end

	if THTAB["cbr"] ~= nil and THTAB["cbr"] >= 16 then
		THTAB["cbr"] = 3
	end

	obr = TankHelper:GetConfig("obr", 6) -- Outer Border
	ibr = TankHelper:GetConfig("ibr", 1) -- Column Spacer
	cbr = TankHelper:GetConfig("cbr", 3) -- Row Spacer
	iconsize = TankHelper:GetConfig("iconsize", 16)
	iconbr = iconsize / 4
	iconbtn = iconsize + 2 * iconbr
	frameCockpit:SetScale(scalecockpit)
	frameStatus:SetScale(scalestatus)
	local THROW = 1
	local c_rows = rows

	if TankHelper:GetConfig("hidelastrow", false) then
		c_rows = 2
	end

	frameCockpit:SetSize(cols * iconbtn + (cols - 1) * ibr + 2 * obr, c_rows * iconbtn + (c_rows - 1) * cbr + 2 * obr)
	local sw, sh = frameCockpit:GetSize()
	frameCockpit.tBG:SetSize(sw - 2 * obr, sh - 2 * obr)
	frameCockpit.tBG:SetPoint("CENTER", frameCockpit, "CENTER", 0, 0)
	frameCockpit.tBRl:SetSize(obr, sh - 2 * obr)
	frameCockpit.tBRr:SetSize(obr, sh - 2 * obr)
	frameCockpit.tBRt:SetSize(sw, obr)
	frameCockpit.tBRb:SetSize(sw, obr)
	frameCockpit.tBRl:SetPoint("LEFT", frameCockpit, "LEFT", 0, 0)
	frameCockpit.tBRr:SetPoint("RIGHT", frameCockpit, "RIGHT", 0, 0)
	frameCockpit.tBRt:SetPoint("TOP", frameCockpit, "TOP", 0, 0)
	frameCockpit.tBRb:SetPoint("BOTTOM", frameCockpit, "BOTTOM", 0, 0)

	for i = 0, 8 do
		local id = 8 - i
		frameCockpit["btn" .. id]:SetPoint("TOPLEFT", frameCockpit, "TOPLEFT", obr + i * (iconbtn + ibr), -obr)
		frameCockpit["btn" .. id]:SetSize(iconbtn, iconbtn)
		frameCockpit["btn" .. id].texture:SetPoint("CENTER", frameCockpit["btn" .. id], "CENTER", 0, 0)
		frameCockpit["btn" .. id].texture:SetSize(iconsize, iconsize)
	end

	if IsRaidMarkerActive then
		THROW = THROW + 1

		for i = 0, 8 do
			id = 8 - i
			frameCockpit["btnwm" .. id]:SetPoint("TOPLEFT", frameCockpit, "TOPLEFT", obr + i * (iconbtn + ibr), -obr - iconbtn - cbr)
			frameCockpit["btnwm" .. id]:SetSize(iconbtn, iconbtn)
			frameCockpit["btnwm" .. id].texture:SetPoint("CENTER", frameCockpit["btnwm" .. id], "CENTER", 0, 0)
			frameCockpit["btnwm" .. id].texture:SetSize(iconsize, iconsize)
			frameCockpit["btnwm" .. id].tBG:SetPoint("BOTTOMLEFT", frameCockpit["btnwm" .. id], "BOTTOMLEFT", 0, 0)
			frameCockpit["btnwm" .. id].tBG:SetSize(iconsize / 1.2, iconsize / 1.2)
		end
	end

	for i = 0, 8 do
		if i <= #pt then
			if TankHelper:GetConfig("hidelastrow", false) then
				frameCockpit["btnp" .. i]:Hide()
			else
				frameCockpit["btnp" .. i]:SetPoint("TOPLEFT", frameCockpit, "TOPLEFT", obr + (i - 1) * (iconbtn + ibr), -obr - THROW * (iconbtn + cbr))
				frameCockpit["btnp" .. i]:SetSize(iconbtn, iconbtn)
				frameCockpit["btnp" .. i]:Show()
			end
		end
	end

	local bw = obr + (5 - 1) * (iconbtn + ibr)
	local aw = obr + iconbtn + ibr
	local bsw = frameCockpit:GetWidth() - bw - aw

	if IsRaidMarkerActive or InitiateRolePoll then
		bsw = bsw - ibr
		bsw = bsw / 2
	end

	if TankHelper:GetConfig("hidelastrow", false) then
		frameCockpit["btnReadycheck"]:Hide()
	else
		frameCockpit["btnReadycheck"]:SetPoint("TOPLEFT", frameCockpit, "TOPLEFT", obr + (5 - 1) * (iconbtn + ibr), -obr - THROW * (iconbtn + cbr))
		frameCockpit["btnReadycheck"]:SetSize(bsw, iconbtn)
		frameCockpit["btnReadycheck"]:Show()
	end

	if InitiateRolePoll then
		if TankHelper:GetConfig("hidelastrow", false) then
			frameCockpit["btnRolepoll"]:Hide()
		else
			frameCockpit["btnRolepoll"]:SetPoint("TOPLEFT", frameCockpit, "TOPLEFT", obr + (5 - 1) * (iconbtn + ibr) + ibr + bsw, -obr - THROW * (iconbtn + cbr))
			frameCockpit["btnRolepoll"]:SetSize(bsw, iconbtn)
			frameCockpit["btnRolepoll"]:Show()
		end
	end

	if TankHelper:GetConfig("hidelastrow", false) then
		frameCockpit["btnDiscord"]:Hide()
	else
		frameCockpit["btnDiscord"]:ClearAllPoints()
		frameCockpit["btnDiscord"]:SetSize(iconbtn, iconbtn)
		frameCockpit["btnDiscord"]:SetPoint("BOTTOMRIGHT", frameCockpit, "BOTTOMRIGHT", -obr, obr)
		frameCockpit["btnDiscord"]:Show()
	end

	frameStatus:SetSize(frameCockpit:GetWidth(), 1 * iconbtn + 4 * obr)
	TankHelper:ResetIcons1()

	C_Timer.After(1, function()
		if TankHelper:GetConfig("autoselect", nil) ~= nil then
			local btn = frameCockpit["btn" .. TankHelper:GetConfig("autoselect", nil)]

			if frameCockpit:IsShown() then
				btn.bgtexture:SetTexture("Interface\\SpellActivationOverlay\\IconAlert")
			end
		end
	end)

	local point = THTAB["frameCockpit" .. "point"]
	local parent = THTAB["frameCockpit" .. "parent"]
	local relativePoint = THTAB["frameCockpit" .. "relativePoint"]
	local ofsx = THTAB["frameCockpit" .. "ofsx"]
	local ofsy = THTAB["frameCockpit" .. "ofsy"]

	if point and frameCockpit then
		frameCockpit:ClearAllPoints()
		frameCockpit:SetPoint(point, parent, relativePoint, ofsx, ofsy)
	end

	point = THTAB["frameStatus" .. "point"]
	parent = THTAB["frameStatus" .. "parent"]
	relativePoint = THTAB["frameStatus" .. "relativePoint"]
	ofsx = THTAB["frameStatus" .. "ofsx"]
	ofsy = THTAB["frameStatus" .. "ofsy"]

	if point and frameStatus then
		frameStatus:ClearAllPoints()
		frameStatus:SetPoint(point, parent, relativePoint, ofsx, ofsy)
	end

	TankHelper:UpdateColors()
end

function TankHelper:InitSetup()
	if not InCombatLockdown() then
		TankHelper:UpdateDesign()
		TankHelper:SetStatusText()
	else
		C_Timer.After(0.15, TankHelper.InitSetup)
	end
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("NAME_PLATE_CREATED")
frame:RegisterEvent("NAME_PLATE_UNIT_ADDED")
frame:RegisterEvent("NAME_PLATE_UNIT_REMOVED")
frame:RegisterEvent("UNIT_THREAT_LIST_UPDATE")
frame:RegisterEvent("UNIT_THREAT_SITUATION_UPDATE")

function TankHelper:UpdateThreatStatus(np, reset)
	if np.th_threat == nil then return end
	local unit = np.unit

	if np.UnitFrame ~= nil then
		unit = np.UnitFrame.unit
	end

	if unit == nil then
		unit = strlower(np:GetName())
	end

	local _, _, scaledPercentage, _, _ = UnitDetailedThreatSituation("PLAYER", unit)

	if TankHelper:GetConfig("nameplatethreat", true) and scaledPercentage and not reset then
		scaledPercentage = tonumber(string.format("%.0f", scaledPercentage))
		np.th_threat.text:SetText(scaledPercentage .. "%")

		if scaledPercentage > 100 then
			np.th_threat.texture:SetTexture("Interface\\COMMON\\Indicator-Yellow")
			np.th_threat.texture:SetTexCoord(0, 1, 0, 1)
			np.th_threat.texture:SetAlpha(1)
			np.th_threat.text:SetTextColor(1, 1, 0, 1)
		elseif scaledPercentage == 100 then
			np.th_threat.texture:SetTexture("Interface\\MINIMAP\\Minimap_shield_normal")
			np.th_threat.texture:SetTexCoord(0, 1, 0, 1)
			np.th_threat.texture:SetAlpha(0.33)
			np.th_threat.text:SetTextColor(0, 1, 0, 0.33)
		elseif scaledPercentage == 0 then
			np.th_threat.texture:SetTexture("Interface\\WORLDSTATEFRAME\\CombatSwords")
			np.th_threat.texture:SetTexCoord(0, 0.5, 0, 0.5)
			np.th_threat.texture:SetAlpha(1)
			np.th_threat.text:SetTextColor(1, 0, 0, 1)
		else
			np.th_threat.texture:SetTexture("Interface\\WORLDSTATEFRAME\\CombatSwords")
			np.th_threat.texture:SetTexCoord(0, 0.5, 0, 0.5)
			np.th_threat.texture:SetAlpha(1)
			np.th_threat.text:SetTextColor(1, 1, 0, 1)
		end
	else
		np.th_threat.text:SetText(-1 .. "%")
		np.th_threat.texture:SetTexture(nil)
		np.th_threat.texture:SetTexCoord(0, 1, 0, 1)
		np.th_threat.texture:SetAlpha(0)
		np.th_threat.text:SetTextColor(0, 0, 0, 0)
	end
end

local nps = {}

function TankHelper:ThinkNameplates(force)
	if TankHelper:GetConfig("nameplatethreat", true) or force then
		for i, np in pairs(nps) do
			TankHelper:UpdateThreatStatus(np)
		end

		C_Timer.After(0.2, TankHelper.ThinkNameplates)
	else
		C_Timer.After(1, TankHelper.ThinkNameplates)
	end
end

C_Timer.After(2, TankHelper.ThinkNameplates)

frame:SetScript("OnEvent", function(self, event, ...)
	if event == "NAME_PLATE_CREATED" then
		local np = select(1, ...)

		if np.th_threat == nil then
			np.th_threat = CreateFrame("FRAME", nil, np)
			np.th_threat:SetSize(1, 1)
			np.th_threat:SetPoint("CENTER", np, "CENTER", 0, 0)
			-- np.th_threat:SetIgnoreParentAlpha( true )
			np.th_threat.texture = np:CreateTexture(nil, "OVERLAY")
			np.th_threat.texture:SetSize(42, 42)
			np.th_threat.texture:SetPoint("CENTER", np.th_threat, "TOP", 0, 70)
			np.th_threat.text = np:CreateFontString(nil, "OVERLAY", "GameFontNormal")
			--np.th_threat.text:SetFont( STANDARD_TEXT_FONT, 12, "THINOUTLINE" )
			np.th_threat.text:SetText("Created by TankHelper -> if you see this tell the Dev.")
			np.th_threat.text:SetPoint("CENTER", np.th_threat, "TOP", 0, 70)

			C_Timer.After(0.04, function()
				TankHelper:UpdateThreatStatus(np)
			end)

			C_Timer.After(0.1, function()
				TankHelper:UpdateThreatStatus(np)
			end)

			C_Timer.After(0.2, function()
				TankHelper:UpdateThreatStatus(np)
			end)

			table.insert(nps, np)
		end
	end
end)