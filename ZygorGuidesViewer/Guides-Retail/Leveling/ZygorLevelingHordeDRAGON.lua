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
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (60-70)\\Heritage Armor\\Forsaken Heritage Armor",{
description = "This guide will assist you in completing the Forsaken heritage armor questline.",
startlevel=50,
},[[
step
Reach Level 50 an an Forsaken Character |complete Undead and level >= 50
|tip You must complete this on a 50+ Forsaken character.
step
talk Calia Menethil##173386
accept Call to Lordaeron##65656 |goto Orgrimmar/1 50.69,75.58
step
talk Forsaken Dreadmage##186199
Tell him _"Send me to Tirisfal Glades."_
Speak to a Forsaken Dreadmage for a Teleport |q 65656/1 |goto 50.83,75.50
step
Enter the building |goto Tirisfal Glades L/0 60.83,51.92 < 7 |walk
talk Calia Menethil##185512
|tip Inside the building.
turnin Call to Lordaeron##65656 |goto 60.80,51.37 |only if Horde
accept Assemble the Forsaken##65657 |goto 60.80,51.37
step
Leave the building |goto 60.83,51.92 < 7 |walk
talk Dark Ranger Velonara##185514
accept This Land is Ours##65658 |goto 61.97,50.50
stickystart "Slay_8_Blighted_Soldiers_and_Shadowmages"
step
talk Master Apothecary Faranell##185794
Tell him _"It's time to meet with the other Forsaken."_
Speak to Master Apothecary Faranell |q 65657/3 |goto 63.23,55.52
step
talk Lilian Voss##185793
Tell her _"It's time to meet with the other Forsaken."_
Speak to Lilian Voss |q 65657/2 |goto 57.57,49.21
step
label "Slay_8_Blighted_Soldiers_and_Shadowmages"
Kill enemies around this area
Slay #8# Blighted Soldiers and Shadowmages |q 65658/1 |goto 63.83,50.75
step
Enter the building |goto 60.83,51.92 < 7 |walk
talk Dark Ranger Velonara##185792
|tip Inside the building.
turnin This Land is Ours##65658 |goto 60.79,51.56
step
talk Lilian Voss##185513
|tip Inside the building.
turnin Assemble the Forsaken##65657 |goto 60.90,51.34
accept The Blight Congress##65659 |goto 60.90,51.34
step
talk Lilian Voss##185513
|tip Inside the building.
Tell her _"Let's begin."_
Speak with Lilian to begin |q 65659/1 |goto 60.90,51.34
step
Watch the dialogue
|tip Inside the building.
Listen to the Discussion |q 65659/2 |goto 60.90,51.34
step
talk Calia Menethil##185512
|tip Inside the building.
Tell her _"What do you propose?"_
Speak to Calia |q 65659/3 |goto 60.80,51.37
step
talk Calia Menethil##185797
turnin The Blight Congress##65659 |goto 61.97,55.66
accept Walk of Faith##65660 |goto 61.97,55.66
step
talk Calia Menethil##185797
Tell her _"Let's get that plague sample."_
Speak to Calia to Begin |q 65660/1 |goto 61.97,55.66
step
Kill enemies that attack Calia
extraaction Collect Pure Sample##368875
|tip Use it when it appears on your screen as Calia stops.
|tip Stay inside Calia's bubble for protection.
Collect a Pure Plague Sample |q 65660/2 |goto 61.94,58.48
step
Kill enemies that attack Calia
|tip Stay inside Calia's bubble for protection.
Escape the Blight with Calia |q 65660/3 |goto 61.92,55.55
step
talk Lilian Voss##185513
turnin Walk of Faith##65660 |goto 61.92,55.56
accept Consulting Our Allies##65661 |goto 61.92,55.56
step
click Portal to Maldraxxus |goto 62.22,55.21
Travel to Maldraxxus |goto Maldraxxus/0 73.64,33.63 < 10000 |c |noway |q 65661
step
talk Margrave Sin'dane##177782
|tip Inside the the floating citadel.
turnin Consulting Our Allies##65661 |goto Maldraxxus/0 74.83,33.65
accept House of Plagues##65662 |goto 74.83,33.65
step
talk Plague Deviser Marileth##185517
turnin House of Plagues##65662 |goto 71.15,71.47
accept Essence of Plague##65664 |goto 71.15,71.47
step
talk Calia Menethil##185803
accept Feed the Eater##65663 |goto 71.14,71.37
stickystart "Clear_the_House_of_Plagues"
step
clicknpc Simmering Concoction##185816
Absorb the Simmering Concoction |q 65664/1 |goto 70.96,74.06
step
clicknpc Unstable Concoction##185821
Absorb the Unstable Concoction |q 65664/2 |goto 69.65,75.61
step
clicknpc Tumultuous Concoction##185824
Absorb the Tumultuous Concoction |q 65664/3 |goto 68.53,79.80
step
label "Clear_the_House_of_Plagues"
Kill Plague enemies around this area
Clear the House of Plagues |q 65663/1 |goto 69.98,73.42
You can find more around [69.09,76.72] |notinsticky
step
talk Calia Menethil##185826
turnin Feed the Eater##65663 |goto 68.67,81.69
step
talk Plague Deviser Marileth##185825
turnin Essence of Plague##65664 |goto 68.66,81.76
accept Embodiment##65665 |goto 68.67,81.76
step
kill Lordaeron Blight##185828 |q 65665/1 |goto 68.26,84.56
|tip Avoid slime waves from the sides and don't stand in slime pools.
step
talk Lilian Voss##185829
turnin Embodiment##65665 |goto 68.61,81.81
accept Return to Brill##65666 |goto 68.61,81.81
step
use Lilian's Hearthstone##191029
Return to Brill |goto Tirisfal Glades L/0 60.92,50.28 < 100 |c |noway |q 65666
step
Leave the building |goto 60.83,51.91 < 7 |walk
talk Master Apothecary Faranell##185831
Tell him _"Checking in. What's next?"_
Speak to Master Apothecary Faranell |q 65666/1 |goto 65.78,60.13
step
Watch the dialogue
talk Master Apothecary Faranell##185831
turnin Return to Brill##65666 |goto 65.78,60.13
step
talk Calia Menethil##185839
accept The Remedy of Lordaeron##65667 |goto 65.84,60.37
step
clicknpc Shadowbat##185832
Mount the Shadowbat |q 65667/1 |goto 65.72,59.78
step
Drop Plague Eaters in the Ruins of Lordaeron |q 65667/2 |goto 59.18,71.38
|tip Use the "Deploy" ability in the first slot of your action bar.
|tip Use the "Call Batriders" in the second slot of your action bar on areas with purple arrows.
step
kill Amalgam##185841 |q 65667/3 |goto 62.56,72.12
|tip Use the final three abilities on your action bar.
step
Watch the dialogue
Return to the Ground |outvehicle |q 65667
step
talk Lilian Voss##185852
turnin The Remedy of Lordaeron##65667 |goto 61.85,67.75
accept The Desolate Council##65668 |goto 61.85,67.75
step
Watch the dialogue
Witness the Formation of the Desolate Council |q 65668/1 |goto 61.79,67.78
step
talk Calia Menethil##185848
turnin The Desolate Council##65668 |goto 61.79,67.78
step
talk Dark Ranger Velonara##185851
accept Path of the Dark Rangers##66091 |goto 61.92,67.78
step
talk Lilian Voss##185852
accept A Walk with Ghosts##65788 |goto 61.85,67.75
step
Enter the Throne Room of Lordaeron |q 65788/1 |goto Tirisfal Glades L/0 61.81,72.04
step
talk Calia Menethil##185893
turnin A Walk with Ghosts##65788 |goto 61.85,72.83
step
accept Unliving Summons##76530 |goto 63.75,68.16
|tip You will accept this quest automatically
step
talk Lilian Voss##186091
turnin Unliving Summons##76530 |goto 63.75,68.16
accept Our Enemies Abound##72854 |goto 63.75,68.16
step
talk Deathstalker Commander Belmont##199761
Tell him _"Show me what's going on."_
Speak to Belmont |q 72854/1 |goto 61.21,82.75
step
talk Deathstalker Commander Belmont##199761
turnin Our Enemies Abound##72854 |goto 61.21,82.74
accept To the Sepulcher##72855 |goto 61.21,82.74
step
talk Forsaken Dreadmage##199766
Tell her _"Send me to the Sepulcher in Silverpine Forest."_
Speak to Forsaken Dreadmage |q 72855/1 |goto 61.16,82.39
step
talk Dark Ranger Velonara##199768
turnin To the Sepulcher##72855 |goto Silverpine Forest/0 45.57,42.06
accept Acid Beats Paper##72858 |goto 45.57,42.06
step
talk Master Apothecary Faranell##199767
accept Nothing Like the Classic##72856 |goto 45.63,41.97
accept Boom Weed##72857 |goto 45.63,41.97
stickystart "Collect_Boom_Weed"
stickystart "Collect_Plagued_Flesh"
step
use the Acid Rifle##202182
|tip Around the back of the building.
|tip Face the notice so the acid hits it.
Destroy the Notice to All Undead |q 72858/1 |goto 47.05,43.43 |count 1
step
use the Acid Rifle##202182
|tip Around the back of the building.
|tip Face the notice so the acid hits it.
Destroy the Notice to All Undead |q 72858/1 |goto 46.67,47.07 |count 2
step
use the Acid Rifle##202182
|tip Around the back of the building.
|tip Face the notice so the acid hits it.
Destroy the Notice to All Undead |q 72858/1 |goto 45.62,47.36 |count 3
step
use the Acid Rifle##202182
|tip Around the back of the building.
|tip Face the notice so the acid hits it.
Destroy the Notice to All Undead |q 72858/1 |goto 46.96,50.23 |count 4
step
label "Collect_Boom_Weed"
click Boom Weed##385373+
|tip They look like small stringy plants on the ground around this area.
|tip They explode and cause minor damage.
collect 6 Boom Weed##202186 |q 72857/1 |goto 46.27,49.75
step
label "Collect_Plagued_Flesh"
Kill enemies around this area
collect 12 Plagued Flesh##202187 |q 72856/1 |goto 46.27,49.75
step
talk Dark Ranger Velonara##199768
turnin Acid Beats Paper##72858 |goto 45.57,42.05
step
talk Master Apothecary Faranell##199767
turnin Nothing Like the Classic##72856 |goto 45.62,41.99
turnin Boom Weed##72857 |goto 45.62,41.99
step
talk Calia Menethil##199793
accept A Proper Disguise##72859 |goto 45.55,41.56
step
talk Lilian Voss##199792
accept Fear is Our Weapon##72860 |goto 45.50,41.54
step
talk Emalora##209848
talk Angellene##209847
talk Margix##209849
|tip Choose a banshee.
Tell her _"Come with me."_
Pick a Banshee |q 72860/1 |goto 45.33,41.41
step
kill Lieutenant Hawlsey##199797 |q 72859/1 |goto 52.82,28.22
|tip Inside the building.
step
collect Hawlsey's Armor##206929 |q 72859/1 |goto 52.81,28.18
|tip Loot it from his corpse inside the building.
step
Kill Scarlet enemies around this area
Slay #12# Scarlet Recruits or Traienrs |q 72860/2 |goto 52.41,26.50
step
talk Lilian Voss##199792
turnin A Proper Disguise##72859 |goto 45.50,41.55
turnin Fear is Our Weapon##72860 |goto 45.50,41.55
accept The Scarlet Spy##72861 |goto 45.50,41.55
step
extraaction Disguised##397488
Don the Scarlet Disguise |q 72861/1 |goto 45.50,41.55
step
clicknpc Explosive Plague Mixture##187485
Pick Up Faranell's Mixture |q 72861/2 |goto 45.62,41.90
step
talk Scarlet Boatmaster##199804
Select  _"<Stare silently until the Boatmaster calls a boat for you.>"_
Speak to the Scarlet Boatmaster |q 72861/3 |goto 59.93,34.19
step
Watch the dialogue
Reach the Dock |outvehicle |goto 64.10,34.27
step
talk Quartermaster Newlem##199806
|tip Use your disguise if you lose it.
turnin The Scarlet Spy##72861 |goto 64.02,33.47
accept Among Us##72862 |goto 64.02,33.47
step
'|extraaction Disguised##397488
clicknpc Scarlet Archmage##199896
|tip Use your disguise if you lose it.
|tip Avoid the large circles.
Slay the Scarlet Archmage |q 72862/2 |goto 66.18,32.93 |count 1
step
'|extraaction Disguised##397488
clicknpc Scarlet Archmage##199896
|tip Use your disguise if you lose it.
|tip Avoid the large circles.
Slay the Scarlet Archmage |q 72862/2 |goto 66.91,30.17 |count 2
step
'|extraaction Disguised##397488
clicknpc Scarlet Archmage##199896
|tip Use your disguise if you lose it.
|tip Avoid the large circles.
Slay the Scarlet Archmage |q 72862/2 |goto 68.81,33.15 |count 3
step
'|extraaction Disguised##397488
clicknpc Explosive Plague Mixture##199883
|tip Use your disguise if you lose it.
|tip Avoid the large circles.
Plant the Explosive Plague |q 72862/1 |goto 68.80,35.38 |count 1
step
'|extraaction Disguised##397488
clicknpc Scarlet Archmage##199896
|tip Use your disguise if you lose it.
|tip Avoid the large circles.
Slay the Scarlet Archmage |q 72862/2 |goto 70.53,35.49 |count 4
step
'|extraaction Disguised##397488
clicknpc Scarlet Archmage##199896
|tip Use your disguise if you lose it.
|tip Avoid the large circles.
Slay the Scarlet Archmage |q 72862/2 |goto 76.12,33.34 |count 5
step
'|extraaction Disguised##397488
clicknpc Explosive Plague Mixture##199883
|tip Use your disguise if you lose it.
|tip Avoid the large circles.
Plant the Explosive Plague |q 72862/1 |goto 75.77,31.74 |count 2
step
'|extraaction Disguised##397488
clicknpc Scarlet Archmage##199896
|tip Use your disguise if you lose it.
|tip Avoid the large circles.
Slay the Scarlet Archmage |q 72862/2 |goto 80.11,31.44 |count 6
step
'|extraaction Disguised##397488
clicknpc Explosive Plague Mixture##199883
|tip Use your disguise if you lose it.
|tip Avoid the large circles.
Plant the Explosive Plague |q 72862/1 |goto 76.36,19.97 |count 3
step
talk Dark Ranger Velonara##199879
turnin Among Us##72862 |goto 70.45,18.22
accept The Flight of the Banshee##72863 |goto 70.45,18.22
step
talk Dark Ranger Velonara##199879
Tell her _"I'm ready."_
Speak to Velonara |q 72863/1 |goto 70.45,18.22
step
talk Deathstalker Commander Belmont##199885
turnin The Flight of the Banshee##72863 |goto 70.25,18.05
accept Death to the Living##72864 |goto 70.25,18.05
step
click Scarlet Banner+
|tip They look like white and red banners on poles around this area.
click Scarlet Portal+
|tip They look like large blue portals on the ground around this area.
Kill enemies around this area
Route the Scarlet Crusade |q 72864/1 |goto 70.32,20.03
step
Meet Lilian Voss Ouside Fenris Keep |q 72864/2 |goto 66.33,31.08
step
talk Lilian Voss##199893
turnin Death to the Living##72864 |goto 66.33,31.08
accept This is the Hour of the Forsaken##72865 |goto 66.33,31.08
step
Reach Fenris Keep |q 72865/1 |goto 65.73,24.41
step
extraaction Will of the Forsaken##412756
|tip Use this when it appears on the screen.
kill Scarlet Commander Forsythe##199912 |q 72865/2 |goto 65.71,23.75
|tip Upstairs inside the building.
step
talk Lilian Voss##199893
|tip Downstairs inside the building.
turnin This is the Hour of the Forsaken##72865 |goto 65.62,23.80
accept Return to Lordaeron##72866 |goto 65.62,23.80
step
click Portal to Lordaeron |goto 65.53,23.95
Take the portal to the Ruins of Lordaeron |q 72866/1 |goto 65.53,23.95
step
talk Lilian Voss##199922
turnin Return to Lordaeron##72866 |goto Tirisfal Glades L/0 61.84,69.55
accept I Am Forsaken##72867 |goto 61.84,69.55
step
extraaction Honor of the Forsaken##416270
Receive the Honor of the Forsaken |q 72867/1 |goto 61.84,68.65
step
talk Lilian Voss##199922
turnin I Am Forsaken##72867 |goto 61.84,69.56
]])
