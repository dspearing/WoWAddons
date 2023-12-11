local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("EventsC") then return end
ZygorGuidesViewer.GuideMenuTier = "CAT"
ZygorGuidesViewer:RegisterGuide("Events Guides\\Dragonflight\\Emerald Dreamsurge (Thaldraszus)",{
author="support@zygorguides.com",
description="This guide will help you complete the Emerald Dreamsurge in Thaldraszus.",
startlevel=70,
patch='100107',
areapoiid=7588,
areapoitype="Dreamsurge",
},[[
step
talk Archdruid Hamuul Runetotem##211031
accept Surging Dreams##77423 |goto Valdrakken/0 50.64,57.48
step
talk Gearweaver##208649
turnin Surging Dreams##77423 |goto Thaldraszus/0 51.21,43.34
accept Shaping the Dreamsurge##77251 |goto 51.21,43.34
accept Dreamsurge Investigation##77414 |goto 51.21,43.34 |only if not completedq(77414)
stickystart "Collect_Dreamsurge_Coalescence"
stickystart "Slay_a_Rare_Elite"
step
Complete #3# World Quests in the Dreamsurge |q 77414/1
|tip Click world quest icons on the map to load their guides and complete them.
|only if not completedq(77414)
step
label "Slay_a_Rare_Elite"
Slay a Rare elite Empowered by the Dreamsurge |q 77414/2
|tip Click a rare elite icon on the map to load its guide.
|tip Rare elite enemies might not always be active.
|only if not completedq(77414)
step
Wait for a Dreamsurge to Begin |complete vignette(5751)
|tip Dreamsurges start every half hour.
step
Join the Fight |scenariostart |goto 60.78,23.55
step
Kill enemies around this area
|tip You can also fly through birds in the air on your mount.
click Burning Root+
|tip They look like flame-topped roots growing out of the ground around this area.
Fight Back Against the Druids of the Flame Incursion |scenariogoal 1/0 |goto 60.78,23.55
|only if not completedq(77414)
step
Defeat the Dreamsurge Champion |scenariostage 2 |goto 61.84,26.37
|tip This enemy is elite and will require a group.
|only if not completedq(77414)
step
Close a Waking Dream Portal |q 77414/3
|tip Loot the corpse of the Allied Cinderrager.
|only if not completedq(77414)
step
label "Collect_Dreamsurge_Coalescence"
click Dreaming Growth+
|tip They look like large green and purple plants growing all over the zone.
|tip You can also fly through green orbs scattered all over the zone.
|tip Enemies also drop Coalescence.
Collect #100# Dreamsurge Coalescence |q 77251/1
step
talk Naralex##207962
Vote for a Dreamsurge Effect |q 77414/4 |goto 51.19,43.39
|only if not completedq(77414)
step
talk Gearweaver##208649
turnin Shaping the Dreamsurge##77251 |goto Thaldraszus/0 51.21,43.34
turnin Dreamsurge Investigation##77414 |goto 51.21,43.34 |only if not completedq(77414)
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Dragonflight\\Emerald Dreamsurge (The Waking Shores)",{
author="support@zygorguides.com",
description="This guide will help you complete the Emerald Dreamsurge in The Waking Shores.",
startlevel=70,
patch='100107',
areapoiid=7587,
areapoitype="Dreamsurge",
},[[
step
talk Archdruid Hamuul Runetotem##211031
accept Surging Dreams##77423 |goto Valdrakken/0 50.64,57.48
step
talk Archdruid Hamuul Runetotem##208649
turnin Surging Dreams##77423 |goto The Waking Shores/0 58.39,67.74
accept Shaping the Dreamsurge##77251 |goto The Waking Shores/0 58.39,67.74
accept Dreamsurge Investigation##77414 |goto 58.39,67.74 |only if not completedq(77414)
stickystart "Collect_Dreamsurge_Coalescence"
stickystart "Slay_a_Rare_Elite"
step
Complete #3# World Quests in the Dreamsurge |q 77414/1 |goto 51.11,42.66
|tip Click world quest icons on the map to load their guides and complete them.
|only if not completedq(77414)
step
label "Slay_a_Rare_Elite"
Slay a Rare Elite Empowered By the Dreamsurge |q 77414/2 |goto 51.11,42.66
|tip Click a rare elite icon on the map to load its guide.
|tip Rare elite enemies might not always be active.
|only if not completedq(77414)
step
Wait for a Dreamsurge to Begin |complete vignette(5751)
|tip Dreamsurges start every half hour.
step
Join the Fight |scenariostart |goto 41.14,76.74
step
Kill enemies around this area
|tip You can also fly through birds in the air on your mount.
click Burning Root+
|tip They look like flame-topped roots growing out of the ground around this area.
Fight Back Against the Druids of the Flame Incursion |scenariogoal 1/0 |goto 41.14,76.74
|only if not completedq(77414)
step
Defeat the Dreamsurge Champion |scenariostage 2 |goto 41.18,77.46
|tip This enemy is elite and will require a group.
|only if not completedq(77414)
step
Close a Waking Dream Portal |q 77414/3
|tip Loot the corpse of the Molten General.
|only if not completedq(77414)
step
label "Collect_Dreamsurge_Coalescence"
click Dreaming Growth+
|tip They look like large green and purple plants growing all over the zone.
|tip You can also fly through green orbs scattered all over the zone.
|tip Enemies also drop Coalescence.
Collect #100# Dreamsurge Coalescence |q 77251/1
step
talk Naralex##207962
Vote for a Dreamsurge Effect |q 77414/4 |goto 58.43,67.79
|only if not completedq(77414)
step
talk Archdruid Hamuul Runetotem##208649
turnin Shaping the Dreamsurge##77251 |goto 58.39,67.74
turnin Dreamsurge Investigation##77414 |goto 58.39,67.74 |only if not completedq(77414)
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Dragonflight\\Emerald Dreamsurge (Ohn'ahran Plains)",{
author="support@zygorguides.com",
description="This guide will help you complete the Emerald Dreamsurge in Ohn'ahran Plains.",
startlevel=70,
patch='100107',
areapoiid=7586,
areapoitype="Dreamsurge",
},[[
step
talk Archdruid Hamuul Runetotem##211031
accept Surging Dreams##77423 |goto Valdrakken/0 50.64,57.48
step
talk Archdruid Hamuul Runetotem##208649
turnin Surging Dreams##77423 |goto Ohn'ahran Plains/0 64.11,41.73
accept Shaping the Dreamsurge##77251 |goto 64.11,41.73
accept Dreamsurge Investigation##77414 |goto 64.11,41.73 |only if not completedq(77414)
stickystart "Collect_Dreamsurge_Coalescence"
stickystart "Slay_a_Rare_Elite"
step
Complete #3# World Quests in the Dreamsurge |q 77414/1
|tip Click world quest icons on the map to load their guides and complete them.
|only if not completedq(77414)
step
label "Slay_a_Rare_Elite"
Slay a Rare Elite Empowered By the Dreamsurge |q 77414/2
|tip Click a rare elite icon on the map to load its guide.
|tip Rare elite enemies might not always be active.
|only if not completedq(77414)
step
Wait for a Dreamsurge to Begin |complete vignette(5751)
|tip Dreamsurges start every half hour.
step
Kill enemies around this area
|tip You can also fly through birds in the air on your mount.
click Burning Root+
|tip They look like flame-topped roots growing out of the ground around this area.
Fight Back Against the Druids of the Flame Incursion |scenariogoal 1/0 |goto 25.18,60.95
|only if not completedq(77414)
step
Defeat the Dreamsurge Champion |scenariostage 2 |goto 24.29,60.98
|tip This enemy is elite and will require a group.
|only if not completedq(77414)
step
Close a Waking Dream Portal |q 77414/3
|tip Loot the corpse of the Planesborn Annihilator.
|only if not completedq(77414)
step
label "Collect_Dreamsurge_Coalescence"
click Dreaming Growth+
|tip They look like large green and purple plants growing all over the zone.
|tip You can also fly through green orbs scattered all over the zone.
|tip Enemies also drop Coalescence.
Collect #100# Dreamsurge Coalescence |q 77251/1
step
talk Naralex##207962
Vote for a Dreamsurge Effect |q 77414/4
|only if not completedq(77414)
step
talk Archdruid Hamuul Runetotem##208649
turnin Shaping the Dreamsurge##77251 |goto 64.11,41.73
turnin Dreamsurge Investigation##77414 |goto 64.11,41.73 |only if not completedq(77414)
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Dragonflight\\Emerald Dreamsurge (The Azure Span)",{
author="support@zygorguides.com",
description="This guide will help you complete the Emerald Dreamsurge in The Azure Span.",
startlevel=70,
patch='100107',
areapoiid=7585,
areapoitype="Dreamsurge",
},[[
step
talk Archdruid Hamuul Runetotem##211031
accept Surging Dreams##77423 |goto Valdrakken/0 50.64,57.48
step
talk Archdruid Hamuul Runetotem##208649
turnin Surging Dreams##77423 |goto The Azure Span/0 45.55,39.81
accept Shaping the Dreamsurge##77251 |goto 45.55,39.81
accept Dreamsurge Investigation##77414 |goto 45.55,39.81 |only if not completedq(77414)
stickystart "Collect_Dreamsurge_Coalescence"
stickystart "Slay_a_Rare_Elite"
step
Complete #3# World Quests in the Dreamsurge |q 77414/1
|tip Click world quest icons on the map to load their guides and complete them.
|only if not completedq(77414)
step
label "Slay_a_Rare_Elite"
Slay a Rare Elite Empowered By the Dreamsurge |q 77414/2
|tip Click a rare elite icon on the map to load its guide.
|tip Rare elite enemies might not always be active.
|only if not completedq(77414)
step
Wait for a Dreamsurge to Begin |complete vignette(5751)
|tip Dreamsurges start every half hour.
step
Kill enemies around this area
|tip You can also fly through birds in the air on your mount.
click Burning Root+
|tip They look like flame-topped roots growing out of the ground around this area.
Fight Back Against the Druids of the Flame Incursion |scenariogoal 1/0 |goto 32.68,39.72
|only if not completedq(77414)
step
Defeat the Dreamsurge Champion |scenariostage 2 |goto 32.64,39.63
|tip This enemy is elite and will require a group.
|only if not completedq(77414)
step
Close a Waking Dream Portal |q 77414/3
|tip Loot the corpse of the Planesborn Annihilator.
|only if not completedq(77414)
step
label "Collect_Dreamsurge_Coalescence"
click Dreaming Growth+
|tip They look like large green and purple plants growing all over the zone.
|tip You can also fly through green orbs scattered all over the zone.
|tip Enemies also drop Coalescence.
Collect #100# Dreamsurge Coalescence |q 77251/1
step
talk Naralex##207962
Vote for a Dreamsurge Effect |q 77414/4 |goto 45.57,39.76
|only if not completedq(77414)
step
talk Archdruid Hamuul Runetotem##208649
turnin Shaping the Dreamsurge##77251 |goto 45.55,39.81
turnin Dreamsurge Investigation##77414 |goto 45.55,39.81 |only if not completedq(77414)
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Secrets of Azeroth\\Secrets of Azeroth",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Secrets of Azeroth") end,
description="\nThis guide section will walk you through completing the quests for the Secrets of Azeroth event.",
},[[
step
talk Preservationist Kathos##206864
|tip Inside the building.
accept Preserving Rarities##77203 |goto Valdrakken/0 47.35,48.21
step
talk Preservationist Kathos##206864
Tell her _"I'm ready!"_
|tip Inside the building.
collect 1 A Mystery Box##208054 |goto 47.35,48.21 |q 77203 |future
step
use A Mystery Box##208054
collect Golden Chalice##208056 |q 77203 |future
step
click Golden Chalice
|tip Inside the building.
Select _"<Sneak the chalice into the hoard.>"_
Solve the Mystery |q 77203/1 |goto 58.87,54.15
step
talk Preservationist Kathos##206864
|tip Inside the building.
turnin Preserving Rarities##77203 |goto 47.35,48.21
step
talk Preservationist Kathos##206864
|tip Inside the building.
'|accept Rise in Relic Theft##76735 |n
collect Tuskarr Ceremonial Spear##207105 |goto 47.35,48.21 |q 76987 |future
step
talk Elder Ko'nani##26194
|tip Inside the building.
Ask it _"Someone stole this ceremonial spear from the tuskarr. Do you know where it was taken from?"_
collect Shomko's Unyielding Spear##207580 |goto Dragonblight/0 48.01,74.87 |q 76987 |future
step
click Shomko's Unyielding Spear
Select _"<Place the spear on the weapon rack.>"_
Place Shomko's Unyielding Spear |q 76987 |goto Borean Tundra/0 33.62,58.43 |future
step
talk Bobby Carlisle##207696
|tip Inside the building.
'|accept A Secretive Contact##77165 |n
collect Bobby Carlisle's Thinking Cap Notes##207802 |goto Valdrakken/0 47.95,46.78 |q 77230 |future
step
|script DoEmote("Bow")
clicknpc Odd Statue##189827
|tip Inside the building.
|tip Target the statue before bowing.
Bow Before the Odd Statue |complete subzone("The Dragon's Hoard") |goto 46.87,45.04 |q 77237 |future
step
talk Kritha##192814
Tell him _"I would like to talk to you about Shakey Flatlap."_
Settle Shakey's Tab |complete completedq(77230) or completedq(77237) |goto 47.34,41.12
step
Leave The Dragon's Hoard Bar |complete not subzone("The Dragon's Hoard") |goto 47.33,49.72
step
talk Shakey Flatlap##198586
Tell him _"I settled your tab with Kritha. He says you have to pay up front from now on."_
collect Crystal Ocular Lenses##207816 |goto 39.06,61.85 |q 77237 |future
step
talk Gorgonzormu##196729
buy 5 Apexis Asiago##201419 |goto 29.03,65.02 |q 77237 |future
step
kill Hungering Tyranha##191451+
collect Fresh Tyranha##207812 |goto Thaldraszus/0 38.70,68.45 |q 77237 |future
step
talk Agurahl the Butcher##194152
buy 5 Thunderspine Tenders##198441 |goto Ohn'ahran Plains/0 85.17,23.48 |q 77237 |future
step
talk Sniktak##204371
buy 5 Latticed Stinkhorn##205693 |goto Zaralek Cavern/0 54.08,56.66 |q 77237 |future
step
talk Erugosa##185556
|tip Inside the building.
Tell her _"I have the ingredients for the thunderspine nest."_
collect Thunderspine Nest##207956 |goto Valdrakken/0 46.51,46.23 |q 77237 |future
step
talk Gryffin##197781
Select  _"<Hold up the fresh tyranha to Gryffin.>"_
collect Downy Helmet Liner##207813 |goto 42.48,49.47 |q 77237 |future
step
talk Clinkyclick Shatterboom##185548
Ask her _"What do you know about a Thinking Cap?"_
collect Thought Calculating Apparatus##207814 |goto 42.25,48.64 |q 77237 |future
step
use the Thought Calculating Apparatus##207814
accept Unfinished Thinking Cap##77237
step
talk Fangli Hoot##207697
turnin Unfinished Thinking Cap##77237 |goto 26.65,53.87
step
use the Tricked Out THinking Cap##206696
Collect the Tricked-Out Thinking Cap |toy Tricked-Out Thinking Cap##206696
step
use the Tricked Out THinking Cap##206696
Put on Your Thinking Cap |havebuff spell:414103 |goto 26.65,53.89
step
talk Fangli Hoot##207697
accept The Tricked-Out Thinking Cap##76504 |goto 26.67,53.89
step
click Riddle Solved!
Solve the Riddle |q 76504/1 |goto 64.65,53.72
step
talk Fangli Hoot##207697
turnin The Tricked-Out Thinking Cap##76504 |goto 26.67,53.89
step
talk Bobby Carlisle##207696
|tip Inside the building.
accept An Inside Job?##77276 |goto 47.96,46.85 |or
'|complete completedq(77397) |or
step
talk Fangli Hoot##207697
turnin An Inside Job?##77276 |goto 26.67,53.88 |or
'|complete completedq(77397) |or
step
click Preservationist's Locker
|tip Upstairs inside the building.
Select _"<Take the item.>"_
collect Maruuk Burial Banner##208130 |goto 48.83,47.81 |q 77276 |or
'|complete completedq(77397) |or
step
talk "Appraiser" Sazsel Stickyfingers##208620
|tip Inside the building.
Tell her _"Fangli said you could appraise this item to see if it is genuine."_
Talk to Stickyfingers About the Banner |q 77397 |goto 62.81,72.87 |future
step
talk "Appraiser" Sazsel Stickyfingers##208620
|tip Inside the building.
accept Preservationist Cleared##77277 |goto 62.81,72.87
step
click Preservationist's Locker
|tip Upstairs inside the building.
Select _"<Return the burial banner.>"_
Return the Burial Banner |q 77277/1 |goto 48.81,47.82
step
talk Fangli Hoot##207697
turnin Preservationist Cleared##77277 |goto 26.67,53.89
step
talk Tithris##185562
|tip Inside the building.
'|accept Securing an Artifact##77281 |n
collect Preservationist's Dispatch##208131 |goto Valdrakken/0 47.47,46.19 |q 77403 |future
step
use the Tricked Out THinking Cap##206696
Put on Your Thinking Cap |havebuff spell:414103 |goto The Waking Shores/0 56.99,25.51 |q 77403 |future
step
click Ancient Lever
Throw the Lever |q 77403 |goto 56.99,25.51 |future
step
click Ancient Lever
|tip Inside the tower.
Throw the Lever |q 77402 |goto 57.77,23.82 |future
step
click Ancient Lever
|tip Inside the building.
Throw the Lever |q 77401 |goto 56.61,20.31 |future
step
click Torch of Pyrreth
|tip Inside the building.
accept Artifact Secured##77282 |goto 54.57,20.39
step
talk Preservationist Kathos##206864
|tip Inside the building.
turnin Artifact Secured##77282 |goto Valdrakken/0 47.33,48.22
accept The Torch of Pyrreth##77263 |goto 47.33,48.22
step
use the Torch of Pyrreth##208092
Collect the Torch of Pyrreth |toy Torch of Pyrreth##208092
step
use the Torch of Pyrreth##208092
|tip Inside the building.
Use the Torch |havebuff spell:419127 |goto 58.48,23.61 |q 77263 |future
step
click Enchanted Box
|tip Inside the building.
collect 1 Kathos' Field Glasses##208107 |q 77263/1 |goto 58.48,23.61
step
talk Preservationist Kathos##206864
|tip Inside the building.
turnin The Torch of Pyrreth##77263 |goto 47.33,48.21
step
talk Bobby Carlisle##207696
|tip Inside the building.
'|accept A Chilling Ascent##77284 |n
collect The Clerk's Notes##208137 |goto 47.93,46.83
step
use the Torch of Pyrreth##208092
Use the Torch |havebuff spell:419127 |goto The Azure Span/0 78.88,32.45 |q 77286 |future
step
click Unveiled Tablet
Select _"<Use paper and charcoal to make an etching.>"_
accept A Knowledgeable Descent##77286 |goto 78.88,32.45
step
talk Bobby Carlisle##207696
|tip Inside the building.
turnin A Knowledgeable Descent##77286 |goto Valdrakken/0 47.95,46.83
step
talk Tithris##185562
|tip Inside the building.
'|accept Idol Searching##77303 |n
collect 1 Preservationist's Dispatch Two##208144 |goto 47.46,46.22
step
Enter the building |goto Ohn'ahran Plains/0 31.67,70.45 < 7 |walk
use the Torch of Pyrreth##208092
|tip Inside the mound.
Light the Brazier |q 77405 |goto 31.08,70.79 |future
step
Enter the building |goto 32.58,68.29 < 7 |walk
use the Torch of Pyrreth##208092
|tip Inside the mound.
Light the Brazier |q 77406 |goto 32.37,67.95 |future
step
Enter the building |goto 35.28,66.05 < 7 |walk
use the Torch of Pyrreth##208092
|tip Inside the mound.
Light the Brazier |q 77407 |goto 35.19,65.74 |future
step
Enter the building |goto 40.30,59.43 < 7 |walk
use the Torch of Pyrreth##208092
|tip Inside the mound.
Light the Brazier |q 77404 |goto 39.55,58.92 |future
step
click Idol of Ohn'ahra
|tip Inside the mound.
accept An Idol in Hand##77304 |goto 39.56,58.89
step
talk Preservationist Kathos##206864
|tip Inside the building.
turnin An Idol in Hand##77304 |goto Valdrakken/0 47.34,48.21
accept Using the Idol##76456 |goto 47.34,48.21
step
use the Idol of Ohn'ahra##207730
Collect the Idol of Ohn'ahra |toy Idol of Ohn'ahra##207730
step
use the Idol of Ohn'ahra##207730
Activate the Idol of Ohn'ahra |havebuff spell:414338 |q 76456
step
click Hidden Gem
Loot the Hidden Gem |q 76456/1 |goto 49.00,51.23 |count 1
step
click Hidden Gem
Loot the Hidden Gem |q 76456/1 |goto 45.70,59.37 |count 2
step
click Hidden Gem
Loot the Hidden Gem |q 76456/1 |goto 55.15,64.62 |count 3
step
talk Preservationist Kathos##206864
|tip Inside the building.
turnin Using the Idol##76456 |goto 47.34,48.21
step
talk Preservationist Kathos##206864
|tip Inside the building.
'|accept Into the Sands##76509 |n
collect 1 A Clue: The Shifting Sands##206948 |goto 47.32,48.22
step
use the Idol of Ohn'ahra##207730
Activate the Idol of Ohn'ahra |havebuff spell:414338 |q 77305 |future
step
click Time-Lost Fragment##404319
collect 1 Time-Lost Fragment##208191 |goto Thaldraszus/0 58.51,78.43 |q 77305 |future
step
click Time-Lost Fragment##404319
collect 2 Time-Lost Fragment##208191 |goto 58.79,78.24 |q 77305 |future
step
click Time-Lost Fragment##404319
collect 3 Time-Lost Fragment##208191 |goto 59.30,78.82 |q 77305 |future
step
use the Time-Lost Fragment##208191
accept Out of the Sands##77305
step
talk Preservationist Kathos##206864
|tip Inside the building.
turnin Out of the Sands##77305 |goto Valdrakken/0 47.33,48.20
step
talk Bobby Carlisle##207696
|tip Inside the building.
accept A Key Story##77653 |goto 47.95,46.81 |or
'|q 77406 |future |or
step
talk Weaponsmith Koref##195769
|tip Inside the building.
turnin A Key Story##77653 |goto 36.19,51.94 |or
'|q 77406 |future |or
step
Enter the cave |goto Ohn'ahran Plains/0 53.31,56.85 < 7 |walk
use the Torch of Pyrreth##208092
|tip Inside the mound.
Light the Brazier |q 77406 |goto 32.37,67.95 |future
step
click Titan Key Mold
accept A Titanic Mold##77822 |goto 63.00,57.37
step
talk Weaponsmith Koref##195769
|tip Inside the building.
turnin A Titanic Mold##77822 |goto Valdrakken/0 36.19,51.94
step
talk Bobby Carlisle##207696
|tip Inside the building.
accept Reforging a Legend##77829 |goto 47.94,46.82 |or
'|q 77893 |future |or
step
talk Weaponsmith Koref##195769
|tip Inside the building.
turnin Reforging a Legend##77829 |goto 36.19,51.91
'|q 77893 |future |or
step
use the Idol of Ohn'ahra##207730
Activate the Idol of Ohn'ahra |havebuff spell:414338 |q 77831 |future
step
click Dusty Red Pellets+
|tip They look like tiny clusters of red rocks on the ground around the shore.
|tip It helps to zoom your camera in close to see them.
collect 50 Rose Gold Dust##208835 |goto The Waking Shores/0 48.24,46.28 |q 77831 |future
step
click Igneous Flux+
|tip They look like small piles of ash around areas of cooling magma.
collect 8 Igneous Flux##208836 |goto The Waking Shores/0 21.10,76.86 |q 77831 |future
step
talk Weaponsmith Koref##210837
accept A Key To Reforg(ing)##77831 |goto 24.52,60.74
step
use the Torch of Pyrreth##208092
Use the Torch |havebuff spell:419127 |goto 24.52,60.74 |q 77831 |future
step
talk Weaponsmith Koref##210837
Tell him _"I am ready to begin."_
Talk to Weaponsmith Koref to Begin |q 77831/1 |goto 24.52,60.74
step
extraaction Add Dusty Red Pellets##422252
Add the Dusty Red Pellets |q 77831/2 |goto 24.52,60.74
step
extraaction Add Igneous Flux##422255
Add the Igneous Flux |q 77831/3 |goto 24.52,60.74
step
use the Torch of Pyrreth##208092
Infuse the Key with the Torch of Pyrreth |q 77831/4 |goto 24.52,60.74
step
click Reforged Titan Key
collect 1 Reforged Titan Key##208830 |q 77831/5 |goto 24.54,60.90
step
talk Weaponsmith Koref##210837
turnin A Key To Reforg(ing)##77831 |goto 24.51,60.75
step
talk Preservationist Kathos##206864
|tip Inside the building.
accept A Proper Burial##77865 |goto Valdrakken/0 47.35,48.21 |or
'|q 77578 |future |or
step
use the Torch of Pyrreth##208092
Use the Torch |havebuff spell:419127 |goto 24.52,60.74 |q 77578 |future
step
Enter the cave |goto Ohn'ahran Plains/0 43.65,48.13 < 7 |walk
click Banner Stand
|tip In the upper part of the cave.
Select _"<Tie the burial banner back up to the stand.>"_
Plant the Banner |q 77578 |goto 42.65,50.99 |future
step
talk Bobby Carlisle##207696
|tip Inside the building.
'|accept A Special Book##77897 |n
collect Kirin Tor Contact's Note##208888 |goto Valdrakken/0 47.94,46.84 |q 78050 |future
step
use the Idol of Ohn'ahra##207730
|tip Kill Moroes, then do the Opera event and move on to kill The Curator.
|tip Use it in The Menagerie inside Karazhan.
Activate the Idol of Ohn'ahra |havebuff spell:414338 |q 78050 |future
step
click Ancient Tome
Check the Ancient Tome |q 78050 |goto Karazhan/9 32.39,49.12 |future
step
click Ancient Tome
Check the Ancient Tome |q 78051 |goto 36.52,37.22 |future
step
click Ancient Tome
Check the Ancient Tome |q 78052 |goto 47.39,64.63 |future
step
click Tyr's Legacy
accept A Legacy of Secrets##77908 |goto 33.29,50.93
step
talk Bobby Carlisle##207696
|tip Inside the building.
turnin A Legacy of Secrets##77908 |goto Valdrakken/0 47.99,46.82
step
talk Bobby Carlisle##207696
|tip Inside the building.
accept They Are Always Listening##77928 |goto 47.95,46.81 |or
'|complete completedq(77916) |or
step
talk Fangli Hoot##207697
turnin They Are Always Listening##77928 |goto 26.67,53.90 |or
'|complete completedq(77916) |or
step
click Auction House Bill of Sale
|tip Inside the building.
Retrieve the Auction House Bill of Sale |q 78053 |goto 44.21,60.40 |future
step
click Void Storage Receipt
|tip Inside the building.
Retrieve the Void Storage Receipt |q 78054 |goto 73.96,57.48 |future
step
click Garden Supply Receipt
|tip Inside the building.
Retrieve the Garden Supply Receipt |q 78055 |goto 53.02,28.51 |future
step
click Researcher's Note
|tip Inside the building.
Retrieve the Researcher's Note |q 78056 |goto 37.61,37.16 |future
step
click Hastily Scrawled Note
|tip Inside the building.
Retrieve the Hastily Scrawled Note |q 78057 |goto 31.65,70.27 |future
step
click Researcher's Note
|tip Inside the building.
Retrieve the Researcher's Note |q 78056 |goto 37.61,37.16 |future
step
|script DoEmote("Bow")
clicknpc Odd Statue##189827 |goto 46.87,45.04
|tip Inside the building.
|tip Target the statue before bowing.
Bow Before the Odd Statue |complete subzone("The Dragon's Hoard") |goto 46.87,45.04 |q 77934 |future
step
use the Idol of Ohn'ahra##207730
|tip Inside the building.
Activate the Idol of Ohn'ahra |havebuff spell:414338 |q 77934 |future
step
click Note to Kritha
|tip Inside the building.
Retrieve the Note to Kritha |q 78058 |goto 46.00,41.45 |future
step
Leave The Dragon's Hoard Bar |complete not subzone("The Dragon's Hoard") |goto 47.33,49.72
step
talk Fangli Hoot##207697
turnin A Complete Inventory##77934 |goto 26.67,53.90
step
talk Tithris##185562
'|accept A Sphere in Danger##77953 |n
collect Preservationist's Dispatch Three##208942 |goto Valdrakken/0 47.48,46.18 |q 77951 |future
step
Enter the cave |goto Thaldraszus/0 47.03,78.10 < 7 |walk
use the Torch of Pyrreth##208092
|tip Inside the cave.
|tip Wait for it to reveal the tablet.
Activate the Tablet |q 78109 |goto 46.62,77.61 |future
step
click Buried Object
collect Piece of the Orb of Rathmus##209797 |goto 45.90,79.71 |q 78108 |future
step
Enter the cave |goto Thaldraszus/0 49.78,80.21 < 7 |walk
use the Torch of Pyrreth##208092
|tip Inside the cave.
|tip Wait for it to reveal the tablet.
Activate the Tablet |q 78108 |goto 50.15,81.01 |future
step
click Buried Object
collect Piece of the Orb of Rathmus##209795 |goto 49.52,79.74 |q 78111 |future
step
Enter the cave |goto Thaldraszus/0 47.91,77.83 < 7 |walk
use the Torch of Pyrreth##208092
|tip Inside the cave.
|tip Wait for it to reveal the tablet.
Activate the Tablet |q 78111 |goto 48.69,76.32 |future
step
click Buried Object
collect Piece of the Orb of Rathmus##209799 |goto 50.16,78.00 |q 77954 |future
step
use the Piece of the Orb of Rathmus##209799
accept A Curious Orb##77954 |goto 50.16,78.00
step
talk Tithris##185562
|tip Inside the building.
turnin A Curious Orb##77954 |goto Valdrakken/0 47.46,46.22
step
talk Preservationist Kathos##206864
|tip Inside the building.
'|accept A Treacherous Race##77957 |n
collect Ancient Tyrhold Artifact Notes##208958 |goto Valdrakken/0 47.43,48.22
step
use the Torch of Pyrreth##208092
|tip Wait for the channeling to complete and the orb to catch fire.
Activate the Statue |q 77960 |goto Thaldraszus/0 57.25,64.53 |future
step
use the Torch of Pyrreth##208092
|tip Wait for the channeling to complete and the orb to catch fire.
Activate the Statue |q 77961 |goto 57.06,63.03 |future
step
use the Torch of Pyrreth##208092
|tip Wait for the channeling to complete and the orb to catch fire.
Activate the Statue |q 77962 |goto 57.85,61.98 |future
step
use the Torch of Pyrreth##208092
|tip Wait for the channeling to complete and the orb to catch fire.
Activate the Statue |q 77963 |goto 57.85,60.51 |future
step
use the Torch of Pyrreth##208092
|tip Wait for the channeling to complete and the orb to catch fire.
Activate the Statue |q 77964 |goto 59.79,61.04 |future
step
use the Torch of Pyrreth##208092
|tip Wait for the channeling to complete and the orb to catch fire.
Activate the Statue |q 77965 |goto 57.85,57.03 |future
step
use the Torch of Pyrreth##208092
|tip Wait for the channeling to complete and the orb to catch fire.
Activate the Statue |q 77966 |goto 57.93,55.93 |future
step
use the Torch of Pyrreth##208092
|tip Wait for the channeling to complete and the orb to catch fire.
Activate the Statue |q 77967 |goto 59.77,56.32 |future
step
use the Torch of Pyrreth##208092
|tip In the back of the building in front of the giant face.
Activate the Lock |q 77975 |goto 61.17,58.74 |future
step
click Broken Urn
|tip On the first floor from the surface.
collect Titan Cube Housing##208971 |goto 59.95,54.69 |q 77969 |future
step
click Broken Urn
|tip On the third floor from the surface.
collect Titan Focusing Crystal##208960 |goto 59.72,54.87 |q 77969 |future
step
click Broken Urn
|tip On the first floor from the surface.
collect Titan Energy Core##208970 |goto 59.83,62.26 |q 77969 |future
step
click Broken Urn
|tip On the third floor from the surface.
collect Large Titan Capacitor##208973 |goto 59.68,62.63 |q 77969 |future
step
use the Titan Energy Core##208970
collect Titan Energy Cube##208969 |q 77969 |future
step
click Broken Urn
|tip On the bottom floor.
collect Titan Block Key Fragment##208967 |goto 61.96,61.93 |q 77969 |future
step
click Broken Urn
|tip On the bottom floor.
collect Titan Block Key Fragment##208966 |goto 61.66,55.08 |q 77969 |future
step
use the Titan Block Key Fragment##208966
collect Titan Block Key##208965 |q 77969 |future
step
click Titan Power Relay
|tip Inside the tower.
Select _"<Install the missing component.>"_
Install the Missing Component |q 77969 |goto 61.04,55.05 |future
step
click Titan Power Relay
|tip Inside the tower.
Select _"<Install the missing component.>"_
Install the Missing Component |q 77968 |goto 59.33,56.89 |future
step
click Titan Power Relay
|tip Inside the tower.
Select _"<Install the missing component.>"_
Install the Missing Component |q 77970 |goto 59.53,60.58 |future
step
click Titan Power Relay
|tip Inside the tower.
Select _"<Install the missing component.>"_
Install the Missing Component |q 77971 |goto 61.03,62.35 |future
step
click Orb Location
accept An Ominous Artifact##77977 |goto 60.16,58.73
step
click Orb Location
Select _"<Investigate to see if you can bypass the orb.>"_
Investigate the Orb Slot on the Console |q 77977/1 |goto 60.16,58.73
stickystart "Kill_Amerinth"
step
kill 1 Tithris##210674 |q 77977/3 |goto 60.41,58.74
step
label "Kill_Amerinth"
kill 1 Amerinth##210675 |q 77977/2 |goto 60.41,58.74
step
collect 1 Orb of Rathmus##209555 |q 77977/4 |goto 60.41,58.68
|tip Loot it from their corpse.
step
click Orb Location
Select _"<Place the Orb of Rathmus.>"_
Place the Orb of Rathmus Atop the Console |q 77977/5 |goto 60.16,58.74
step
click Cache of Cosmic Mysteries
Secure the Mysterious Artifact |q 77977/6 |goto 60.14,58.74
step
click Orb of Rathmus
Select _"<Retrieve the Orb of Rathmus.>"_
Retrieve the Orb of Rathmus |q 77977/7 |goto 60.16,58.74
step
talk Preservationist Kathos##206864
turnin An Ominous Artifact##77977 |goto 60.45,59.11
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Secrets of Azeroth\\Community Rumors",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Secrets of Azeroth") end,
description="\nThis guide section will walk you through finding the community rumors for the Secrets of Azeroth event.",
},[[
step
use the Torch of Pyrreth##208092
|tip Work through the "Secrets of Azeroth" event guide to collect this toy.
|tip It is require to complete the following steps.
Collect the Torch of Pyrreth |toy Torch of Pyrreth##208092
step
use the Torch of Pyrreth##208092
Use the Torch Near the Crystal and Wait for the Dirt to Spawn |q 78152 |goto Blasted Lands/0 64.67,55.44 |future
step
click Loose Dirt Mound
Loot the Buried Satchel |q 77298 |goto Blasted Lands/0 64.67,55.44 |future
step
click Loose Dirt Mound
Loot the Buried Satchel |q 78207 |goto Western Plaguelands/0 68.81,73.21 |future
step
click Loose Dirt Mound
Loot the Buried Satchel |q 77289 |goto Eastern Plaguelands/0 55.25,59.44 |future
step
click Loose Dirt Mound
|tip At the mouth of the statue.
Loot the Buried Satchel |q 77297 |goto Northern Barrens/0 46.05,50.68 |future
step
Enter the underwater cave |goto Thousand Needles/0 44.10,37.23 < 10 |walk
click Loose Dirt Mound
|tip Inside the underwater cave.
Loot the Buried Satchel |q 77291 |goto 42.74,30.65 |future
step
click Loose Dirt Mound
Loot the Buried Satchel |q 77288 |goto Felwood/0 42.23,48.04 |future
step
click Loose Dirt Mound
|ti on the floating island.
Loot the Buried Satchel |q 77299 |goto Nagrand/0 57.90,26.37 |future
step
use the Torch of Pyrreth##208092
|tip Three players must use each use their torch near a small crystal surrounding the bigger crystal.
click Loose Dirt Mound
Loot the Buried Satchel |q 77290 |goto Netherstorm/0 26.26,68.57 |future
step
click Loose Dirt Mound
|tip At the mouth of the statue.
Loot the Buried Satchel |q 77294 |goto Dragonblight/0 63.91,72.62 |future
step
click Loose Dirt Mound
|ti on the floating island.
Loot the Buried Satchel |q 77302 |goto Dragonblight/0 73.15,39.54 |future
step
talk Darrok##27425 |only if Horde
talk Gordun##27414 |only if Alliance
Tell him _"Yes, I am ready to travel to Venture Bay!"_
Begin the Log Ride |ontaxi |goto Grizzly Hills/0 35.06,34.74 |only if Horde
Begin the Log Ride |ontaxi |goto Grizzly Hills/0 36.81,35.73 |only if Alliance
step
Ride the Log Ride |offtaxi |goto 10.73,75.23 |only if Horde
Ride the Log Ride |offtaxi |goto 20.40,81.51 |only if Alliance
step
click Loose Dirt Mound
|tip Click it before the WHEE! buff wears off.
Loot the Buried Satchel |q 77300 |goto 10.98,74.90 |future |only if Horde
Loot the Buried Satchel |q 77300 |goto 20.29,81.35 |future |only if Alliance
step
click Loose Dirt Mound
|tip At the mouth of the statue.
Loot the Buried Satchel |q 77293 |goto Valley of the Four Winds/0 56.83,21.41 |future
step
click Loose Dirt Mound
|tip At the mouth of the statue.
Loot the Buried Satchel |q 77301 |goto Timeless Isle/0 38.70,54.94 |future
step
click Loose Dirt Mound
Loot the Buried Satchel |q 77292 |goto Shadowmoon Valley D/0 35.31,48.96 |future
step
click Loose Dirt Mound
|ti on the floating island.
Loot the Buried Satchel |q 78208 |goto Highmountain/0 53.35,87.50 |future
step
click Loose Dirt Mound
|ti on the floating island.
Loot the Buried Satchel |q 77295 |goto Tiragarde Sound/0 74.56,86.13 |future
step
use the Torch of Pyrreth##208092
|tip Walk up to the snowman with it lit a waint for it to melt.
click Loose Dirt Mound
|tip At the mouth of the statue.
Loot the Buried Satchel |q 77296 |goto The Azure Span/0 25.24,71.47 |future
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Secrets of Azeroth\\Secrets of Azeroth Mimiron's Jumpjets Mount",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Secrets of Azeroth") end,
description="\nThis guide section will walk you through assembling the Mimiron's Jumpjets.",
},[[
step
use the Torch of Pyrreth##208092
|tip Work through the "Secrets of Azeroth" event guide to collect this toy.
|tip It is require to complete the following steps.
Collect the Torch of Pyrreth |toy Torch of Pyrreth##208092
step
use the Torch of Pyrreth##208092
|tip 3 people are needed, each using their Torch near a brazier to summon the Enigma Ward.
kill Enigma Ward##210398 |q 78098 |goto The Cape of Stranglethorn/0 58.99,78.25 |future
step
collect 1 First Booster Part##208984
|tip Loot it from the corpse.
step
extraaction Envelope##423412
click Mimiron's Booster Part
|tip One person needs to click the part while the other three need to use the ability that appears on-screen by the elemental.
collect Second Booster Part##209781 |goto Felwood/0 49.91,26.37 |q 78099 |future
step
click Mimiron's Booster Part
collect Third Booster Part##209055 |goto Blasted Lands/0 54.86,52.28 |q 78100 |future
step
use First Booster Part##208984
|tip The Arcane Forge must be empowered to assemble this.
|tip The icon on the map indicates the start of the next event and the number of completions required to make the forge permanent.
|tip Wait for the next event completion to assemble your mount.
collect Mimiron's Jumpjets##210022 |goto Valdrakken/0 36.47,61.98
step
use Mimiron's Jumpjets##210022
Collect the Mimiron's Jumpjets Mount |learnmount Mimiron's Jumpjets##424082
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Dragonflight\\The Emerald Dream Superbloom",{
author="support@zygorguides.com",
description="This guide will help you complete the Superbloom event in The Emerald Dream.",
startlevel=70,
patch='100200',
viginette=5813,
areapoitype="Superbloom",
},[[
step
label "Accept_The_Superbloom"
talk Clarelle##208474
accept The Superbloom##78319 |goto The Emerald Dream/0 51.42,59.61
step
Wait for the Superbloom Event to Start |scenariostart |goto 51.42,59.61
|tip The event starts at the top of every hour.
stickystart "Earn_Blooms"
step
click Dreamfruit
|tip Choose from the powers available for the remainder of the Superbloom event.
|tip Depending on your reputation with the Dream Wardens, you may be able to choose more than one.
Consume Dreamfruit for the Journey |scenariogoal 1/60388 |goto 51.27,59.83
step
map The Emerald Dream/0
path follow smart; loop off; ants curved; dist 30
path	51.51,59.79	52.08,60.78	54.28,62.10	54.87,63.82	56.08,66.67
path	57.38,68.17	55.54,71.50	53.13,73.70
click Rain-Starved Flower+
|tip They look like large flowers surrounded by light on the ground all over the area.
|tip Each flower will increase the Bloom Quality by a small amount.
Help as Many Rain-Starved Flowers as You Can |scenariogoal 2/60395
|only if scenariostage(2)
step
Kill enemies that attack in waves
Defeat the Primalists |scenariogoal 3/0 |goto 53.06,73.68
|only if scenariostage(3)
step
map The Emerald Dream/0
path follow smart; loop off; ants curved; dist 30
path	52.85,74.18	51.24,77.10	49.77,76.64	47.56,76.14	46.85,74.46
path	45.74,72.83	44.72,72.09 |goto 44.10,71.76
clicknpc Tenacious Weed##207675+
|tip They look like small plants growing out of the ground around Sprucecrown.
click Rain-Starved Flowers
|tip They look like large flowers surrounded by light on the ground all over the area.
|tip Each flower and weed will increase the Bloom Quality by a small amount.
Pull Weeds and Help as Much as You Can |scenariogoal 4/60396
|only if scenariostage(4)
step
map The Emerald Dream/0
path follow smart; loop off; ants curved; dist 30
path	51.53,59.92	49.56,58.84	48.82,58.40	47.07,58.76	46.33,61.46
path	46.15,63.57
clicknpc Vision of Innocence##208693+
|tip They look like small creatures hopping around this area.
Shoo as Many Insect Swarms as you Can Near Sprucecrown |scenariogoal 5/60398
|only if scenariostage(5)
stickystart "Defeat_the_Western_Patrol"
step
Kill enemies that attack in waves
Defeat the Northern Patrol |scenariogoal 6/60314 |goto 46.46,61.21
|only if scenariostage(6)
step
label "Defeat_the_Western_Patrol"
Kill enemies that attack in waves
Defeat the Western Patrol |scenariogoal 6/60315 |goto 46.00,63.64
|only if scenariostage(6)
step
map The Emerald Dream/0
path follow smart; loop off; ants curved; dist 30
path	46.15,63.57	45.17,64.11	44.44,67.32	42.44,67.98	42.24,68.91
path	44.01,72.01
click Mulch Pile+
|tip THey look like piles of dirt on the ground around this area.
Dig up mulch and help as much as you can |scenariogoal 7/60397
|only if scenariostage(7)
step
Kill enemies that attack in waves
Defend Sprucecrown from All Primalist Attackers |scenariogoal 8/64358 |goto 44.06,71.79
step
kill 1 Verlann Timbercrush##207554 |scenariogoal 9/60311 |goto 43.98,72.35
step
label "Earn_Blooms"
Earn #50# Blooms |q 78319/2 |goto 51.42,59.61
|tip Run through Insect Swarms to disperse them.
|tip Click flowers and fruits along the way.
step
Complete the Superbloom |q 78319/3 |goto 51.42,59.61
step
talk Clarelle##208474
turnin The Superbloom##78319 |goto 44.62,71.96
|next "Accept_The_Superbloom"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Dragonflight\\19th Anniversary Event",{
author="support@zygorguides.com",
description="This guide will help you complete the 19th anniversary event weekly quest.",
startlevel=30,
patch='100200',
pet=4265,
mounts={420097},
},[[
step
collect Anniversary Gift##208211 |q 57249 |future
|tip Collect this from the nearest mailbox.
step
use the Anniversary Gift##208211
collect Lil' Frostwing##208543 |or
'|learnpet Lil' Frostwing##4265 |or
step
use the Anniversary Gift##208211
accept A Timely Invitation##57249
|tip You will accept this quest automatically.
step
use Lil' Frostwing##208543
learnpet Lil' Frostwing##4265
step
talk Chromie##157113
turnin A Timely Invitation##57249 |goto Tanaris/18 53.21,54.66
step
label "Accept_Weekly_Quest"
talk Chromie##157113
accept Doomwalkin' Has Come Knockin'##60215 |goto 53.21,54.66
step
talk Historian Ju'pa##110035
accept A Time to Reflect##43461 |goto 51.71,38.75
|only if Horde
step
talk Historian Ju'pa##110035
accept The Originals##47254 |goto 51.75,38.75
|only if Horde
step
talk Historian Llore##110034
accept A Time to Reflect##43323 |goto 51.49,38.55
|only if Alliance
step
talk Historian Llore##110034
accept The Originals##47253 |goto 51.49,38.55
|only if Alliance
step
talk Historian Ju'pa##110035
|tip There are 43 possible questions.
|tip If you choose incorrectly, you can close the window and reopen it for a new question.
Answer Ju'Pa's Question |q 43461/1 |goto 51.71,38.75
|only if Horde
step
talk Historian Llore##110034
|tip There are 43 possible questions.
|tip If you choose incorrectly, you can close the window and reopen it for a new question.
Answer Ju'Pa's Question |q 43323/1 |goto 51.49,38.55
|only if Alliance
step
talk Historian Ju'pa##110035
turnin A Time to Reflect##43461 |goto 51.71,38.75
|only if Horde
step
talk Historian Llore##110034
turnin A Time to Reflect##43323 |goto 51.49,38.55
|only if Alliance
step
Follow the path up |goto Tanaris/17 34.76,74.74 < 40 |walk |notravel
kill Doomwalker##167749 |q 60215/1 |goto Tanaris/0 63.50,50.39
step
collect Azure Worldchiller##208572 |or
|tip Loot it from Doomwalker.
'|learnmount Azure Worldchiller##420097 |or
step
use the Azure Worldchiller##208572
learnmount Azure Worldchiller##420097
stickystart "Kill_Lord_Kazzak"
stickystart "Slay_a_Dragon_of_Nightmare"
step
kill Azuregos##121820 |q 47254/2 |goto Azshara/0 48.77,84.24 |only if Horde
kill Azuregos##121820 |q 47253/2 |goto Azshara/0 48.77,84.24 |only if Alliance
|tip Use the group finder to find a group for this boss.
step
label "Kill_Lord_Kazzak"
kill Lord Kazzak##121818 |q 47254/1 |goto Blasted Lands/0 32.37,49.03 |only if Horde
kill Lord Kazzak##121818 |q 47253/1 |goto Blasted Lands/0 32.37,49.03 |only if Alliance
|tip Use the group finder to find a group for this boss. |notinsticky
step
label "Slay_a_Dragon_of_Nightmare"
Slay a Dragon of Nightmare |q 47254/3 |goto The Hinterlands/0 63.01,26.00 |only if Horde
Slay a Dragon of Nightmare |q 47253/3 |goto The Hinterlands/0 63.01,26.00 |only if Alliance
|tip Use the group finder to find a group for this boss. |notinsticky
You can find Lethon at [The Hinterlands/0 63.01,26.00]
|tip Lethon spawns on 11/19, 11/23, 11/27, 12/1, and 12/5.
You can find Taerar at [Ashenvale/0 93.78,39.66]
|tip Taerar spawns on 11/17, 11/21, 11/25, 11/29, 12/3, and 12/7.
You can find Ysondre at [Feralas/0 51.69,10.49]
|tip Ysondre spawns on 11/18, 11/22, 11/26, 11/30, and 12/4.
You can find Emeriss at [Duskwood/0 46.65,38.11]
|tip Emeriss spawns on 11/16, 11/20, 11/24, 11/28, 12/2, and 12/6.
step
talk Chromie##157113
turnin Doomwalkin' Has Come Knockin'##60215 |goto Tanaris/18 53.21,54.66
step
talk Historian Ju'pa##110035
turnin The Originals##47254 |goto 51.75,38.75
|only if Horde
step
talk Historian Llore##110034
turnin The Originals##47253 |goto 51.49,38.55
|only if Alliance
step
Wait for the Next Daily Reset |complete not completedq(60215) and (not completedallq(43461,47254) or not completedallq(47253,43323)) |next "Accept_Weekly_Quest"
|tip You can repeat the weekly quests every Tuesday.
|tip You can complete "A Time to Reflect" every day.
|tip You can also accept the PvP quest and queue for Korrak's Revenge.
]])
