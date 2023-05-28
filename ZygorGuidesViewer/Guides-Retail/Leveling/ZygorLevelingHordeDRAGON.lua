local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("LevelingHDRAGON") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (60-70)\\Orgrimmar Trading Post Unlock",{
author="support@zygorguides.com",
description="This guide will walk you through unlocking the Orgrimmar Trading Post.",
patch='100005',
},[[
step
talk Shiri##185472
accept Tour the Trading Post##66959 |goto Orgrimmar/1 48.91,76.12
step
click Collector's Cache
Collect the Trader's Tender from the Collector's Cache |q 66959/1 |goto 48.47,75.66
step
talk Zaa'je##199164
Speak to Zaa'je |q 66959/3 |goto 48.22,75.01
step
talk Gothal##199115
Speak to Gothal |q 66959/2 |goto 47.43,76.45
step
click Trading Post Post
Review the Trading Post Post |q 66959/4 |goto 48.91,76.31
step
talk Zen'kala##185473
Tell him _"I'd like to see what you have to offer this month."_
|tip You will need to exit the interface after doing this to continue.
Look at Zen'kala's Inventory |q 66959/5 |goto 48.76,75.96
step
talk Shiri##185472
turnin Tour the Trading Post##66959 |goto 48.91,76.12
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (60-70)\\Heritage Armor\\Orc Heritage Armor",{
description = "This guide will assist you in completing the Orc heritage armor questline.",
startlevel=50,
},[[
step
Reach Level 50 an an Orc Character |complete Orc and level >= 50
|tip You must complete this on a 50+ Orc character.
step
Reach Exalted Reputation with Orgrimmar |complete rep("Orgrimmar") == Exalted
|tip Equip a tabard and grind dungeons to quickly reach exalted.
step
accept A Summon to Orgrimmar##73703
|tip You will automatically accept this quest.
step
Enter the building |goto Orgrimmar/1 49.93,75.65 < 7 |walk
talk Eitrigg##3144
|tip Inside the building.
turnin A Summon to Orgrimmar##73703 |goto 49.21,72.28
accept A People in Need of Healing##72462 |goto 49.21,72.28
step
click Portal to Alterac Valley
Take the Portal to Alterac Valley |q 72462/1 |goto 51.16,78.94
step
Follow the path up |goto Alterac Valley Heritage/0 48.59,83.09 < 7 |walk
Enter the building |goto 48.26,86.42 < 7 |walk
Follow Eitrigg to the Hall of the Frostwolf |scenariogoal 1/56805 |goto 47.11,86.97 |q 72462
|tip He will eventually walk inside the building.
step
talk Shiri##185472
|tip Inside the building.
Tell him _"Eitrigg wishes to discuss bringing back the Kosh'harg."_
Talk to Drek'Thar |scenariogoal 1/57996 |goto 47.11,86.97 |q 72462
step
clicknpc Totem of Air##201604
|tip Inside the building.
Place the Totem of Air |scenariogoal 2/57997 |goto 47.09,86.59 |count 1 |q 72462
step
clicknpc Totem of Water##201605
|tip Inside the building.
Place the Totem of Water |scenariogoal 2/57997 |goto 47.31,86.36 |count 2 |q 72462
step
clicknpc Totem of Fire##201602
|tip Inside the building.
Place the Totem of Fire |scenariogoal 2/57997 |goto 47.52,87.31 |count 3 |q 72462
step
clicknpc Totem of Earth##201603
|tip Inside the building.
Place the Totem of Earth |scenariogoal 2/57997 |goto 47.25,87.29 |count 4 |q 72462
step
Watch the dialogue
|tip Inside the building.
Discuss the Kosh'harg with Drek'thar |scenariogoal 2/56806 |goto 47.11,86.97 |q 72462
step
talk Farseer Drek'Thar##199136
|tip Inside the building.
Tell him _"I accept your challenge!"_
Talk to Drek'thar to Begin |scenariogoal 3/57998 |goto 47.11,86.97 |q 72462
stickystart "Kill_Drakan"
step
Watch the dialogue
|tip Inside the building.
kill Duros##199138 |scenariogoal 3/57827 |goto 47.28,86.90 |q 72462
step
label "Kill_Drakan"
kill Drakan##199139 |scenariogoal 3/56808 |goto 47.28,86.90 |q 72462
|tip Inside the building. |notinsticky
step
Watch the dialogue
kill Elemental Projection##201615 |scenariogoal 4/57999 |goto 47.25,86.87 |q 72462
|tip Inside the building.
|tip Kill the four totems to weaken the projection.
step
Watch the dialogue
talk Thrall##199140
|tip Inside the building.
Choose _<Take Thrall's Hearthstone>_
Talk to Thrall |scenariogoal 5/56807 |goto 47.42,86.74 |q 72462
step
use Thrall's Hearthstone##201957
Use Thrall's Hearthstone to Return to Orgrimmar |scenariogoal 5/57662 |goto 47.42,86.74 |q 72462
step
talk Aggra##200244
|tip Inside the building.
turnin A People in Need of Healing##72462 |goto Orgrimmar/1 54.39,78.58
accept The Kosh'harg##72464 |goto 54.39,78.58
step
clicknpc Armored Wind Rider##200266
Choose _<Ride the Wind Rider to Razor Hill.>_
Mount the Armored Wind Rider |invehicle |q 72464 |goto 52.00,79.31
step
Travel to the Kosh'harg with Aggra's Family |q 72464/1
step
talk Farseer Aggralan##199148
Tell her _"Let's skip the formalities."_
Talk to Farseer Aggralan to Begin the Om'gora |q 72464/2 |goto Durotar/0 52.21,42.99
step
talk Farseer Aggralan##199148
turnin The Kosh'harg##72464 |goto 52.21,42.99
accept The Blessing of the Land##72465 |goto 52.21,42.99
accept The Blessing of the Clan##72467 |goto 52.21,42.99
accept The Blessing of the Ancestors##72476 |goto 52.21,42.99
step
Talk to an NPC
|tip Choose a clan to follow.
|tip The clan you choose determines which clan's banner displays on the toy you gain questing.
|tip This banner can be changed later.
Choose a Clan |q 72467/1 |goto 54.09,42.47
step
talk Farseer Aggralan##199148
turnin The Blessing of the Clan##72467 |goto 52.21,42.99
step
talk Thega Graveblade##199151
accept The Long Knives##74581 |goto 52.31,42.86
step
talk Cook Torka##199383
turnin The Blessing of the Ancestors##72476 |goto 50.74,42.70
accept An Important Heirloom##74374 |goto 50.74,42.70
step
talk Arugi##201018
Learn Cooking |q 74374/2 |goto 50.75,42.61
step
click Old Cookbook
|tip Inside the building.
Collect the Old Cookbook |q 74374/1 |goto 51.66,41.23
step
talk Cook Torka##199383
turnin An Important Heirloom##74374 |goto 50.74,42.70
accept Orcish Groceries##72477 |goto 50.74,42.70
step
click "Spoons and Forks"
Read "Spoons and Forks" |q 72477/1 |goto 50.78,42.72
step
talk Nula the Butcher##199262
buy 3 Fresh Talbuk Steak##202027 |q 72477/10 |goto 50.72,43.25
step
talk Suja##199235
buy 2 Un'goro Coconut##202707 |q 72477/4 |goto 51.10,44.14
buy 3 Isle Lemon##202029 |q 72477/6 |goto 51.10,44.14
buy 3 Suja's Sweet Salt##204793 |q 72477/7 |goto 51.10,44.14
step
click Crate of Crabs
|tip Clicking it will release a bunch of small crabs.
clicknpc Escaped Crab##199223+
|tip Click them as they run around to collect them.
collect 2 Durotar Coast Crab##202026 |q 72477/2 |goto 51.36,44.16
step
talk Razgar##199221
buy 3 Southfury Salmon##202028 |q 72477/5 |goto 51.58,43.79
step
talk Kyl'kahn##199206
Tell him _"I need a keg of ale for my offering to the ancestors."_
collect 1 Keg of Ancestral Ale##202025 |q 72477/11 |goto 51.30,42.43
step
talk Far'kul Flametongue##199237
buy 2 Farahlon Fenugreek##202031 |q 72477/3 |goto 50.84,41.45
buy 3 Ground Gorgrond Pepper##202030 |q 72477/8 |goto 50.84,41.45
buy 3 Zandali Piri Piri##202706 |q 72477/9 |goto 50.84,41.45
step
_Next to you:_
talk Durak##201361
turnin Orcish Groceries##72477 |goto 50.86,41.58
accept A Worthy Offering##74415 |goto 50.86,41.58
step
create 3 Grilled Southfury Salmon##399038,Cooking,3 total |q 74415/1 |goto 50.83,42.65
|tip Open your cooking panel.
|tip Set the filter to "Classic" if needed.
|tip The recipes are located after Everyday Cooking in the "Orcish Cuisine" category.
step
create 3 Seared Spicy Talbuk Steak##399035,Cooking,3 total |q 74415/2 |goto 50.83,42.65
|tip Open your cooking panel.
|tip Set the filter to "Classic" if needed.
|tip The recipes are located after Everyday Cooking in the "Orcish Cuisine" category.
step
create 2 Curried Coconut Crab##399034,Cooking,2 total |q 74415/3 |goto 50.83,42.65
|tip Open your cooking panel.
|tip Set the filter to "Classic" if needed.
|tip The recipes are located after Everyday Cooking in the "Orcish Cuisine" category.
step
create 1 Feast for the Ancestors##399040,Cooking,1 total |q 74415/4 |goto 50.83,42.65
|tip Open your cooking panel.
|tip Set the filter to "Classic" if needed.
|tip The recipes are located after Everyday Cooking in the "Orcish Cuisine" category.
step
click Feast for the Ancestors
Place the Feast for the Ancestors |q 74415/5 |goto 53.13,45.77
step
talk Farseer Aggralan##199148
turnin A Worthy Offering##74415 |goto 52.21,42.99
step
click Ancient Skeleton
Find the Spirit of Thunder Ridge |q 72465/1 |goto 40.68,26.70
step
talk The Spirit of Thunder Ridge##199165
turnin The Blessing of the Land##72465 |goto 40.59,26.77
accept The Spirit of Thunder Ridge##72466 |goto 40.59,26.77
step
click Buried Seed+
|tip They look like small piles of dirt under the water around this area.
collect 8 Ancient Seed##201966 |q 72466/1 |goto 39.53,24.93
step
Return to the Ancient Skeleton |q 72466/2 |goto 40.60,26.76
step
click Ancient Skeleton
Plant the Seeds in the Ancient Skeleton |q 72466/3 |goto 40.60,26.76
step
talk Kaltunk##10176
turnin The Long Knives##74581 |goto Valley of Trials/0 45.19,68.39
accept Tracking a Killer##72474 |goto 45.19,68.39
step
talk Karranisha##200734
Tell him _"Have you seen any evidence of Gor'krosh?"_
Find the First Clue |q 72474/1 |goto 43.41,70.61 |count 1
step
Find the Second Clue |q 72474/1 |goto 46.01,63.36 |count 2
step
Find the Third Clue |q 72474/1 |goto 49.98,60.12 |count 3
step
click Beast Tracks
Choose _"I should tell Kaltunk about this."_
Find the Fourth Clue |q 72474/1 |goto 54.25,62.51 |count 4
step
talk Terrified Peon##199179
Tell him _"What happened here?"_
Find the Fifth Clue |q 72474/1 |goto 52.40,68.65 |count 5
step
talk Kaltunk##10176
turnin Tracking a Killer##72474 |goto 45.19,68.39
accept Cornering Gor'krosh##72475 |goto 45.19,68.39
step
Follow the Trail |q 72475/1 |goto Durotar/0 59.18,63.52
step
click Raptor Nest
kill Gor'krosh##199186 |q 72475/2 |goto 59.28,63.38
step
collect 1 "Long Knife"##202024 |q 72475/4 |goto 59.23,63.64
|tip Loot it from Gor'krosh.
step
click Raptor Blood
|tip On the ground near the corpse.
Retrieve the Blood of Gor'krosh |q 72475/3 |goto 59.23,63.64
step
talk Farseer Aggralan##199148
turnin Cornering Gor'krosh##72475 |goto 52.21,42.99
turnin The Spirit of Thunder Ridge##72466 |goto 52.21,42.99
accept Honor and Glory##72478 |goto 52.21,42.99
step
talk Boss Magor##201505
Tell him _"Bring it on!"_
Kill enemies around this area
|tip Peons will attack you in waves, along with Boss Magor.
click Booterang
|tip They look like small boots dropped by peons.
extraaction Booterang##400758
|tip Use it on Boss Magor when he spins after picking up a Booterang.
kill 1 Boss Magor##201505
Brawl with Boss Magor and the Peons |q 72478/2 |goto 52.48,40.95
step
Click items on the tables
Kill enemies around this area
Enjoy the Feast! |q 72478/1 |goto 52.50,42.40
step
talk Thrall##200437
turnin Honor and Glory##72478 |goto 52.25,43.44
accept Aka'magosh##72479 |goto 52.25,43.44
step
Watch the dialogue
Close Kosh'harg |q 72479/1 |goto 52.25,43.44
step
talk Eitrigg##200617
turnin Aka'magosh##72479 |goto 52.25,43.03
]])
