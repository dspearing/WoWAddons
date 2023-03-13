local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
ZygorGuidesViewer.Gold.guides_loaded=true
if ZGV:DoMutex("GoldFarmCDRAGON") then return end

ZygorGuidesViewer.GuideMenuTier = "SHA"

--@@ONLYDEVSTART
ZGV.DevStart()
ZGV.DevEnd()
--@@ONLYDEVEND

-----------------------
-----    CLOTH    -----
-----------------------

--@@ONLYDEVSTART
ZGV.DevStart()
ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Tattered Wildercloth/Wildercloth (No Tailoring)",{
	meta={goldtype="route",levelreq={60},itemtype="cloth"},
	items={{193050,1},{193922,1}},
	maps={"The Azure Span"},
	},[[
	step
	label "Start"
		Kill Brinetooth enemies around this area
		|goldcollect 1 Tattered Wildercloth##193050 |goto The Azure Span/0 10.08,43.41 |n
		|goldcollect 1 Wildercloth##193922 |goto The Azure Span/0 10.08,43.41 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
		//242x4g=968
		//3x4 Wildercloth = 12
		//29x4 Tattered Wildercloth=116
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Cloth |confirm |next "Start"
]])

--------------------------
-----    COOKING    ------
--------------------------

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Maybe Meat",{
	meta={goldtype="route",levelreq={60},itemtype="food"},
	items={{197741,1}},
	maps={"Ohn'ahran Plains"},
	},[[
	step
	label "Start"
		map Ohn'ahran Plains/0
		path follow smart; loop on; ants curved; dist 35
		path	52.74,47.58	53.89,48.74	55.34,49.75	54.56,50.46	53.31,50.98
		path	52.68,51.27	51.57,49.66	50.25,49.15	51.34,47.16
		Kill Thunderspine enemies around this area
		|tip Follow the path, killing and looting along the way.
		|goldcollect 1 Maybe Meat##197741 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
		//32 Maybe Meat x4 = 128
		//179g vendor trash x4 = 716
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Maybe Meat |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Basilisk Eggs",{
	meta={goldtype="route",levelreq={60},itemtype="food"},
	items={{197745,1}},
	maps={"The Waking Shores"},
	},[[
	step
	label "Start"
		map The Waking Shores/0
		path follow smart; loop on; ants curved; dist 35
		path	68.87,52.63	69.43,49.88	68.26,49.94	67.65,51.68
		Follow the path
		Kill Basilisk enemies around this area
		|tip Follow the path, killing and looting along the way.
		|goldcollect 1 Basilisk Eggs##197745 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
		//29 Basilisk Eggx3 = 116
		//2 Maybe Meatx4 = 8
		//113g vendor trashx4 = 532
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Basilisk Eggs |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Bruffalon Flank",{
	meta={goldtype="route",levelreq={60},itemtype="food"},
	items={{197746,1}},
	maps={"Ohn'ahran Plains"},
	},[[
	step
	label "Start"
		map Ohn'ahran Plains/0
		path follow smart; loop on; ants curved; dist 20
		path	49.19,28.29	49.75,26.91	50.73,27.09	51.23,28.08	50.78,29.19
		path	50.84,30.69	50.38,31.76	49.32,32.24	48.74,31.32	48.75,30.02
		Kill Bruffalon enemies around this area
		|tip Follow the path, killing and looting along the way.
		|goldcollect 1 Bruffalon Flank##197746 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
		//118 Bruffalon Flankx4 = 472
		//9 Maybe Meatx4 = 36
		//3 Large Sturdy Femurx4 = 12
		//92g vendor trashx4 = 368
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Bruffalon Flank |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Burly Bear Haunch (The Azure Span)",{
	meta={goldtype="route",levelreq={60},itemtype="food"},
	items={{197748,1}},
	maps={"The Azure Span"},
	},[[
	step
	label "Start"
		map The Azure Span/0
		path follow smart; loop on; ants curved; dist 25
		map The Azure Span
		path	46.55,43.78	46.62,45.07	47.30,46.29	47.17,47.35	47.99,47.70
		path	48.50,46.88	49.86,47.25	51.56,46.44	52.11,45.34	53.24,45.49
		path	53.34,46.88	54.13,46.97	54.18,45.68	54.87,45.03	55.13,43.63
		path	54.48,41.93	55.16,41.23	56.08,39.80	56.99,38.10	54.38,38.58
		path	52.96,39.60	51.28,40.32	49.93,40.17	49.58,40.62
		kill Frostsnout Bear##199354
		|tip Follow the path, killing and looting along the way.
		|goldcollect Burly Bear Haunch##197748 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
		//32 Burly Bear Haunchx4 = 128
		//21 Maybe Meatx4 = 84
		//131g Vendor Trashx4 = 524
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Burly Bear Haunch |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Burly Bear Haunch (Thaldraszus)",{
	meta={goldtype="route",levelreq={60},itemtype="food"},
	items={{197748,1}},
	maps={"Thaldraszus"},
	},[[
	step
	label "Start"		
		map Thaldraszus
		path    55.66,75.38    55.23,74.91    53.49,76.69    53.72,77.62    55.10,79.11
		path    56.93,74.74
		//[Thaldraszus/0 53.49,76.61]
		//[Thaldraszus/0 53.29,77.50]
		//[Thaldraszus/0 55.02,79.07]
		//[Thaldraszus/0 57.02,74.85]
		kill Time-Charged Bear##195635
		|goldcollect 1 Burly Bear Haunch##197748 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Burly Bear Haunch |confirm |next "Start"
		//13 Burly Bear Haunchx4 =  52
		//11 Maybe Meatx4 = 44
		//99g vendor trash = 396
		//don't recommend
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Hornswog Hunk",{
	meta={goldtype="route",levelreq={60},itemtype="food"},
	items={{197744,1}},
	maps={"The Azure Span"},
	},[[
	step
	label "Start"
		map The Azure Span/0
		path follow smart; loop on; ants curved; dist 25
		map The Azure Span
		path	38.75,64.45	39.20,64.72	39.62,64.02	40.46,62.99	41.27,63.47
		path	41.79,62.93	41.21,61.04	40.79,61.36	40.10,59.66	39.64,59.27
		path	39.67,60.98	38.84,61.16	37.82,60.92	38.17,62.18	38.75,62.30
		path	39.49,62.33
		Follow the path
		Kill Hornswog enemies around this area
		|tip Follow the path, killing and looting along the way.
		|tip They look like blue frogs with black horns.
		|tip There are a few near the base of the giant crystal.
		|goldcollect 1 Hornswog Hunk##197744 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
		//49 Hornswog Hunk = 196
		//114g Vendor Trashx4 = 456
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Hornswog Hunk |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Mighty Mammoth Ribs",{
	meta={goldtype="route",levelreq={60},itemtype="food"},
	items={{197747,1}},
	maps={"Ohn'ahran Plains"},
	},[[
	step
	label "Start"
		map Ohn'ahran Plains/0
		path follow smart; loop on; ants curved; dist 20
		path	70.49,51.94	71.40,53.89	73.09,52.32	73.80,54.24	75.48,52.43 
		path	73.61,51.25	74.67,50.39	75.63,49.32	74.34,48.90	72.99,45.89
		path	70.73,45.81	70.67,48.49	70.03,49.53
		Kill mammoth enemies around this area
		|tip Follow the path, killing and looting Bloodskin Tauraluss and Furious Alphahoof enemies along the way.
		|goldcollect 1 Mighty Mammoth Ribs##197747 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
		//50 Mighty Mammoth Ribsx4 = 200
		//13 Maybe Meatx4 = 65
		//1 Mastadon Tuskx4 = 4
		//63g Vendor Trashx5 = 252g
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Mighty Mammoth Ribs |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Waterfowl Filet",{
	meta={goldtype="route",levelreq={60},itemtype="food"},
	items={{197743,1}},
	maps={"Ohn'ahran Plains"},
	},[[
	step
	label "Start"
		map Ohn'ahran Plains/0
		path follow smart; loop on; ants curved; dist 20
		path	69.38,35.87	69.40,36.96	69.42,37.88	69.89,38.54	70.45,39.28
		path	70.63,38.13	70.51,36.59	70.35,35.43
		kill Jadethroat Mallard##190708+
		|tip Follow the path, killing and looting Bloodskin Tauraluss and Furious Alphahoof enemies along the way.
		|goldcollect 1 Waterfowl Filet##197743 |n
		|goldtracker
		|tip
		Click Here for an Alternate Location |confirm
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm |next "Auction"
	step
		map Ohn'ahran Plains
		path follow strictbounce; loop off; dist 20
		path	41.17,54.70	42.10,55.08	41.86,56.19	40.37,55.33	39.50,54.30
		path	38.44,54.72	37.67,54.67	38.14,54.07
		Kill Waddler enemies around this area
		|goldcollect 1 Waterfowl Filet##197743 |n
		|goldtracker
		|tip
		Click Here for an Alternate Location |confirm |next "Start"
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
		//83 Contoured Fowl Feather
		//26 Waterfowl Filet
		//65g Vendor Trash
	step
	label "Auction"
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Waterfowl Filet |confirm |next "Start"
]])

-------------------------------------
-----    ELEMENTAL REAGENTS    ------
-------------------------------------

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Rousing Air",{
	meta={goldtype="route",levelreq={60},itemtype="elemental"},
	items={{190326,1}},
	maps={"The Azure Span"},
	},[[
	step
	label "Start"
		map The Azure Span/0
		path follow smart; loop on; ants curved; dist 20
		path	45.78,57.35	46.18,56.13	46.66,55.42	47.13,54.48	47.01,55.77	
		path	47.22,56.47	46.80,57.01	46.88,57.82	47.45,58.16	47.64,58.70
		path	47.22,58.92	46.98,59.34	46.57,59.35	46.34,57.62 
		Follow the path
		kill Restless Wind##186397+
		|goldcollect 1 Rousing Air##190326 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
		//27 Rousing Airx4 = 108
		//18 Elemental motex4 = 72
		//137g Vendor Trashx4= 584
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Rousing Air |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Rousing Earth",{
	meta={goldtype="route",levelreq={60},itemtype="elemental"},
	items={{190315,1}},
	maps={"The Waking Shores"},
	},[[
	step
	label "Start"
		map The Waking Shores/0
		path follow smart; loop on; ants curved; dist 20
		path	52.19,32.87	50.73,33.22	49.95,33.73	49.29,33.52	49.63,31.58
		path	50.23,30.93	50.98,31.30	52.49,30.87	53.65,31.43	53.34,32.31
		path	52.55,32.60	51.81,33.07
		Kill Elemental enemies around this area
		|goldcollect 1 Rousing Earth##190315 |n
		|tip These also have a chance to be gathered from "Hardened" and "Primal" Mining nodes.
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
		//28 Rousing Earthx4 = 112
		//80g Vendor Trashx4 = 320
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Rousing Earth |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Rousing Fire",{
	meta={goldtype="route",levelreq={60},itemtype="elemental"},
	items={{190320,1}},
	maps={"The Waking Shores"},
	},[[
	step
	label "Start"
		map The Waking Shores/0
		path follow smart; loop on; ants curved; dist 20
		map The Waking Shores
		path    39.08,70.90    37.79,68.78    37.37,69.82    37.81,71.47    37.12,71.92
		path    35.60,72.14    36.92,73.94    37.24,75.45    38.37,76.00    39.36,74.59
		path    39.13,72.77    37.85,72.88
		kill Blazing Manifestation##186336+
		|goldcollect 1 Rousing Fire##190320 |n
		|tip These also have a chance to be gathered from "Molten" and "Primal" Mining nodes.
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
		//22 Rousing Firex4 =  88
		//116g Vendor Trashx4 = 464
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Rousing Fire |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Rousing Frost",{
	meta={goldtype="route",levelreq={60},itemtype="elemental"},
	items={{190328,1}},
	maps={"The Waking Shores"},
	},[[
	step
	label "Start"
		map The Waking Shores/0
		path follow smart; loop on; ants curved; dist 20
		path	47.57,59.13	48.18,61.09	49.82,61.61	50.26,59.59	48.84,59.09
		kill Angered Steam##190694+
		kill Steam Reaver##190700+
		|goldcollect 1 Rousing Frost##190328 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
		//9 Rousing Frostx4 = 36
		//123g Vendor Trashx4 = 492g
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Rousing Frost |confirm |next "Start"
]])
ZGV.DevEnd()
--@@ONLYDEVEND

--@@ONLYDEVSTART
ZGV.DevStart()
ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Rousing Decay",{
	meta={goldtype="route",levelreq={60},itemtype="elemental"},
	items={{190330,1}},
	maps={"The Waking Shores"},
	},[[
	step
	label "Start"
		--The fishing trick from the wowhead comments seems to be the best method of farming.
		--Rotting tuna from ice fishing
		|goldcollect 1 Rousing Decay##190330 |n
		|tip These are gathered from the "Decayed" nodes from Hochenblume, Bubble Poppy, Saxifrage and Writherbark.
		|goldtracker
		|tip
		Fishing |confirm
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm |next "AH"
	step
		talk Elder Poa##186448 |goto The Azure Span/0 12.41,49.34
		|tip Inside the building.
		|tip Turn in Stolen Totems from treasures in The Azure Span for rep.
		'|turnin More Stolen Totems##70927 |repeatable |n
		'|turnin Stolen Totems##70926 |repeatable |n
		'|turnin Story of a Memorable Victory##72291 |n
		Reach Renown Level 10 with the Iskaara Tuskarr |complete factionrenown(2511) >= 10
		|tip Complete daily quests, weekly quests, and zone quests in The Azure Span to gain renown.
	step
		cast Fishing##131474
		|tip Fish in any water in the Dragon Isles to gain skill points.
		Reach Skill Level 50 in Dragon Isles Fishing |skill Dragon Isles Fishing,50
	step
		talk Tavio##195935
		accept Ice Fishing##70944 |goto The Azure Span/0 12.82,49.18
	step
		click Old Pickaxe
		collect Pickaxe Blade##200078 |goto 18.88,24.29 |q 67141 |future
	step
		talk Tavio##195935
		|tip Choose the "Fishing Spots" category and then the "Iskaaran Ice Axe" entry.
		|tip Click the "Create" button.
		Create an Iskaaran Ice Axe |q 67141 |goto The Azure Span/0 12.82,49.18 |future	
	step
		cast Fishing##131474
		|tip Use the Iskaaran Ice Axe to reveal Rimefin Tuna Pools around this area.
		|tip Click the Fishing Bobber when it bounces in the water.
		|tip Keep repeating this process.
		collect Frosted Rimefin Tuna##200074 |n |goto The Azure Span/0 72.81,45.78 |n
		use Frosted Rimefin Tuna##200074
		collect Rimefin Tuna##199345 |n
		|tip Wait for an hour for them to rot.
		|tip These will take up an inventory space for each that you use.
		|use Rotten Rimefin Tuna##199346
		|tip IMPORTANT: DO NOT COMBINE THEM!
		|tip There is currently a bug that will cause you to lose the entire stack and Blizzard will do nothing about it.
		|goldcollect Maybe Meat##197741 |n
		|goldcollect Rousing Frost##190328 |n
		|goldcollect Rousing Decay##190330 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
		//60 Frosted Rimefin Tuna gave:
		//20 Rousing Frost
		//25 Rousing Decay
		//117 Maybe Meat
	step
	label "AH"
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Rousing Decay |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Rousing Order",{
	meta={goldtype="route",levelreq={60},itemtype="elemental"},
	items={{190322,1}},
	maps={"The Waking Shores"},
	},[[
	step
	label "Start"
		|goldcollect 1 Rousing Order##190322 |n
		|tip These have a chance to be gathered from "Titan-Touched" nodes.
		|tip Refer to the Bubble Poppy/Saxifrage guide for Herbalism.
		|tip Refer to the Serevite/Draconium/Khaz'gorite Ore guide for Mining.
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Rousing Order |confirm |next "Start"
]])
ZGV.DevEnd()
--@@ONLYDEVEND