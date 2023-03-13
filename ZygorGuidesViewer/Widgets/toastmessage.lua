local L = ZGV.L
local CHAIN = ZGV.ChainCall
local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local SkinData = ZGV.UI.SkinData
local GuideMenu = ZGV.GuideMenu

local widget={
	ident = "toastmessage",
	system = true,
--	valid = true, -- or ZGV.IsRetail, IsClassic, IsClassicTBC, or anything other that a boolean or a function that returns one
	events = {
		PLAYER_LOGIN=true,
	},
	tick = 5,
	listeninactive = true,
	sizes = {
		{width = 1,height = 1}
	},
}

function widget:Initialise()
	self.frame = ZGV.UI:Create("Button",ZGV.Widgets.Parent,nil,nil,"ZGV_Widget_Template")
	self.frame:Hide()
	
	self:CreateToastContent("welcome")
	self:CreateToastContent("updates")
	self:CreateToastContent("orientation")
	self:CreateToastContent("events")

	Mixin(self,ZGV_Widget_Object_Mixin)
end

function widget:CreateToastContent(toasttype)

--Parsed frame
	ZGV.NotificationCenter:CreateFloatingFrame()
	
	GuideMenu.Parsers.WIDTH = 290		--the max width of the generated block of text
	GuideMenu.Parsers.ICONS = false		--whether or not the icons should be displayed
	
	local height = 0			--calculated total height of the generated block of text and objects
	local prev				--the previous object
	local toasttable

	if toasttype == "welcome" then
		toasttable = GuideMenu.Toast1
	elseif toasttype == "updates" then
		toasttable = GuideMenu.Toast2
	elseif toasttype == "orientation" then
		toasttable = GuideMenu.Toast3
	elseif toasttype == "events" then
		toasttable = GuideMenu.Toast4
--	elseif toasttype == "worldquests" then
--		toasttable = GuideMenu.Toast5
	else
		ZGV:Print("Unknown toast message type requested.")
	end

	local current_faction			--to filter out the non-applicable parts (wrong faction etc.)
	for i,e in ipairs(toasttable) do
		if e[1]~="list" and e[1]~="item" then current_faction = e.faction end
		e.faction = e.faction or current_faction

		if e[1]=="section" then e.space=20 end
	end

	local entireblock = {}
	local parent = CHAIN(CreateFrame("Frame", nil, ZGV.NotificationCenter.FloatingToast))
		:SetPoint("TOPLEFT")
		:SetPoint("BOTTOMRIGHT")
		:SetWidth(290)
		:SetHeight(100)
		:SetScale(ZGV.db.profile.framescale)
		:Hide()
	.__END

	local subsection_counter = 0		--counts which block of text is being displayed and adds a larger margin between texts
	GuideMenu.Parsers.lasttick = debugprofilestop()	--deglitching function, ignore

	for i,e in ipairs(toasttable) do	--cycle through all the parsed objects in the given table
		if (not e.faction or (e.faction==faction)) and (not e.beta or ZGV.BETA) then	--if faction matches and if not beta, display the block
			
			local object, e_height, space		--object, its height and spacing
			if GuideMenu.Parsers[e[1]] then		--e[1] = the name of the parser being used // --	{"title", text=[[Welcome to Zygor's Dragonflight Guides]]}, --e[1] is "title"
				object,e_height,space = GuideMenu.Parsers[e[1]=="item" and "list" or e[1]](parent,e,nil,true)	--nil, true - ignore, might be leftovers from previous functions
			else
				print("Unknown home element at",i,e[1])
				return false
			end

			subsection_counter = subsection_counter + 1		--increase the number of subsections after a new one is added

			space=space+5		--extra space between sections to separate them better

			if subsection_counter>1 and e[1]=="text" then space=space+5 end		--make some space if there's more than one block and the parser type is text
			if e[1]=="section" then subsection_counter=0 end		--if the parser is a section then reset the counter of the section elements

			e.object = object		--save the frame in the object

			if prev then		--if there's a previous object, pin the new one to the previous object; if not it will pin to original parent
				object:SetPoint("TOPLEFT",prev,"BOTTOMLEFT",0,-space)
			else
				object:SetPoint("TOPLEFT",parent,"TOPLEFT",10,0)
			end
			height=height+e_height+space		--recalculate the height of the entire block
			prev=object		--set the generated object as the last object generated

			object:Show()		--show the object frame and continue if there are more
			table.insert(entireblock,object)
		end
	end

	if toasttype == "welcome" then
		ZGV.NotificationCenter.MsgTstWelcome = entireblock
	elseif toasttype == "updates" then
		ZGV.NotificationCenter.MsgTstGeneral = entireblock
	elseif toasttype == "orientation" then
		ZGV.NotificationCenter.MsgTstOrientation = entireblock
	elseif toasttype == "events" then
		ZGV.NotificationCenter.MsgTstEvents = entireblock
--	elseif toasttype == "worldquests" then
--		ZGV.NotificationCenter.MsgTstWorldQuests = entireblock
	else
		ZGV:Print("Unknown toast message type requested.")
	end

	for i,object in ipairs(entireblock) do
		object:Hide()
	end

--End of parsed frame

end

local capitals = {
	[87] = "Ironforge",
	[84] = "Stormwind City",
	[90] = "Undercity",
	[89] = "Darnassus",
	[85] = "Orgrimmar",
	[86] = "Orgrimmar",
	[88] = "Thunder Bluff",
	[110] = "Silvermoon City",
	[103] = "The Exodar",
	[111] = "Shattrath City",
	[125] = "Dalaran",
	[126] = "Dalaran",
--	Booty Bay
--	Everlook
--	Gadgetzan
	[622] = "Stormshield",
	[624] = "Warspear",
}

function widget:OnTick()
	widget:MainCity()
end

function widget:MainCity(iterate)
	
	local x,y,m=LibRover:GetPlayerPosition()

	if m and m>0 then
		if (self.LastMap ~= m or (self.city ~= m and capitals[m]) or iterate) then
			if capitals[m] then
				self.city = m
				if ZGV.db.profile.n_popup_msg_orientation and not ZGV.db.global.bannedtoasts["orientation"] and not LibTaxi:IsContinentKnown() then
					ZGV:ScheduleTimer(function()
						ZGV.NotificationCenter:CreateFloatingFrame("message", nil, ZGV.NotificationCenter.MsgTstOrientation,"orientation")
					end,5)
				end
			end
		end
		self.LastMap = m
	end

end


ZGV.Widgets:RegisterWidget(widget)

tinsert(ZGV.startups,{"StartupToasts",function(self)
	local ver_welcome
	local ver_general

	for i, object in ipairs(ZGV.NotificationCenter.MsgTstWelcome) do
		ver_welcome = (ver_welcome or "")..string.sub(object:GetText(), 1, 3)..string.len(object:GetText())
	end
	for i, object in ipairs(ZGV.NotificationCenter.MsgTstGeneral) do
		ver_general = (ver_general or "")..string.sub(object:GetText(), 1, 3)..string.len(object:GetText())
	end
	
	if ZGV.db.global.welcomemsg ~= ver_welcome and ZGV.db.profile.n_popup_msg_welcome and not ZGV.db.global.bannedtoasts["welcome"] then
		ZGV.NotificationCenter:CreateFloatingFrame("message", nil, ZGV.NotificationCenter.MsgTstWelcome,"welcome")
		ZGV.db.global.welcomemsg = ver_welcome
	end

	if ZGV.db.global.generalmsg ~= ver_general and ZGV.db.profile.n_popup_msg_general and not ZGV.db.global.bannedtoasts["general"] then
		ZGV.NotificationCenter:CreateFloatingFrame("message", nil, ZGV.NotificationCenter.MsgTstGeneral,"updates")
		ZGV.db.global.generalmsg = ver_general
	end
end,after="all"})