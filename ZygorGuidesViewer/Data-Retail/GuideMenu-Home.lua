local name,ZGV = ...
local ui = ZGV.UI
local SkinData = ui.SkinData

-- #GLOBALS ZygorGuidesViewer

local GuideMenu = ZGV.GuideMenu

GuideMenu.HomeVersion = 1
GuideMenu.HomeMessage = [[
Welcome to Zygor's Dragonflight Guides

Known issues:
* We suggest using the Starlight theme as the Stealth theme currently has some display issues with the new Notification system.

Key Updates:
* Updated the Spark of Ingenuity guide to Dragonflight Campaign
* Updated World Quests
* The Silver Purpose chapter committed for Valdrakken Accord rep guide

Please contact Customer Support if you encounter any issues.
]]
GuideMenu.Home={

	{"title", text=[[Welcome to Zygor's Dragonflight Guides]]},

	{"list", text=[[Added Dragonflight guides. See **Featured section**.]],onclick=function() ZGV.GuideMenu:Open("Featured") ZGV.GuideMenu:ShowFeatured("dragonflight") end },

	{"banner", image=ZGV.IMAGESDIR.."bulletin-starup-orientation", width=512, height=256, top=0, left=0, bottom=512/512, right=256/256},

	{"section", text=[[New Feature: Startup Orientation ]]},
	{"text", text=[[In order for Zygor Guides to perform best at its best it requires additional character info that only you - the player - can access. This includes things like flight map data to improve Travel System directions, pricing and profession data for the Gold Guide suggestions, and bank vault items for the new bank items Home Screen widget. The new Startup Orientation feature, which can be accessed from the Guide Viewer hamburger menu, will walk you through collecting all of this data for the best guide experience.]]},

	{"banner", image=ZGV.IMAGESDIR.."bulletin-improved-notifications", width=512, height=256, top=0, left=0, bottom=512/512, right=256/256},
	{"section", text=[[New Feature: Improved Notifications ]]},
	{"text", text=[[The Notification System has been updated to a new passive toast message system. Now, when you recieve notifications, they will be more compact and brief, fading away if you don't take action, but still storing the record of them in the Notification Center for later review.]]},

	{"banner", image=ZGV.IMAGESDIR.."bulletin-customizable-home-screen", width=512, height=256, top=0, left=0, bottom=512/512, right=256/256},
	{"section", text=[[New Feature: Customizable Home Screen ]]},
	{"text", text=[[The Guide Menu Home Screen has been completely redesigned to now allow you to customize if to your liking using widgets - individual display frames that show important and useful info. This includes things like a level tracker to see your played time per level, a gold tracker to see how much gold you're making, several widgets for tracking various game related things like WoW Token pricing, server resets, World Quests, and more. The Home Screen can now be used as your first stop when logging in and your central hub for planning out all of your activities.]]},

}


--toast content
GuideMenu.Welcome={	--Welcome Toast

	{"title", text=[[Welcome to Zygor Guides]], fontsize = 12, center = true, volume = ZGV.FontBold},


	{"list", text=[[See the **new Dragonflight Guides**]], fontsize = 10, size = "S", onclick=function() ZGV.GuideMenu:Show("Featured") GuideMenu.ToastQueuePush() end },
	{"list", text=[[Review **the new features**]], fontsize = 10, size = "S", onclick=function() ZGV.GuideMenu:Show("Home") ZGV.Widgets.Registered.zygormessage:ShowPopup() GuideMenu.ToastQueuePush() end },

}
GuideMenu.Updates={	--General Updates Toast

	{"title", text=[[New in this update:]], fontsize = 12, center = true, volume = ZGV.FontBold},

    {"list", text=[[Added additional **Dragonflight Pets and Achievements** guides]], fontsize = 10, size = "S", onclick=function() ZGV.GuideMenu:Show("Featured") GuideMenu.ToastQueuePush() end },


}
GuideMenu.Orientation={	--Orientation Guide Toast

	{"title", text=[[Zygor Messages:]], fontsize = 12, center = true, volume = ZGV.FontBold},

	{"text", text=[[We suggest using the **Startup Orientation Wizard** while in town. This will improve travel directions, gold guide recommendations, and more.]], fontsize = 9},
	{"text", text=[[Would you like to load this in a new tab?]], fontsize = 9},

}
GuideMenu.Events={	--Ongoing Event Toast
	event = "Love is in the Air",
	{"title", text=[[Zygor Messages:]], fontsize = 12, center = true, volume = ZGV.FontBold},
	{"banner", image=ZGV.IMAGESDIR.."LoveIsInTheAir", top=0, left=0, bottom=512/512, right=128/128},
	{"text", text=[[The **Love is in the Air** Event is underway!]], fontsize = 9},
	{"text", text=[[**See the guides**]], fontsize = 9, onclick=function() ZGV.GuideMenu:Show() ZGV.GuideMenu:Open("EVENTS\\Love is in the Air") GuideMenu.ToastQueuePush() end},

}

--GuideMenu.Toast5={	--World Quest Reset Toast (unused - contents for world quests reset are generated as formatted text, not a parser object)

--	{"title", text=[[Zygor Messages:]], fontsize = 12, center = true, volume = ZGV.FontBold},

--	{"text", text=[[World Quests have reset on this server.]], center = true, fontsize = 9},

--}

GuideMenu.Sticky = {

	["welcome"] = true,
	["updates"] = true,
	["orientation"] = true,
	["events"] = false,
	["dailyquests"] = false,
	["worldquests"] = false,

}

GuideMenu.DisplayMode = {		--values: show (display the toast when conditionsa are met), hide (never display the toast), dev (display when conditions met, but in dev clients only)

	["welcome"] = "hide",
	["updates"] = "hide",
	["orientation"] = "show",
	["events"] = "show",
	["dailyquests"] = "show",
	["worldquests"] = "show",

}

-- faction="Alliance" {"separator"},

function GuideMenu.ToastQueuePush()

	ZGV.NotificationCenter.FloatingToast:Hide()
	if ZGV.NotificationCenter.QueuedToasts[1] then table.remove(ZGV.NotificationCenter.QueuedToasts,1) end
	ZGV.NotificationCenter:QueueToast()

end