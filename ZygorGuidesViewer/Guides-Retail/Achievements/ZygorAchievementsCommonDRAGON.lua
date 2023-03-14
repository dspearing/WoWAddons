local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("AchievementsCDRAGON") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Character Achievements\\Professions\\In Tyr's Footsteps",{
author="support@zygorguides.com",
description="\n",
achieveid={16683},
patch='100002',
startlevel=70,
keywords={"Dragonflight", "Exploration"},
},[[
step
Earn the "In Tyr's Footsteps" Achievement |achieve 16683
|tip Refer to the "Dragonflight Campaign" to accomplish this.
Click Here to Load the Guide |confirm |next "Leveling Guides\\Dragonflight (60-70)\\Dragonflight Campaign"
step
_Congratulations!_
You Earned the "In Tyr's Footsteps" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Character Achievements\\Professions\\Discombobberlated",{
author="support@zygorguides.com",
description="Catch 100 fish while using an Oversized Bobber.",
achieveid={17207},
patch='100002',
startlevel=5,
keywords={"Dragonflight", "Exploration"},
},[[
step
talk Pakak##187783
|tip Walking around this area.
buy Oversized Bobber##136377 |goto Valdrakken/0 43.97,74.88 |n
|tip These last for an hour each.
Click Here to Continue |confirm |achieve 17207
step
use the Oversized Bobber##136377
Gain the "Oversized Bobber" Buff |complete hasbuff("spell:207700") |achieve 17207
Fish in Open Water
|tip Progress for this achievement can be done anywhere.
Catch #100# Fish while using an Oversized Bobber |achieve 17207
step
_Congratulations!_
You Earned the "Discombobberlated" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Character Achievements\\Professions\\Sleeping on the Job",{
author="support@zygorguides.com",
description="Target and use the /sleep emote next to the Dreamguards of Ohn'ahran Plains.",
achieveid={16574},
patch='100002',
startlevel=5,
keywords={"Dragonflight", "Exploration"},
},[[
step
Enter the building |goto Ohn'ahran Plains/0 29.70,60.88 < 7 |walk
talk Dreamguard Erezsra##198068
|tip Inside the building.
|tip Use the "/sleep" emote next to Dreamguard Erezsra.
Use the "Sleep Emote" next to Dreamguard Erezsra |achieve 16574/2 |goto Ohn'ahran Plains/0 29.80,62.22
step
talk Dreamguard Sayliasra##198069
|tip Use the "/sleep" emote next to Dreamguard Sayliasra.
Use the "Sleep Emote" next to Dreamguard Sayliasra |achieve 16574/3 |goto Ohn'ahran Plains/0 25.26,65.27
step
talk Dreamguard Aiyelasra##198074
|tip Use the "/sleep" emote next to Dreamguard Aiyelasra.
Use the "Sleep Emote" next to Dreamguard Aiyelasra |achieve 16574/4 |goto Ohn'ahran Plains/0 18.12,53.88
step
talk Dreamguard Taelyasra##198075
|tip Use the "/sleep" emote next to Dreamguard Taelyasra.
Use the "Sleep Emote" next to Dreamguard Taelyasra |achieve 16574/6 |goto Ohn'ahran Plains/0 29.42,41.40
step
talk Dreamguard Felyasra##198064
|tip At the base of the waterfall.
|tip Use the "/sleep" emote next to Dreamguard Felyasra.
Use the "Sleep Emote" next to Dreamguard Felyasra |achieve 16574/1 |goto Ohn'ahran Plains/0 33.55,53.21
step
talk Dreamguard Lucidra##198073
|tip Use the "/sleep" emote next to Dreamguard Lucidra.
Use the "Sleep Emote" next to Dreamguard Lucidra |achieve 16574/5 |goto Ohn'ahran Plains/0 19.12,83.00
step
_Congratulations!_
You Earned the "Sleeping on the Job" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Dragon Isles\\Dragonscale Expedition: The Highest Peaks",{
author="support@zygorguides.com",
description="\nPlace a flag on 10 of the tallest peaks in the Dragon Isles.",
condition_suggested=function() return level == 70 and factionrenown(2507) >= 6 and not achieved(64556) end,
achieveid={15890},
startlevel=70,
keywords={"Dragonflight","Exploration","Flag","Reputation"},
patch='100002',
},[[
step
talk Cataloger Jakes##189226 |goto The Waking Shores/0 47.11,82.58
|tip Inside the tent.
|tip Turn in Dragon Isles Artifacts from treasures and supply packs all over The Waking Shores.
'|turnin Multiple Dragon Isles Artifacts##72876
'|turnin Multiple Dragon Isles Artifacts##71035
'|turnin Dragon Isles Artifacts##71034
Reach Renown Level 6 with the Dragonscale Expedition |complete factionrenown(2507) >= 6
|tip Complete daily quests, weekly quests, and zone quests in The Waking Shores to gain renown.
|tip You can also gain renown by completing weekly quests using the "Dragonscale Basecamp Weekly Quests" guide.
step
click Expedition Supply Kit
Learn the Cartographer's Flag Ability |specialtalent Cartographer's Flag##2164 |goto The Waking Shores/0 47.31,83.38
step
click Dragonscale Expedition Flag
Plant the Wingrest Embassy Flag |q 70824 |goto The Waking Shores/0 73.36,38.85 |future |notravel
step
click Dragonscale Expedition Flag
|tip Up on the top of the tower.
Plant the Concord Observatory Flag |q 70823 |goto The Waking Shores/0 56.02,45.41 |future |notravel
step
click Dragonscale Expedition Flag
|tip Up on the top of the tower.
Plant the Obsidian Observatory Flag |q 70825 |goto The Waking Shores/0 43.97,62.95 |future |notravel
step
click Dragonscale Expedition Flag
|tip At the tip of the mountain.
|tip If you have trouble landing, fly into the side of the mountain and then straight up to stall your speed.
|tip Then try to descend onto the peak.
Plant the Dragonbane Keep Flag |q 70826 |goto The Waking Shores/0 28.71,47.73 |future |notravel
step
click Dragonscale Expedition Flag
|tip On top of the mountain.
Plant the Flashfrost Enclave Flag |q 71204 |goto The Waking Shores/0 54.80,74.12 |future |notravel
step
click Dragonscale Expedition Flag
|tip Inside the top of the tower.
Plant the Rusza'thar Reach Flag |q 71208 |goto Ohn'ahran Plains/0 86.31,39.28 |future |notravel
step
click Dragonscale Expedition Flag
|tip At the top of the statue.
Plant the Ohn'ahra's Roost Flag |q 70827 |goto Ohn'ahran Plains/0 57.75,30.81 |future |notravel
step
click Dragonscale Expedition Flag
|tip At the tip of the mountain.
|tip If you have trouble landing, fly into the side of the mountain and then straight up to stall your speed.
|tip Then try to descend onto the peak.
Plant the Nokhudon Hold Flag |q 71207 |goto Ohn'ahran Plains/0 30.39,36.46 |future |notravel
step
click Dragonscale Expedition Flag
|tip At the tip of the mountain.
Plant the Teerakai Flag |q 71200 |goto Ohn'ahran Plains/0 28.32,77.64 |future |notravel
step
click Dragonscale Expedition Flag
|tip At the tip of the mountain.
Plant the Ancient Outlook Flag |q 71215 |goto The Azure Span/0 31.91,27.03 |future |notravel
step
click Dragonscale Expedition Flag
|tip On the balcony at the top of the tower.
Plant the Cobalt Assembly Flag |q 71218 |goto The Azure Span/0 46.14,24.99 |future |notravel
step
click Dragonscale Expedition Flag
|tip At the tip of the mountain.
Plant the Azure Archives Flag |q 71216 |goto The Azure Span/0 37.47,66.21 |future |notravel
step
click Dragonscale Expedition Flag
|tip At the tip of the mountain.
Plant the Snowhide Camp Flag |q 71220 |goto The Azure Span/0 63.08,48.66 |future |notravel
step
click Dragonscale Expedition Flag
|tip At the top of the mountain.
Plant the Vakthros Range Flag |q 71221 |goto The Azure Span/0 74.85,43.24 |future |notravel
step
click Dragonscale Expedition Flag
Plant the Theron's Watch Flag |q 71217 |goto The Azure Span/0 77.44,18.38 |future |notravel
step
click Dragonscale Expedition Flag
|tip At the tip of the mountain.
Plant the Eon's Fringe Flag |q 71223 |goto Thaldraszus/0 65.72,74.98 |future |notravel
step
click Dragonscale Expedition Flag
|tip On top of the floating rock.
Plant the Vault of the Incarnates Flag |q 71224 |goto Thaldraszus/0 64.63,56.72 |future |notravel
step
click Dragonscale Expedition Flag
|tip At the tip of the mountain.
Plant the Stormshroud Peak Flag |q 70039 |goto Thaldraszus/0 50.16,81.63 |future |notravel
step
click Dragonscale Expedition Flag
|tip At the tip of the mountain.
Plant the Bluefeather Cliffs Flag |q 70024 |goto Thaldraszus/0 46.10,73.98 |future |notravel
step
click Dragonscale Expedition Flag
Plant the South Hold Gate Flag |q 71222 |goto Thaldraszus/0 34.04,84.85 |future |notravel
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Dragon Isles\\Symbols of Hope",{
author="support@zygorguides.com",
description="\nRelease 10 Hope Kites that were tethered by locals of the Waking Shores while waiting for the dragonflights' return.",
condition_suggested=function() return level == 60 and not achieved(16584) end,
achieveid={16584},
startlevel=60,
keywords={"Dragonflight","Exploration","Kite"},
patch='100002',
},[[
step
click Hope Kite
|tip On the edge of the platform.
Release the Apex Canopy Hope Kite |q 72101 |goto The Waking Shores/0 24.04,89.94 |future |notravel
step
click Hope Kite
|tip At the top of the tower.
Release the Obsidian Observatory Hope Kite |q 72100 |goto The Waking Shores/0 43.55,63.82 |future |notravel
step
click Hope Kite
|tip On the edge of the platform.
Release The Overflowing Spring Hope Kite |q 72102 |goto The Waking Shores/0 50.27,55.62 |future |notravel
step
click Hope Kite
|tip Inside the top of the tower.
Release the Crumbling Life Archway Hope Kite |q 72098 |goto The Waking Shores/0 56.73,57.99 |future |notravel
step
click Hope Kite
|tip Inside the top of the tower.
Release the Concord Observatory Hope Kite |q 72103 |goto The Waking Shores/0 57.12,46.39 |future |notravel
step
click Hope Kite
|tip On the edge of the platform.
Release the Overflowing Rapids Hope Kite |q 72104 |goto The Waking Shores/0 48.86,39.94 |future |notravel
step
click Hope Kite
|tip Inside the top of the tower.
Release the Life-Binder Conservatory Hope Kite |q 72105 |goto The Waking Shores/0 57.01,19.98 |future |notravel
step
click Hope Kite
|tip At the top of the tower.
Release the Wingrest Embassy Hope Kite |q 72096 |goto The Waking Shores/0 73.19,37.76 |future |notravel
step
click Hope Kite
|tip On top of the wall.
Release the Skytop Observatory Hope Kite |q 72097 |goto The Waking Shores/0 73.03,52.92 |future |notravel
step
click Hope Kite
|tip Inside the top of the tower.
Release the Hatchery Observatory Hope Kite |q 72099 |goto The Waking Shores/0 61.69,80.83 |future |notravel
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Dragon Isles\\Honor Our Ancestors",{
author="support@zygorguides.com",
description="\nDeliver 10 gifts to 10 Ancestors found throughout the Ohn'ahran Plains.",
condition_suggested=function() return level == 60 and not achieved(16423) end,
achieveid={16423},
startlevel=60,
keywords={"Dragonflight","Exploration"},
patch='100002',
},[[
step
You Are About to Collect Several Items Required for an Achievement
|tip Be sure not to sell them.
Click Here to Continue |confirm |achieve 16423
step
collect 4 Vibrant Shard##194124 |n
collect 1 Awakened Air##190327 |n
collect 1 Awakened Earth##190316 |n
|tip The materials above are required for making the enchant required.
|tip Find an Enchanter if you are unable to craft these yourself.
collect 1 Enchant Boots - Plainsrunner's Breeze##200018 |or
'|achieve 16423/2 |or
|tip You can also buy it from the Auction House.
step
collect 10 Resilient Leather##193208 |n
collect 1 Dense Hide##193216 |n
|tip The materials above are require to craft the drums required.
|tip Find a Leatherworker if you are unable to craft these yourself.
collect 1 Feral Hide Drums##193470 |or
'|achieve 16423/5 |or
|tip You can also buy them from the Auction House.
step
Kill Nokhud enemies around this area
|tip They are elite and you may need help with this.
collect Nokhud Battle Helm##200184 |n
collect Nokhud Battle Tunic##200194 |n
collect Nokhud Battle Barding##200196 |n
|tip Each of the above items have a 30 minute duration.
collect Nokhud Battlegear##200201 |goto 2023 35,39 |or
'|achieve 16423/3 |or
step
use Nokhud Battlegear##200201
Gain the Nokhud Martial Disguise |complete hasbuff("spell:389168") |goto 35.84,42.32 |or
'|achieve 16423/3 |or
step
talk Relothina##196834
buy Horn o' Mead##194690 |goto Ohn'ahran Plains/0 35.6,42.2 |or
'|achieve 16423/3 |or
step
collect 4 Maybe Meat##197741 |n
collect 3 Mighty Mammoth Ribs##197747 |n
|tip The materials above are require to craft the kabob required.
|tip Find a Cook if you are unable to craft these yourself.
collect 1 Thrice-Spiced Mammoth Kabob##197776 |or
'|achieve 16423/1 |or
|tip You can also buy it from the Auction House.
step
collect 1 Aileron Seamoth##194967 |n
collect 4 Bruffalon Flank##197746 |n
collect 1 Assorted Exotic Spices##197757 |n
|tip The materials above are require to craft the brisket required.
|tip Find a Cook if you are unable to craft these yourself.
collect 1 Braised Bruffalon Brisket##197788 |or
'|achieve 16423/7 |or
|tip You can also buy it from the Auction House.
step
map Ohn'ahran Plains/0
path follow smart; loop on; ants curved; dist 20
path	49.19,28.29	49.75,26.91	50.73,27.09	51.23,28.08	50.78,29.19
path	50.84,30.69	50.38,31.76	49.32,32.24	48.74,31.32	48.75,30.02
Kill Bruffalon enemies around this area
collect 1 Exceptional Pelt##202070 |or
'|achieve 16423/4 |or
|tip You can also buy it from the Auction House.
step
map The Azure Span/0
path follow smart; loop on; ants curved; dist 20
path	45.78,57.35	46.18,56.13	46.66,55.42	47.13,54.48	47.01,55.77
path	47.22,56.47	46.80,57.01	46.88,57.82	47.45,58.16	47.64,58.70
path	47.22,58.92	46.98,59.34	46.57,59.35	46.34,57.62
Follow the path
kill Restless Wind##186397+
collect 10 Rousing Air##190326 |n
use Rousing Air##190326
collect 1 Awakened Air##190327 |or
'|achieve 16423/6 |or
|tip You can also buy it from the Auction House.
step
map The Azure Span/0
path follow smart; loop on; ants curved; dist 20
path	45.78,57.35	46.18,56.13	46.66,55.42	47.13,54.48	47.01,55.77
path	47.22,56.47	46.80,57.01	46.88,57.82	47.45,58.16	47.64,58.70
path	47.22,58.92	46.98,59.34	46.57,59.35	46.34,57.62
Follow the path
kill Restless Wind##186397+
collect Elemental Mote##202071 |or
'|achieve 16423/8 |or
|tip You can also buy it from the Auction House.
step
collect Fire-Blessed Greatsword##199049 |or
|tip This is a random world drop.
|tip You can buy it from the Auction House.
'|achieve 16423/9 |or
step
map The Azure Span/0
path follow smart; loop on; ants curved; dist 40
path	23.67,48.05	22.43,48.08	19.37,46.87	17.35,42.24	19.66,38.24
path	19.97,33.96	21.71,28.38	25.63,32.27	25.90,41.19	28.80,36.28
path	29.86,34.48	33.69,35.89	34.56,33.74	37.99,33.57	39.06,38.48
path	40.53,44.13	35.55,42.66	32.68,42.15	30.07,45.87	27.81,46.14
click Writhebark##381154+
|tip These require the herbalism skill to gather.
collect 5 Writhebark##191471 |or
|tip They must be rank 2.
'|achieve 16423/10 |or
|tip You can also buy it from the Auction House.
step
label "Start"
click Essence of Awakening##376105
|tip It looks like a purple pile of crystals on the crate inside the building.
Gain the "Essence of Awakening" Buff |complete hasbuff("spell:369277") |goto Ohn'ahran Plains/0 85.71,20.74
step
talk Muqur Swiftshot##197050
|tip He walks around this area.
Choose _<Give Enchant Boots - Plainsrunner's Breeze.>_
Present offerings to the "Timberstep Outpost Ancestor" |achieve 16423/2 |goto 84.81,24.46
step
talk Shikari Khan##197053
|tip She walks around this area.
Choose _<Give Feral Hide Drums.>_
Present offerings to the "Shikaar Highlands Ancestor" |achieve 16423/5 |goto 85.51,49.65
step
talk Deritetsin the Carver##197051
|tip On top of the rock.
Choose _<Give Horn o' Mead.>_
Present offerings to the "Horn of Drusahl Ancestor" |achieve 16423/3 |goto 75.92,42.05
step
talk Mariq Dotur##197048
|tip Walking around on this area.
Choose _<Give Thrice-Spiced Mammoth Kabaobs.>_
Present offerings to the "Maruukai Ancestor" |achieve 16423/1 |goto 60.31,37.97
step
talk Talis##197055
Choose _<Give 2 Braised Bruffalon Brisket.>_
Present offerings to the "Sylvan Glade Ancestor" |achieve 16423/7 |goto 63.28,57.32
step
talk Faraqseng Khan##197052
|tip Walking around the area.
Choose _<Give Exceptional Pelt.>_
Present offerings to the "Toghusuq Village Ancestor" |achieve 16423/4 |goto 72.71,56.92
step
talk Himia, the Blessed##197054
|tip Walking around the area.
Choose _<Give Awakened Air.>_
Present offerings to the "The Carving Winds Ancestor" |achieve 16423/6 |goto 74.49,70.77
step
talk Ohn Kanosung##197056
|tip Walking around the area.
Choose _<Give Elemental Mote.>_
Present offerings to the "Ohn'iri Springs Ancestor" |achieve 16423/8 |goto 54.01,78.56
step
talk Jhakan Khan##197057
Choose _<Give Fire-Blessed Greatsword.>_
Present offerings to the "Teerakai Ancestor" |achieve 16423/9 |goto 41.64,56.89
step
talk Dihar the Unyielding##197058
|tip Running around this area.
Choose _<Give 5 Writhebark.>_
|tip They must be rank 2.
Present offerings to the "The Eternal Kurgans Ancestor" |achieve 16423/10 |goto 31.29,68.47
step
_Congratulations!_
You Earned the "Honor Our Ancestors" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Dragon Isles\\That's Pretty Neat!",{
author="support@zygorguides.com",
description="\nUse the S.E.L.F.I.E. Camera to take pictures with various wildlife found on the Dragon Isles.",
condition_suggested=function() return level == 60 and not achieved(16446) end,
achieveid={16446},
startlevel=60,
keywords={"Dragonflight","Exploration"},
patch='100002',
},[[
step
talk Arielle Snapflash##16908						|only Alliance
accept Light Camera Action##32470 |goto Stormwind City/0 61.33,22.68	|only Alliance
talk Vivica Starshot##16926						|only Horde
accept Light Camera Action##32470 |goto Orgrimmar/1 34.50,70.82		|only Horde
|tip This quest seems to be bugged.
|tip Logging in and out may make it appear.
step
click Weathered Supply Crate##278802						|only Alliance
collect 1 Iron Box##155856 |q 32470/1 |goto Stormwind City/0 68.06,67.12	|only Alliance
talk Tor'phan##3315								|only Horde
|tip Inside the building.							|only Horde
buy 1 Russet Belt##3593 |q 32470/3 |goto Orgrimmar/1 60.92,59.96		|only Horde
step
talk Duncan Cullen##1314						|only Alliance
|tip Inside the building.						|only Alliance
buy Russet Belt##3593 |q 32470/3 |goto Stormwind City/0 53.18,82.04	|only Alliance
click Weathered Supply Crate##278802					|only Horde
collect 1 Iron Box##155856 |q 32470/1 |goto 63.77,19.57			|only Horde
step
collect 1 Standard Scope##4406 |q 32470/2				|only Alliance
collect 1 Standard Scope##4406 |q 32470/2				|only Horde
|tip These are crafted by the Engineering profession.
|tip You can also buy them from the Auction House.
step
talk Arielle Snapflash##16908						|only Alliance
turnin Light Camera Action##32470 |goto Stormwind City/0 61.33,22.68	|only Alliance
talk Vivica Starshot##16926						|only Horde
turnin Light Camera Action##32470 |goto Orgrimmar/1 34.50,70.82		|only Horde
step
This Achievement Will Have You Taking Pictures of Rare Spawns Throughout the Dragon Isles
|tip This will likely take a while to complete for that very reason.
|tip Rare spawn timers may be affected by maintenance.
Click Here to Continue |confirm
step
use the S.E.L.F.I.E. Camera##122637
Take a Picture with the S.E.L.F.I.E. camera with "Forgotten Gryphon" |achieve 16446/8 |goto The Waking Shores/0 33.11,76.30 |or
|tip This is a rare spawn.
|tip It allegedly appears between 18:30 PST (6:30pm PST) and 20:30 (8:30pm PST).
|tip If the Forgotten Gryphon is here, Avis Gryphonheart, Halia Cloudfeather and Palla of the Wing will also be here.
Click Here to Continue |confirm |or
step
use the S.E.L.F.I.E. Camera##122637
'|talk Territorial Axebeak##192186
Take a Picture with the S.E.L.F.I.E. camera with "Territorial Axebeak" |achieve 16446/19 |goto 59.05,50.24
|tip In the trees around this area.
step
map The Waking Shores/0
path follow strictbounce; loop off; ants curved; dist 25
path	40.65,74.87	44.82,77.08	49.17.74.19	50.64,67.07	51.93,62.65
path	55.14,58.32	53.79,53.12	51.09,48.60	49.55,45.13	49.23,41.19
path	50.71,38.20	54.24,34.35	58.73,37.14	60.40,40.80	60.01,47.63
path	60.94,54.50	64.47,59.60	68.71,59.99	69.03,54.79	68.27,50.38
path	71.48,48.07	73.27,45.56	71.86,42.77	68.59,43.16
Follow the path
|tip Drakewing is flying over the river.
'|talk Drakewing##193217
use the S.E.L.F.I.E. Camera##122637
Take a Picture with the S.E.L.F.I.E. camera with "Drakewing" |achieve 16446/5 |goto 49.81,69.61
step
use the S.E.L.F.I.E. Camera##122637
Take a Picture with the S.E.L.F.I.E. camera with "Avis Gryphonheart" |achieve 16446/2 |goto Ohn'ahran Plains/0 58.60,20.66
|tip If the "Forgotten Gryphon" rare spawn is up, she can be found at the location below.
|tip IMPORTANT: The Forgotten Gryphon is also needed for this achievement.
She may also be found around here [The Waking Shores/0 51.41,18.41]
step
use the S.E.L.F.I.E. Camera##122637
Take a Picture with the S.E.L.F.I.E. camera with "Halia Cloudfeather" |achieve 16446/10 |goto 58.63,20.82
|tip If the "Forgotten Gryphon" rare spawn is up, he can be found at the location below.
|tip IMPORTANT: The Forgotten Gryphon is also needed for this achievement.
He may also be found around here [The Waking Shores/0 51.41,18.41]
step
use the S.E.L.F.I.E. Camera##122637
Take a Picture with the S.E.L.F.I.E. camera with "Palla of the Wing" |achieve 16446/16 |goto 58.67,20.73
|tip If the "Forgotten Gryphon" rare spawn is up, he can be found at the location below.
|tip IMPORTANT: The Forgotten Gryphon is also needed for this achievement.
He may also be found around here [The Waking Shores/0 51.41,18.41]
step
Complete the "Sojourner of Ohn'ahran Plains" Achievement |achieve 16405
|tip Click the line below to accomplish this.
Click Here to Load the "Ohn'ahran Plains (Full Zone)" Guide |confirm |next "Leveling Guides\\Dragonflight (60-70)\\Full Zones (Story + Side Quests)\\Ohn'ahran Plains (Full Zone)"
step
use the S.E.L.F.I.E. Camera##122637
Take a Picture with the S.E.L.F.I.E. camera with "Ohn'ahra" |achieve 16446/15 |goto 57.48,31.92
step
'|talk Feasting Buzzard##190960
use the S.E.L.F.I.E. Camera##122637
Take a Picture with the S.E.L.F.I.E. camera with "Feasting Buzzard" |achieve 16446/7 |goto Ohn'ahran Plains/0 75.83,40.26
step
'|talk Glade Ohuna##187496
use the S.E.L.F.I.E. Camera##122637
Take a Picture with the S.E.L.F.I.E. camera with "Glade Ohuna" |achieve 16446/9 |goto 63.00,57.00
|tip They are around this area and can be flying.
step
map Ohn'ahran Plains/0
path follow strictbounce; loop off; ants curved; dist 25
path	59.01,75.20	61.12,75.06	64.91,74.48	66.19,72.75	65.55,69.77
path	65.68,65.34	66.83,62.55	66.77,59.57	66.71,57.06	66.77,53.60
path	66.51,50.91
Follow the path
'|talk Nergazurai##195895
use the S.E.L.F.I.E. Camera##122637
Take a Picture with the S.E.L.F.I.E. camera with "Nergazurai" |achieve 16446/14
Check in the Valley Around Here [goto 60.89,69.87]
step
'|target Zenet Avis##193209
use the S.E.L.F.I.E. Camera##122637
Take a Picture with the S.E.L.F.I.E. camera with "Zenet Avis" |achieve 16446/20 |goto 31.45,63.92
|tip This is a rare spawn.
|tip It allegedly spawns between every 3 and 8 hours.
step
map Ohn'ahran Plains/0
path follow smart; loop on; ants curved; dist 20
path	49.19,28.29	49.75,26.91	50.73,27.09	51.23,28.08	50.78,29.19
path	50.84,30.69	50.38,31.76	49.32,32.24	48.74,31.32	48.75,30.02
Kill Bruffalon enemies around this area
collect 1 Large Sturdy Femur##201402 |achieve 16446/18
|tip These are a low drop rate.
|tip You can also buy them from the Auction House.
step
map Ohn'ahran Plains
path follow strictbounce; loop off; dist 20
path	41.17,54.70	42.10,55.08	41.86,56.19	40.37,55.33	39.50,54.30
path	38.44,54.72	37.67,54.67	38.14,54.07
Kill Waddler enemies around this area
collect 3 Contoured Fowlfeather##193053 |achieve 16446/18
|tip You can also buy them from the Auction House.
step
map Ohn'ahran Plains
path	80.14,54.12	79.83,55.55	78.89,56.56	77.86,57.07	76.97,56.65
path	76.14,57.37	75.19,57.61	77.22,55.74	78.91,55.32	79.50,54.02
Kill Hornstrider enemies around this area
collect 2 Tallstrider Sinew##201404 |achieve 16446/18
|tip These are a low drop rate.
|tip You can also buy them from the Auction House.
step
Wait for the Aylaag Centaur to Set Up Camp at Pinewood Post |complete areapoitime(7101) > 0 |achieve 16446/18 |goto Ohn'ahran Plains/0 70.55,63.44
step
click Duck trap Kit
collect Duck Trap Kit##194740 |achieve 16446/18 |goto 70.39,63.55
step
use the Duck Trap Kit##194740
collect Empty Duck Trap##194712 |achieve 16446/18
step
use the Empty Duck Trap##194712
|tip Use them on Pinewing Mallard.
collect Trapped Duck##194739 |goto 67.69,78.19 |achieve 16446/18
step
use the Trapped Duck##194739
'|talk Quackers the Terrible##192557
|tip Use it on the large nest.
use the S.E.L.F.I.E. Camera##122637
Take a Picture with the S.E.L.F.I.E. camera with "Quackers the Terrible" |achieve 16446/18 |goto 68.16,79.22
step
'|talk Blue Terror##193259
use the S.E.L.F.I.E. Camera##122637
Take a Picture with the S.E.L.F.I.E. camera with "Blue Terror" |achieve 16446/3 |goto The Azure Span/0 16.62,27.99
|tip This is a rare spawn.
|tip It spawns on top of the tree.
|tip It allegedly doesn't spawn daily.
step
'|talk Horned Filcher##190218
use the S.E.L.F.I.E. Camera##122637
Take a Picture with the S.E.L.F.I.E. camera with "Horned Filcher" |achieve 16446/11 |goto 36.81,36.6
|tip They can be flying around the area.
step
'|talk Pine Flicker##190221
use the S.E.L.F.I.E. Camera##122637
Take a Picture with the S.E.L.F.I.E. camera with "Pine Flicker" |achieve 16446/17 |goto 66.58,13.39
|tip On the side of the tree.
It can also appear at the spots below:
[goto 66.56,13.39]
[goto 38.29,38.18]
step
'|talk Chef Fry-Aerie##187280
use the S.E.L.F.I.E. Camera##122637
Take a Picture with the S.E.L.F.I.E. camera with "Chef Fry-Aerie" |achieve 16446/4 |goto Thaldraszus/0 43.56,72.09
|tip Inside the cave.
step
'|talk Eldoren the Reborn##193234
use the S.E.L.F.I.E. Camera##122637
Take a Picture with the S.E.L.F.I.E. camera with "Eldoren the Reborn" |achieve 16446/6 |goto 49.8,52.2
|tip This is a rare spawn.
|tip It allegedly has a 14 hour respawn schedule.
step
'|talk Iridescent Peafowl##192383
use the S.E.L.F.I.E. Camera##122637
Take a Picture with the S.E.L.F.I.E. camera with "Iridescent Peafowl" |achieve 16446/12 |goto 52.95,53.51
step
'|talk Liskron the Dazzling##193273
use the S.E.L.F.I.E. Camera##122637
Take a Picture with the S.E.L.F.I.E. camera with "Liskron the Dazzling" |achieve 16446/13 |goto 36.73,72.86
|tip This is a rare spawn.
|tip It seems to be available fairly often.
step
Inside the Neltharus Dungeon:
kill Warlord Sargha##189901
use the S.E.L.F.I.E. Camera##122637
|tip Taking a picture with a dead one should work.
|tip They spawn before Warlord Sargha.
Take a Picture with the S.E.L.F.I.E. camera with "Apex Blazewing" |achieve 16446/1
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Dragon Isles\\Knew You Nokhud Do It!",{
author="support@zygorguides.com",
description="\nComplete the Nokhud training course.",
condition_suggested=function() return level == 60 and not achieved(16583) end,
achieveid={16583},
startlevel=60,
keywords={"Dragonflight","Exploration","Nokhud","Training","Course"},
patch='100002',
},[[
step
Kill Nokhud enemies around this area
|tip They are elite and you may need help with this.
collect Nokhud Battle Helm##200184 |n
collect Nokhud Battle Tunic##200194 |n
collect Nokhud Battle Barding##200196 |n
|tip Each of the above items have a 30 minute duration.
collect Nokhud Battlegear##200201 |goto 2023 35,39 |or
|achieve 16583 |or
step
use the Nokhud Battlegear##200201
|tip Make sure no aggressive enemies are nearby and that Training Master Turasa is present.
talk Training Master Turasa##197884
Tell her _"I am ready."_
|tip After you tell her that you're ready, the game will start moving for you.
|tip As you move, click barricades and the Action Buttons that pop up on the screen.
Earn the "Knew You Nokhud Do It!" Achievement |achieve 16583 |goto 2023 34.65, 34.61
step
_Congratulations!_
You Earned the "Knew You Nokhud Do It!" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Dragon Isles\\Treasures of The Waking Shores",{
author="support@zygorguides.com",
description="\nUncover the hidden Treasures of The Waking Shores.",
condition_suggested=function() return level == 60 and not achieved(16297) end,
achieveid={16297},
startlevel=60,
keywords={"Dragonflight","Exploration"},
patch='100002',
},[[
step
talk Cataloger Jakes##198846
accept Funding a Treasure Hunt##72709 |goto The Waking Shores/0 76.54,34.24 |or
|tip Click the line below if you are an ALT, as the quest will not be available.
Click Here to Continue |confirm |next "buy" |q 70409 |future |or
step
talk Cataloger Jakes##198846
buy Archeologist Artifact Notes##198854 |n
Buy Archeologist Artifact Notes from Cataloger Jakes |q 72709/1 |goto 76.54,34.24
step
use the Archeologist Artifact Notes##198854
Read the Archeology Artifact Notes |q 72709/2 |goto 76.54,34.24
step
talk Cataloger Jakes##198846
turnin Funding a Treasure Hunt##72709  |achieve 16297/1 |goto 76.54,34.24 |next "Dragon_Goblet"
step
label "buy"
talk Cataloger Jakes##189226
buy Archeologist Artifact Notes##198854 |n
use the Archeologist Artifact Notes##198854 |goto The Waking Shores/0 47.10,82.57
Read the Archeologist Artifact Notes |q 70409 |future
step
label "Dragon_Goblet"
click Golden Dragon Goblet##381045
|tip Up on a ledge above the pool of water.
|tip It looks like a golden cup sitting on a pile of gold.
Collect the Replica Dragon Goblet |achieve 16297/1 |goto 65.83,41.83
step
click Yennu's Kite##380653
|tip On top of the tree branch.
Collect Yennu's Kite |achieve 16297/4 |goto 46.74,31.26
step
click Dead Man's Chestplate##380654
|tip Inside the tower on the middle level.
Collect the Dead man's Chestplate |achieve 16297/5 |goto 69.30,46.59
step
click Torn Riding Pack##380840
|tip On top of the waterfall.
Collect the Torn Riding Pack |achieve 16297/6 |goto 48.48,85.18
step
Enter the cave |goto 58.71,53.17 < 5
|tip You will see a rock sticking out of the waterfall that you can land on that serves as the entrance.
click Misty Treasure Chest##375668
Collect the Misty Treasure Chest |achieve 16297/7 |goto 58.53,53.02
step
Reach Renown Level 5 with the Dragonscale Expedition |complete factionrenown(2507) >= 5
|tip Complete daily quests, weekly quests, and zone quests in The Waking Shores to gain renown.
|tip You can also gain renown by completing weekly quests using the "Dragonscale Basecamp Weekly Quests" guide.
step
label "Scout_Pack_and_Disturbed_Dirt"
collect A Guide to Rare Fish##199061 |n |only if not completedq(70527)
collect Nokhud Armorer's Notes##194540 |n |only if not completedq(67046)
collect Sorrowful Letter##199065 |n |only if not completedq(70534)
collect Letter of Caution##199066 |n |only if not completedq(70535)
collect Time-Lost Memo##199068 |n |only if not completedq(70537)
|tip These drop from "Expedition Scout's Pack", which requires Renown Rank 2 with the Dragonscale Expedition to see on your map.
|tip These can also be found in "Disturbed Dirt" which requires Renown Rank 5 with the Dragonscale Expedition to see on your map, as will as a "Small Expedition Shovel".
|tip They randomly spawn in any Dragon Isles zone.
|tip They also appear at random.
talk Pathfinder Jeb##187700
buy Small Expedition Shovel##191294 |goto 47.33,83.40 |n
|tip These only have 5 charges, so you will need several.
use A Guide to Rare Fish##199061 |only if not completedq(70527)
Read A Guide to Rare Fish |q 70527 |future |only if not completedq(70527) |next "Bubble_Drifter" |or
use the Nokhud Armorer's Notes##194540 |only if not completedq(67046)
Read the Nokhud Armorer's Notes |q 67046 |future |only if not completedq(67046) |next "Nokhud_Warspear" |or
use the Sorrowful Letter##199065 |only if not completedq(70534)
Read the Sorrowful Letter |q 70534 |future |only if not completedq(70534) |next "Forgotten_Jewel_Box" |or
use the Letter of Caution##199066 |only if not completedq(70535)
Read the Letter of Caution |q 70535 |future |only if not completedq(70535) |next "Gnoll_Fiend_Flail" |or
use the Time-Lost Memo##199068 |only if not completedq(70537)
Read the Time-Lost Memo |q 70537 |future |only if not completedq(70537) |next "Cracked_Hourglass" |or
'|only if completedq(70527,67046,70534,70535,70537) |next "Renown_21"
step
label "Bubble_Drifter"
click Fragrant Plant##381399
Gain the "Fragrant Plant Scent" Buff |complete hasbuff("spell:388331") |achieve 16297/2 |goto 40.94,41.47
step
clicknpc Bubble Drifter##195939
|tip It swims around the water around this area.
Collect the Bubble Drifter |achieve 16297/2 |goto The Waking Shore/0 40.36,41.58 |next "Scout_Pack_and_Disturbed_Dirt"
step
label "Nokhud_Warspear"
click Nokhud Warspear##377900
|tip Leaning against the wall between two forges.
Collect the Nokhud Warspear |achieve 16299/1 |goto Ohn'ahran Plains/0 32.44,38.15 |next "Scout_Pack_and_Disturbed_Dirt"
step
label "Forgotten_Jewel_Box"
click Forgotten Jewel Box##381110
|tip Underwater at the base of the waterfall.
Collect the Forgotten Jewel Box |achieve 16300/1 |goto The Azure Span/0 45.13,59.38 |next "Scout_Pack_and_Disturbed_Dirt"
step
label "Gnoll_Fiend_Flail"
Enter the cave |goto The Azure Span/0 54.02,43.98 < 5
click Gnoll Fiend Flail##381158
|tip Inside the cave.
Collect the Gnoll Fiend Flail |achieve 16300/2 |goto 53.94,43.72 |next "Scout_Pack_and_Disturbed_Dirt"
step
label "Cracked_Hourglass"
Enter the cave |goto Thaldraszus/0 33.90,75.13 < 15
click Cracked Hourglass##381223
|tip Inside the cave.
Collect the Cracked Hourglass |achieve 16301/1 |goto 33.97,76.96 |next "Scout_Pack_and_Disturbed_Dirt"
step
label "Renown_21"
Reach Renown Level 21 with the Dragonscale Expedition |complete factionrenown(2507) >= 21
|tip Complete daily quests, weekly quests, and zone quests in The Waking Shores to gain renown.
|tip You can also gain renown by completing weekly quests using the "Dragonscale Basecamp Weekly Quests" guide.
step
talk Boss Magor##189065
accept Rumors of the Jeweled Whelplings##70833 |goto The Waking Shores/0 46.94,82.90
step
label "Scout_Pack_and_Disturbed_Dirt_Part_2"
collect Onyx Gem Cluster Map##200738 |n |only if not completedq(72021)
collect Precious Plans##199067 |n |only if not completedq(70536)
collect Bear Termination Orders##198852 |n |only if not completedq(70407)
collect Ruby Gem Cluster Map##199062 |n |only if not completedq(70528)
collect Emerald Gardens Explorer's Notes##198843 |n |only if not completedq(70392)
|tip These drop from "Expedition Scout's Pack", which requires Renown Rank 21 with the Dragonscale Expedition to see on your map.
|tip These can also be found in "Disturbed Dirt" which requires Renown Rank 21 with the Dragonscale Expedition to see on your map, as will as a "Small Expedition Shovel".
|tip They randomly spawn in any Dragon Isles zone.
|tip They also appear at random.
talk Pathfinder Jeb##187700
buy Small Expedition Shovel##191294 |goto 47.33,83.40 |n
|tip These only have 5 charges, so you will need several.
use the Onyx Gem Cluster Map##200738 |only if not completedq(72021)
Read the Onyx Gem Cluster Map |q 72021 |future |only if not completedq(72021) |next "Onyx_Gem_Cluster" |or
use the Precious Plans##199067 |only if not completedq(70536)
Read the Precious Plans |q 70536 |future |only if not completedq(70536) |next "Sapphire_Gem_Cluster" |or
use the Bear Termination Orders##198852 |only if not completedq(70407)
Read the Bear Termination Orders |q 70407 |future |only if not completedq(70407) |next "Amber_Gem_Cluster" |or
use the Ruby Gem Cluster Map##199062 |only if not completedq(70528)
Read the Ruby Gem Cluster Map |q 70528 |future |only if not completedq(70528) |next "Ruby_Gem_Cluster" |or
use the Emerald Gardens Explorer's Notes##198843  |only if not completedq(70392)
Read the Emerald Gardens Explorer's Notes |q 70392 |future |only if not completedq(70392) |next "Emerald_Gem_Cluster" |or
Earn the "Treasures of The Waking Shores" Achievement |achieve 16297 |next "End" |or
step
label "Sapphire_Gem_Cluster"
click Sapphire Gem Cluster##381157
|tip On the ground behind a tree.
collect Glimmering Malygite Cluster##200866 |achieve 16300/3 |goto The Azure Span/0 48.64,24.64 |next "Scout_Pack_and_Disturbed_Dirt_Part_2"
step
label "Amber_Gem_Cluster"
Enter the cave |goto Thaldraszus/0 52.95,76.85 < 5
click Amber Gem Cluster##380867
|tip On the ground inside the cave around a pile of bones.
collect Glimmering Nozdorite Cluster##200863 |achieve 16301/3 |goto 52.59,76.72 |next "Scout_Pack_and_Disturbed_Dirt_Part_2"
step
label "Onyx_Gem_Cluster"
Enter the cave |goto The Waking Shores/0 30.61,51.41 < 5
click Onyx Gem Cluster##382325
|tip On the ground inside the cave.
collect Glimmering Nelthrazite Cluster##200867 |achieve 16297/8 |goto 29.45,47.01 |next "Scout_Pack_and_Disturbed_Dirt_Part_2"
step
label "Ruby_Gem_Cluster"
click Ruby Gem Cluster##381153
|tip Down inside the well, just above the center level.
collect Glimmering Alexstraszite Cluster##200864 |achieve 16297/3 |goto The Waking Shores/0 61.34,70.79 |next "Scout_Pack_and_Disturbed_Dirt_Part_2"
step
label "Emerald_Gem_Cluster"
Enter the cave |goto Ohn'ahran Plains/0 32.86,55.69 < 5
click Emerald Gem Cluster##380847
|tip On the ground inside the cave.
collect Glimmering Ysemerald Cluster##200865 |achieve 16299/3 |goto 33.22,55.35 |next "Scout_Pack_and_Disturbed_Dirt_Part_2"
step
label "End"
_Congratulations!_
You Earned the "Treasures of The Waking Shores" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Dragon Isles\\Treasures of the Ohn'ahran Plains",{
author="support@zygorguides.com",
description="\nUncover the hidden Treasures of the Ohn'ahran Plains.",
condition_suggested=function() return level == 60 and not achieved(16299) end,
achieveid={16299},
startlevel=60,
keywords={"Dragonflight","Exploration"},
patch='100002',
},[[
step
talk Cataloger Jakes##198846
accept Funding a Treasure Hunt##72709 |goto The Waking Shores/0 76.54,34.24 |or
|tip Click the line below if you are an ALT, as the quest will not be available.
Click Here to Continue |confirm |next "buy" |q 70409 |future |or
step
talk Cataloger Jakes##198846
buy Archeologist Artifact Notes##198854 |n
Buy Archeologist Artifact Notes from Cataloger Jakes |q 72709/1 |goto 76.54,34.24
step
use the Archeologist Artifact Notes##198854
Read the Archeology Artifact Notes |q 72709/2 |goto 76.54,34.24
step
talk Cataloger Jakes##198846
turnin Funding a Treasure Hunt##72709  |achieve 16297/1 |goto 76.54,34.24
step
label "buy"
talk Cataloger Jakes##189226
buy Archeologist Artifact Notes##198854 |n
use the Archeologist Artifact Notes##198854 |goto The Waking Shores/0 47.10,82.57
Read the Archeologist Artifact Notes |q 70409 |future
step
Enter the cave |goto Ohn'ahran Plains/0 81.92,72.40 < 10
|tip It looks like a giant golden coin next to a pile of gold.
Gold Swog Coin |achieve 16299/5 |goto Ohn'ahran Plains/0 82.32,73.40
step
clicknpc Ludo##192997
|tip Walking around this area.
collect Ludo's Stash Map##195453 |achieve 16299/2 |goto 61.17,42.00
step
use Ludo's Stash Map##195453
click Dirt Mound##380991
collect Slightly Chewed Duck Egg##199171 |achieve 16299/2 |goto 70.59,35.45
step
click Centaur Horn##380860
|tip In a box inside the building.
collect Cracked Centaur Horn |achieve 16299/4 |goto 73.49,56.14
step
click Tuskarr Toy Boat##380859
|tip Underwater.
collect Yennu's Boat |achieve 16299/6 |goto 51.99,58.39
step
Reach Renown Level 5 with the Dragonscale Expedition |complete factionrenown(2507) >= 5
|tip Complete daily quests, weekly quests, and zone quests in The Waking Shores to gain renown.
|tip You can also gain renown by completing weekly quests using the "Dragonscale Basecamp Weekly Quests" guide.
step
label "Scout_Pack_and_Disturbed_Dirt"
collect A Guide to Rare Fish##199061 |n |only if not completedq(70527)
collect Nokhud Armorer's Notes##194540 |n |only if not completedq(67046)
collect Sorrowful Letter##199065 |n |only if not completedq(70534)
collect Letter of Caution##199066 |n |only if not completedq(70535)
collect Time-Lost Memo##199068 |n |only if not completedq(70537)
|tip These drop from "Expedition Scout's Pack", which requires Renown Rank 2 with the Dragonscale Expedition to see on your map.
|tip These can also be found in "Disturbed Dirt" which requires Renown Rank 5 with the Dragonscale Expedition to see on your map, as will as a "Small Expedition Shovel".
|tip They randomly spawn in any Dragon Isles zone.
|tip They also appear at random.
talk Pathfinder Jeb##187700
buy Small Expedition Shovel##191294 |goto 47.33,83.40 |n
|tip These only have 5 charges, so you will need several.
use A Guide to Rare Fish##199061 |only if not completedq(70527)
Read A Guide to Rare Fish |q 70527 |future |only if not completedq(70527) |next "Bubble_Drifter" |or
use the Nokhud Armorer's Notes##194540 |only if not completedq(67046)
Read the Nokhud Armorer's Notes |q 67046 |future |only if not completedq(67046) |next "Nokhud_Warspear" |or
use the Sorrowful Letter##199065 |only if not completedq(70534)
Read the Sorrowful Letter |q 70534 |future |only if not completedq(70534) |next "Forgotten_Jewel_Box" |or
use the Letter of Caution##199066 |only if not completedq(70535)
Read the Letter of Caution |q 70535 |future |only if not completedq(70535) |next "Gnoll_Fiend_Flail" |or
use the Time-Lost Memo##199068 |only if not completedq(70537)
Read the Time-Lost Memo |q 70537 |future |only if not completedq(70537) |next "Cracked_Hourglass" |or
'|only if completedq(70527,67046,70534,70535,70537) |next "Renown_21"
step
label "Bubble_Drifter"
click Fragrant Plant##381399
Gain the "Fragrant Plant Scent" Buff |complete hasbuff("spell:388331") |achieve 16297/2 |goto 40.94,41.47
step
clicknpc Bubble Drifter##195939
|tip It swims around the water around this area.
Collect the Bubble Drifter |achieve 16297/2 |goto The Waking Shore/0 40.36,41.58 |next "Scout_Pack_and_Disturbed_Dirt"
step
label "Nokhud_Warspear"
click Nokhud Warspear##377900
|tip Leaning against the wall between two forges.
Collect the Nokhud Warspear |achieve 16299/1 |goto Ohn'ahran Plains/0 32.44,38.15 |next "Scout_Pack_and_Disturbed_Dirt"
step
label "Forgotten_Jewel_Box"
click Forgotten Jewel Box##381110
|tip Underwater at the base of the waterfall.
Collect the Forgotten Jewel Box |achieve 16300/1 |goto The Azure Span/0 45.13,59.38 |next "Scout_Pack_and_Disturbed_Dirt"
step
label "Gnoll_Fiend_Flail"
Enter the cave |goto The Azure Span/0 54.02,43.98 < 5
click Gnoll Fiend Flail##381158
|tip Inside the cave.
Collect the Gnoll Fiend Flail |achieve 16300/2 |goto 53.94,43.72 |next "Scout_Pack_and_Disturbed_Dirt"
step
label "Cracked_Hourglass"
Enter the cave |goto Thaldraszus/0 33.90,75.13 < 15
click Cracked Hourglass##381223
|tip Inside the cave.
Collect the Cracked Hourglass |achieve 16301/1 |goto 33.97,76.96 |next "Scout_Pack_and_Disturbed_Dirt"
step
label "Renown_21"
Reach Renown Level 21 with the Dragonscale Expedition |complete factionrenown(2507) >= 21
|tip Complete daily quests, weekly quests, and zone quests in The Waking Shores to gain renown.
|tip You can also gain renown by completing weekly quests using the "Dragonscale Basecamp Weekly Quests" guide.
step
talk Boss Magor##189065
accept Rumors of the Jeweled Whelplings##70833 |goto The Waking Shores/0 46.94,82.90
step
label "Scout_Pack_and_Disturbed_Dirt_Part_2"
collect Onyx Gem Cluster Map##200738 |n |only if not completedq(72021)
collect Precious Plans##199067 |n |only if not completedq(70536)
collect Bear Termination Orders##198852 |n |only if not completedq(70407)
collect Ruby Gem Cluster Map##199062 |n |only if not completedq(70528)
collect Emerald Gardens Explorer's Notes##198843 |n |only if not completedq(70392)
|tip These drop from "Expedition Scout's Pack", which requires Renown Rank 21 with the Dragonscale Expedition to see on your map.
|tip These can also be found in "Disturbed Dirt" which requires Renown Rank 21 with the Dragonscale Expedition to see on your map, as will as a "Small Expedition Shovel".
|tip They randomly spawn in any Dragon Isles zone.
|tip They also appear at random.
talk Pathfinder Jeb##187700
buy Small Expedition Shovel##191294 |goto 47.33,83.40 |n
|tip These only have 5 charges, so you will need several.
use the Onyx Gem Cluster Map##200738 |only if not completedq(72021)
Read the Onyx Gem Cluster Map |q 72021 |future |only if not completedq(72021) |next "Onyx_Gem_Cluster" |or
use the Precious Plans##199067 |only if not completedq(70536)
Read the Precious Plans |q 70536 |future |only if not completedq(70536) |next "Sapphire_Gem_Cluster" |or
use the Bear Termination Orders##198852 |only if not completedq(70407)
Read the Bear Termination Orders |q 70407 |future |only if not completedq(70407) |next "Amber_Gem_Cluster" |or
use the Ruby Gem Cluster Map##199062 |only if not completedq(70528)
Read the Ruby Gem Cluster Map |q 70528 |future |only if not completedq(70528) |next "Ruby_Gem_Cluster" |or
use the Emerald Gardens Explorer's Notes##198843  |only if not completedq(70392)
Read the Emerald Gardens Explorer's Notes |q 70392 |future |only if not completedq(70392) |next "Emerald_Gem_Cluster" |or
Earn the "Treasures of The Waking Shores" Achievement |achieve 16297 |next "End" |or
step
label "Sapphire_Gem_Cluster"
click Sapphire Gem Cluster##381157
|tip On the ground behind a tree.
collect Glimmering Malygite Cluster##200866 |achieve 16300/3 |goto The Azure Span/0 48.64,24.64 |next "Scout_Pack_and_Disturbed_Dirt_Part_2"
step
label "Amber_Gem_Cluster"
Enter the cave |goto Thaldraszus/0 52.95,76.85 < 5
click Amber Gem Cluster##380867
|tip On the ground inside the cave around a pile of bones.
collect Glimmering Nozdorite Cluster##200863 |achieve 16301/3 |goto 52.59,76.72 |next "Scout_Pack_and_Disturbed_Dirt_Part_2"
step
label "Onyx_Gem_Cluster"
Enter the cave |goto The Waking Shores/0 30.61,51.41 < 5
click Onyx Gem Cluster##382325
|tip On the ground inside the cave.
collect Glimmering Nelthrazite Cluster##200867 |achieve 16297/8 |goto 29.45,47.01 |next "Scout_Pack_and_Disturbed_Dirt_Part_2"
step
label "Ruby_Gem_Cluster"
click Ruby Gem Cluster##381153
|tip Down inside the well, just above the center level.
collect Glimmering Alexstraszite Cluster##200864 |achieve 16297/3 |goto The Waking Shores/0 61.34,70.79 |next "Scout_Pack_and_Disturbed_Dirt_Part_2"
step
label "Emerald_Gem_Cluster"
Enter the cave |goto Ohn'ahran Plains/0 32.86,55.69 < 5
click Emerald Gem Cluster##380847
|tip On the ground inside the cave.
collect Glimmering Ysemerald Cluster##200865 |achieve 16299/3 |goto 33.22,55.35 |next "Scout_Pack_and_Disturbed_Dirt_Part_2"
step
label "End"
_Congratulations!_
You Earned the "Treasures of the Ohn'ahran Plains" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Dragon Isles\\Treasures of The Azure Span",{
author="support@zygorguides.com",
description="\nUncover the hidden Treasures of The Azure Span.",
condition_suggested=function() return level == 60 and not achieved(16300) end,
achieveid={16300},
startlevel=60,
keywords={"Dragonflight","Exploration"},
patch='100002',
},[[
step
talk Cataloger Jakes##198846
accept Funding a Treasure Hunt##72709 |goto The Waking Shores/0 76.54,34.24 |or
|tip Click the line below if you are an ALT, as the quest will not be available.
Click Here to Continue |confirm |next "buy" |q 70409 |future |or
step
talk Cataloger Jakes##198846
buy Archeologist Artifact Notes##198854 |n
Buy Archeologist Artifact Notes from Cataloger Jakes |q 72709/1 |goto 76.54,34.24
step
use the Archeologist Artifact Notes##198854
Read the Archeology Artifact Notes |q 72709/2 |goto 76.54,34.24
step
talk Cataloger Jakes##198846
turnin Funding a Treasure Hunt##72709  |achieve 16297/1 |goto 76.54,34.24 |next
step
label "buy"
talk Cataloger Jakes##189226
buy Archeologist Artifact Notes##198854 |n
use the Archeologist Artifact Notes##198854 |goto The Waking Shores/0 47.10,82.57
Read the Archeologist Artifact Notes |q 70409 |future
step
click Rubber Fish##380843
|tip Hanging on a hook above the water.
collect Rubber Fish##202712 |achieve 16300/5 |goto The Azure Span/0 54.61,29.32
step
click Lost Compass##381160
|tip It looks like a gold and wood pentagon on the ground.
collect Lost Compass |achieve 16300/4 |goto The Azure Span/0 74.90,55.02
step
click Tree Sap##380895
|tip It's inside the giant hollowed out tree.
[26.29,46.33]
click Stick##380899
|tip Wait for a bit after clicking.
clicknpc Pepper Hammer##195373
|tip It flies up to you after you click the stick.
collect Blackfeather Nester##193834	|achieve 16300/6 |goto The Azure Span/0 26.30,46.34
step
Reach Renown Level 5 with the Dragonscale Expedition |complete factionrenown(2507) >= 5
|tip Complete daily quests, weekly quests, and zone quests in The Waking Shores to gain renown.
|tip You can also gain renown by completing weekly quests using the "Dragonscale Basecamp Weekly Quests" guide.
step
label "Scout_Pack_and_Disturbed_Dirt"
collect A Guide to Rare Fish##199061 |n |only if not completedq(70527)
collect Nokhud Armorer's Notes##194540 |n |only if not completedq(67046)
collect Sorrowful Letter##199065 |n |only if not completedq(70534)
collect Letter of Caution##199066 |n |only if not completedq(70535)
collect Time-Lost Memo##199068 |n |only if not completedq(70537)
|tip These drop from "Expedition Scout's Pack", which requires Renown Rank 2 with the Dragonscale Expedition to see on your map.
|tip These can also be found in "Disturbed Dirt" which requires Renown Rank 5 with the Dragonscale Expedition to see on your map, as will as a "Small Expedition Shovel".
|tip They randomly spawn in any Dragon Isles zone.
|tip They also appear at random.
talk Pathfinder Jeb##187700
buy Small Expedition Shovel##191294 |goto 47.33,83.40 |n
|tip These only have 5 charges, so you will need several.
use A Guide to Rare Fish##199061 |only if not completedq(70527)
Read A Guide to Rare Fish |q 70527 |future |only if not completedq(70527) |next "Bubble_Drifter" |or
use the Nokhud Armorer's Notes##194540 |only if not completedq(67046)
Read the Nokhud Armorer's Notes |q 67046 |future |only if not completedq(67046) |next "Nokhud_Warspear" |or
use the Sorrowful Letter##199065 |only if not completedq(70534)
Read the Sorrowful Letter |q 70534 |future |only if not completedq(70534) |next "Forgotten_Jewel_Box" |or
use the Letter of Caution##199066 |only if not completedq(70535)
Read the Letter of Caution |q 70535 |future |only if not completedq(70535) |next "Gnoll_Fiend_Flail" |or
use the Time-Lost Memo##199068 |only if not completedq(70537)
Read the Time-Lost Memo |q 70537 |future |only if not completedq(70537) |next "Cracked_Hourglass" |or
'|only if completedq(70527,67046,70534,70535,70537) |next "Renown_21"
step
label "Bubble_Drifter"
click Fragrant Plant##381399
Gain the "Fragrant Plant Scent" Buff |complete hasbuff("spell:388331") |achieve 16297/2 |goto 40.94,41.47
step
clicknpc Bubble Drifter##195939
|tip It swims around the water around this area.
Collect the Bubble Drifter |achieve 16297/2 |goto The Waking Shore/0 40.36,41.58 |next "Scout_Pack_and_Disturbed_Dirt"
step
label "Nokhud_Warspear"
click Nokhud Warspear##377900
|tip Leaning against the wall between two forges.
Collect the Nokhud Warspear |achieve 16299/1 |goto Ohn'ahran Plains/0 32.44,38.15 |next "Scout_Pack_and_Disturbed_Dirt"
step
label "Forgotten_Jewel_Box"
click Forgotten Jewel Box##381110
|tip Underwater at the base of the waterfall.
Collect the Forgotten Jewel Box |achieve 16300/1 |goto The Azure Span/0 45.13,59.38 |next "Scout_Pack_and_Disturbed_Dirt"
step
label "Gnoll_Fiend_Flail"
Enter the cave |goto The Azure Span/0 54.02,43.98 < 5
click Gnoll Fiend Flail##381158
|tip Inside the cave.
Collect the Gnoll Fiend Flail |achieve 16300/2 |goto 53.94,43.72 |next "Scout_Pack_and_Disturbed_Dirt"
step
label "Cracked_Hourglass"
Enter the cave |goto Thaldraszus/0 33.90,75.13 < 15
click Cracked Hourglass##381223
|tip Inside the cave.
Collect the Cracked Hourglass |achieve 16301/1 |goto 33.97,76.96 |next "Scout_Pack_and_Disturbed_Dirt"
step
label "Renown_21"
Reach Renown Level 21 with the Dragonscale Expedition |complete factionrenown(2507) >= 21
|tip Complete daily quests, weekly quests, and zone quests in The Waking Shores to gain renown.
|tip You can also gain renown by completing weekly quests using the "Dragonscale Basecamp Weekly Quests" guide.
step
talk Boss Magor##189065
accept Rumors of the Jeweled Whelplings##70833 |goto The Waking Shores/0 46.94,82.90
step
label "Scout_Pack_and_Disturbed_Dirt_Part_2"
collect Onyx Gem Cluster Map##200738 |n |only if not completedq(72021)
collect Precious Plans##199067 |n |only if not completedq(70536)
collect Bear Termination Orders##198852 |n |only if not completedq(70407)
collect Ruby Gem Cluster Map##199062 |n |only if not completedq(70528)
collect Emerald Gardens Explorer's Notes##198843 |n |only if not completedq(70392)
|tip These drop from "Expedition Scout's Pack", which requires Renown Rank 21 with the Dragonscale Expedition to see on your map.
|tip These can also be found in "Disturbed Dirt" which requires Renown Rank 21 with the Dragonscale Expedition to see on your map, as will as a "Small Expedition Shovel".
|tip They randomly spawn in any Dragon Isles zone.
|tip They also appear at random.
talk Pathfinder Jeb##187700
buy Small Expedition Shovel##191294 |goto 47.33,83.40 |n
|tip These only have 5 charges, so you will need several.
use the Onyx Gem Cluster Map##200738 |only if not completedq(72021)
Read the Onyx Gem Cluster Map |q 72021 |future |only if not completedq(72021) |next "Onyx_Gem_Cluster" |or
use the Precious Plans##199067 |only if not completedq(70536)
Read the Precious Plans |q 70536 |future |only if not completedq(70536) |next "Sapphire_Gem_Cluster" |or
use the Bear Termination Orders##198852 |only if not completedq(70407)
Read the Bear Termination Orders |q 70407 |future |only if not completedq(70407) |next "Amber_Gem_Cluster" |or
use the Ruby Gem Cluster Map##199062 |only if not completedq(70528)
Read the Ruby Gem Cluster Map |q 70528 |future |only if not completedq(70528) |next "Ruby_Gem_Cluster" |or
use the Emerald Gardens Explorer's Notes##198843  |only if not completedq(70392)
Read the Emerald Gardens Explorer's Notes |q 70392 |future |only if not completedq(70392) |next "Emerald_Gem_Cluster" |or
Earn the "Treasures of The Waking Shores" Achievement |achieve 16297 |next "End" |or
step
label "Sapphire_Gem_Cluster"
click Sapphire Gem Cluster##381157
|tip On the ground behind a tree.
collect Glimmering Malygite Cluster##200866 |achieve 16300/3 |goto The Azure Span/0 48.64,24.64 |next "Scout_Pack_and_Disturbed_Dirt_Part_2"
step
label "Amber_Gem_Cluster"
Enter the cave |goto Thaldraszus/0 52.95,76.85 < 5
click Amber Gem Cluster##380867
|tip On the ground inside the cave around a pile of bones.
collect Glimmering Nozdorite Cluster##200863 |achieve 16301/3 |goto 52.59,76.72 |next "Scout_Pack_and_Disturbed_Dirt_Part_2"
step
label "Onyx_Gem_Cluster"
Enter the cave |goto The Waking Shores/0 30.61,51.41 < 5
click Onyx Gem Cluster##382325
|tip On the ground inside the cave.
collect Glimmering Nelthrazite Cluster##200867 |achieve 16297/8 |goto 29.45,47.01 |next "Scout_Pack_and_Disturbed_Dirt_Part_2"
step
label "Ruby_Gem_Cluster"
click Ruby Gem Cluster##381153
|tip Down inside the well, just above the center level.
collect Glimmering Alexstraszite Cluster##200864 |achieve 16297/3 |goto The Waking Shores/0 61.34,70.79 |next "Scout_Pack_and_Disturbed_Dirt_Part_2"
step
label "Emerald_Gem_Cluster"
Enter the cave |goto Ohn'ahran Plains/0 32.86,55.69 < 5
click Emerald Gem Cluster##380847
|tip On the ground inside the cave.
collect Glimmering Ysemerald Cluster##200865 |achieve 16299/3 |goto 33.22,55.35 |next "Scout_Pack_and_Disturbed_Dirt_Part_2"
step
label "End"
_Congratulations!_
You Earned the "Treasures of The Azure Span" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Dragon Isles\\Treasures of Thaldraszus",{
author="support@zygorguides.com",
description="\nUncover the hidden Treasures of Thaldraszus.",
condition_suggested=function() return level == 60 and not achieved(16301) end,
achieveid={16301},
startlevel=60,
keywords={"Dragonflight","Exploration"},
patch='100002',
},[[
step
talk Cataloger Jakes##198846
accept Funding a Treasure Hunt##72709 |goto The Waking Shores/0 76.54,34.24 |or
|tip Click the line below if you are an ALT, as the quest will not be available.
Click Here to Continue |confirm |next "buy" |q 70409 |future |or
step
talk Cataloger Jakes##198846
buy Archeologist Artifact Notes##198854 |n
Buy Archeologist Artifact Notes from Cataloger Jakes |q 72709/1 |goto 76.54,34.24
step
use the Archeologist Artifact Notes##198854
Read the Archeology Artifact Notes |q 72709/2 |goto 76.54,34.24
step
talk Cataloger Jakes##198846
turnin Funding a Treasure Hunt##72709  |achieve 16297/1 |goto 76.54,34.24 |next
step
label "buy"
talk Cataloger Jakes##189226
buy Archeologist Artifact Notes##198854 |n
use the Archeologist Artifact Notes##198854 |goto The Waking Shores/0 47.10,82.57
Read the Archeologist Artifact Notes |q 70409 |future
step
Enter the cave |goto Thaldraszus/0 64.79,17.50 < 10
|tip On the ground inside the cave.
collect Surveyor's Magnifying Glass |achieve 16301/5 |goto Thaldraszus/0 64.85,16.55
step
click Elegant Canvas Brush##381094
|tip On the ground.
collect Elegant Canvas Brush |achieve 16301/4 |goto Thaldraszus/0 60.25,41.65
step
click Acorn##381424
Gain the "Acorn" Buff |achieve 16301/6 |complete hasbuff("spell:388485") |goto Thaldraszus/0 49.36,63.05
step
clicknpc Acorn Harvester##196172
collect Chestnut##193066 |achieve 16301/6 |goto 49.43,62.89
step
Reach Renown Level 5 with the Dragonscale Expedition |complete factionrenown(2507) >= 5
|tip Complete daily quests, weekly quests, and zone quests in The Waking Shores to gain renown.
|tip You can also gain renown by completing weekly quests using the "Dragonscale Basecamp Weekly Quests" guide.
step
label "Scout_Pack_and_Disturbed_Dirt"
collect A Guide to Rare Fish##199061 |n |only if not completedq(70527)
collect Nokhud Armorer's Notes##194540 |n |only if not completedq(67046)
collect Sorrowful Letter##199065 |n |only if not completedq(70534)
collect Letter of Caution##199066 |n |only if not completedq(70535)
collect Time-Lost Memo##199068 |n |only if not completedq(70537)
|tip These drop from "Expedition Scout's Pack", which requires Renown Rank 2 with the Dragonscale Expedition to see on your map.
|tip These can also be found in "Disturbed Dirt" which requires Renown Rank 5 with the Dragonscale Expedition to see on your map, as will as a "Small Expedition Shovel".
|tip They randomly spawn in any Dragon Isles zone.
|tip They also appear at random.
talk Pathfinder Jeb##187700
buy Small Expedition Shovel##191294 |goto 47.33,83.40 |n
|tip These only have 5 charges, so you will need several.
use A Guide to Rare Fish##199061 |only if not completedq(70527)
Read A Guide to Rare Fish |q 70527 |future |only if not completedq(70527) |next "Bubble_Drifter" |or
use the Nokhud Armorer's Notes##194540 |only if not completedq(67046)
Read the Nokhud Armorer's Notes |q 67046 |future |only if not completedq(67046) |next "Nokhud_Warspear" |or
use the Sorrowful Letter##199065 |only if not completedq(70534)
Read the Sorrowful Letter |q 70534 |future |only if not completedq(70534) |next "Forgotten_Jewel_Box" |or
use the Letter of Caution##199066 |only if not completedq(70535)
Read the Letter of Caution |q 70535 |future |only if not completedq(70535) |next "Gnoll_Fiend_Flail" |or
use the Time-Lost Memo##199068 |only if not completedq(70537)
Read the Time-Lost Memo |q 70537 |future |only if not completedq(70537) |next "Cracked_Hourglass" |or
'|only if completedq(70527,67046,70534,70535,70537) |next "Renown_21"
step
label "Bubble_Drifter"
click Fragrant Plant##381399
Gain the "Fragrant Plant Scent" Buff |complete hasbuff("spell:388331") |achieve 16297/2 |goto 40.94,41.47
step
clicknpc Bubble Drifter##195939
|tip It swims around the water around this area.
Collect the Bubble Drifter |achieve 16297/2 |goto The Waking Shore/0 40.36,41.58 |next "Scout_Pack_and_Disturbed_Dirt"
step
label "Nokhud_Warspear"
click Nokhud Warspear##377900
|tip Leaning against the wall between two forges.
Collect the Nokhud Warspear |achieve 16299/1 |goto Ohn'ahran Plains/0 32.44,38.15 |next "Scout_Pack_and_Disturbed_Dirt"
step
label "Forgotten_Jewel_Box"
click Forgotten Jewel Box##381110
|tip Underwater at the base of the waterfall.
Collect the Forgotten Jewel Box |achieve 16300/1 |goto The Azure Span/0 45.13,59.38 |next "Scout_Pack_and_Disturbed_Dirt"
step
label "Gnoll_Fiend_Flail"
Enter the cave |goto The Azure Span/0 54.02,43.98 < 5
click Gnoll Fiend Flail##381158
|tip Inside the cave.
Collect the Gnoll Fiend Flail |achieve 16300/2 |goto 53.94,43.72 |next "Scout_Pack_and_Disturbed_Dirt"
step
label "Cracked_Hourglass"
Enter the cave |goto Thaldraszus/0 33.90,75.13 < 15
click Cracked Hourglass##381223
|tip Inside the cave.
Collect the Cracked Hourglass |achieve 16301/1 |goto 33.97,76.96 |next "Scout_Pack_and_Disturbed_Dirt"
step
label "Renown_21"
Reach Renown Level 21 with the Dragonscale Expedition |complete factionrenown(2507) >= 21
|tip Complete daily quests, weekly quests, and zone quests in The Waking Shores to gain renown.
|tip You can also gain renown by completing weekly quests using the "Dragonscale Basecamp Weekly Quests" guide.
step
talk Boss Magor##189065
accept Rumors of the Jeweled Whelplings##70833 |goto The Waking Shores/0 46.94,82.90
step
label "Scout_Pack_and_Disturbed_Dirt_Part_2"
collect Onyx Gem Cluster Map##200738 |n |only if not completedq(72021)
collect Precious Plans##199067 |n |only if not completedq(70536)
collect Bear Termination Orders##198852 |n |only if not completedq(70407)
collect Ruby Gem Cluster Map##199062 |n |only if not completedq(70528)
collect Emerald Gardens Explorer's Notes##198843 |n |only if not completedq(70392)
|tip These drop from "Expedition Scout's Pack", which requires Renown Rank 21 with the Dragonscale Expedition to see on your map.
|tip These can also be found in "Disturbed Dirt" which requires Renown Rank 21 with the Dragonscale Expedition to see on your map, as will as a "Small Expedition Shovel".
|tip They randomly spawn in any Dragon Isles zone.
|tip They also appear at random.
talk Pathfinder Jeb##187700
buy Small Expedition Shovel##191294 |goto 47.33,83.40 |n
|tip These only have 5 charges, so you will need several.
use the Onyx Gem Cluster Map##200738 |only if not completedq(72021)
Read the Onyx Gem Cluster Map |q 72021 |future |only if not completedq(72021) |next "Onyx_Gem_Cluster" |or
use the Precious Plans##199067 |only if not completedq(70536)
Read the Precious Plans |q 70536 |future |only if not completedq(70536) |next "Sapphire_Gem_Cluster" |or
use the Bear Termination Orders##198852 |only if not completedq(70407)
Read the Bear Termination Orders |q 70407 |future |only if not completedq(70407) |next "Amber_Gem_Cluster" |or
use the Ruby Gem Cluster Map##199062 |only if not completedq(70528)
Read the Ruby Gem Cluster Map |q 70528 |future |only if not completedq(70528) |next "Ruby_Gem_Cluster" |or
use the Emerald Gardens Explorer's Notes##198843  |only if not completedq(70392)
Read the Emerald Gardens Explorer's Notes |q 70392 |future |only if not completedq(70392) |next "Emerald_Gem_Cluster" |or
Earn the "Treasures of The Waking Shores" Achievement |achieve 16297 |next "End" |or
step
label "Sapphire_Gem_Cluster"
click Sapphire Gem Cluster##381157
|tip On the ground behind a tree.
collect Glimmering Malygite Cluster##200866 |achieve 16300/3 |goto The Azure Span/0 48.64,24.64 |next "Scout_Pack_and_Disturbed_Dirt_Part_2"
step
label "Amber_Gem_Cluster"
Enter the cave |goto Thaldraszus/0 52.95,76.85 < 5
click Amber Gem Cluster##380867
|tip On the ground inside the cave around a pile of bones.
collect Glimmering Nozdorite Cluster##200863 |achieve 16301/3 |goto 52.59,76.72 |next "Scout_Pack_and_Disturbed_Dirt_Part_2"
step
label "Onyx_Gem_Cluster"
Enter the cave |goto The Waking Shores/0 30.61,51.41 < 5
click Onyx Gem Cluster##382325
|tip On the ground inside the cave.
collect Glimmering Nelthrazite Cluster##200867 |achieve 16297/8 |goto 29.45,47.01 |next "Scout_Pack_and_Disturbed_Dirt_Part_2"
step
label "Ruby_Gem_Cluster"
click Ruby Gem Cluster##381153
|tip Down inside the well, just above the center level.
collect Glimmering Alexstraszite Cluster##200864 |achieve 16297/3 |goto The Waking Shores/0 61.34,70.79 |next "Scout_Pack_and_Disturbed_Dirt_Part_2"
step
label "Emerald_Gem_Cluster"
Enter the cave |goto Ohn'ahran Plains/0 32.86,55.69 < 5
click Emerald Gem Cluster##380847
|tip On the ground inside the cave.
collect Glimmering Ysemerald Cluster##200865 |achieve 16299/3 |goto 33.22,55.35 |next "Scout_Pack_and_Disturbed_Dirt_Part_2"
step
label "End"
_Congratulations!_
You Earned the "Treasures of Thaldraszus" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Dragon Isles\\Let's Get Quacking",{
author="support@zygorguides.com",
description="\nComplete 5 different Bubbled Duckling escorts over the course of at least 5 weeks.",
condition_suggested=function() return level == 60 and not achieved(16409) end,
achieveid={16409},
startlevel=60,
keywords={"Dragonflight","Exploration"},
patch='100002',
},[[
step
talk Mender Eskros##195303
|tip She walks around this area.
accept Erstwhile Ecologists##72122 |goto The Waking Shores/0 71.22,40.36
step
talk Ecologist Iskha##186410
turnin Erstwhile Ecologists##72122 |goto 74.43,42.14
accept A Scalpel of a Solution##66105 |goto 74.43,42.14
step
talk Ecologist Tharu##186428
accept Wildlife Rescue##66107 |goto 74.51,42.18
stickystart "Kill_Rampaging_Wind"
stickystart "Kill_Rampaging_Water"
step
click Various Animal+
|tip They look like various animals on the ground, in the air, or being channeled on by elementals around this area.
Rescue #20# Wildlife |q 66107/1 |goto 76.32,46.68
You can find more around [80.46,48.71]
step
label "Kill_Rampaging_Water"
kill 5 Rampaging Water##187493 |q 66105/1 |goto 77.52,47.25
|tip They look like water elementals.
step
label "Kill_Rampaging_Wind"
kill 5 Rampaging Wind##187494 |q 66105/2 |goto 77.52,47.25
|tip They look like air elementals.
step
talk Ecologist Tharu##186428
turnin Wildlife Rescue##66107 |goto 74.51,42.18
step
talk Ecologist Iskha##186410
turnin A Scalpel of a Solution##66105 |goto 74.43,42.14
accept Forensic Ecology##66104 |goto 74.43,42.14
step
click Windyfin Gorloc Corpse
|tip It looks like a dead green gremlin on the table.
Watch the dialogue
Dissect the Windyfin Gorloc Corpse |q 66104/2 |goto 74.47,42.20
step
click Soggymaw Gorloc Corpse
|tip It looks like a dead dark colored gremlin on the table.
Watch the dialogue
Dissect the Soggymaw Gorloc Corpse |q 66104/1 |goto 74.46,42.21
step
click Viscera-Covered Shells
|tip They look like shell fragments on the table.
Examine the Glistening Shells |q 66104/3 |goto 74.47,42.19
step
talk Ecologist Iskha##186410
turnin Forensic Ecology##66104 |goto 74.42,42.14
step
Once the Prerequisites are completed, You Will Only Be Able to Save 1 Duck Per Week
Click Here to Continue |achieve 16409 |confirm
step
label "Loop"
talk Bubbled Duckling##187439
|tip Keep in mind that nothing will appear if you have already recued a duckling for the week.
accept A Quack For Help##66196 |goto The Waking Shores/0 80.12,42.87 |or |only if not completedq(66196)
accept A Quack in Time##70877 |goto 80.08,39.89 |or  |only if not completedq(70877)
accept A Shoulder to Quack On##70917 |goto 81.63,45.42 |only if not completedq(70917)
accept Quack for Your Life##70918 |goto 79.33,42.77 |only if not completedq(70918)
accept Quacking Out for a Hero##70919 |goto 82.83,42.64 |only if not completedq(70919)
step
Bring the Bubbled Duckling to the Ecologist's Camp |q 66196/1 |goto 74.51,42.17
Bring the Bubbled Duckling to the Ecologist's Camp |q 70877/1 |goto 74.47,42.14
Bring the Bubbled Duckling to the Ecologist's Camp |q 70917/1 |goto 74.47,42.14
Bring the Bubbled Duckling to the Ecologist's Camp |q 70918/1 |goto 74.47,42.14
Bring the Bubbled Duckling to the Ecologist's Camp |q 70919/1 |goto 74.47,42.14
step
talk Ecologist Tharu##186428
turnin A Quack For Help##66196 |goto 74.51,42.17 |next "Loop" |or |only if not completedq(66196)
turnin A Quack in Time##70877 |goto 74.52,42.17 |next "Loop" |or |only if not completedq(70877)
turnin A Shoulder to Quack On##70917 |goto 74.47,42.14 |next "Loop" |or |only if not completedq(70917)
turnin Quack for Your Life##70918 |goto 74.47,42.14 |next "Loop" |or |only if not completedq(70918)
turnin Quacking Out for a Hero##70919 |goto 74.52,42.17 |next "Loop" |or |only if not completedq(70919)
Earn the "Let's Get Quacking" Achievement |achieve 16409 |next "end" |or
step
label "end"
_Congratulations!_
You Earned the "Let's Get Quacking" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Dragon Isles\\Who's a Good Bakar?",{
author="support@zygorguides.com",
description="\nFind and pet each unique Bakar found in Ohn'ahran Plains.",
condition_suggested=function() return level == 60 and not achieved(16424) end,
achieveid={16424},
startlevel=60,
keywords={"Dragonflight","Exploration"},
patch='100002',
},[[
step
clicknpc Katei##196650
Pet Katei |achieve 16424/10 |goto Ohn'ahran Plains/0 64.01,41.26
step
clicknpc Vinyu##196651
Pet Vinyu |achieve 16424/18 |goto 63.98,41.27
step
clicknpc Taivan##197518
Pet Taivan |achieve 16424/16 |goto 61.84,38.63
step
clicknpc Berrel##195669
Pet Berrel |achieve 16424/4 |goto 60.65,39.83
step
clicknpc Baga##196871
Pet Baga |achieve 16424/3 |goto 49.02,41.11
step
clicknpc Alli##197569
Pet Alli |achieve 16424/1 |goto 40.93,56.54
step
clicknpc Nahma##192687
|tip Walking around the camp.
Pet Nahma |achieve 16424/12 |goto 60.99,52.28
step
clicknpc Laila##190043
Pet Laila |achieve 16424/11 |goto 80.66,58.92
step
clicknpc Rotti##191405
|tip Walking around this area.
Pet Rotti |achieve 16424/14 |goto 80.92,58.68
step
clicknpc Wish##191408
Pet Wish |achieve 16424/19 |goto 81.03,59.53
step
clicknpc Gentara##186189
Pet Gentara |achieve 16424/8 |goto 83.89,25.87
step
talk Healer Selbekh##192621
accept The Trouble with Taivan##67772 |goto Ohn'ahran Plains/0 61.22,40.01
step
clicknpc Taivan##196665
Brush Taivan |q 67772/1 |goto 61.13,40.01
step
click Pelt Bundle
Pick Up the Pelt Bundle |q 67772/2 |goto 61.19,39.70
step
click Pelt Bundle Location
|tip On Taivan's back.
Place the Pelt Bundle |q 67772/3 |goto 61.13,40.01
step
talk Taivan##196675
Tell him _"Go find Hunter Jadar, Taivan. I will meet you there."_
Send Taivan to Hunter Jadar |q 67772/4 |goto 61.13,40.01
step
Meet Hunter Jadar at the Watering Hole |q 67772/5 |goto 71.42,49.60
step
talk Hunter Jadar##192629
turnin The Trouble with Taivan##67772 |goto 71.42,49.60
accept The Hunting Hound##67921 |goto 71.42,49.60
step
talk Taivan##194292
Tell him _"Let's hunt, boy!"_
Talk to Taivan |q 67921/1 |goto 71.43,49.42
step
Kill enemies around this area
|tip They look like various beasts.
Hunt #5# Dangerous Beasts with Taivan |q 67921/2 |goto 73.67,49.53
step
talk Hunter Jadar##192629
turnin The Hunting Hound##67921 |goto 71.42,49.61
accept Part of a Pack##70989 |goto 71.42,49.61
step
kill Ravenous Proto-Drake##193145 |q 70989/1 |goto 73.97,49.37
|tip It looks like a large green dragon that flies in the air around this area.
|tip It will appear on your minimap as a yellow dot.
|tip It is elite, but you should be able to kill it.
step
talk Hunter Jadar##192629
turnin Part of a Pack##70989 |goto 71.42,49.60
accept Try Again, Taivan!##68083 |goto 71.42,49.60
step
talk Healer Selbekh##192621
turnin Try Again, Taivan!##68083 |goto 61.22,40.01
accept The Gentle Giant##68084 |goto 61.22,40.01
step
talk Taivan##188247
Tell him _"Go find Shepherd Tevatei, Taivan. I will meet you there."_
Talk to Taivan |q 68084/1 |goto 61.13,40.01
step
Meet Shepherd Tevatei at the Mallakh |q 68084/2 |goto 49.06,41.08
step
talk Shepherd Tevatei##192633
turnin The Gentle Giant##68084 |goto 49.06,41.08
accept Shaping a Shepherd##68085 |goto 49.06,41.08
step
talk Taivan##194292
Ask him _"Are you ready to give this a try, boy?"_
Talk to Taivan |q 68085/1 |goto 48.97,40.92
step
Command Taivan to Herd #3# Argali |q 68085/2 |goto 48.92,40.87
|tip Use the "Command Taivan to Herd" ability on Aylaag Argali.
|tip It appears as a button on the screen.
|tip They look like rams around this area.
|tip They will appear on your minimap as yellow dots.
step
Chase #3# Argali into the Pen |q 68085/3 |goto 49.51,41.48
|tip Use the "Herd Them Yourself!" ability on Aylaag Argali.
|tip It appears as a button on the screen.
|tip They look like rams around this area.
|tip They will appear on your minimap as yellow dots.
|tip After you use the ability, keep running next to them, directing them to the pen at this location.
step
talk Shepherd Tevatei##192633
turnin Shaping a Shepherd##68085 |goto 49.06,41.08
accept Reign of the Ram##71022 |goto 49.06,41.08
step
kill Stubborn Ram##195849
|tip Use the "Command Taivan to Confront" ability on the Stubborn Ram.
|tip It appears as a button on the screen.
|tip It will attack you, and eventually surrender when it gets to low health.
Confront the Stubborn Ram |q 71022/1 |goto 49.65,39.45
step
talk Shepherd Tevatei##192633
turnin Reign of the Ram##71022 |goto 49.05,41.08
accept Danger in Daruukhan##68087 |goto 49.05,41.08
step
talk Teerai Messenger##193586
|tip He runs to this location.
Tell him _"I will leave for Daruukhan at once."_
Talk to the Teerai Messenger |q 68087/1 |goto 49.07,40.95
step
talk Flightmaster Washengtu##191814
fpath Broadhoof Outpost |goto 46.57,41.29
step
Meet Healer Selbekh at Daruukhan |q 68087/2 |goto 52.83,29.85
step
talk Healer Selbekh##192621
turnin Danger in Daruukhan##68087 |goto 52.83,29.85
accept Saving Centaur##69094 |goto 52.83,29.85
step
click Heavy Beam
|tip It looks like wooden logs.
|tip If nothing happens, return to Healer Selbekh and tell him, _"Can you call Taivan for me?"_ then try again.
Rescue Weaver Daavu |q 69094/1 |goto 52.13,29.66
step
Watch the dialogue
clicknpc Weaver Daavu##196009
|tip Taivan will carry him away.
|tip If nothing happens, return to Healer Selbekh and tell him, _"Can you call Taivan for me?"_ then try again.
Rescue Weaver Daavu |q 69094/2 |goto 52.12,29.66
step
clicknpc Leatherworker Tukhtai##196179
|tip Inside the broken hut.
|tip Taivan will carry her away.
|tip If nothing happens, return to Healer Selbekh and tell him, _"Can you call Taivan for me?"_ then try again.
Rescue Leatherworker Tukhtai |q 69094/4 |goto 52.27,29.11
step
clicknpc Heavy Beam##196166
|tip It looks like wooden logs.
Watch the dialogue
|tip Taivan will move the logs.
clicknpc Weaver Sagaa##196180
|tip Taivan will carry her away.
|tip If nothing happens, return to Healer Selbekh and tell him, _"Can you call Taivan for me?"_ then try again.
Rescue Weaver Sagaa |q 69094/5 |goto 51.62,29.15
step
clicknpc Smith Gaan##196175
|tip Inside the burning hut.
|tip Taivan will carry him away.
|tip If nothing happens, return to Healer Selbekh and tell him, _"Can you call Taivan for me?"_ then try again.
Rescue Smith Gaan |q 69094/3 |goto 51.49,30.38
step
click Heavy Beam
|tip It looks like wooden logs.
clicknpc Fletcher Nisekh##196187
|tip Taivan will carry him away.
|tip If nothing happens, return to Healer Selbekh and tell him, _"Can you call Taivan for me?"_ then try again.
Rescue Fletcher Nisekh |q 69094/6 |goto 52.19,30.41
step
talk Healer Selbekh##192621
|tip You may have to talk to her to call Taivan if he isn't already nearby.
turnin Saving Centaur##69094 |goto 52.83,29.84
accept Homeward Hound##69095 |goto 52.83,29.84
step
talk Taivan##194292
Tell him _"Let's go home, boy!"_
Talk to Taivan |q 69095/1 |goto 52.71,30.01
step
Watch the dialogue
Ride Taivan to Maruukai |q 69095/2 |goto 61.13,40.01 |notravel
step
talk Healer Selbekh##192621
turnin Homeward Hound##69095 |goto 61.22,40.01
accept Taivan's Purpose##69096 |goto 61.22,40.01
step
talk Chimei##193112
Tell her _"Hello. Are you alright?"_
Try to Talk to Chimei |q 69096/1 |goto 61.81,38.58
step
talk Chimei##193112
Choose _"<Try tapping Chimei on the shoulder.>"_
Try to Talk to Chimei Again |q 69096/2 |goto 61.81,38.58
step
Watch the dialogue
|tip Taivan will lay next to Chimei.
Wait to See What Taivan Does |q 69096/3 |goto 61.81,38.58
step
talk Healer Selbekh##192621
turnin Taivan's Purpose##69096 |goto 61.82,38.73
step
clicknpc Soyoo##197514
Pet Soyoo |achieve 16424/15 |goto 71.65,49.68
step
talk Khasar##186649
|tip He looks like a centaur in a wooden cage.
turnin Thieving Gorlocs##65950 |goto 80.56,30.74
accept Release the Hounds##65954 |goto 80.56,30.74
step
clicknpc Batu##187841
|tip It looks like a dead brown wolf.
Collect the Bakar Collar |q 65954/2 |goto 80.62,30.68 |count 1
step
click Bakar Cage
|tip It looks like a wooden cage.
Free the Bakar |q 65954/1 |goto 81.25,31.70 |count 1
step
click Bakar Cage
|tip It looks like a wooden cage.
Free the Bakar |q 65954/1 |goto 81.12,29.77 |count 2
step
click Bakar Cage
|tip It looks like a wooden cage.
Free the Bakar |q 65954/1 |goto 81.43,29.72 |count 3
step
click Bakar Cage
|tip It looks like a wooden cage.
Free the Bakar |q 65954/1 |goto 82.21,30.22 |count 4
step
clicknpc Batu##187841
|tip It looks like a dead brown wolf.
Collect the Bakar Collar |q 65954/2 |goto 82.20,30.43 |count 2
step
click Bakar Cage
|tip It looks like a wooden cage.
Free the Bakar |q 65954/1 |goto 82.36,30.57 |count 5
step
Watch the dialogue
talk Khasar##186649
|tip He walks to this location.
|tip Inside the cave.
turnin Release the Hounds##65954 |goto 83.44,32.32
step
clicknpc Fogl##189387
|tip Running circles around the camp.
Pet Fogl |achieve 16424/7 |goto 84.71,24.60
step
clicknpc Zephyr##189388
|tip Running circles around the camp.
Pet Zephyr |achieve 16424/20 |goto 84.87,24.73
step
clicknpc Elaichi##187840
|tip Walking along the road.
Pet Elaichi |achieve 16424/5 |goto 85.02,23.12
step
clicknpc Pesca##189278
Pet Pesca |achieve 16424/13 |goto 84.18,27.15
step
clicknpc Tseg##189276
|tip Inside the building.
Pet Tseg |achieve 16424/17 |goto 84.02,22.95
step
Enter the cave |goto 83.00,31.92 < 20 |walk |only if not (subzone("Mudfin Village") and _G.IsIndoors())
talk Khasar##186649
|tip Inside the cave.
accept Return to Roscha##66006 |goto 83.44,32.32
step
click Shikaar Supplies
|tip Inside the cave.
Retrieve the Supplies |q 66006/1 |goto 83.51,32.14
step
talk Farrier Roscha##186650
turnin Return to Roscha##66006 |goto 84.40,25.02
step
clicknpc Baba##189274
|tip Inside the building.
Pet Baba |achieve 16424/2 |goto 84.25,24.75
step
Wait for the Aylaag Centaur to Set Up Camp at Rusza'thar Reach |complete areapoitime(7102) > 0 |achieve 16424/6
step
Ellam |achieve 16424/6 |goto Ohn'ahran Plains/0 71.19,31.56
step
clicknpc Hugo##189377
|tip Hugo is always traveling with Aylaag Clan Camps.
Pet Hugo |achieve 16424/9 |goto 70.62,63.61
[71.19,31.56]
[55.53,52.22]
step
_Congratulations!_
You Earned the Who's a "Good Bakar?" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Dragon Isles\\Do You Wanna Build a Snowman?",{
author="support@zygorguides.com",
description="Build a snowman in The Azure Span.",
condition_suggested=function() return level == 60 and not achieved(16474) end,
achieveid={16474},
startlevel=60,
keywords={"Dragonflight","Exploration"},
patch='100002',
},[[
step
click Snowball
The 3 Need Are Found at the Below Locations:
[50.96,54.81]
[50.92,55.61]
[50.97,56.12]
|tip Each of the 3 snowballs will need to be 3 different sized before combinging.
|tip Roll them towards each other by facing the direction you want them to move then clicking them.
|tip They will automatically combine when they are the correct size.
Build a Snowman |achieve 16474
step
_Congratulations!_
You Earned the "Do You Wanna Build a Snowman?" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Dragon Isles\\Framing a New Perspective",{
author="support@zygorguides.com",
description="Use the S.E.L.F.I.E. Camera to take pictures of various spots on the Dragon Isles.",
condition_suggested=function() return level == 60 and not achieved(16634) end,
achieveid={16634},
startlevel=60,
keywords={"Dragonflight","Exploration"},
patch='100002',
},[[
step
talk Arielle Snapflash##16908						|only Alliance
accept Light Camera Action##32470 |goto Stormwind City/0 61.33,22.68	|only Alliance
talk Vivica Starshot##16926						|only Horde
accept Light Camera Action##32470 |goto Orgrimmar/1 34.50,70.82		|only Horde
|tip This quest seems to be bugged.
|tip Logging in and out may make it appear.
step
click Weathered Supply Crate##278802						|only Alliance
collect 1 Iron Box##155856 |q 32470/1 |goto Stormwind City/0 68.06,67.12	|only Alliance
talk Tor'phan##3315								|only Horde
|tip Inside the building.							|only Horde
buy 1 Russet Belt##3593 |q 32470/3 |goto Orgrimmar/1 60.92,59.96		|only Horde
step
talk Duncan Cullen##1314						|only Alliance
|tip Inside the building.						|only Alliance
buy Russet Belt##3593 |q 32470/3 |goto Stormwind City/0 53.18,82.04	|only Alliance
click Weathered Supply Crate##278802					|only Horde
collect 1 Iron Box##155856 |q 32470/1 |goto 63.77,19.57			|only Horde
step
collect 1 Standard Scope##4406 |q 32470/2				|only Alliance
collect 1 Standard Scope##4406 |q 32470/2				|only Horde
|tip These are crafted by the Engineering profession.
|tip You can also buy them from the Auction House.
step
talk Arielle Snapflash##16908						|only Alliance
turnin Light Camera Action##32470 |goto Stormwind City/0 61.33,22.68	|only Alliance
talk Vivica Starshot##16926						|only Horde
turnin Light Camera Action##32470 |goto Orgrimmar/1 34.50,70.82		|only Horde
step
use the S.E.L.F.I.E. Camera##122637
|tip Use it at the top of the tower.
|tip Take a picture with Alextrasza, Kalecgos and Norzdomu in the frame.
Take a S.E.L.F.I.E. at the "The Seat of the Aspects" |achieve 16634/1 |goto 2112 56.24,44.42
step
use the S.E.L.F.I.E. Camera##122637
|tip Use it downstairs, inside the building.
|tip Take a picture with the portal to Orgrimmar and Stormwind in the frame.
Take a S.E.L.F.I.E. at the "Valdrakken's Portal Room" |achieve 16634/10 |goto 2112 56.60,43.40
step
use the S.E.L.F.I.E. Camera##122637
Take a S.E.L.F.I.E. at "The Cascades" |achieve 16634/2 |goto 2025 38.96,70.40
step
use the S.E.L.F.I.E. Camera##122637
Take a S.E.L.F.I.E. at the "Shadow Ledge" |achieve 16634/9 |goto 2025 48.30,66.83
step
use the S.E.L.F.I.E. Camera##122637
|tip Face the mountain and take a picture with the open area in the frame.
Take a S.E.L.F.I.E. at the "Tyrhold Reservoir" |achieve 16634/11 |goto 2025 46.94,59.52
step
use the S.E.L.F.I.E. Camera##122637
|tip On the floating Island.
|tip Face the building on the island then take the picture.
Take a S.E.L.F.I.E. at the "Serene Dreams Spa" |achieve 16634/8 |goto 2025 39.41,46.88
step
use the S.E.L.F.I.E. Camera##122637
|tip On top of the tower.
|tip Face the tower then take the picture.
Take a S.E.L.F.I.E. at the "Algeth'era Court" |achieve 16634/6 |goto 2025 50.25,40.31
step
use the S.E.L.F.I.E. Camera##122637
|tip Face the Southwest then take the picture.
Take a S.E.L.F.I.E. at the "Veiled Ossuary" |achieve 16634/7 |goto 2025 63.43,13.48
step
use the S.E.L.F.I.E. Camera##122637
|tip Top of the arch.
|tip Face the arch then take the picture.
Take a S.E.L.F.I.E. at the "Passage of Time" |achieve 16634/3 |goto 2025 55.73,73.21
step
use the S.E.L.F.I.E. Camera##122637
|tip Face the building then take the picture.
Take a S.E.L.F.I.E. at "Tyrhold" |achieve 16634/5 |goto 2025 57.17,58.71
step
use the S.E.L.F.I.E. Camera##122637
|tip Face the waterfall then take the picture.
Take a S.E.L.F.I.E. at the "Vault of the Incarnates" |achieve 16634/4 |goto 2025 68.24,58.32
step
_Congratulations!_
You Earned the "Framing a New Perspective" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Dragon Isles\\Fang Flap Fire Fighter",{
author="support@zygorguides.com",
description="Use the various commands with another player to play the Fang Flap Fire game.",
condition_suggested=function() return level == 60 and not achieved(16338) end,
achieveid={16338},
startlevel=60,
keywords={"Dragonflight","Exploration"},
patch='100002',
},[[
step
click Fang Flap Flop Signups##
You Will Need Another Player For This Achievement
|tip One player pick "Fang".
|tip The other player picks "Flap" repeatedly, moving to the Fang player.
|tip The Fang player will gain a buff with points.
|tip Swap the Fang and Flap players so the other can also get the achievement.
Gain #10# Points in a Single Game of Fang Flap Fire |achieve 16338 |goto Valdrakken/0 42.78,69.43
step
_Congratulations!_
You Earned the "Fang Flap Fire Fighter" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Dragon Isles\\Ley Line in the Span",{
author="support@zygorguides.com",
description="Solve the various Ley Line Puzzles found throughout The Azure Span.",
condition_suggested=function() return level == 60 and not achieved(16638) end,
achieveid={16638},
startlevel=60,
keywords={"Dragonflight","Exploration"},
patch='100002',
},[[
step
Enter the cave |goto The Azure Span/0 26.34,36.26 < 7 |walk
clicknpc Misaligned Ley Crystal##198260
|tip Inside the cave.
Solve the Puzzle and Realign the Ley Lines of the Ancient Outlook |achieve 16638/2 |goto 26.54,35.91
step
Enter the cave |goto 43.73,61.94 < 7 |walk
clicknpc Misaligned Ley Crystal##198260
|tip Inside the cave.
Solve the Puzzle and Realign the Ley Lines of the Azure Archives |achieve 16638/1 |goto 43.48,62.26
step
Enter the cave |goto 66.68,59.57 < 7 |walk
clicknpc Misaligned Ley Crystal##198260
|tip Inside the cave.
Solve the Puzzle and Realign the Ley Lines of the Ruins of Karnthar |achieve 16638/4 |goto 66.39,59.51
step
Enter the cave |goto 66.06,51.05 < 7 |walk
|tip If you don't have mining, remove your gear and die near the entrance.
clicknpc Misaligned Ley Crystal##198260
|tip Inside the cave.
Solve the Puzzle and Realign the Ley Lines of the Rustpine Den |achieve 16638/3 |goto 65.89,50.67
step
Enter the cave |goto 65.51,28.31 < 7 |walk
clicknpc Misaligned Ley Crystal##198260
|tip Inside the cave.
Solve the Puzzle and Realign the Ley Lines of the Slyvern Plunge |achieve 16638/5 |goto 65.74,28.14
step
_Congratulations!_
You Earned the "Ley Line in the Span" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Dragon Isles\\Siege on Dragonbane Keep: Chiseled Record",{
author="support@zygorguides.com",
description="Find the various Djaradin Tablets found throughout The Waking Shores.",
condition_suggested=function() return level == 60 and not achieved(16412) end,
achieveid={16412},
startlevel=60,
keywords={"Dragonflight","Exploration"},
patch='100002',
},[[
step
Reach Renown Level 5 with the Valdrakken Accord |complete factionrenown(2510) >= 5
|tip Complete daily quests, weekly quests, and zone quests in The Azure Span to gain renown.
step
_Next to you:_
talk Herald Flaps##197478
|tip If another NPC is following you, accept their quests until Herald Flaps shows up.
accept To Dragonbane Keep!##71210
step
click Stone Tablet##381357
|tip Inside the building against the wall.
Find the Djaradin Tablets for a "Complaint to Scalepiercer" |achieve 16412/1 |goto The Waking Shores/0 27.84,68.35
step
click Stone Tablet##381358
|tip Inside the building against the wall.
Find the Djaradin Tablets for "Wyrmeater's Recipe" |achieve 16412/2 |goto The Waking Shores/0 28.82,72.44
step
click Stone Tablet##381359
|tip Against the wall behind the building.
Find the Djaradin Tablets for "The Grand Flame's Journal" |achieve 16412/3 |goto The Waking Shores/0 24.06,69.27
step
_Congratulations!_
You Earned the "Siege on Dragonbane Keep: Chiseled Record" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Dragon Isles\\Fragments of History",{
author="support@zygorguides.com",
description="Aqcuire the various historical fragments found within the Dragon Isles.",
condition_suggested=function() return level == 60 and not achieved(16323) end,
achieveid={16323},
startlevel=60,
keywords={"Dragonflight","Exploration"},
patch='100002',
},[[
step
talk Emilia Bellocq##193915
Ask Her _"What are you doing here?"_
|tip Make sure to exhaust the dialogue.
Click Here to Continue |confirm |achieve 16323 |goto The Waking Shores/0 75.43,33.98
step
click Broken Banding##379296
|tip On the right ankle of the statue.
accept Broken Banding##70175 |goto 81.10,30.45
step
click Dislodged Dragoneye##380518
|tip Beneath the statue underneath some rubble.
accept Dislodged Dragoneye##70236 |goto  60.55,57.86
step
click Tail Fragment##380430
|tip It looks like a pile of rubble beneath the statue.
accept Tail Fragment##70207 |goto 58.24,68.41
step
click Finely Carved Wing##381355
|tip It looks like a slab of stone beneath the statue.
accept Finely Carved Wing##70789 |goto 47.26,88.59
step
click Chunk of Sculpture##381362
|tip On the ground to the left of the statue.
accept Chunk of Sculpture##70806 |goto The Azure Span/0 66.07,60.12
step
click Stone Dragontooth##381353
|tip On the right side of the base to the dragon statue.
accept Stone Dragontooth##70790 |goto 69.17,47.58
step
click Wrapped Gold Band##381354
|tip Beneath the back left foot of the dragon statue.
accept Wrapped Gold Band##70788 |goto 47.31,24.61
step
click Coldwashed Dragonclaw##381356
|tip Underwater.
accept Coldwashed Dragonclaw##70791 |goto 47.83,38.87
step
click Golden Claw##380429
|tip Beneath the right foot of the dragon statue.
accept Golden Claw##70204 |goto Thaldraszus/0 38.83,45.00
step
click Precious Stone Fragment##381361
|tip Beneath the right foot of the statue.
accept Precious Stone Fragments##70805 |goto 57.13,64.52
step
talk Emilia Bellocq##193915
turnin Broken Banding##70175 |goto The Waking Shores/0 75.43,33.98
turnin Golden Claw##70204 |goto 75.43,33.98
turnin Tail Fragment##70207 |goto 75.43,33.98
turnin Dislodged Dragoneye##70236 |goto 75.43,33.98
turnin Wrapped Gold Band##70788 |goto 75.43,33.98
turnin Finely Carved Wing##70789 |goto 75.43,33.98
turnin Stone Dragontooth##70790 |goto 75.43,33.98
turnin Coldwashed Dragonclaw##70791 |goto 75.43,33.98
turnin Precious Stone Fragments##70805 |goto 75.43,33.98
turnin Chunk of Sculpture##70806 |goto 75.43,33.98
step
_Congratulations!_
You Earned the "Fragments of History" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Dragon Isles\\To All the Squirrels Hidden Til Now",{
author="support@zygorguides.com",
description="Use the /love emote on various critters located throughout the Dragon Isles.",
condition_suggested=function() return level == 60 and not achieved(16729) end,
achieveid={16729},
startlevel=60,
keywords={"Dragonflight","Exploration"},
patch='100002',
},[[
step
Use the /love Emote on a "Phoenix Hatchling" |achieve 16729/2 |goto The Waking Shores/0 65.13,28.58
'|talk Phoenix Hatchling##192135
step
Use the /love Emote on a "Kelp Nibbler" |achieve 16729/1 |goto 76.81,44.12
'|talk Kelp Nibbler##189737
step
Use the /love Emote on a "Docile Kit" |achieve 16729/3 |goto 58.35,72.55
'|talk Docile Kit##193756
step
Use the /love Emote on a "Thicket Glider"|achieve 16729/5 |goto Ohn'ahran Plains/0 52.05,50.54
'|talk Thicket Glider##192948
step
Use the /love Emote on a "Thunderspine Calf" |achieve 16729/6 |goto 51.72,51.79
'|talk Thunderspine Calf##192942
step
Use the /love Emote on a "Frilled Hatchling" |achieve 16729/4 |goto 22.07,63.78
'|talk Frilled Hatchling##186306
step
Use the /love Emote on a "Crimson Knocker" |achieve 16729/9 |goto The Azure Span/0 49.92,57.61
'|talk Crimson Knocker##197718
step
Use the /love Emote on a "Timbertooth Kit" |achieve 16729/7 |goto 52.95,58.41
'|talk Timbertooth Kit##193594
step
Use the /love Emote on a "Frosty Spiderling" |achieve 16729/8 |goto 49.92,57.61
'|talk Frosty Spiderling##186481
step
Use the /love Emote on a "Reservoir Filly" |achieve 16729/11 |goto Thaldraszus/0 51.24,56.82
'|talk Reservoir Filly##196652
step
Use the /love Emote on a "Diminuitive Boghopper" |achieve 16729/10 |goto 56.09,68.71
'|talk Diminuitive Boghopper##195869
step
Use the /love Emote on a "Rocdrop Scarab" |achieve 16729/12 |goto 51.35,72.61
'|talk Rocdrop Scarab##185148
step
_Congratulations!_
You Earned the "To All the Squirrels Hidden Til Now" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Dragon Isles\\Curious Coin",{
author="support@zygorguides.com",
description="Discover the various coins hidden within the Adventurer's Journal.",
condition_suggested=function() return level == 60 and not achieved(16790) end,
achieveid={16790},
startlevel=60,
keywords={"Dragonflight","Exploration"},
patch='100002',
},[[
step
accept A Piece of Copper##72743
|tip Press Shift+J to open up your adventurer guide.
|tip Under suggested content, scroll through you see the quest "Copper Coin" with a "Sweet, free money!" button beneath it.
|tip Only one will appear per week.
Earn the "Lucky Penny" Achievement |achieve 16789
step
accept A Piece of Silver##72746
|tip Press Shift+J to open up your adventurer guide.
|tip Under suggested content, scroll through you see the quest "Copper Coin" with a "Sweet, free money!" button beneath it.
|tip Only one will appear per week.
|tip Check again after each reset if it isn't currently available.
step
accept A Piece of Gold##72747
|tip Press Shift+J to open up your adventurer guide.
|tip Under suggested content, scroll through you see the quest "Copper Coin" with a "Sweet, free money!" button beneath it.
|tip Only one will appear per week.
|tip Check again after each reset if it isn't currently available.
step
accept A Bag of Gold##72748
|tip Press Shift+J to open up your adventurer guide.
|tip Under suggested content, scroll through you see the quest "Copper Coin" with a "Sweet, free money!" button beneath it.
|tip Only one will appear per week.
|tip Check again after each reset if it isn't currently available.
step
accept A Curious Coin##72749
|tip Press Shift+J to open up your adventurer guide.
|tip Under suggested content, scroll through you see the quest "Copper Coin" with a "Sweet, free money!" button beneath it.
|tip Only one will appear per week.
|tip Check again after each reset if it isn't currently available.
step
_Congratulations!_
You Earned the "Curious Coin" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Dragon Isles\\Dragon Isles Safari",{
author="support@zygorguides.com",
description="Catch the new Battle Pets introduced during Dragon Isles.",
condition_suggested=function() return level == 60 and not achieved(16519) end,
achieveid={16519},
startlevel=60,
keywords={"Dragonflight","Exploration"},
patch='100002',
},[[
step
clicknpc Wild Duckling##192013
|tip If there aren't any you can battle, you may need to kill the ones there.
Catch a "Wild Duckling" |achieve 16519/23 |goto The Waking Shores/0 83.05,45.51
step
clicknpc Pricklefury Hare##189093
|tip They can share a spawn with Magma Slugs and Emberlings around this area.
Catch a "Pricklefury Hare" |achieve 16519/13 |goto 79.70,33.71
step
clicknpc Magma Slug##189094
|tip They share a spawn with Shore Crabs around this area.
Catch a "Magma Slug" |achieve 16519/10 |goto 77.36,25.63
step
clicknpc Emberling##193024
Catch an "Emberling" |achieve 16519/4 |goto 66.0,31.6
step
clicknpc Kindlet##193000
|tip They may share spawns with other battle pets around this area.
Catch a "Kindlet" |achieve 16519/9 |goto 55.64,24.39
step
clicknpc Vorquin Runt##191323
Catch a "Vorquin Runt" |achieve 16519/22 |goto 68.03,47.28
step
clicknpc Scruffy Ottuk##189103
Catch a "Scruffy Ottuk" |achieve 16519/14 |goto 54.12,56.90
step
clicknpc Swoglet##189104
|tip This can appear as a secondary enemy.
|tip Engage and defeat battle pets until one appears on the backline of the enemy group.
Catch a "Swoglet" |achieve 16519/18 |goto 55.57,56.34
step
clicknpc Woodbiter Piculet##189157
|tip Flying around this area.
Catch a "Woodbiter Piculet" |achieve 16519/24 |goto 2023 64.8,12.0
step
clicknpc Trunkalumpf##189110
|tip Walking around this area.
Catch a "Trunkalumpf" |achieve 16519/21 |goto 2023 76.52,20.35
step
clicknpc Stoneshell##192254
Catch a "Stoneshell" |achieve 16519/17 |goto 2023 84.6,34.4
|tip Search between the locations below if the Stoneshell isn't showing up:
[2023 69.95,42.08]
[2023 73.74,35.26]
[2023 61.38,47.93]
[2023 81.02,71.10]
step
Catch an "Ironbeak Duck" |achieve 16519/8 |goto 2023 81.88,71.59
|tip These can appear on the backline of other pet battles.
|tip Engage and defeat battle pets until one appears on the backline of the enemy group.
step
clicknpc Palamanther##189122
Catch a "Palamanther" |achieve 16519/11 |goto Ohn'ahran Plains/0 71.91,69.24
step
Catch a "Treeflitter" |achieve 16519/20 |goto 2023 81.88,71.59
|tip These can appear on the backline of other pet battles.
|tip Engage and defeat battle pets until one appears on the backline of the enemy group.
step
clicknpc Tiny Tmbertooth##189658
Catch a "Tiny Timbertooth" |achieve 16519/19 |goto Ohn'ahran Plains/0 81.38,45.78
step
clicknpc Azure Crystalspine##192265
Catch an "Azure Crystalspine" |achieve 16519/1 |goto 2024 46.74,40.87
step
clicknpc Snowlemental##189107
Catch a "Snowlemental" |achieve 16519/16 |goto 2024 49.04,62.18
step
clicknpc Grizzlefur Cub##194720
|tip These share a spawn with battle pets around this area.
Catch a "Grizzlefur Cub" |achieve 16519/6 |goto Thaldraszus/0 48.43,57.47
step
clicknpc Igneoid##189121
|tip These share a spawn with battle pets around this area.
Catch an "Igneoid" |achieve 16519/7 |goto 2025 48.26,57.56
step
clicknpc Grassland Stomper##189153
Catch a "Grassland Stomper" |achieve 16519/5 |goto 2025 49.90,50.26
step
clicknpc Blue Dasher##197629
Catch a "Blue Dasher" |achieve 16519/2 |goto 2025 66.43,21.81
step
clicknpc Crimsonspine##192268
|tip These are somewhat of a rare spawn.
Catch a "Crimsonspine" |achieve 16519/3 |goto 2025 50.70,64.12
It Can Also Spawn in The Azure Span Here [The Azure Span/0 60.61,38.02]
|tip If they are here, they will spawn in one of the two tiny holes under the fallen tree.
step
clicknpc Polliswog##197637
Catch a "Polliswog" |achieve 16519/12 |goto 2025 43.77,84.46
step
talk Jyhanna##185563
accept Oh Where, Oh Where Can He Be?##70647 |goto Valdrakken/0 10.42,58.30
step
Find Lubbins |q 70647/1 |goto Thaldraszus/0 34.81,63.78
step
clicknpc Injured Lubbins##195911
Help Lubbins |q 70647/2 |goto Thaldraszus/0 34.81,63.78
step
talk Jyhanna##185563
turnin Oh Where, Oh Where Can He Be?##70647 |goto Valdrakken/0 10.42,58.30
accept An Expert Opinion##70697 |goto 10.42,58.30
step
talk Patchu##196069
turnin An Expert Opinion##70697 |goto The Azure Span/0 13.89,49.85
accept What Lubbins Needs##70722 |goto 13.89,49.85
step
talk Patchu##196069
Tell Him _"Thank you. I believe I understand."_
Catch with Patchu |q 70722/1 |goto 13.89,49.85
step
talk Patchu##196069
turnin What Lubbins Needs##70722 |goto 13.89,49.85
accept A Practice Bout##70732 |goto 13.89,49.85
step
clicknpc Gwosh##196206
Defeat Gwosh in a Pet Battle |q 70732/1
step
talk Patchu##196069
turnin A Practice Bout##70732 |goto 13.89,49.85
accept This Calls for a Specialist##70849 |goto 13.89,49.85
step
talk Haniko##196264
turnin This Calls for a Specialist##70849 |goto The Waking Shores/0 38.91,83.26
accept Born to Be Wilder##70851 |goto 38.91,83.26
step
Ask her _"How do I do that?"_
Chat with Haniko |q 70851/1 |goto 38.91,83.26
step
talk Haniko##196264
turnin Born to Be Wilder##70851 |goto 38.91,83.26
accept A Friend for Lubbins##70853 |goto 38.91,83.26
step
clicknpc Shyfly##189102
Capture a Shyfly |q 70853/1 |goto The Waking Shores/0 38.65,81.54
step
talk Haniko##196264
turnin A Friend for Lubbins##70853 |goto 38.91,83.26
accept So How Did It Go?##70854 |goto 38.91,83.26
step
talk Jyhanna##185563
turnin So How Did It Go?##70854 |goto Valdrakken/0 10.42,58.30
step
Catch a "Shyfly" |achieve 16519/15 |goto 41.6,81.8
step
_Congratulations!_
You Earned the "Dragon Isles Safari" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Dragonflight\\Mastering the Waygates",{
author="support@zygorguides.com",
description="\nUnlock all of the Ancient Waygate locations in the Dragon Isles.",
condition_suggested=function() return level >= 60 and factionrenown(2507) >= 7 and not achieved(16292) end,
achieveid={16292},
startlevel=60,
keywords={"Dragonflight","Exploration","Mastering","the","Waygates"},
patch='100002',
},[[
step
talk Cataloger Jakes##189226 |goto The Waking Shores/0 47.11,82.58
|tip Inside the tent.
|tip Turn in Dragon Isles Artifacts from treasures and supply packs all over The Waking Shores.
'|turnin Multiple Dragon Isles Artifacts##72876
'|turnin Multiple Dragon Isles Artifacts##71035
'|turnin Dragon Isles Artifacts##71034
Reach Renown Level 7 with the Dragonscale Expedition |complete factionrenown(2507) >= 7
|tip Complete daily quests, weekly quests, and zone quests in The Waking Shores to gain renown.
|tip You can also gain renown by completing weekly quests using the "Dragonscale Basecamp Weekly Quests" guide.
step
accept Dormant Discovery##66595
|tip You will accept this quest automatically.
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
turnin Dormant Discovery##66595 |goto The Waking Shores/0 47.20,90.25
accept This Old Stone##66597 |goto 47.20,90.25
step
click Etched Ancient Monolith
Choose _<Inspect the monolith.>_
Investigate the Etched Ancient Monolith |q 66597/1 |goto 47.28,90.30
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
turnin This Old Stone##66597 |goto 47.20,90.25
accept Nightborne Know-How##66598 |goto 47.20,90.25
step
talk Warpcaster Delandra##189764
turnin Nightborne Know-How##66598 |goto The Azure Span/0 45.93,40.65
accept Curiosity is Key##70215 |goto 45.93,40.65
step
talk Warpcaster Delandra##189764
Ask her _"What can you tell me about the symbols?"_
Inquire About the Stones |q 70215/1 |goto 45.93,40.65
step
talk Warpcaster Delandra##189764
turnin Curiosity is Key##70215 |goto 45.93,40.65
accept Power Procurement##66582 |goto 45.93,40.65
step
Kill enemies around this area
Capture the Energy |q 66582/1 |goto 40.26,61.77
step
talk Warpcaster Delandra##189764
turnin Power Procurement##66582 |goto 45.93,40.65
accept A Gateway to Somewhere##70154 |goto 45.93,40.65
step
Watch the dialogue
click Warpcaster's Portal
Take Warpcaster Delandra's Portal |q 70154/1 |goto 45.92,40.90
step
click Warpcaster's Portal
Take the Warpcaster Spire Portal |q 70154/2 |goto 52.82,35.66
step
Watch the dialogue
kill Frenzied Arcane Thirster##195202 |q 70154/3 |goto 64.63,42.84
step
click A Gateway to Somewhere
Escape with Warpcaster Delandra |q 70154/4 |goto 64.69,42.96
step
talk Warpcaster Delandra##189764
turnin A Gateway to Somewhere##70154 |goto 48.60,30.30
accept An Ancient Awakening##70156 |goto 48.60,30.30
step
Watch the dialogue
Prepare to Charge the Waygate |q 70156/1 |goto 48.38,30.24
step
extraaction Open Vessel##386193
Watch the dialogue
Empower the Waygate |q 70156/2 |goto 48.38,30.13
step
Kill enemies at the top of the tower
clicknpc Latent Arcana##195535+
|tip They look like glowing motes of energy at the top of the tower.
Transfer Energy to the Waygate |q 70156/3 |goto 48.33,30.13
step
click Ancient Waygate
Use the Cobalt Assembly Waygate |q 70156/4 |goto 48.33,30.13
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
turnin An Ancient Awakening##70156 |goto The Waking Shores/0 47.20,90.25
step
talk Cataloger Jakes##189226 |goto The Waking Shores/0 47.11,82.58
|tip Inside the tent.
|tip Turn in Dragon Isles Artifacts from treasures and supply packs all over The Waking Shores.
'|turnin Multiple Dragon Isles Artifacts##72876
'|turnin Multiple Dragon Isles Artifacts##71035
'|turnin Dragon Isles Artifacts##71034
Reach Renown Level 8 with the Dragonscale Expedition |complete factionrenown(2507) >= 8
|tip Complete daily quests, weekly quests, and zone quests in The Waking Shores to gain renown.
|tip You can also gain renown by completing weekly quests using the "Dragonscale Basecamp Weekly Quests" guide.
step
_Next to you:_
talk Doc Nanners##188103
|tip He should appear next to you.
accept Continued Waygate Exploration##70702
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
turnin Continued Waygate Exploration##70702 |goto The Waking Shores/0 47.20,90.25
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
accept Waygate: Algeth'era##71162 |goto 47.20,90.25 |only if not completedq(71162) |noautoaccept |or
accept Waygate: Eon's Fringe##71165 |goto 47.20,90.25 |only if not completedq(71165) |noautoaccept |or
|tip Algeth'era and Eon's Fringe are in Thaldraszus.
accept Waygate: Shady Sanctuary##71178 |goto 47.20,90.25 |only if not completedq(71178) |noautoaccept |or
accept Waygate: Rusza'thar Reach##71138 |goto 47.20,90.25 |only if not completedq(71138) |noautoaccept |or
|tip Shady Sanctuary and Rusza'thar Reach are in Ohn'ahran Plains.
accept Waygate: Vakthros##71161 |goto 47.20,90.25 |only if not completedq(71161) |noautoaccept |or
|tip Vakthros is in The Azure Span.
accept Waygate: Skytop Observatory##71157 |goto 47.20,90.25 |only if not completedq(71157) |noautoaccept |or
|tip Skytop Observatory is in The Waking Shores
|tip Choose a location to link your waygate network to.
|tip You can only choose one location until your next renown unlock.
|only if not completedallq(71162,71178,71165,71161,71138,71157)
step
click Dormant Waygate
|tip At the top of the tower.
Activate the Waygate |q 71162/1 |goto Thaldraszus/0 62.42,40.47
|only if haveq(71162)
step
click Ancient Waygate
|tip At the top of the tower.
fpath Algeth'era Waygate |goto 62.42,40.47
|only if haveq(71162)
step
click Dormant Waygate
Activate the Waygate |q 71178/1 |goto Ohn'ahran Plains/0 30.66,55.48
|only if haveq(71178)
step
click Ancient Waygate
fpath Shady Sanctuary Waygate |goto 30.66,55.48
|only if haveq(71178)
step
click Dormant Waygate
|tip Inside the tower.
Activate the Waygate |q 71165/1 |goto Thaldraszus/0 52.34,78.54
|only if haveq(71165)
step
click Ancient Waygate
|tip Inside the tower.
fpath Eon's Fringe Waygate |goto 52.34,78.54
|only if haveq(71165)
step
click Dormant Waygate
|tip At the top of the tower.
Activate the Waygate |q 71161/1 |goto The Azure Span/0 77.59,30.79
|only if haveq(71161)
step
click Ancient Waygate
|tip At the top of the tower.
fpath Vakthros Waygate |goto 77.59,30.79
|only if haveq(71161)
step
click Dormant Waygate
Activate the Waygate |q 71138/1 |goto Ohn'ahran Plains/0 81.31,38.98
|only if haveq(71138)
step
click Ancient Waygate
fpath Rusza'thar Reach Waygate |goto 81.31,38.98
|only if haveq(71138)
step
click Dormant Waygate
Activate the Waygate |q 71157/1 |goto The Waking Shores/0 75.28,57.02
|only if haveq(71157)
step
click Ancient Waygate
fpath Skytop Observatory Waygate |goto 75.28,57.02
|only if haveq(71157)
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
turnin Waygate: Skytop Observatory##71157 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71157)
turnin Waygate: Algeth'era##71162 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71162)
turnin Waygate: Shady Sanctuary##71178 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71178)
turnin Waygate: Eon's Fringe##71165 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71165)
turnin Waygate: Vakthros##71161 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71161)
turnin Waygate: Rusza'thar Reach##71138 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71138)
|only if haveq(71162,71178,71165,71161,71138,71157)
step
talk Cataloger Jakes##189226 |goto The Waking Shores/0 47.11,82.58
|tip Inside the tent.
|tip Turn in Dragon Isles Artifacts from treasures and supply packs all over The Waking Shores.
'|turnin Multiple Dragon Isles Artifacts##72876
'|turnin Multiple Dragon Isles Artifacts##71035
'|turnin Dragon Isles Artifacts##71034
Reach Renown Level 10 with the Dragonscale Expedition |complete factionrenown(2507) >= 10
|tip Complete daily quests, weekly quests, and zone quests in The Waking Shores to gain renown.
|tip You can also gain renown by completing weekly quests using the "Dragonscale Basecamp Weekly Quests" guide.
step
_Next to you:_
talk Doc Nanners##188103
|tip He should appear next to you.
accept Continued Waygate Exploration##71146
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
turnin Continued Waygate Exploration##71146 |goto The Waking Shores/0 47.20,90.25
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
accept Waygate: Algeth'era##71162 |goto 47.20,90.25 |only if not completedq(71162) |noautoaccept |or
accept Waygate: Eon's Fringe##71165 |goto 47.20,90.25 |only if not completedq(71165) |noautoaccept |or
|tip Algeth'era and Eon's Fringe are in Thaldraszus.
accept Waygate: Shady Sanctuary##71178 |goto 47.20,90.25 |only if not completedq(71178) |noautoaccept |or
accept Waygate: Rusza'thar Reach##71138 |goto 47.20,90.25 |only if not completedq(71138) |noautoaccept |or
|tip Shady Sanctuary and Rusza'thar Reach are in Ohn'ahran Plains.
accept Waygate: Vakthros##71161 |goto 47.20,90.25 |only if not completedq(71161) |noautoaccept |or
|tip Vakthros is in The Azure Span.
accept Waygate: Skytop Observatory##71157 |goto 47.20,90.25 |only if not completedq(71157) |noautoaccept |or
|tip Skytop Observatory is in The Waking Shores
|tip Choose a location to link your waygate network to.
|tip You can only choose one location until your next renown unlock.
|only if not completedallq(71162,71178,71165,71161,71138,71157)
step
click Dormant Waygate
|tip At the top of the tower.
Activate the Waygate |q 71162/1 |goto Thaldraszus/0 62.42,40.47
|only if haveq(71162)
step
click Ancient Waygate
|tip At the top of the tower.
fpath Algeth'era Waygate |goto 62.42,40.47
|only if haveq(71162)
step
click Dormant Waygate
Activate the Waygate |q 71178/1 |goto Ohn'ahran Plains/0 30.66,55.48
|only if haveq(71178)
step
click Ancient Waygate
fpath Shady Sanctuary Waygate |goto 30.66,55.48
|only if haveq(71178)
step
click Dormant Waygate
|tip Inside the tower.
Activate the Waygate |q 71165/1 |goto Thaldraszus/0 52.34,78.54
|only if haveq(71165)
step
click Ancient Waygate
|tip Inside the tower.
fpath Eon's Fringe Waygate |goto 52.34,78.54
|only if haveq(71165)
step
click Dormant Waygate
|tip At the top of the tower.
Activate the Waygate |q 71161/1 |goto The Azure Span/0 77.59,30.79
|only if haveq(71161)
step
click Ancient Waygate
|tip At the top of the tower.
fpath Vakthros Waygate |goto 77.59,30.79
|only if haveq(71161)
step
click Dormant Waygate
Activate the Waygate |q 71138/1 |goto Ohn'ahran Plains/0 81.31,38.98
|only if haveq(71138)
step
click Ancient Waygate
fpath Rusza'thar Reach Waygate |goto 81.31,38.98
|only if haveq(71138)
step
click Dormant Waygate
Activate the Waygate |q 71157/1 |goto The Waking Shores/0 75.28,57.02
|only if haveq(71157)
step
click Ancient Waygate
fpath Skytop Observatory Waygate |goto 75.28,57.02
|only if haveq(71157)
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
turnin Waygate: Skytop Observatory##71157 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71157)
turnin Waygate: Algeth'era##71162 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71162)
turnin Waygate: Shady Sanctuary##71178 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71178)
turnin Waygate: Eon's Fringe##71165 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71165)
turnin Waygate: Vakthros##71161 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71161)
turnin Waygate: Rusza'thar Reach##71138 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71138)
|only if haveq(71162,71178,71165,71161,71138,71157)
step
talk Cataloger Jakes##189226 |goto The Waking Shores/0 47.11,82.58
|tip Inside the tent.
|tip Turn in Dragon Isles Artifacts from treasures and supply packs all over The Waking Shores.
'|turnin Multiple Dragon Isles Artifacts##72876
'|turnin Multiple Dragon Isles Artifacts##71035
'|turnin Dragon Isles Artifacts##71034
Reach Renown Level 15 with the Dragonscale Expedition |complete factionrenown(2507) >= 15
|tip Complete daily quests, weekly quests, and zone quests in The Waking Shores to gain renown.
|tip You can also gain renown by completing weekly quests using the "Dragonscale Basecamp Weekly Quests" guide.
step
_Next to you:_
talk Doc Nanners##188103
|tip He should appear next to you.
accept Continued Waygate Exploration##71147
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
turnin Continued Waygate Exploration##71147 |goto The Waking Shores/0 47.20,90.25
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
accept Waygate: Algeth'era##71162 |goto 47.20,90.25 |only if not completedq(71162) |noautoaccept |or
accept Waygate: Eon's Fringe##71165 |goto 47.20,90.25 |only if not completedq(71165) |noautoaccept |or
|tip Algeth'era and Eon's Fringe are in Thaldraszus.
accept Waygate: Shady Sanctuary##71178 |goto 47.20,90.25 |only if not completedq(71178) |noautoaccept |or
accept Waygate: Rusza'thar Reach##71138 |goto 47.20,90.25 |only if not completedq(71138) |noautoaccept |or
|tip Shady Sanctuary and Rusza'thar Reach are in Ohn'ahran Plains.
accept Waygate: Vakthros##71161 |goto 47.20,90.25 |only if not completedq(71161) |noautoaccept |or
|tip Vakthros is in The Azure Span.
accept Waygate: Skytop Observatory##71157 |goto 47.20,90.25 |only if not completedq(71157) |noautoaccept |or
|tip Skytop Observatory is in The Waking Shores
|tip Choose a location to link your waygate network to.
|tip You can only choose one location until your next renown unlock.
|only if not completedallq(71162,71178,71165,71161,71138,71157)
step
click Dormant Waygate
|tip At the top of the tower.
Activate the Waygate |q 71162/1 |goto Thaldraszus/0 62.42,40.47
|only if haveq(71162)
step
click Ancient Waygate
|tip At the top of the tower.
fpath Algeth'era Waygate |goto 62.42,40.47
|only if haveq(71162)
step
click Dormant Waygate
Activate the Waygate |q 71178/1 |goto Ohn'ahran Plains/0 30.66,55.48
|only if haveq(71178)
step
click Ancient Waygate
fpath Shady Sanctuary Waygate |goto 30.66,55.48
|only if haveq(71178)
step
click Dormant Waygate
|tip Inside the tower.
Activate the Waygate |q 71165/1 |goto Thaldraszus/0 52.34,78.54
|only if haveq(71165)
step
click Ancient Waygate
|tip Inside the tower.
fpath Eon's Fringe Waygate |goto 52.34,78.54
|only if haveq(71165)
step
click Dormant Waygate
|tip At the top of the tower.
Activate the Waygate |q 71161/1 |goto The Azure Span/0 77.59,30.79
|only if haveq(71161)
step
click Ancient Waygate
|tip At the top of the tower.
fpath Vakthros Waygate |goto 77.59,30.79
|only if haveq(71161)
step
click Dormant Waygate
Activate the Waygate |q 71138/1 |goto Ohn'ahran Plains/0 81.31,38.98
|only if haveq(71138)
step
click Ancient Waygate
fpath Rusza'thar Reach Waygate |goto 81.31,38.98
|only if haveq(71138)
step
click Dormant Waygate
Activate the Waygate |q 71157/1 |goto The Waking Shores/0 75.28,57.02
|only if haveq(71157)
step
click Ancient Waygate
fpath Skytop Observatory Waygate |goto 75.28,57.02
|only if haveq(71157)
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
turnin Waygate: Skytop Observatory##71157 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71157)
turnin Waygate: Algeth'era##71162 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71162)
turnin Waygate: Shady Sanctuary##71178 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71178)
turnin Waygate: Eon's Fringe##71165 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71165)
turnin Waygate: Vakthros##71161 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71161)
turnin Waygate: Rusza'thar Reach##71138 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71138)
|only if haveq(71162,71178,71165,71161,71138,71157)
step
talk Cataloger Jakes##189226 |goto The Waking Shores/0 47.11,82.58
|tip Inside the tent.
|tip Turn in Dragon Isles Artifacts from treasures and supply packs all over The Waking Shores.
'|turnin Multiple Dragon Isles Artifacts##72876
'|turnin Multiple Dragon Isles Artifacts##71035
'|turnin Dragon Isles Artifacts##71034
Reach Renown Level 17 with the Dragonscale Expedition |complete factionrenown(2507) >= 17
|tip Complete daily quests, weekly quests, and zone quests in The Waking Shores to gain renown.
|tip You can also gain renown by completing weekly quests using the "Dragonscale Basecamp Weekly Quests" guide.
step
_Next to you:_
talk Doc Nanners##188103
|tip He should appear next to you.
accept Continued Waygate Exploration##71148
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
turnin Continued Waygate Exploration##71148 |goto The Waking Shores/0 47.20,90.25
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
accept Waygate: Algeth'era##71162 |goto 47.20,90.25 |only if not completedq(71162) |noautoaccept |or
accept Waygate: Eon's Fringe##71165 |goto 47.20,90.25 |only if not completedq(71165) |noautoaccept |or
|tip Algeth'era and Eon's Fringe are in Thaldraszus.
accept Waygate: Shady Sanctuary##71178 |goto 47.20,90.25 |only if not completedq(71178) |noautoaccept |or
accept Waygate: Rusza'thar Reach##71138 |goto 47.20,90.25 |only if not completedq(71138) |noautoaccept |or
|tip Shady Sanctuary and Rusza'thar Reach are in Ohn'ahran Plains.
accept Waygate: Vakthros##71161 |goto 47.20,90.25 |only if not completedq(71161) |noautoaccept |or
|tip Vakthros is in The Azure Span.
accept Waygate: Skytop Observatory##71157 |goto 47.20,90.25 |only if not completedq(71157) |noautoaccept |or
|tip Skytop Observatory is in The Waking Shores
|tip Choose a location to link your waygate network to.
|tip You can only choose one location until your next renown unlock.
|only if not completedallq(71162,71178,71165,71161,71138,71157)
step
click Dormant Waygate
|tip At the top of the tower.
Activate the Waygate |q 71162/1 |goto Thaldraszus/0 62.42,40.47
|only if haveq(71162)
step
click Ancient Waygate
|tip At the top of the tower.
fpath Algeth'era Waygate |goto 62.42,40.47
|only if haveq(71162)
step
click Dormant Waygate
Activate the Waygate |q 71178/1 |goto Ohn'ahran Plains/0 30.66,55.48
|only if haveq(71178)
step
click Ancient Waygate
fpath Shady Sanctuary Waygate |goto 30.66,55.48
|only if haveq(71178)
step
click Dormant Waygate
|tip Inside the tower.
Activate the Waygate |q 71165/1 |goto Thaldraszus/0 52.34,78.54
|only if haveq(71165)
step
click Ancient Waygate
|tip Inside the tower.
fpath Eon's Fringe Waygate |goto 52.34,78.54
|only if haveq(71165)
step
click Dormant Waygate
|tip At the top of the tower.
Activate the Waygate |q 71161/1 |goto The Azure Span/0 77.59,30.79
|only if haveq(71161)
step
click Ancient Waygate
|tip At the top of the tower.
fpath Vakthros Waygate |goto 77.59,30.79
|only if haveq(71161)
step
click Dormant Waygate
Activate the Waygate |q 71138/1 |goto Ohn'ahran Plains/0 81.31,38.98
|only if haveq(71138)
step
click Ancient Waygate
fpath Rusza'thar Reach Waygate |goto 81.31,38.98
|only if haveq(71138)
step
click Dormant Waygate
Activate the Waygate |q 71157/1 |goto The Waking Shores/0 75.28,57.02
|only if haveq(71157)
step
click Ancient Waygate
fpath Skytop Observatory Waygate |goto 75.28,57.02
|only if haveq(71157)
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
turnin Waygate: Skytop Observatory##71157 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71157)
turnin Waygate: Algeth'era##71162 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71162)
turnin Waygate: Shady Sanctuary##71178 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71178)
turnin Waygate: Eon's Fringe##71165 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71165)
turnin Waygate: Vakthros##71161 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71161)
turnin Waygate: Rusza'thar Reach##71138 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71138)
|only if haveq(71162,71178,71165,71161,71138,71157)
step
talk Cataloger Jakes##189226 |goto The Waking Shores/0 47.11,82.58
|tip Inside the tent.
|tip Turn in Dragon Isles Artifacts from treasures and supply packs all over The Waking Shores.
'|turnin Multiple Dragon Isles Artifacts##72876
'|turnin Multiple Dragon Isles Artifacts##71035
'|turnin Dragon Isles Artifacts##71034
Reach Renown Level 20 with the Dragonscale Expedition |complete factionrenown(2507) >= 20
|tip Complete daily quests, weekly quests, and zone quests in The Waking Shores to gain renown.
|tip You can also gain renown by completing weekly quests using the "Dragonscale Basecamp Weekly Quests" guide.
step
_Next to you:_
talk Doc Nanners##188103
|tip He should appear next to you.
accept Continued Waygate Exploration##71149
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
turnin Continued Waygate Exploration##71149 |goto The Waking Shores/0 47.20,90.25
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
accept Waygate: Algeth'era##71162 |goto 47.20,90.25 |only if not completedq(71162) |noautoaccept |or
accept Waygate: Eon's Fringe##71165 |goto 47.20,90.25 |only if not completedq(71165) |noautoaccept |or
|tip Algeth'era and Eon's Fringe are in Thaldraszus.
accept Waygate: Shady Sanctuary##71178 |goto 47.20,90.25 |only if not completedq(71178) |noautoaccept |or
accept Waygate: Rusza'thar Reach##71138 |goto 47.20,90.25 |only if not completedq(71138) |noautoaccept |or
|tip Shady Sanctuary and Rusza'thar Reach are in Ohn'ahran Plains.
accept Waygate: Vakthros##71161 |goto 47.20,90.25 |only if not completedq(71161) |noautoaccept |or
|tip Vakthros is in The Azure Span.
accept Waygate: Skytop Observatory##71157 |goto 47.20,90.25 |only if not completedq(71157) |noautoaccept |or
|tip Skytop Observatory is in The Waking Shores
|tip Choose a location to link your waygate network to.
|tip You can only choose one location until your next renown unlock.
|only if not completedallq(71162,71178,71165,71161,71138,71157)
step
click Dormant Waygate
|tip At the top of the tower.
Activate the Waygate |q 71162/1 |goto Thaldraszus/0 62.42,40.47
|only if haveq(71162)
step
click Ancient Waygate
|tip At the top of the tower.
fpath Algeth'era Waygate |goto 62.42,40.47
|only if haveq(71162)
step
click Dormant Waygate
Activate the Waygate |q 71178/1 |goto Ohn'ahran Plains/0 30.66,55.48
|only if haveq(71178)
step
click Ancient Waygate
fpath Shady Sanctuary Waygate |goto 30.66,55.48
|only if haveq(71178)
step
click Dormant Waygate
|tip Inside the tower.
Activate the Waygate |q 71165/1 |goto Thaldraszus/0 52.34,78.54
|only if haveq(71165)
step
click Ancient Waygate
|tip Inside the tower.
fpath Eon's Fringe Waygate |goto 52.34,78.54
|only if haveq(71165)
step
click Dormant Waygate
|tip At the top of the tower.
Activate the Waygate |q 71161/1 |goto The Azure Span/0 77.59,30.79
|only if haveq(71161)
step
click Ancient Waygate
|tip At the top of the tower.
fpath Vakthros Waygate |goto 77.59,30.79
|only if haveq(71161)
step
click Dormant Waygate
Activate the Waygate |q 71138/1 |goto Ohn'ahran Plains/0 81.31,38.98
|only if haveq(71138)
step
click Ancient Waygate
fpath Rusza'thar Reach Waygate |goto 81.31,38.98
|only if haveq(71138)
step
click Dormant Waygate
Activate the Waygate |q 71157/1 |goto The Waking Shores/0 75.28,57.02
|only if haveq(71157)
step
click Ancient Waygate
fpath Skytop Observatory Waygate |goto 75.28,57.02
|only if haveq(71157)
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
turnin Waygate: Skytop Observatory##71157 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71157)
turnin Waygate: Algeth'era##71162 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71162)
turnin Waygate: Shady Sanctuary##71178 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71178)
turnin Waygate: Eon's Fringe##71165 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71165)
turnin Waygate: Vakthros##71161 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71161)
turnin Waygate: Rusza'thar Reach##71138 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71138)
|only if haveq(71162,71178,71165,71161,71138,71157)
step
talk Cataloger Jakes##189226 |goto The Waking Shores/0 47.11,82.58
|tip Inside the tent.
|tip Turn in Dragon Isles Artifacts from treasures and supply packs all over The Waking Shores.
'|turnin Multiple Dragon Isles Artifacts##72876
'|turnin Multiple Dragon Isles Artifacts##71035
'|turnin Dragon Isles Artifacts##71034
Reach Renown Level 23 with the Dragonscale Expedition |complete factionrenown(2507) >= 23
|tip Complete daily quests, weekly quests, and zone quests in The Waking Shores to gain renown.
|tip You can also gain renown by completing weekly quests using the "Dragonscale Basecamp Weekly Quests" guide.
step
_Next to you:_
talk Doc Nanners##188103
|tip He should appear next to you.
accept Continued Waygate Exploration##71150
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
turnin Continued Waygate Exploration##71150 |goto The Waking Shores/0 47.20,90.25
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
accept Waygate: Algeth'era##71162 |goto 47.20,90.25 |only if not completedq(71162) |noautoaccept |or
accept Waygate: Eon's Fringe##71165 |goto 47.20,90.25 |only if not completedq(71165) |noautoaccept |or
|tip Algeth'era and Eon's Fringe are in Thaldraszus.
accept Waygate: Shady Sanctuary##71178 |goto 47.20,90.25 |only if not completedq(71178) |noautoaccept |or
accept Waygate: Rusza'thar Reach##71138 |goto 47.20,90.25 |only if not completedq(71138) |noautoaccept |or
|tip Shady Sanctuary and Rusza'thar Reach are in Ohn'ahran Plains.
accept Waygate: Vakthros##71161 |goto 47.20,90.25 |only if not completedq(71161) |noautoaccept |or
|tip Vakthros is in The Azure Span.
accept Waygate: Skytop Observatory##71157 |goto 47.20,90.25 |only if not completedq(71157) |noautoaccept |or
|tip Skytop Observatory is in The Waking Shores
|tip Choose a location to link your waygate network to.
|tip You can only choose one location until your next renown unlock.
|only if not completedallq(71162,71178,71165,71161,71138,71157)
step
click Dormant Waygate
|tip At the top of the tower.
Activate the Waygate |q 71162/1 |goto Thaldraszus/0 62.42,40.47
|only if haveq(71162)
step
click Ancient Waygate
|tip At the top of the tower.
fpath Algeth'era Waygate |goto 62.42,40.47
|only if haveq(71162)
step
click Dormant Waygate
Activate the Waygate |q 71178/1 |goto Ohn'ahran Plains/0 30.66,55.48
|only if haveq(71178)
step
click Ancient Waygate
fpath Shady Sanctuary Waygate |goto 30.66,55.48
|only if haveq(71178)
step
click Dormant Waygate
|tip Inside the tower.
Activate the Waygate |q 71165/1 |goto Thaldraszus/0 52.34,78.54
|only if haveq(71165)
step
click Ancient Waygate
|tip Inside the tower.
fpath Eon's Fringe Waygate |goto 52.34,78.54
|only if haveq(71165)
step
click Dormant Waygate
|tip At the top of the tower.
Activate the Waygate |q 71161/1 |goto The Azure Span/0 77.59,30.79
|only if haveq(71161)
step
click Ancient Waygate
|tip At the top of the tower.
fpath Vakthros Waygate |goto 77.59,30.79
|only if haveq(71161)
step
click Dormant Waygate
Activate the Waygate |q 71138/1 |goto Ohn'ahran Plains/0 81.31,38.98
|only if haveq(71138)
step
click Ancient Waygate
fpath Rusza'thar Reach Waygate |goto 81.31,38.98
|only if haveq(71138)
step
click Dormant Waygate
Activate the Waygate |q 71157/1 |goto The Waking Shores/0 75.28,57.02
|only if haveq(71157)
step
click Ancient Waygate
fpath Skytop Observatory Waygate |goto 75.28,57.02
|only if haveq(71157)
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
turnin Waygate: Skytop Observatory##71157 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71157)
turnin Waygate: Algeth'era##71162 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71162)
turnin Waygate: Shady Sanctuary##71178 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71178)
turnin Waygate: Eon's Fringe##71165 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71165)
turnin Waygate: Vakthros##71161 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71161)
turnin Waygate: Rusza'thar Reach##71138 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71138)
|only if haveq(71162,71178,71165,71161,71138,71157)
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Dragonflight\\Sojourner of Azure Span",{
author="support@zygorguides.com",
description="\n",
achieveid={16428},
patch='100002',
startlevel=60,
keywords={"Dragonflight", "Quests"},
},[[
step
Earn the "Sojourner of Azure Span" Achievement |achieve 16428
|tip Refer to "The Azure Span (Full Zone)" guide to accomplish this.
Click here to load "The Azure Span (Full Zone)" guide |confirm |next "Leveling Guides\\Dragonflight (60-70)\\Full Zones (Story + Side Quests)\\The Azure Span (Full Zone)"
step
_Congratulations!_
You Earned the "Sojourner of Azure Span" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Dragonflight\\Sojourner of Ohn'ahran Plains",{
author="support@zygorguides.com",
description="\n",
achieveid={16405},
patch='100002',
startlevel=60,
keywords={"Dragonflight", "Quests"},
},[[
step
Earn the "Sojourner of Ohn'ahran Plains" Achievement |achieve 16405
|tip Refer to the "Ohn'ahran Plains (Full Zone)" guide to accomplish this.
Click here to load the "Ohn'ahran Plains (Full Zone)" guide |confirm |next "Leveling Guides\\Dragonflight (60-70)\\Full Zones (Story + Side Quests)\\Ohn'ahran Plains (Full Zone)"
step
_Congratulations!_
You Earned the "Sojourner of Ohn'ahran Plains" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Dragonflight\\Sojourner of Thaldraszus",{
author="support@zygorguides.com",
description="\n",
achieveid={16398},
patch='100002',
startlevel=60,
keywords={"Dragonflight", "Quests"},
},[[
step
Earn the "Sojourner of Thaldraszus" Achievement |achieve 16398
|tip Refer to the "Thaldraszus (Full Zone)" guide to accomplish this.
Click here to load the "Thaldraszus (Full Zone)" guide |confirm |next "Leveling Guides\\Dragonflight (60-70)\\Full Zones (Story + Side Quests)\\Thaldraszus (Full Zone)"
step
_Congratulations!_
You Earned the "Sojourner of Thaldraszus" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Dragonflight\\Sojourner of the Waking Shores",{
author="support@zygorguides.com",
description="\n",
achieveid={16401},
patch='100002',
startlevel=60,
keywords={"Dragonflight", "Quests"},
},[[
step
Earn the "Sojourner of the Waking Shores" Achievement |achieve 16401
|tip Refer to the "The Waking Shores (Full Zone)" guide to accomplish this.
Click here to load the "The Waking Shores (Full Zone)" guide |confirm |next "Leveling Guides\\Dragonflight (60-70)\\Full Zones (Story + Side Quests)\\Intro & The Waking Shores (Full Zone)"
step
_Congratulations!_
You Earned the "Sojourner of The Waking Shores" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Dragonflight\\River Rapids Wrangler",{
author="support@zygorguides.com",
description="\n",
achieveid={15889},
patch='100002',
startlevel=60,
keywords={"Dragonflight", "Quests"},
},[[
step
talk Ruriq##186157
accept Mammoths Matter##65914 |goto The Azure Span/0 44.78,50.62
accept Culling the Cullers##65925 |goto 44.78,50.62
stickystart "Kill_Vicious_Ice_Slitherers"
stickystart "Collect_Ontuq_Hide_Scraps_And_Ontuq_Tusks"
step
kill 3 Vicious Ice Borer##186392 |q 65925/2 |goto 47.47,51.31
|tip They look like larger centipedes standing upright.
step
label "Kill_Vicious_Ice_Slitherers"
kill 10 Vicious Ice Slitherer##186391 |q 65925/1 |goto 47.47,51.31
|tip They look like smaller centipedes standing upright.
step
label "Collect_Ontuq_Hide_Scraps_And_Ontuq_Tusks"
click On'tuq Mammoth Matriarch+
|tip They look like larger dead mammoths.
|tip Only the matriarchs will drop the tusks.
click On'tuq Mammoth+
|tip They look like smaller dead mammoths.
collect 5 On'tuq Tusk##191092 |q 65914/2 |goto 47.47,51.31
collect 7 On'tuq Hide Scraps##191091 |q 65914/1 |goto 47.47,51.31
step
talk Ruriq##186157
turnin Mammoths Matter##65914 |goto 45.42,54.17
turnin Culling the Cullers##65925 |goto 45.42,54.17
accept Tackling the Falls##65926 |goto 45.42,54.17
step
click The Fallstrider
|tip It looks like a boat.
Help Ruriq |q 65926/1 |goto 45.39,54.13
step
talk Kauj##186386
turnin Tackling the Falls##65926 |goto 45.51,54.18
accept The Gleamfisher##66724 |goto 45.51,54.18
step
clicknpc Gleamfish##187037
collect Gleamfish##194324 |q 66724/1 |goto 44.92,53.77 |count 1
step
clicknpc Gleamfish##187037
collect Gleamfish##194324 |q 66724/1 |goto 45.17,54.91 |count 2
step
clicknpc Gleamfish##187037
collect Gleamfish##194324 |q 66724/1 |goto 45.16,54.95 |count 3
step
click Offering Basket
Watch the dialogue
Place the Gleamfish in the Basket |q 66724/2 |goto 45.48,54.19
step
talk Ruriq##186157
turnin The Gleamfisher##66724 |goto 45.45,54.17
accept Ice Breakers##65929 |goto 45.45,54.17
step
talk Kauj##186386
accept Wayward Winds##65928 |goto 45.51,54.18
stickystart "Collect_Restless_Motes"
step
clicknpc Freezing Water##186398+
|tip They look like water elementals frozen in blocks of ice.
|tip They will appear on your minimap as yellow dots.
|tip You may be attacked.
Thaw #5# Freezing Waters |q 65929/1 |goto 46.65,57.75
step
label "Collect_Restless_Motes"
Kill Restless enemies around this area
|tip They look like air elementals.
collect 10 Restless Mote##191199 |q 65928/1 |goto 46.65,57.45
step
talk Ruriq##186157
turnin Ice Breakers##65929 |goto 45.45,54.17
step
talk Kauj##186386
turnin Wayward Winds##65928 |goto 45.51,54.18
accept A Wrestle of Wind and Water##65930 |goto 45.51,54.18
step
Enter the cave at the bottom of the waterfall |goto 45.52,57.03 < 15 |walk
kill Kraunot##186401
|tip He will eventually surrender.
|tip Inside the cave.
Challenge the Spirits |q 65930/1 |goto 45.60,57.62
step
talk Ruriq##186157
turnin A Wrestle of Wind and Water##65930 |goto 45.00,54.03
accept Ruriq's River Rapids Ride##66155 |goto 45.41,54.17
step
clicknpc The Fallstrider##190067
|tip It looks like a boat.
Begin Riding on the Fallstrider |invehicle |goto 44.92,54.10 |q 66155
step
_As You Ride on the Boat:_
|tip Use the abilities on your action bar on the fish in the water.
Catch #10# Fish on The Fallstrider |q 66155/1
step
Watch the dialogue
Ride the River with Ruriq |outvehicle |goto 34.31,52.47 |q 66155 |notravel
step
Watch the dialogue
talk Ruriq##190287
|tip He walks to this location.
turnin Ruriq's River Rapids Ride##66155 |goto 34.27,52.34
step
talk Ruriq##186157
Tell him _"I'd like to take your River Rapids Ride again."_
Begin Riding on the Fallstrider |invehicle |goto 45.00,54.03 |achieve 15889
step
_As You Ride on the Boat:_
|tip Use the abilities on your action bar on the fish in the water.
|tip Zoom out as far as you can.
|tip Try to catch as many fish as possible in the first area.
|tip Look back behind you if there are no fish within reach in front of you as they do respawn.
|tip Spam the first ability as much as possible and try to save ability 2 for grouped up fish.
Catch #40# Fish During One Session of Ruriq's River Rapids Ride |achieve 15889
step
_Congratulations!_
You Earned the "River Rapids Wrangler" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Dragonflight\\Drop It Like It's Hot",{
author="support@zygorguides.com",
description="\n",
achieveid={17343},
patch='100002',
startlevel=70,
keywords={"Dragonflight", "Quests"},
},[[
step
click Portal to the Primalist Future |goto Thaldraszus/0 59.83,82.24
Enter the Primalist Tomorrow |goto Primalist Tomorrow/0 61.85,51.47 < 1000
talk Tarnormu##199541
buy 5 Field Deployable Heat Source##203478 |achieve 17343 |goto 60.94,46.58
|tip You may not need this many.
step
use the Field Deployable Heat Source##203478
|tip Use them during the boss encounter.
|tip Stand in the warmth to ensure that you have 15 stacks of warmth.
Have #15# Stacks of Warmth |complete hasbuff("spell:398118",15) |achieve 17343
|tip Standing in Warmth created by other players will increase your stacks.
Kill a Primalist Monster Within th Storm's Fury Event While You Have At Least 15 Stacks of Warmth |achieve 17343 |goto 43.66,29.40
step
_Congratulations!_
You Earned the "Drop It Like It's Hot" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Reputation\\Dragonflight\\Ready, Aim, Catalog!",{
author="support@zygorguides.com",
description="\nUnlock cataloging World Quests with the Dragonscale Expedition.",
condition_suggested=function() return level >= 60 and factionrenown(2507) >= 8 and not achieved(16758) end,
achieveid={16758},
startlevel=60,
keywords={"Dragonflight","Reputation","Picture"},
patch='100002',
},[[
step
talk Cataloger Jakes##189226 |goto The Waking Shores/0 47.11,82.58
|tip Inside the tent.
|tip Turn in Dragon Isles Artifacts from treasures and supply packs all over The Waking Shores.
'|turnin Multiple Dragon Isles Artifacts##72876
'|turnin Multiple Dragon Isles Artifacts##71035
'|turnin Dragon Isles Artifacts##71034
Reach Renown Level 8 with the Dragonscale Expedition |complete factionrenown(2507) >= 8
|tip Complete daily quests, weekly quests, and zone quests in The Waking Shores to gain renown.
|tip You can also gain renown by completing weekly quests using the "Dragonscale Basecamp Weekly Quests" guide.
step
_Next to you:_
talk Doc Nanners##196643
|tip He should eventually appear.
accept A Cataloger's Paradise##69869
step
talk Cataloger Coralie##187707
turnin A Cataloger's Paradise##69869 |goto The Waking Shores/0 48.53,82.67
accept Basic Cataloging Gear##72525 |goto 48.53,82.67
step
click Expedition Supply Kit
|tip Click the "Cataloging Gear" ability at the top of the middle row.
Research the Cataloging Gear Ability |q 72525/1 |goto 47.30,83.38
step
talk Cataloger Coralie##187707
turnin Basic Cataloging Gear##72525 |goto 48.53,82.67
accept Pictures with Purpose##69870 |goto 48.53,82.67
step
talk Akunda the Cataloger##185651
turnin Pictures with Purpose##69870 |goto 49.88,68.42
accept Picture Perfect##65486 |goto 49.88,68.42
step
click Cataloger's Raft
Ride the Cataloger's Raft |q 65486/1 |goto 49.98,68.51
step
Take Pictures of Wildlife |q 65486/2
|tip Use the "Catalog" ability on your vehicle bar to take puctures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
step
talk Akunda the Cataloger##185651
turnin Picture Perfect##65486 |goto 49.88,68.42
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Reputation\\Dragonflight\\Which Knot Was It Again?",{
author="support@zygorguides.com",
description="\nUnlock climbing World Quests with the Dragonscale Expedition.",
condition_suggested=function() return level >= 60 and factionrenown(2507) >= 6 and not achieved(16624) end,
achieveid={16624},
startlevel=60,
patch='100002',
},[[
step
talk Cataloger Jakes##189226 |goto The Waking Shores/0 47.11,82.58
|tip Inside the tent.
|tip Turn in Dragon Isles Artifacts from treasures and supply packs all over The Waking Shores.
'|turnin Multiple Dragon Isles Artifacts##72876
'|turnin Multiple Dragon Isles Artifacts##71035
'|turnin Dragon Isles Artifacts##71034
Reach Renown Level 6 with the Dragonscale Expedition |complete factionrenown(2507) >= 6
|tip Complete daily quests, weekly quests, and zone quests in The Waking Shores to gain renown.
|tip You can also gain renown by completing weekly quests using the "Dragonscale Basecamp Weekly Quests" guide.
step
talk Pathfinder Jeb##187700
turnin A Climber's Calling##69855 |goto The Waking Shores/0 47.33,83.40
accept Basic Climbing Gear##72524 |goto 47.33,83.40
step
click Climbing Gear
|tip Click the "Climbing Gear" ability at the top of the middle row.
Research the Climbing Gear Ability |q 72524/1 |goto 47.30,83.39
step
talk Pathfinder Jeb##187700
turnin Basic Climbing Gear##72524 |goto 47.33,83.40
accept Smoke Over the Mountain##66351 |goto 47.33,83.40
step
talk Rocky Dustbeard##181039
turnin Smoke Over the Mountain##66351 |goto 62.35,50.45
accept Climb Every Mountain##65421 |goto 62.35,50.45
step
click Climbing Gear
Put on the Climbing Gear |q 65421/1 |goto 62.35,50.54
step
click Handhold
Find a Handhold on the Cliff |q 65421/2 |goto 63.30,50.14
step
click Clinging Gustbloom Sample
|tip Click the handholds to reach the Gustbloom.
collect Clinging Gustbloom Sample##191138 |q 65421/3 |goto 63.25,49.81
step
Climb to the right |goto 63.46,50.02 < 5 |walk
clicknpc Pathfinder Yips##187349
Rescue Pathfinder Yips |q 65421/4 |goto 63.09,49.82
step
talk Rocky Dustbeard##181039
turnin Climb Every Mountain##65421 |goto 62.35,50.45
step
achieve Which Knot Was It Again?##16624
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Reputation\\Dragonflight\\The Disgruntled Hunter",{
author="support@zygorguides.com",
description="\nFind Hemet Nesingwary Jr. during the various grand hunts across the Dragon Isles.",
condition_suggested=function() return level >= 60 and factionrenown(2507) >= 6 and not achieved(16542) end,
achieveid={16542},
startlevel=60,
patch='100002',
},[[
step
talk Hemet Nesingwary Jr.##196502
|tip He will only appear when the correlated hunt is nearby.
Find the Disgruntled Hunter at the Northern Ohn'ahran Plains Hunt|achieve 16542/1 |goto 2023 82.45,13.91
step
talk Hemet Nesingwary Jr.##196505
|tip He will only appear when the correlated hunt is nearby.
Find the Disgruntled Hunter at the Western Ohn'ahran Plains Hunt |achieve 16542/2 |goto 2023 62.14,54.02
step
talk Hemet Nesingwary Jr.##196506
|tip He will only appear when the correlated hunt is nearby.
Find the Disgruntled Hunter at the Eastern Ohn'ahran Plains Hunt |achieve 16542/3 |goto 2023 82.88,47.81
step
talk Hemet Nesingwary Jr.##196507
|tip He will only appear when the correlated hunt is nearby.
Find the Disgruntled Hunter at the Southern Waking Shores Hunt |achieve 16542/4 |goto 2022 24.56,89.11
step
talk Hemet Nesingwary Jr.##196508
|tip He will only appear when the correlated hunt is nearby.
|tip On top of the rocks.
Find the Disgruntled Hunter at the Eastern Waking Shores Hunt |achieve 16542/5 |goto 2022 70.74,66.46
step
talk Hemet Nesingwary Jr.##196507
|tip He will only appear when the correlated hunt is nearby.
Find the Disgruntled Hunter at the Northern Waking Shores Hunt |achieve 16542/6 |goto 2022 42,80.62
step
talk Hemet Nesingwary Jr.##196509
|tip He will only appear when the correlated hunt is nearby.
|tip At the top of the dead tree.
Find the Disgruntled Hunter at the Western Azure Span Hunt |achieve 16542/7 |goto 2024 36.53,34.81
step
talk Hemet Nesingwary Jr.##196510
|tip He will only appear when the correlated hunt is nearby.
Find the Disgruntled Hunter at the Eastern Azure Span Hunt |achieve 16542/8 |goto 2024 68.12,23.53
step
talk Hemet Nesingwary Jr.##196511
|tip He will only appear when the correlated hunt is nearby.
Find the Disgruntled Hunter at the Southern Azure Span Hunt |achieve 16542/9 |goto 2024 69.20,49.87
step
talk Hemet Nesingwary Jr.##196512
|tip He will only appear when the correlated hunt is nearby.
|tip He's up on the rocks.
Find the Disgruntled Hunter at the Southern Thaldraszus Hunt |achieve 16542/10 |goto 2025 34.67,65.42
step
talk Hemet Nesingwary Jr.##196513
|tip He will only appear when the correlated hunt is nearby.
|tip Hiding in the bushes on the platform above.
|tip If he isn't here, he may have been killed by aggresive enemies.
Find the Disgruntled Hunter at the Northern Thaldraszus Hunt |achieve 16542/11 |goto 2025 50.67,45.61
step
_Congratulations!_
You Earned the "The Disgruntled Hunter" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Reputation\\Dragonflight\\Legendary Photograph",{
author="support@zygorguides.com",
description="\nEncounter each of the Legendary encounters found while cataloging wildlife.",
condition_suggested=function() return level >= 60 and factionrenown(2507) >= 6 and not achieved(16572) end,
achieveid={16572},
startlevel=60,
patch='100002',
},[[
step
Reach Renown Level 8 with the Dragonscale Expedition |complete factionrenown(2507) >= 8
|tip Complete daily quests, weekly quests, and zone quests in The Waking Shores to gain renown.
|tip You can also gain renown by completing weekly quests using the "Dragonscale Basecamp Weekly Quests" guide.
step
_Next to you:_
talk Doc Nanners##196643
|tip He should eventually appear.
accept A Cataloger's Paradise##69869
step
talk Cataloger Coralie##187707
turnin A Cataloger's Paradise##69869 |goto The Waking Shores/0 48.53,82.67
accept Basic Cataloging Gear##72525 |goto 48.53,82.67
step
click Expedition Supply Kit
|tip Click the "Cataloging Gear" ability at the top of the middle row.
Research the Cataloging Gear Ability |q 72525/1 |goto 47.30,83.38
step
talk Cataloger Coralie##187707
turnin Basic Cataloging Gear##72525 |goto 48.53,82.67
accept Pictures with Purpose##69870 |goto 48.53,82.67
step
talk Akunda the Cataloger##185651
turnin Pictures with Purpose##69870 |goto 49.88,68.42
accept Picture Perfect##65486 |goto 49.88,68.42
step
click Cataloger's Raft
Ride the Cataloger's Raft |q 65486/1 |goto 49.98,68.51
step
Take Pictures of Wildlife |q 65486/2
|tip Use the "Catalog" ability on your vehicle bar to take puctures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
step
talk Akunda the Cataloger##185651
turnin Picture Perfect##65486 |goto 49.88,68.42
step
label "loop"
clicknpc Expedition Supply Kit##194440
Learn the "Lucky Rock" Ability |goto 47.31,83.37
|tip It'll cost 2,00 Dragon Isle Supplies to purchase.
Click Here to Continue |confirm |achieve 16572
step
click Cataloger's Raft
|tip You can open the world map and see if there's a world quest active rather than traveling.
|tip Abu'Gar has a chance to appear during this ride.
|tip Hit the yellow exit button if he doesn't appear.
Take a Photograph of "Abu'Gar" While Cataloging Wildlife |achieve 16572/1 |goto The Waking Shores/0 64.35,59.23 |or
Click Here if the Raft Isn't Active |confirm |achieve 16572 |or
step
click Cataloger's Raft
|tip You can open the world map and see if there's a world quest active rather than traveling.
|tip Chen Stormstout has a chance to appear during this ride.
|tip Hit the yellow exit button if he doesn't appear.
Take a Photograph of "Chen Stormstout" While Cataloging Wildlife  |achieve 16572/2 |goto The Waking Shores/0 49.89,68.49 |or
Click Here if the Raft Isn't Active |confirm |achieve 16572 |or
step
click Cataloger's Raft
|tip You can open the world map and see if there's a world quest active rather than traveling.
|tip Chief Telemancer Oculeth has a chance to appear during this ride.
|tip Hit the yellow exit button if he doesn't appear.
Take a Photograph of "Chief Telemancer Oculeth" While Cataloging Wildlife |achieve 16572/3 |goto The Azure Span/0 44.20,60.95 |or
Click Here if the Raft Isn't Active |confirm |achieve 16572 |or
step
click Cataloger's Raft
|tip You can open the world map and see if there's a world quest active rather than traveling.
|tip Elder Clearwater has a chance to appear during this ride.
|tip Hit the yellow exit button if he doesn't appear.
Take a Photograph of "Elder Clearwater" While Cataloging Wildlife |achieve 16572/4 |goto Ohn'ahran Plains/0 72.93,84.47 |or
Click Here if the Raft Isn't Active |confirm |achieve 16572 |or
step
click Cataloger's Raft
|tip You can open the world map and see if there's a world quest active rather than traveling.
|tip The Time-Warped Mysterious Fisher has a chance to appear during this ride.
|tip Hit the yellow exit button if he doesn't appear.
Take a Photograph of "Time-Warped Mysterious Fisher" While Cataloging Wildlife |achieve 16572/5 |goto Thaldraszus/0 38.38,69.03 |or
Click Here if the Raft Isn't Active |confirm |achieve 16572 |or
step
click Cataloger's Raft
|tip You can open the world map and see if there's a world quest active rather than traveling.
|tip Nat pagle has a chance to appear during this ride.
|tip Hit the yellow exit button if he doesn't appear.
Take a Photograph of "Nat Pagle" While Cataloging Wildlife |achieve 16572/6 |goto Ohn'ahran Plains/0 51.98,57.01 |or
Click Here if the Raft Isn't Active |confirm |achieve 16572 |or
step
click Cataloger's Raft
|tip You can open the world map and see if there's a world quest active rather than traveling.
|tip Wrathion has a chance to appear during this ride.
|tip Hit the yellow exit button if he doesn't appear.
Take a Photograph of "Wrathion" While Cataloging Wildlife |achieve 16572/7 |goto Thaldraszus/0 51.13,42.19 |or
Click Here if the Raft Isn't Active |confirm |next "loop" |achieve 16572 |or
step
_Congratulations!_
You Earned the "Legendary Photograph" Achievement
]])
