local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("DailiesCDRAGON") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZygorGuidesViewer:RegisterGuide("Daily Guides\\Dragonflight (60-70)\\The Azure Span World Quests",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing world quests in The Azure Span.",
condition_suggested=function() return completedq(66221) end,
startlevel=60,
worldquestzone={2024},
patch='100001',
},[[
step
label "Choose_World_Quest"
#include "Dragon_Choose_World_Quests"
step
label quest-70658
accept Artifact or Fiction##70658 |goto The Azure Span/0 72.15,21.09
|tip You will accept this quest automatically.
step
click Climbing Gear
Acquire the Climbing Gear |q 70658/1 |goto 72.15,21.09
step
click Handhold
Find a Handhold on the Cliff |q 70658/2 |goto 71.84,21.11
step
click Draconic Artifact+
|tip Draconic Artifacts are found next to handholds on both sides.
|tip Click handholds to move up the wall and excavate artifacts.
|tip Skip Crumbling Ice patches when possible, as they will reduce your grip.
Excavate #7# Draconic Artifacts from the Cliff Face |q 70658/3 |goto 71.58,19.22
|next "Dragon_World_Quest_Emissaries"
step
label quest-70629
accept Assaulting the Shore##70629 |goto The Azure Span/0 10.01,41.78
|tip You will accept this quest automatically.
step
click Stolen Goods##381055+
click Gorloc Eggs##381092+
Kill Brinetooth enemies around this area
Pacify the Gorlocs |q 70629/1 |goto 10.01,41.78
|next "Dragon_World_Quest_Emissaries"
step
label quest-71212
accept Attackin' the Brackenhide##71212 |goto The Azure Span/0 13.07,35.10
|tip You will accept this quest automatically.
step
Kill enemies around this area
Disrupt the Brackenhide |q 71212/1 |goto 13.07,35.10
|next "Dragon_World_Quest_Emissaries"
step
label quest-70639
accept Azure Banners##70639 |goto The Azure Span/0 74.46,23.52
|tip You will accept this quest automatically.
step
Plant #10# Banners |q 70639/1 |goto 74.46,23.52
|tip Use your dragonriding abilities to fly through 10 golden rings.
|tip You can find them on cliffs and ledges around this area.
|tip They appear on your minimap as yellow dots.
|next "Dragon_World_Quest_Emissaries"
step
label quest-69927
accept Bazual##69927 |goto The Azure Span/0 79.21,36.37
|tip You will accept this quest automatically.
step
kill Bazual##193532 |q 69927/1 |goto 79.21,36.37
_EVERYONE:_ |grouprole EVERYONE
|tip "Deterring Flame" will deal damage and knock everyone back. |grouprole EVERYONE
|tip Avoid standing in magma pools after "Magma Eruption" casts. |grouprole EVERYONE
|tip Move out of areas showing rain of fire during "Rain of Destruction" while Bazual is at 100 energy.|grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Kill elementals quickly when they spawn. |grouprole DAMAGE
|tip Avoid standing in front of Bazual. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip "Searing Heat" will deal damage to the entire raid while Bazual is at 100 energy. |grouprole HEALER
|tip Avoid standing in front of Bazual.  |grouprole HEALER
_TANK:_ |grouprole TANK
|tip "Lava Breath" deals heavy damage in a frontal cone. |grouprole TANK
|tip Avoid facing Bazual towards raid members. |grouprole TANK
|next "Dragon_World_Quest_Emissaries"
step
label quest-70662
accept A Bone to Pickaxe##70662 |goto The Azure Span/0 28.47,45.18
|tip You will accept this quest automatically.
step
click Climbing Gear
Acquire the Climbing Gear |q 70662/1 |goto 28.47,45.18
step
click Handhold
Find a Handhold on the Cliff |q 70662/2 |goto 28.45,45.05
step
click Intact Dragon Bone+
|tip They look like large bones sticking out of the cliff.
|tip Avoid Highpeaks Goats which will kick at you and lower your grip.
Excavate #7# Dragon Bones in the Cliff Face |q 70662/3 |goto 28.94,44.56
|next "Dragon_World_Quest_Emissaries"
step
label quest-69942
accept Brackenhide Mysteries##69942 |goto The Azure Span/0 18.55,35.58
|tip You will accept this quest automatically.
step
click Decaying Spirit+
Collect #5# Astral Essence |q 69942/1 |goto 18.55,35.58
|next "Dragon_World_Quest_Emissaries"
step
label quest-70529
accept Bring Them Home##70529 |goto The Azure Span/0 34.42,47.20
|tip You will accept this quest automatically.
stickystart "Slay_Darktooth_Gnolls_70529"
step
click Crude Gnoll Cage+
|tip They look like large wooden stick cages in camps around this area.
Free #6# Caged Tuskarr |q 70529/1 |goto 34.42,47.20
step
label "Slay_Darktooth_Gnolls_70529"
Kill Darktooth enemies around this area
Slay Darktooth Gnolls |q 70529/2 |goto 34.42,47.20
|next "Dragon_World_Quest_Emissaries"
step
label quest-70016
accept Calming the Land##70016 |goto The Azure Span/0 74.06,54.09
|tip You will accept this quest automatically.
step
extraaction Summon Cleansing Totem##386636
|tip Summon the totem and immediately pull a Wildwater to it.
|tip Wait for it to gain 5 stacks of the "Calming Aura" buff.
|tip Shortly after, it will become friendly and disappear.
|tip Each stack it gains will reduce its damage by 20%.
|tip The totem will only cleanse 1 mob at a time.
Calm #6# Churning Wildwaters |q 70016/1 |goto 74.06,54.09
|next "Dragon_World_Quest_Emissaries"
step
label quest-70720
accept Can't Have These##70720 |goto The Azure Span/0 12.60,42.02
|tip You will accept this quest automatically.
stickystart "Slay_the_Sundered_Flame's_Forces_70720"
step
use the Artifact Locator##199692
|tip Follow the light as it moves, using the locator as needed.
click Iskhdormi Artifact##381283+
|tip When the light stops and reveals an artifact, click it.
collect 5 Artifact Fragment##199704 |q 70720/1 |goto 12.52,43.09 |count 1
step
use the Artifact Locator##199692
|tip Follow the light as it moves, using the locator as needed.
click Iskhdormi Artifact##381283+
|tip When the light stops and reveals an artifact, click it.
collect 5 Artifact Fragment##199704 |q 70720/1 |goto 12.93,42.97 |count 2
step
use the Artifact Locator##199692
|tip Follow the light as it moves, using the locator as needed.
click Iskhdormi Artifact##381283+
|tip When the light stops and reveals an artifact, click it.
collect 5 Artifact Fragment##199704 |q 70720/1 |goto 12.77,41.88 |count 3
step
use the Artifact Locator##199692
|tip Follow the light as it moves, using the locator as needed.
click Iskhdormi Artifact##381283+
|tip When the light stops and reveals an artifact, click it.
collect 5 Artifact Fragment##199704 |q 70720/1 |goto 12.19,41.78 |count 4
step
use the Artifact Locator##199692
|tip Follow the light as it moves, using the locator as needed.
click Iskhdormi Artifact##381283+
|tip When the light stops and reveals an artifact, click it.
collect 5 Artifact Fragment##199704 |q 70720/1 |goto 12.45,40.67 |count 5
step
label "Slay_the_Sundered_Flame's_Forces_70720"
Kill Sundered enemies around this area
Slay the Sundered Flame's Forces |q 70720/2 |goto 12.60,42.02
|next "Dragon_World_Quest_Emissaries"
step
label quest-70100
accept Cataloging the Azure Span##70100 |goto The Azure Span/0 44.23,61.02
|tip You will accept this quest automatically.
step
clicknpc Cataloger's Raft##185085
|tip Use the "Catalog" ability on your vehicle bar to take puctures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
Ride the Cataloger's Raft |q 70100/1 |goto 44.23,61.02
step
Take Pictures of Wildlife |q 70100/2
|tip Use the "Catalog" ability on your vehicle bar to take puctures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
|next "Dragon_World_Quest_Emissaries"
step
label quest-70787
accept Caught In a Dusk Storm##70787
|tip You will accept this quest automatically.
|polish
stickystart "Kill_Dragonscale_Researcher_70787"
step
Kill Stormfang and Duskpaw enemies around this area
collect 100 Dragon Bone Fragment##199917 |q 70787/1
step
label "Kill_Dragonscale_Researcher_70787"
kill 8 Dragonscale Researcher##196487 |q 70787/2
|next "Dragon_World_Quest_Emissaries"
step
label quest-70631
accept Clearing the Skies##70631 |goto The Azure Span/0 55.86,32.40
|tip You will accept this quest automatically.
step
Kill #50# Insects |q 70631/1 |goto 55.86,32.40
|tip Fly through insects in the air.
|tip Avoid purple orbs that stall your flight.
|next "Dragon_World_Quest_Emissaries"
step
label quest-70068
accept Cobalt Catastrophe##70068 |goto The Azure Span/0 48.26,24.34
|tip You will accept this quest automatically.
step
Kill enemies around this area
Disrupt the Sundered Flame |q 70068/1 |goto 48.26,24.34
|next "Dragon_World_Quest_Emissaries"
step
label quest-70653
accept Cold Hard Science##70653 |goto The Azure Span/0 48.22,37.63
|tip You will accept this quest automatically.
step
click Climbing Gear
Acquire the Climbing Gear |q 70653/1 |goto 48.22,37.63
step
click Handhold
Find a Handhold on the Cliff |q 70653/2 |goto 48.23,37.43
step
click Infused Glacier Sample+
|tip Use the handholds to move around the glacier and excavate samples.
|tip Glacier samples can be found near handholds on both sides of the waterfall.
Excavate #8# Infused Glacier Samples from the Ice |q 70653/3 |goto 48.41,37.55
|next "Dragon_World_Quest_Emissaries"
step
label quest-70440
accept Dead Eyes##70440 |goto The Azure Span/0 34.46,46.08
|tip You will accept this quest automatically.
stickystart "Slay_Darktooth_Gnolls_70440"
step
kill Chief Dead Eye##195337 |q 70440/1 |goto 34.85,45.41
step
label "Slay_Darktooth_Gnolls_70440"
Kill Darktooth enemies around this area
Slay Darktooth Gnolls |q 70440/2 |goto 34.46,46.08
|next "Dragon_World_Quest_Emissaries"
step
label quest-70015
accept Decay Cleanup##70015 |goto The Azure Span/0 18.35,38.06
|tip You will accept this quest automatically.
stickystart "Cleanse_Rotting_Treant_Corpses_70015"
step
kill Oozing Decay##188689+
extraaction Summon Cleansing Totem##386636 |notinsticky
|tip Use it next to their corpse. |notinsticky
Cleanse #15# Oozing Decay Corpses |q 70015/1 |goto 18.35,38.06
step
label "Cleanse_Rotting_Treant_Corpses_70015"
kill Rotting Treant##186361+
extraaction Summon Cleansing Totem##386636 |notinsticky
|tip Use it next to their corpse. |notinsticky
Cleanse #6# Rotting Treant Corpses |q 70015/2 |goto 18.35,38.06
|next "Dragon_World_Quest_Emissaries"
step
label quest-70430
accept Dragonrider Racing - Archive Ambit##70430 |goto The Azure Span/0 42.27,56.77
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##193027
Tell him _"I'd like to try the course."_
Prepare for the Race |havebuff spell:379036 |goto 42.27,56.77 |q 70430
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff spell:369968 |goto 42.27,56.60 |q 70430
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 70430/1
|next "Dragon_World_Quest_Emissaries"
step
label quest-70426
accept Dragonrider Racing - Azure Span Slalom##70426 |goto The Azure Span/0 20.95,22.63
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##191947
Tell him _"I'd like to try the course."_
Prepare for the Race |havebuff spell:387548 |goto 20.95,22.63 |q 70426
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff spell:369968 |goto 20.89,22.66 |q 70426
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 70426/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "Dragon_World_Quest_Emissaries"
step
label quest-70425
accept Dragonrider Racing - Azure Span Sprint##70425 |goto The Azure Span/0 47.91,40.79
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##194372
Tell him _"I'd like to try the course."_
Prepare for the Race |havebuff spell:376195 |goto 47.91,40.79 |q 70425
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff spell:369968 |goto 47.91,40.86 |q 70425
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 70425/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "Dragon_World_Quest_Emissaries"
step
label quest-70429
accept Dragonrider Racing - Frostland Flyover##70429 |goto The Azure Span/0 48.47,35.79
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##192945
Tell him _"I'd like to try the course."_
Prepare for the Race |havebuff spell:378753 |goto 48.47,35.79 |q 70429
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff spell:369968 |goto 48.61,35.68 |q 70429
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 70429/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "Dragon_World_Quest_Emissaries"
step
label quest-70428
accept Dragonrider Racing - Iskaara Tour##70428 |goto The Azure Span/0 16.58,49.37
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##192886
Tell him _"I'd like to try the course."_
Prepare for the Race |havebuff spell:378415 |goto 16.58,49.37 |q 70428
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff spell:369968 |goto 16.48,49.29 |q 70428
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 70428/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "Dragon_World_Quest_Emissaries"
step
label quest-70427
accept Dragonrider Racing - Vakthros Ascent##70427 |goto The Azure Span/0 71.29,24.64
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##192115
Tell him _"I'd like to try the course."_
Prepare for the Race |havebuff spell:377025 |goto 71.29,24.64 |q 70427
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff spell:369968 |goto 71.27,24.69 |q 70427
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 70427/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "Dragon_World_Quest_Emissaries"
step
label quest-70612
accept Feed Three-Falls##70612 |goto The Azure Span/0 17.47,26.85
|tip You will accept this quest automatically.
stickystart "Collect_Moose_Flank_70612"
step
Kill Vorquin enemies around this area
collect 10 Vorquin Meat##193219 |q 70612/1 |goto 17.47,26.85
step
label "Collect_Moose_Flank_70612"
kill Striped Bruffalon##190726+
collect 4 Moose Flank##194030 |q 70612/2 |goto 17.47,26.85
|next "Dragon_World_Quest_Emissaries"
step
label quest-72029
accept Fishing Frenzy!##72029
|tip You will accept this quest automatically.
|polish
step
kill Spawning Thresher##194342+
|tip Underwater around this area.
collect 12 Fresh Fish Steak##198350 |q 72029/1
|next "Dragon_World_Quest_Emissaries"
step
label quest-70152
accept Fishing Frenzy!##70152 |goto The Azure Span/0 70.99,35.35
|tip You will accept this quest automatically.
step
extraaction Harpoon##377081
|tip Use it on Steamed Crabs in the boiling water.
|tip They appear on your minimap as yellow dots.
extraaction Pull Hard##374599
|tip After Harpooning them, use the Pull Hard ability to pull them onto the shore.
kill Steamed Crab##197079+
|tip They will die when you pull them onto the shore.
collect 8 Sweet Steamed Meat##200530 |q 70152/1 |goto 70.99,35.35
|next "Dragon_World_Quest_Emissaries"
step
label quest-72022
accept Fishing Frenzy!##72022 |goto The Azure Span/0 58.74,34.63
|tip You will accept this quest automatically.
step
extraaction Harpoon##377081
|tip Use it on Icy Blue Crabs in the water.
|tip They appear on your minimap as yellow dots.
extraaction Pull Hard##374599
|tip After Harpooning them, use the Pull Hard ability to pull them onto the shore.
kill Icy Blue Crab##197862+
|tip They will die when you pull them onto the shore.
|tip You can also just kill them.
collect 8 Frozen Steak##200756 |q 72022/1 |goto 58.74,34.63
|next "Dragon_World_Quest_Emissaries"
step
label quest-70064
accept For Imbu!##70064 |goto The Azure Span/0 57.87,67.99
|tip You will accept this quest automatically.
step
Kill enemies around this area
Liberate Imbu |q 70064/1 |goto 57.87,67.99
|next "Dragon_World_Quest_Emissaries"
step
label quest-69941
accept Frozen Victims##69941 |goto The Azure Span/0 49.82,62.32
|tip You will accept this quest automatically.
step
clicknpc Frozen Tuskarr##194221+
|tip They look like Tuskarr NPCs frozen in ice.
|tip They appear on your minimap as yellow dots.
Free #7# Victims |q 69941/1 |goto 49.82,62.32
|next "Dragon_World_Quest_Emissaries"
step
label quest-70112
accept Furbolg Threat##70112 |goto The Azure Span/0 61.79,52.07
|tip You will accept this quest automatically.
step
Kill Rustpine enemies around this area
Slay #15# Rustpine Furbolg |q 70112/1 |goto 61.79,52.07
|next "Dragon_World_Quest_Emissaries"
step
label quest-70011
accept Furry Friends##70011 |goto The Azure Span/0 58.58,55.08
|tip You will accept this quest automatically.
step
clicknpc Wildwater Ottuk##193409+
extraaction Throw Ball##388323
|tip Throw the ball to an Ottuk.
|tip In a few seconds, it will throw the ball to a random nearby area.
|tip Run into the swirling purple area before the ball lands to catch it.
|tip You can only play with an Ottuk once per minute.
|tip Stand 10-15 yards away before throwing.
Play with Wildwater Ottuks #6# Times |q 70011/1 |goto 58.58,55.08
|next "Dragon_World_Quest_Emissaries"
step
label quest-70071
accept Gathering the Magic##70071 |goto The Azure Span/0 38.14,62.09
|tip You will accept this quest automatically.
step
click Crystaline Energy Conduit
Tap into the Energy |q 70071/1 |goto 38.14,62.09
step
Gather the Magic |q 70071/2 |goto 39.63,62.97
|tip Jumping will fill a bar on your screen.
|tip Jumping again will launch you into the air, landing safely.
|tip Launch yourself through orbs in the air above you to collect magic.
|next "Dragon_World_Quest_Emissaries"
step
label quest-71145
accept The Grand Master##71145 |goto The Azure Span/0 13.88,49.85
|tip You will accept this quest automatically.
step
talk Patchu ##196069
Choose _"Begin pet battle."_
Defeat Patchu in a Pet Battle |q 71145/1 |goto 13.88,49.85
|next "Dragon_World_Quest_Emissaries"
step
label quest-70047
accept Icy Prisons##70047 |goto The Azure Span/0 58.08,42.21
|tip You will accept this quest automatically.
step
clicknpc Imprisoned Ottuk##194169+
Free #6# of the Frozen |q 70047/1 |goto 58.08,42.21
|next "Dragon_World_Quest_Emissaries"
step
label quest-71202
accept Mini Manafiend Melee##71202 |goto The Azure Span/0 40.98,59.41
|tip You will accept this quest automatically.
step
clicknpc Arcantus##197417
Defeat Arcantus in a Pet Battle |q 71202/1 |goto 40.98,59.41
|next "Dragon_World_Quest_Emissaries"
step
label quest-70010
accept New Moves##70010
|tip You will accept this quest automatically.
|polish
step
talk Iskaara Defender##186431
Show #5# Iskaara Defenders your Combat Skills |q 70010/1
|next "Dragon_World_Quest_Emissaries"
step
label quest-74836
accept A New Vocation##74836 |goto The Azure Span/0 19.52,24.61
|tip You will accept this quest automatically.
step
talk Izal Whitemoon##201899
Choose _"Begin pet battle."_
Defeat Izal Whitemoon in a Pet Battle |q 74836/1 |goto 19.52,24.61
|next "Dragon_World_Quest_Emissaries"
step
label quest-70622
accept Resupply Three-Falls##70622 |goto The Azure Span/0 21.41,26.69
|tip You will accept this quest automatically.
stickystart "Collect_Herbs_Berries_and_Flowers_70622"
step
Kill Thickmane enemies around this area
collect 6 Thick Bear Fur##199176 |q 70622/1 |goto 21.41,26.69
step
label "Collect_Herbs_Berries_and_Flowers_70622"
click Blood Berries##377207+
click Dragon Foil##377203+
click Bronze Horn##377199+
|tip They look like various plants on the ground around this area.
Collect Herbs, Berries, and Flowers |q 70622/2 |goto 21.41,26.69
|next "Dragon_World_Quest_Emissaries"
step
label quest-70035
accept Ruriq's River Rapids Ride##70035 |goto The Azure Span/0 44.92,54.10
|tip You will accept this quest automatically.
step
clicknpc The Fallstrider##190067
Ride the Boat |q 70035/1 |goto 44.92,54.10
step
Catch #25# Fish on The Fallstrider |q 70035/2
|tip Use the two net abilites on your vehicle bar to catch fish along the river as you ride.
|tip Use the wide net on larger groups of fish.
|next "Dragon_World_Quest_Emissaries"
step
label quest-72019
accept Seeing through the Enemy: Nezascar##72019
|tip You will accept this quest automatically.
|polish
step
kill Nezascar the Sightless##196535 |q 72019/1
|next "Dragon_World_Quest_Emissaries"
step
label quest-70625
accept Spellforged Creations##70625 |goto The Azure Span/0 48.90,18.84
|tip You will accept this quest automatically.
step
kill Spellforged Brute##184456
Slay the Spellforged Creation |q 70625/1 |goto 48.90,18.84
|next "Dragon_World_Quest_Emissaries"
step
label quest-70022
accept Tale of Korave##70022
|tip You will accept this quest automatically.
|polish
step
Speak with Brena |q 70022/1
|next "Dragon_World_Quest_Emissaries"
step
label quest-70037
accept Unpowered Tools##70037
|tip You will accept this quest automatically.
|polish
step
Empower #6# Tools |q 70037/1
|next "Dragon_World_Quest_Emissaries"
step
label quest-70439
accept Wild Arcana##70439 |goto The Azure Span/0 51.31,24.87
|tip You will accept this quest automatically.
step
kill Unstable Elemental##194961+
Destroy Unstable Arcana or Kill Players |q 70439/1 |goto 51.31,24.87
|next "Dragon_World_Quest_Emissaries"
step
label "Dragon_World_Quest_Emissaries"
#include "Dragon_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Daily Guides\\Dragonflight (60-70)\\The Forbidden Reach World Quests",{
author="support@zygorguides.com",
description="This guide will assist you in completing world quests in The Forbidden Reach.",
condition_valid=function() return completedallq(75050,74769,73157) end,
condition_valid_msg="You must complete the \"An Eclectic Accord,\" \"Stemming the Irontide,\" and \"Wings of Mercy,\" quests in the Forbidden Reach leveling guide to unlock world quests.",
startlevel=60,
worldquestzone={2151,2150,2102,2154,2100,2101,2109,2110,2026,2107,2118},
patch='100007',
},[[
step
label "Choose_World_Quest"
#include "Dragon_Choose_World_Quests"
step
label quest-73148
accept Combustible Vegetation##73148 |goto The Forbidden Reach/5 13.09,53.71
|tip You will accept this quest automatically.
|polish
step
clicknpc Wildfire##200688
|tip This NPC gains power for each of the 7 nearby Storm-Touched mobs.
|tip Defeating these mobs makes Wildfire easier to defeat.
|tip You can track them on your minimap with Track Pets.
Defeat Wildfire in a Pet Battle |q 73148/1 |goto 13.09,53.71
|next "Dragon_World_Quest_Emissaries"
step
label quest-73146
accept Cutting Wind##73146 |goto The Forbidden Reach/5 18.34,13.24
|tip You will accept this quest automatically.
|polish
step
clicknpc Vortex##200685
|tip This NPC gains power for each of the 7 nearby Storm-Touched Swoglets.
|tip Defeating these mobs makes Wildfire easier to defeat.
|tip You can track them on your minimap with Track Pets.
Defeat Vortex in a Pet Battle |q 73146/1 |goto 18.34,13.24
|next "Dragon_World_Quest_Emissaries"
step
label quest-73084
accept Dragonrider Racing - Forbidden Reach Rush##73084 |goto The Forbidden Reach/5 49.42,60.06
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##200417
Tell him _"I'd like to try the course."_
Prepare for the Race |havebuff spell:398326 |goto 49.42,60.06 |q 73084
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff spell:369968 |goto 49.42,59.88 |q 73084
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 73084/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "Dragon_World_Quest_Emissaries"
step
label quest-73079
accept Dragonrider Racing - Morqut Ascent##73079 |goto The Forbidden Reach/5 31.32,65.75
|tip You will accept this quest automatically.
|polish
step
talk Bronze Timekeeper##200212
Tell him _"I'd like to try the course."_
Prepare for the Race |havebuff spell:398054 |goto 31.32,65.75 |q 73079
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff spell:369968 |goto 31.49,65.94 |q 73079
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 73079/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "Dragon_World_Quest_Emissaries"
step
label quest-73082
accept Dragonrider Racing - Southern Reach Route##73082 |goto The Forbidden Reach/5 63.64,84.05
|tip You will accept this quest automatically.
|polish
step
talk Bronze Timekeeper##200247
Tell him _"I'd like to try the course."_
Prepare for the Race |havebuff spell:398123 |goto 63.64,84.05 |q 73082
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff spell:369968 |goto 63.61,84.32 |q 73082
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 73082/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "Dragon_World_Quest_Emissaries"
step
label quest-73078
accept Dragonrider Racing - Stormsunder Crater Circuit##73078 |goto The Forbidden Reach/5 76.13,65.63
|tip You will accept this quest automatically.
|polish
step
talk Bronze Timekeeper##200183
Tell him _"I'd like to try the course."_
Prepare for the Race |havebuff spell:398027 |goto 76.13,65.63 |q 73078
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff spell:369968 |goto 76.33,65.78 |q 73078
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 73078/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "Dragon_World_Quest_Emissaries"
step
label quest-73149
accept Flood Warning##73149 |goto The Forbidden Reach/5 89.29,60.39
|tip You will accept this quest automatically.
|polish
step
clicknpc Flow##200697
Defeat Flow in a Pet Battle |q 73149/1 |goto 89.29,60.39
|next "Dragon_World_Quest_Emissaries"
step
label quest-73147
accept Shifting Ground##73147 |goto The Forbidden Reach/5 67.30,12.26
|tip You will accept this quest automatically.
|polish
step
clicknpc Tremblor##197447
Defeat Tremblor in a Pet Battle |q 73147/1 |goto 67.30,12.26
|next "Dragon_World_Quest_Emissaries"
step
label quest-75257
accept The War Creche##75257 |goto The War Creche/0 61.04,45.79
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Inside the building.
clicknpc Injured Winguard##203464+
|tip They look like kneeling Dracthyr inside the building.
Subdue the War Creche |q 75257/1 |goto 61.04,45.79
|next "Dragon_World_Quest_Emissaries"
step
label "Dragon_World_Quest_Emissaries"
#include "Dragon_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Daily Guides\\Dragonflight (60-70)\\Ohn'ahran Plains World Quests",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing world quests in Ohn'ahran Plains.",
condition_suggested=function() return completedq(66221) end,
startlevel=60,
worldquestzone={2023},
patch='100001',
},[[
step
label "Choose_World_Quest"
#include "Dragon_Choose_World_Quests"
step
label quest-70659
accept Cataloging the Ohn'ahran Plains##70659 |goto Ohn'ahran Plains/0 73.05,84.37
|tip You will accept this quest automatically.
step
clicknpc Cataloger's Raft##185085
|tip Use the "Catalog" ability on your vehicle bar to take puctures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
Ride the Cataloger's Raft |q 70659/1 |goto 73.05,84.37
step
Take Pictures of Wildlife |q 70659/2
|tip Use the "Catalog" ability on your vehicle bar to take puctures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
|next "Dragon_World_Quest_Emissaries"
step
label quest-70079
accept Cataloging the Ohn'ahran Plains##70079 |goto Ohn'ahran Plains/0 51.90,57.02
|tip You will accept this quest automatically.
step
clicknpc Cataloger's Raft##185085
|tip Use the "Catalog" ability on your vehicle bar to take puctures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
Ride the Cataloger's Raft |q 70079/1 |goto 51.90,57.02
step
Take Pictures of Wildlife |q 70079/2
|tip Use the "Catalog" ability on your vehicle bar to take puctures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
|next "Dragon_World_Quest_Emissaries"
step
label quest-70623
accept Clearing the Skies##70623 |goto Ohn'ahran Plains/0 69.24,42.77
|tip You will accept this quest automatically.
step
Kill #50# Insects |q 70623/1 |goto 69.24,42.77
|tip Fly through insects in the air.
|tip Avoid purple orbs that stall your flight.
|next "Dragon_World_Quest_Emissaries"
step
label quest-70422
accept Dragonrider Racing - Emerald Garden Ascent##70422 |goto Ohn'ahran Plains/0 25.71,55.08
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##191247
Tell him _"I'd like to try the course."_
Prepare for the Race |havebuff spell:375477 |goto 25.71,55.08 |q 70422
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff spell:369968 |goto 25.54,54.96 |q 70422
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 70422/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "Dragon_World_Quest_Emissaries"
step
label quest-70420
accept Dragonrider Racing - Fen Flythrough##70420 |goto Ohn'ahran Plains/0 86.26,35.82
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##191121
|tip In the top of the tower.
Tell him _"I'd like to try the course."_
Prepare for the Race |havebuff spell:375261 |goto 86.26,35.82 |q 70420
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff spell:369968 |goto 86.21,35.83 |q 70420
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 70420/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "Dragon_World_Quest_Emissaries"
step
label quest-70423
accept Dragonrider Racing - Maruukai Dash##70423 |goto Ohn'ahran Plains/0 59.93,35.55
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##191422
Tell him _"I'd like to try the course."_
Prepare for the Race |havebuff spell:375810 |goto 59.93,35.55 |q 70423
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff spell:369968 |goto 60.05,35.67 |q 70423
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Course |q 70423/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "Dragon_World_Quest_Emissaries"
step
label quest-70424
accept Dragonrider Racing - Mirror of the Sky Dash##70424 |goto Ohn'ahran Plains/0 47.48,70.64
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##191511
Tell him _"I'd like to try the course."_
Prepare for the Race |havebuff spell:376062 |goto 47.48,70.64 |q 70424
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff spell:369968 |goto 47.41,70.63 |q 70424
|tip This will take about 5 seconds.
|tip Fly quickly through all of the rings and return to the starting point.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip Green orbs will restore your vigor.
|tip Start with the lower rings in a circle, then climb and work on the upper ones.
step
Complete the Race |q 70424/1
|tip Fly quickly through all of the rings and return to the starting point.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip Green orbs will restore your vigor.
|tip Start with the lower rings in a circle, then climb and work on the upper ones.
|next "Dragon_World_Quest_Emissaries"
step
label quest-70421
accept Dragonrider Racing - Ravine River Run##70421 |goto Ohn'ahran Plains/0 80.89,72.20
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##191165
Tell him _"I'd like to try the course."_
Prepare for the Race |havebuff spell:375356 |goto 80.89,72.20 |q 70421
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff spell:369968 |goto 80.92,72.13 |q 70421
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 70421/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "Dragon_World_Quest_Emissaries"
step
label quest-70712
accept Dragonrider Racing - River Rapids Route##70712 |goto Ohn'ahran Plains/0 43.74,66.78
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##196092
Tell him _"I'd like to try the course."_
Prepare for the Race |havebuff spell:387548 |goto 43.74,66.78 |q 70712
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff spell:369968 |goto 43.89,66.61 |q 70712
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 70712/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "Dragon_World_Quest_Emissaries"
step
label quest-70419
accept Dragonrider Racing - Sundapple Copse Circuit##70419 |goto Ohn'ahran Plains/0 63.74,30.52
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##190928
Tell him _"I'd like to try the course."_
Prepare for the Race |havebuff spell:374825 |goto 63.74,30.52 |q 70419
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff spell:369968 |goto 63.82,30.47 |q 70419
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 70419/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "Dragon_World_Quest_Emissaries"
step
label quest-71206
accept Eye of the Stormling##71206 |goto Ohn'ahran Plains/0 24.41,42.36
|tip You will accept this quest automatically.
step
clicknpc Stormamu##197447
Defeat Stormamu in a Pet Battle |q 71206/1 |goto 24.41,42.36
|next "Dragon_World_Quest_Emissaries"
step
label quest-69994
accept The Field of Ferocity Redux: Elemental Revenge Round!##69994
|tip You will accept this quest automatically.
|polish
step
kill Veshrak of the North##188713 |q 69994/1
|tip This enemy is elite and may require a group.
|next "Dragon_World_Quest_Emissaries"
step
label quest-69991
accept The Field of Ferocity Redux: Foe from the Volcano!##69991
|tip You will accept this quest automatically.
|polish
step
kill Ceeqa the Peacetaker##188708 |q 69991/1
|tip This enemy is elite and may require a group.
|next "Dragon_World_Quest_Emissaries"
step
label quest-69990
accept The Field of Ferocity Redux: Lord of Decay!##69990
|tip You will accept this quest automatically.
|polish
step
kill Nightrot##188707 |q 69990/1
|tip This enemy is elite and may require a group.
|next "Dragon_World_Quest_Emissaries"
step
label quest-69993
accept The Field of Ferocity Redux: Lost in the Dream!##69993
|tip You will accept this quest automatically.
|polish
stickystart "Kill_Taresh_69993"
step
kill Sherath##188710 |q 69993/1
|tip This enemy is elite and may require a group.
step
label "Kill_Taresh_69993"
kill Taresh##188711 |q 69993/2
|tip This enemy is elite and may require a group. |notinsticky
|next "Dragon_World_Quest_Emissaries"
step
label quest-69995
accept The Field of Ferocity Redux: Master of the Hunt!##69995
|tip You will accept this quest automatically.
|polish
step
kill Huntmaster Amaa##188715 |q 69995/1
|tip This enemy is elite and may require a group.
|next "Dragon_World_Quest_Emissaries"
step
label quest-69987
accept The Field of Ferocity Redux: Terror of the Swamp!##69987
|tip You will accept this quest automatically.
|polish
step
kill Maneet##188704 |q 69987/1
|tip This enemy is elite and may require a group.
|next "Dragon_World_Quest_Emissaries"
step
label quest-72028
accept Fishing Frenzy!##72028 |goto Ohn'ahran Plains/0 81.21,78.47
|tip You will accept this quest automatically.
step
extraaction Harpoon##377081
|tip Use it on Spawning Threshers in the water along the shore.
|tip They appear on your minimap as yellow dots.
extraaction Pull Hard##374599
|tip After Harpooning them, use the Pull Hard ability to pull them onto the shore.
kill Spawning Thresher##194342+
|tip They will die when you pull them onto the shore.
collect 12 Fresh Fish Steak##198350 |q 72028/1 |goto 81.21,78.47
|next "Dragon_World_Quest_Emissaries"
step
label quest-69988
accept Flashy Rocks##69988 |goto Ohn'ahran Plains/0 54.10,52.26
|tip You will accept this quest automatically.
step
Kill Thunderspine enemies around this area
collect 10 Lightning Infused Rock##198138 |q 69988/1 |goto 54.10,52.26
|next "Dragon_World_Quest_Emissaries"
step
label quest-70146
accept Highlands Rebuttal##70146 |goto Ohn'ahran Plains/0 85.51,53.74
|tip You will accept this quest automatically.
step
Kill enemies around this area
Eliminate the Nokhud and Primalist Forces |q 70146/1 |goto 85.51,53.74
|next "Dragon_World_Quest_Emissaries"
step
label quest-70149
accept Hope for the Highlands##70149 |goto Ohn'ahran Plains/0 85.77,53.38
|tip You will accept this quest automatically.
step
clicknpc Displaced Nestling##193379+
|tip They look like small birds on the ground around this area.
click Ohn'aran Egg+
|tip They look like purple eggs in nests on the ground around this area.
Gather Displaced Nestlings and Ohn'aran Eggs |q 70149/1 |goto 85.77,53.38
|next "Dragon_World_Quest_Emissaries"
step
label quest-70634
accept Lashed Out##70634 |goto Ohn'ahran Plains/0 29.64,51.74
|tip You will accept this quest automatically.
step
clicknpc Novice Emerald Gardener##195826+
Kill Lasher enemies around this area
Cull Lashers and Rescue Novice Emerald Gardeners |q 70634/1 |goto 29.64,51.74
|next "Dragon_World_Quest_Emissaries"
step
label quest-70655
accept Leaves from the Vine##70655 |goto Ohn'ahran Plains/0 82.81,31.80
|tip You will accept this quest automatically.
step
click Climbing Gear
Acquire the Climbing Gear |q 70655/1 |goto 82.81,31.80
step
click Handhold
Find a Handhold on the Cliff |q 70655/2 |goto 82.84,31.95
step
clicknpc Evergreen Vine##196042+
|tip Evergreen Vine are found next to handholds.
|tip Click handholds to move up the wall and excavate artifacts from the wall by clicking them.
|tip Drop down onto the ledge in front of the waterfall up top to continue climbing up the opposite side.
|tip Avoid slippery rocks which will cause you to lose grip.
Collect #6# Evergreen Vine Samples |q 70655/3 |goto 82.90,32.15
|next "Dragon_World_Quest_Emissaries"
step
label quest-70549
accept Low Hanging Fruit##70549 |goto Ohn'ahran Plains/0 62.89,57.66
|tip You will accept this quest automatically.
step
extraaction Simple Shot##388556
clicknpc Honey Plum##195601+
|tip They look like golden fruit hanging from the trees around this area.
kill Gorging Stagbeetle##195709+
|tip They will drop Honey Plums upon death.
Collect #25# Honey Plums |q 70549/2 |goto 62.89,57.66
|next "Dragon_World_Quest_Emissaries"
step
label quest-74838
accept Lyver##74838 |goto Ohn'ahran Plains/0 73.38,67.99
|tip You will accept this quest automatically.
step
clicknpc Lyver##201858
Defeat Lyver in a Pet Battle |q 74838/1 |goto 73.38,67.99
|next "Dragon_World_Quest_Emissaries"
step
label quest-70067
accept A Message to the Nokhud##70067 |goto Ohn'ahran Plains/0 35.00,38.81
|tip You will accept this quest automatically.
step
Kill Nokhud enemies around this area
Disrupt the Nokhud Forces |q 70067/1 |goto 35.00,38.81
|next "Dragon_World_Quest_Emissaries"
step
label quest-70780
accept Ohn'ahran Banners##70780 |goto Ohn'ahran Plains/0 83.67,37.55
|tip You will accept this quest automatically.
step
Plant #10# Banners |q 70780/1 |goto 83.67,37.55
|tip Use your dragonriding abilities to fly through 10 golden rings.
|tip You can find them on cliffs and ledges around this area.
|tip They appear on your minimap as yellow dots.
|next "Dragon_World_Quest_Emissaries"
step
label quest-74837
accept Paws of Thunder##74837 |goto Ohn'ahran Plains/0 36.16,52.56
|tip You will accept this quest automatically.
step
talk Vikshi Thunderpaw##201878
Choose _"Begin pet battle."_
Defeat Vikshi Thunderpaw in a Pet Battle |q 74837/1 |goto 36.16,52.56
|next "Dragon_World_Quest_Emissaries"
step
label quest-70074
accept Plunder the Sundered##70074 |goto Ohn'ahran Plains/0 44.01,64.13
|tip You will accept this quest automatically.
stickystart "Slay_Mind_Controlled_Gorlocs_70074"
step
click Dragonscale Expedition Supplies##379273+
|tip They look like broken crates on the ground around this area.
collect 6 Dragonscale Expedition Supplies##198448 |q 70074/1 |goto 44.01,64.13
step
label "Slay_Mind_Controlled_Gorlocs_70074"
Kill enemies around this area
Slay #8# Mind Controlled Gorlocs |q 70074/2 |goto 44.01,64.13
|next "Dragon_World_Quest_Emissaries"
step
label quest-70646
accept Pressure Valve##70646 |goto Ohn'ahran Plains/0 78.88,77.56
|tip You will accept this quest automatically.
step
Kill enemies around this area
extraaction Water Pressure!##387163
|tip Use the Water Pressure! ability that appears to do extra damage Sulfuric Ragers.
|tip Killing a Hissing Springsoul will grant you the Water Pressure! ability.
extraaction Steam Pressure!##387008
|tip Use the Steam Pressure! ability that appears to do extra damage Hissing Springsouls.
|tip Killing Sulfuric Rager will grant you the Steam Pressure! ability.
Relieve the Elemental Pressure |q 70646/1 |goto 78.88,77.56
|next "Dragon_World_Quest_Emissaries"
step
label quest-70209
accept Quacks and Attacks##70209 |goto Ohn'ahran Plains/0 43.74,33.70
|tip You will accept this quest automatically.
|tip You must be in War Mode to accept this quest.
step
Kill enemy players around this area
kill Feather Ruffling Duck##194909+
Subdue Ducks or Kill Players |q 70209/1 |goto 43.74,33.70
|next "Dragon_World_Quest_Emissaries"
step
label quest-69929
accept Strunraan##69929 |goto Ohn'ahran Plains/0 83.30,77.53
|tip You will accept this quest automatically.
step
kill Strunraan##193534 |q 69929/1 |goto 83.30,77.53
_EVERYONE:_ |grouprole EVERYONE
|tip "Stunraan's Tempest" will increase attack and cast speed significantly, but you should avoid standing near other players with it. |grouprole EVERYONE
|tip "Thunder Vortex" and "Arc Expulsion" will deal damage and knock you back. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Targets of "Overcharge" will need heavy healing. |grouprole HEALER
|tip Anyone near Overcharged players will take even more damage. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Move out of "Shock Water" to avoid heavy damage. |grouprole TANK
|next "Dragon_World_Quest_Emissaries"
step
label quest-74501
accept Suffusion Camp: Cinderwind##74501 |goto Ohn'ahran Plains/0 79.72,75.48
|tip You will accept this quest automatically.
|polish
stickystart "Collect_Ward_of_Igira"
stickystart "Collect_Ward_of_Fyrakk"
step
label "Collect_Ward_of_Igira"
Kill enemies around this area
collect 5 Ward of Igira##203430 |goto 73.88,71.44 |q 74501
step
click Suffusion Crucible
|tip You can find several more nearby.
|tip They appear on your minimap as yellow dots.
Loot the Suffusion Crucible |q 74501/1 |goto 73.88,71.20
|tip Looting the crucible will cause a pair of elite enemies to spawn and attack you.
|tip Clear the area and get some help to kill them.
step
Slay the Crucible Guardian |q 74501/2 |goto 73.88,71.20
step
label "Collect_Ward_of_Fyrakk"
Kill enemies around this area
|tip More powerful elite enemies will sometimes drop wards.
|tip You can also acquire them looting Suffusion Crucibles.
collect 5 Ward of Fyrakk##203683 |goto 73.88,71.44 |q 74501
step
click Suffusion Mold
Loot the Suffusion Mold |q 74501/3 |goto 74.27,72.28
|tip Looting the mold will cause a pair of elite enemies to spawn and attack you.
|tip Clear the area and get some help to kill them.
step
kill Forgemaster Kraglin##201625 |q 74501/4 |goto 74.24,72.15
|next "Dragon_World_Quest_Emissaries"
step
label quest-70649
accept Swab Swog##70649 |goto Ohn'ahran Plains/0 79.72,75.48
|tip You will accept this quest automatically.
step
clicknpc Brackish Hornswog##191604+
clicknpc Gargantuan Hornswog##191606+
|tip Kill them if they attack you.
Collect #12# Swab Sogs |q 70649/1 |goto 79.72,75.48
|next "Dragon_World_Quest_Emissaries"
step
label quest-70652
accept Take One Down, Pass It Around##70652 |goto Ohn'ahran Plains/0 25.18,32.37
|tip You will accept this quest automatically.
step
click Climbing Gear
Acquire the Climbing Gear |q 70652/1 |goto 25.18,32.37
step
click Handhold
Find a Handhold on the Cliff |q 70652/2 |goto 25.24,32.41
step
click Nokhud Spear##381190+
|tip Nokhud Spears are found next to handholds.
|tip Click handholds to move up the wall and excavate artifacts from the wall by clicking them.
Pry #8# Nokhud Spears from the Cliff Face |q 70652/3 |goto 24.67,33.84
|next "Dragon_World_Quest_Emissaries"
step
label quest-71140
accept Two and Two Together##71140 |goto Ohn'ahran Plains/0 61.96,41.59
|tip You will accept this quest automatically.
step
talk Bakhushek##197102
Choose _"Begin pet battle."_
Defeat Bakhushek in a Pet Battle |q 71140/1 |goto 61.96,41.59
|next "Dragon_World_Quest_Emissaries"
step
label quest-70176
accept Web Victims##70176 |goto Ohn'ahran Plains/0 43.49,47.92
|tip You will accept this quest automatically.
step
Enter the cave |goto 43.60,48.06 < 7 |walk
clicknpc Webbed Tuskarr##194453+
|tip They look like large coocoons inside and outside the cave.
Free #6# Victims |q 70176/1 |goto
|next "Dragon_World_Quest_Emissaries"
step
label quest-72058
accept What Hoof We Here: Tarolekk##72058 |goto Ohn'ahran Plains/0 34.99,38.67
|tip You will accept this quest automatically.
|tip You must be in War Mode to accept this quest.
step
kill Tarolekk, the Stomper##197650 |q 72058/1 |goto 34.99,38.67
|next "Dragon_World_Quest_Emissaries"
step
label quest-70638
accept Wind Breaker##70638 |goto Ohn'ahran Plains/0 74.07,71.46
|tip You will accept this quest automatically.
stickystart "Kill_Windfiends_70638"
step
kill 4 Unleashed Storm##195846 |q 70638/1 |goto 74.07,71.46
step
label "Kill_Windfiends_70638"
kill 10 Windfiend##195844 |q 70638/2 |goto 74.07,71.46
|next "Dragon_World_Quest_Emissaries"
step
label quest-63520
accept Winging It##63520
|tip You will accept this quest automatically.
|polish
step
clicknpc Whistlewind Balloon##176889+
Collect #20# Whistlewind Balloons |q 63520/1
|next "Dragon_World_Quest_Emissaries"
step
label "Dragon_World_Quest_Emissaries"
#include "Dragon_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Daily Guides\\Dragonflight (60-70)\\Thaldraszus World Quests",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing world quests in Thaldraszus.",
condition_suggested=function() return completedq(66221) end,
startlevel=60,
worldquestzone={2025,2085},
patch='100001',
},[[
step
label "Choose_World_Quest"
#include "Dragon_Choose_World_Quests"
step
label quest-70160
accept Alchemical Thesis Defense##70160 |goto Thaldraszus/0 62.94,36.69
|tip You will accept this quest automatically.
step
click Morally Questionable Sample
Sample the Alchemical Concoction |q 70160/1 |goto 62.94,36.69
step
kill 5 Evil You##194313 |q 70160/2 |goto 62.94,36.69
|tip Run around and step on them.
|next "Dragon_World_Quest_Emissaries"
step
label quest-70654
accept Are You Kitten Me?##70654 |goto Thaldraszus/0 59.79,76.89
|tip You will accept this quest automatically.
step
click Climbing Gear
Acquire the Climbing Gear |q 70654/1 |goto 59.79,76.89
step
click Handhold
Find a Handhold on the Cliff |q 70654/2 |goto 59.82,76.89
step
click Time-Lost Kitten+
|tip They look like small kittens in bubbles next to handholds on the wall..
|tip Click handholds to move up the wall and excavate artifacts from the wall by clicking them.
|tip Avoid floating orbs that lower your grip.
Release #8# Time-Lost Kittens from Time Bubbles |q 70654/3 |goto 60.11,76.76
|next "Dragon_World_Quest_Emissaries"
step
label quest-70442
accept Banquet Battle##70442 |goto Thaldraszus/0 58.11,42.72
|tip You will accept this quest automatically.
step
click Banquet Table
Flip the Table |q 70442/1 |goto 58.11,42.72
step
Splatter #10# Students |q 70442/2 |goto 58.31,42.81
|tip Use the "Throw Conjured Boar Candy" ability on your vehicle bar.
step
Splatter Unshielded Professor Intinosa |q 70442/3 |goto 58.52,43.12
|tip Use the "Throw Conjured Boar Candy" ability on your vehicle bar.
|tip Don't throw it when her shield bubble is up.
|next "Dragon_World_Quest_Emissaries"
step
label quest-70369
accept Blasting the Past##70369
|tip You will accept this quest automatically.
|polish
step
Use the Timewalker Scroll |q 70369/1
stickystart "Slay_Time-Lost_Enemies_70369"
stickystart "Slay_Time-Lost_Champions_70369"
step
kill Qu'ruk the Time-Lost##195322 |q 70369/4
step
label "Slay_Time-Lost_Enemies_70369"
Kill Time-Lost enemies around this area
Slay #14# Time-Lost Enemies |q 70369/2
step
label "Slay_Time-Lost_Champions_70369"
Kill Time-Lost enemies around this area
Slay #2# Time-Lost Champions |q 70369/3
|next "Dragon_World_Quest_Emissaries"
step
label quest-71225
accept Blown Through Wind: Rhuzast##71225 |goto Thaldraszus/0 54.22,39.36
|tip You will accept this quest automatically.
|tip You must be in War Mode to accept this quest.
step
kill Rhuzast the Tempest##197409 |q 71225/1 |goto 54.22,39.36
|next "Dragon_World_Quest_Emissaries"
step
label quest-70073
accept Bluefeather Banners##70073 |goto Thaldraszus/0 45.83,70.72
|tip You will accept this quest automatically.
step
Plant #10# Banners |q 70073/1 |goto 45.83,70.72
|tip Use your dragonriding abilities to fly through 10 golden rings.
|tip You can find them on cliffs and ledges around this area.
|tip They appear on your minimap as yellow dots.
|next "Dragon_World_Quest_Emissaries"
step
label quest-70699
accept Cataloging Thaldraszus##70699 |goto Thaldraszus/0 51.17,42.12
|tip You will accept this quest automatically.
step
clicknpc Cataloger's Balloon##195994
Ride the Cataloger's Balloon |q 70699/1 |goto 51.17,42.12
step
Take Pictures of Wildlife |q 70699/2
|tip Use the "Catalog" ability on your vehicle bar to take puctures of the wildlife.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
|next "Dragon_World_Quest_Emissaries"
step
label quest-70110
accept Cataloging Thaldraszus##70110 |goto Thaldraszus/0 38.42,68.99
|tip You will accept this quest automatically.
step
clicknpc Cataloger's Raft##185085
|tip Use the "Catalog" ability on your vehicle bar to take puctures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
Ride the Cataloger's Raft |q 70110/1 |goto 38.42,68.99
step
Take Pictures of Wildlife |q 70110/2
|tip Use the "Catalog" ability on your vehicle bar to take puctures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
|next "Dragon_World_Quest_Emissaries"
step
label quest-71160
accept Depth Charge##71160 |goto Thaldraszus/0 49.54,58.77
|tip You will accept this quest automatically.
step
Kill enemies around this area
use the Deepwater Lure##200561
|tip Use it on the corpses of elementals.
Charge the Deepwater Lure |q 71160/1 |goto 49.54,58.77
|next "Dragon_World_Quest_Emissaries"
step
label quest-70434
accept Dragonrider Racing - Academy Ascent##70434 |goto Thaldraszus/0 60.29,41.59
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##193951
Tell him _"I'd like to try the course."_
Prepare for the Race |havebuff spell:382717 |goto 60.29,41.59 |q 70434
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff spell:369968 |goto 60.32,41.71 |q 70434
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 70434/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "Dragon_World_Quest_Emissaries"
step
label quest-70433
accept Dragonrider Racing - Cliffside Circuit##70433 |goto Thaldraszus/0 37.65,48.93
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##193911
|tip Inside the tower.
Tell him _"I'd like to try the course."_
Prepare for the Race |havebuff spell:382632 |goto 37.65,48.93 |q 70433
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff spell:369968 |goto 37.71,48.87 |q 70433
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 70433/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "Dragon_World_Quest_Emissaries"
step
label quest-70436
accept Dragonrider Racing - Caverns Criss-Cross##70436 |goto Thaldraszus/0 58.06,33.62
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##194372
Tell him _"I'd like to try the course."_
Prepare for the Race |havebuff spell:383596 |goto 58.06,33.62 |q 70436
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff spell:369968 |goto 57.95,33.58 |q 70436
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 70436/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "Dragon_World_Quest_Emissaries"
step
label quest-70431
accept Dragonrider Racing - Flowing Forest Flight##70431 |goto Thaldraszus/0 57.77,75.01
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##192555
Tell him _"I'd like to try the course."_
Prepare for the Race |havebuff spell:377692 |goto 57.77,75.01 |q 70431
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff spell:369968 |goto 57.69,75.03 |q 70431
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 70431/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "Dragon_World_Quest_Emissaries"
step
label quest-70435
accept Dragonrider Racing - Garden Gallivant##70435 |goto Thaldraszus/0 39.50,76.19
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##194348
Tell him _"I'd like to try the course."_
Prepare for the Race |havebuff spell:383473 |goto 39.50,76.19 |q 70435
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff spell:369968 |goto 39.37,76.22 |q 70435
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 70435/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "Dragon_World_Quest_Emissaries"
step
label quest-70432
accept Dragonrider Racing - Passage Pathway##70432 |goto Thaldraszus/0 57.24,66.90
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##193651
Tell him _"I'd like to try the course."_
Prepare for the Race |havebuff spell:381978 |goto 57.24,66.90 |q 70432
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff spell:369968 |goto 57.30,66.95 |q 70432
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 70432/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "Dragon_World_Quest_Emissaries"
step
label quest-69949
accept Extermination##69949 |goto Thaldraszus/0 59.95,30.36
|tip You will accept this quest automatically.
|tip You must be in War Mode to accept this quest.
step
Kill enemies around this area
extraaction Pest Fogger##383079
|tip Throw it on enemies or players to damage them and slow them down.
Exterminate Pests or Kill Players |q 69949/1 |goto 59.95,30.36
|next "Dragon_World_Quest_Emissaries"
step
label quest-70224
accept Fetid Threat##70224 |goto Thaldraszus/0 56.17,28.98
|tip You will accept this quest automatically.
step
click Weapon Rack##380511+
Kill enemies around this area
Disrupt the Encampment |q 70224/1 |goto 56.17,28.98
|next "Dragon_World_Quest_Emissaries"
step
label quest-72029
accept Fishing Frenzy!##72029 |goto Thaldraszus/0 56.93,65.22
|tip You will accept this quest automatically.
step
extraaction Harpoon##377081
|tip Use it on Spawning Threshers in the water along the shore.
|tip They appear on your minimap as yellow dots.
extraaction Pull Hard##374599
|tip After Harpooning them, use the Pull Hard ability to pull them onto the shore.
kill Spawning Thresher##194342+
|tip They will die when you pull them onto the shore.
collect 12 Fresh Fish Steak##198350 |q 72029/1 |goto 56.93,65.22
|next "Dragon_World_Quest_Emissaries"
step
label quest-71181
accept Forgotten Grotto Relics##71181 |goto Thaldraszus/0 57.31,35.19
|tip You will accept this quest automatically.
step
Enter the cave |goto 57.31,35.19 < 15 |walk
Click Titan objects around this area
|tip Click the various small Titan pieces on the ground inside the cave.
|tip Digging spots have a chance to have Titan Relics or enemies hidden inside.
Collect Titan Relics |q 71181/1 |goto 58.10,36.98
|next "Dragon_World_Quest_Emissaries"
step
label quest-70602
accept History Lesson: War of the Shifting Sands##70602 |goto Thaldraszus/0 58.23,35.53
|tip At the top of the tower.
|tip You will accept this quest automatically.
stickystart "Slay_Minions_of_the_Past_70602"
step
Kill enemies that appear in waves
|tip Killing the larger mobs will cause another wave to spawn shortly after.
Engage #3# Chapters of History |q 70602/1 |goto 58.23,35.53
step
label "Slay_Minions_of_the_Past_70602"
kill Silithid Guardian##195652+
Slay #10# Minions of the Past |q 70602/2 |goto 58.23,35.53
|next "Dragon_World_Quest_Emissaries"
step
label quest-71205
accept Hydro Tuskarr##71205 |goto Thaldraszus/0 54.60,38.31
|tip You will accept this quest automatically.
step
click Iskaara Watergliders
extraaction Iskaara Watergliders##390876
|tip This will allow you to skate across the water.
|tip This method tends to be faster.
click Iskaara Waterwalkers
extraaction Iskaara Waterwalkers##396729
|tip This will allow you to walk normally across the water.
Choose Watergliders from the Instructor |q 71205/1 |goto 54.60,38.31
step
extraaction Throw Net##390883
|tip Toss the not onto the fish in the water.
|tip Use your gliders or walkers if they wear off.
'|extraaction Iskaara Watergliders##390876
'|extraaction Iskaara Waterwalkers##396729
Catch #15# Eclipse Sturgeon |q 71205/2 |goto 54.12,40.04
|next "Dragon_World_Quest_Emissaries"
step
label quest-69928
click Portal to the Primalist Future |goto Thaldraszus/0 59.83,82.24
Enter the Primalist Tomorrow |goto Primalist Tomorrow/0 61.85,51.47 < 1000 |c |noway |q 69928 |future
step
accept Liskanoth##69928 |goto 54.65,69.37
|tip You will accept this quest automatically.
step
kill Liskanoth##193533 |q 69928/1 |goto 54.65,69.37
_EVERYONE:_ |grouprole EVERYONE
|tip Following "Glacial Storm," patches of frozen ground will be left behind that reduce movement speed if you enter them. |grouprole EVERYONE
|tip Avoid standing in front of Liskanoth when "Deep Freeze" occurs.
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Binding Ice quickly to free rooted players. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip "Deep Freeze" will likely deal heavy damage to at least a few raid members. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip "Chilling Breath" deals heavy damage and leaves a movement debuff on you. |grouprole TANK
|next "Dragon_World_Quest_Emissaries"
step
label quest-70656
accept Not Mushroom For Error##70656 |goto Thaldraszus/0 57.02,34.61
|tip You will accept this quest automatically.
step
click Climbing Gear
Acquire the Climbing Gear |q 70656/1 |goto 57.02,34.61
step
click Handhold
Find a Handhold on the Cliff |q 70656/2 |goto 56.88,34.58
step
click Dragonwing Mushroom+
|tip They look like large flat mushrooms on the wall next to handholds.
|tip Click handholds to move up the wall and excavate artifacts from the wall by clicking them.
|tip Avoid Annoying Proto-Whelps that lower your grip.
Collect #8# Mushrooms |q 70656/3 |goto 57.08,34.51
|next "Dragon_World_Quest_Emissaries"
step
label quest-71166
accept The Oldest Dragonfly##71166 |goto Thaldraszus/0 39.46,73.54
|tip You will accept this quest automatically.
step
clicknpc Enyobon##197336
Defeat Enyobon in a Pet Battle |q 71166/1 |goto 39.46,73.54
|next "Dragon_World_Quest_Emissaries"
step
label quest-71156
accept Rebel Concerns##71156 |goto Thaldraszus/0 45.00,51.23
|tip You will accept this quest automatically.
step
click Weapon Rack+
click Rebel Cage+
|tip Click them if you collect Scalewatch Cage Keys.
Kill enemies around this area
Disrupt the Encampment |q 71156/1 |goto 45.00,51.23
|next "Dragon_World_Quest_Emissaries"
step
label quest-70066
accept Reclaiming the Hold##70066 |goto Thaldraszus/0 58.65,58.58
|tip You will accept this quest automatically.
step
Kill enemies around this area
Eliminate the Forces |q 70066/1 |goto 58.65,58.58
|next "Dragon_World_Quest_Emissaries"
step
label quest-74794
accept Right Twice a Day##74794 |goto Thaldraszus/0 60.64,59.74
|tip You will accept this quest automatically.
|tip On top of the platform.
step
clicknpc Malfunctioning Matrix##202452
|tip On top of the platform.
Defeat the Malfunctioning Matrix in a Pet Battle |q 74794/1 |goto 60.64,59.74
|next "Dragon_World_Quest_Emissaries"
step
label quest-70934
accept Salamanther's Embrace##70934 |goto Thaldraszus/0 54.57,39.25
|tip You will accept this quest automatically.
step
kill Glistening Salamanther##195074+
extraaction Direct Apprentice##393261
|tip Use it on the corpses to have your apprentice skin them.
Collect #12# Glistening Salamanther Hides |q 70934/1 |goto 54.57,39.25
|next "Dragon_World_Quest_Emissaries"
step
label quest-71164
accept Stolen Bandages##71164 |goto Thaldraszus/0 45.09,58.95
|tip You will accept this quest automatically.
step
Enter the cave |goto 45.09,58.95 < 10 |walk
click Medical Supplies##382043+
|tip They look like small medical crates inside the cave.
Collect #8# Medical Supplies |q 71164/1 |goto 44.23,57.85
|next "Dragon_World_Quest_Emissaries"
step
label quest-74378
click Portal to the Primalist Future |goto Thaldraszus/0 59.83,82.24
Enter the Primalist Tomorrow |goto Primalist Tomorrow/0 61.85,51.47 < 1000 |c |noway |q 74378 |future
step
Complete "The Storm's Fury" Event |q 74378 |future |goto 46.81,37.39
|tip Clear the four portals on the map.
|tip Kill primalist enemies around each one until the portal shuts down.
|tip These enemies are elite and may require a group.
|tip Stand next to an orange Heat Source on the ground when you begin taking cold damage.
|tip When the portals are shut down, kill the Primalist monster with your group.
|next "Dragon_World_Quest_Emissaries"
step
label quest-70661
accept Supplies on High##70661 |goto Thaldraszus/0 44.59,50.15
|tip You will accept this quest automatically.
step
click Climbing Gear
Acquire the Climbing Gear |q 70661/1 |goto 44.59,50.15
step
click Handhold
Find a Handhold on the Cliff |q 70661/2 |goto 44.59,50.29
step
clicknpc Sundered Supply Cache##196098+
|tip They look like large wooden crates on the wall next to handholds.
|tip Click handholds to move up the wall and excavate caches from the wall by clicking them.
|tip Avoid Annoying Proto-Whelps that lower your grip.
Collect #8# Sundered Supply Caches |q 70661/3 |goto 44.45,51.54
|next "Dragon_World_Quest_Emissaries"
step
label quest-71154
accept Talon Toss: Shooting 101##71154 |goto Thaldraszus/0 60.91,27.23
|tip High up on the top platforms.
|tip You will accept this quest automatically.
step
extraaction Throw##385265
|tip Use your dragonriding abilities to pick up glowing balls floating above the platforms..
|tip Then throw them through a ring while facing it.
Score #12# Goals |q 71154/1 |goto 60.91,27.23
|next "Dragon_World_Quest_Emissaries"
step
label quest-70111
accept Temple Treasures##70111 |goto Thaldraszus/0 49.62,58.93
|tip You will accept this quest automatically.
step
click Titan Temple Relic##379239+
collect 8 Titan Temple Relic##198443 |q 70111/1 |goto 49.62,58.93
|next "Dragon_World_Quest_Emissaries"
step
label quest-70057
accept Thieving Tarasek##70057 |goto Thaldraszus/0 56.82,67.56
|tip You will accept this quest automatically.
step
Kill Embertooth enemies around this area
|tip Inside and outside the cave.
collect 10 Stolen Dragonscale Supplies##198349 |q 70057/1 |goto 56.82,67.56
|next "Dragon_World_Quest_Emissaries"
step
label quest-70072
accept Time-Lost and Found##70072 |goto Thaldraszus/0 57.96,81.43
|tip You will accept this quest automatically.
stickystart "Collect_Time-Lost_Possessions"
step
click Time-Lost Relic##380483+
|tip They look like scattered supplies and broken crates on the ground around this area.
collect 8 Time-Lost Relic##198564 |q 70072/1 |goto 57.96,81.43
step
label "Collect_Time-Lost_Possessions"
Kill enemies around this area
collect 8 Time-Lost Possession##198597 |q 70072/2 |goto 57.96,81.43
|next "Dragon_World_Quest_Emissaries"
step
label quest-71180
accept You Have to Start Somewhere##71180 |goto Thaldraszus/0 56.27,49.24
|tip You will accept this quest automatically.
step
talk Setimothes##197350
Choose _"Begin pet battle."_
Defeat Setimothes in a Pet Battle |q 71180/1 |goto 56.27,49.24
|next "Dragon_World_Quest_Emissaries"
step
label "Dragon_World_Quest_Emissaries"
#include "Dragon_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Daily Guides\\Dragonflight (60-70)\\The Waking Shores World Quests",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing world quests in The Waking Shores.",
condition_suggested=function() return completedq(66221) end,
startlevel=60,
worldquestzone={2022},
patch='100001',
},[[
step
label "Choose_World_Quest"
#include "Dragon_Choose_World_Quests"
step
label quest-66419
accept Allegiance To One##66419 |goto The Waking Shores/0 24.38,55.69
|tip On the balcony.
|tip You will accept this quest automatically.
step
talk Sabellian##185894
_Or_
talk Wrathion##187495
Tell them _"I swear to support your current efforts._"
|tip On the balcony.
|tip You will unlock an additional quest to gain reputation with whichever one you choose.
Show Support to Wrathion or Sabellian |q 66419/1 |goto 24.38,55.69
|next "Dragon_World_Quest_Emissaries"
step
label quest-70636
accept Ancient Protodragons##70636 |goto The Waking Shores/0 39.87,85.40
|tip You will accept this quest automatically.
step
kill Grod the Ancient##196385 |goto 43.59,83.04
kill Frizkon the Ancient##196380 |goto 39.43,85.10
kill Khakad the Ancient##196379 |goto 40.93,80.50
kill Mellg the Ancient##196381 |goto 43.53,85.96
kill Quilmo the Ancient##196386 |goto 40.63,92.91
kill Thornmu the Ancient##196382 |goto 36.52,87.89
|tip Various named ancient protodrakes can be found nesting in high areas.
|tip They appear on your minimap as yellow dots.
|tip Look for them up on cliffs.
|tip These enemies are elite and may require a group.
Slay #3# Ancient Protodragons |q 70636/1
|next "Dragon_World_Quest_Emissaries"
step
label quest-69930
accept Basrikron##69930 |goto The Waking Shores/0 55.09,77.77
|tip You will accept this quest automatically.
step
kill Basrikron##193535 |q 69930/1 |goto 55.09,77.77
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid standing near Fractured Spires. |grouprole EVERYONE
|tip Fractured Spires and elementals will explode during Sundering Crash causing damage and a knockback. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Kill elementals quickly when they spawn. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip The tank will take heavy damage and increased damage after each Shale Breath. |grouprole HEALER
|tip All players will need healing after Sundering Crash. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Swap threat before the debuff stacks from Shale Breath become too much for you to manage. |grouprole TANK
|next "Dragon_World_Quest_Emissaries"
step
label quest-66902
accept Bee-Gone##66902 |goto The Waking Shores/0 56.68,65.04
|tip You will accept this quest automatically.
stickystart "Bag_Bothersome_Bees_66902"
step
click Overgrown Shrub##377098+
|tip They look like large bushes around the tree.
kill Over-Pollinated Lasher##196495+
|tip They will attack you after clicking a shrub.
Prune #5# Overgrown Shrubs |q 66902/1 |goto 56.68,65.04
step
label "Bag_Bothersome_Bees_66902"
use the Smoke Diffuser##193064
clicknpc Bothersome Bee##190543+
|tip Use it on Bothersome Bees.
|tip They look like bees flying above the ground around this area.
|tip It will take a few seconds for them to be captured, so don't kill them.
|tip Click them when they become friendly to bag them.
Bag #8# Bothersome Bees |q 66902/2 |goto 56.68,65.04
step
extraaction Bee Free!##374670
Relocate the Bothersome Bees |q 66902/3 |goto 56.99,70.95
|next "Dragon_World_Quest_Emissaries"
step
label quest-67010
accept Boiling Over##67010 |goto The Waking Shores/0 48.70,45.91
|tip You will accept this quest automatically.
stickystart "Slay_Elementals_67010"
step
kill Zhurtan the Riverboiler##188687 |q 67010/1 |goto 48.60,45.97
|tip This enemy is elite and may require a group.
step
label "Slay_Elementals_67010"
Kill enemies around this area
Slay #8# Elementals |q 67010/2 |goto 48.70,45.91
|next "Dragon_World_Quest_Emissaries"
step
label quest-66934
accept Break the Breaker##66934 |goto The Waking Shores/0 66.28,26.18
|tip You will accept this quest automatically.
stickystart "Destroy_Qalashi_Supplies_66934"
stickystart "Kill_Qalashi_Drakeflayers_66934"
step
Enter the tent |goto 66.73,25.72 < 10 |walk
kill Gragza the Dragon-Breaker##191507 |q 66934/1 |goto 66.75,25.69
|tip Downstairs inside the tent.
step
label "Destroy_Qalashi_Supplies_66934"
click Qalashi Supplies##381128+
|tip They look like groups of pots on the ground around this area.
Destroy #5# Qalashi Supplies |q 66934/3 |goto 66.28,26.18
step
label "Kill_Qalashi_Drakeflayers_66934"
kill 4 Qalashi Drakeflayer##192341 |q 66934/2 |goto 66.28,26.18
|next "Dragon_World_Quest_Emissaries"
step
label quest-66070
accept Brightblade's Bones##66070 |goto The Waking Shores/0 22.87,95.14
|tip You will accept this quest automatically.
step
click Climbing Gear
Acquire the Climbing Gear |q 66070/1 |goto 22.87,95.14
step
click Handhold
Find a Handhold on the Cliff |q 66070/2 |goto 22.88,95.37
step
collect Lost Banana##191951 |n
|tip Look for the lost banana along th way to Lil' Poshy.
|tip It's typically hidden gehind vines on the wall.
talk Lil' Poshy##188912
|tip Make your way up the left side.
|tip Avoid monkeys that throw bannanas at you which loosen your grip.
|tip Wait a moment at the last handhold before a ledge and when your grip expires you'll hop up.
|tip Drop down onto the branch from the rock with two handholds behind it.
|tip The waterfall will also lower your grip while you are in it.
Rescue Cymre's Pet Marmoset |q 66070/4 |goto 22.54,95.43
step
click Intact Dragon Bone+
|tip They look like large dragon bones on the wall next to handholds.
Excavate #6# Dragon Bones in the Cliff Face |q 66070/3 |goto 22.55,95.47
|next "Dragon_World_Quest_Emissaries"
step
label quest-70782
accept Canopy Banners##70782 |goto The Waking Shores/0 23.14,88.54
|tip You will accept this quest automatically.
step
Plant #10# Banners |q 70782/1 |goto 23.14,88.54
|tip Use your dragonriding abilities to fly through 10 golden rings.
|tip You can find them on cliffs and ledges around this area.
|tip They appear on your minimap as yellow dots.
|next "Dragon_World_Quest_Emissaries"
step
label quest-67062
accept Cascading Conflict##67062 |goto The Waking Shores/0 48.16,52.54
|tip You will accept this quest automatically.
step
Kill enemies around this area
Slay the Primalist Forces |q 67062/1 |goto 48.16,52.54
|next "Dragon_World_Quest_Emissaries"
step
label quest-70075
accept Cataloging the Waking Shores##70075 |goto The Waking Shores/0 64.36,59.22
|tip You will accept this quest automatically.
step
clicknpc Cataloger's Raft##195713
|tip Use the "Catalog" ability on your vehicle bar to take puctures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
Ride the Cataloger's Raft |q 70075/1 |goto 64.36,59.22
step
Take Pictures of Wildlife |q 70075/2
|tip Use the "Catalog" ability on your vehicle bar to take puctures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
|next "Dragon_World_Quest_Emissaries"
step
label quest-70632
accept Cataloging the Waking Shores##70632 |goto The Waking Shores/0 49.98,68.51
|tip You will accept this quest automatically.
step
clicknpc Cataloger's Raft##195713
|tip Use the "Catalog" ability on your vehicle bar to take puctures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
Ride the Cataloger's Raft |q 70632/1 |goto 49.98,68.51
step
Take Pictures of Wildlife |q 70632/2
|tip Use the "Catalog" ability on your vehicle bar to take puctures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
|next "Dragon_World_Quest_Emissaries"
step
label quest-70502
accept Clearing the Skies##70502 |goto The Waking Shores/0 55.15,57.40
|tip You will accept this quest automatically.
step
Slay #50# Insects |q 70502/1 |goto 55.15,57.40
|tip Fly through insects in the air.
|tip Avoid purple orbs that stall your flight.
|next "Dragon_World_Quest_Emissaries"
step
label quest-70415
accept Dragonrider Racing - Apex Canopy River Run##70415 |goto The Waking Shores/0 23.26,84.30
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##190551
Tell him _"I'd like to try the course."_
Prepare for the Race |havebuff spell:374244 |goto 23.26,84.30 |q 70415
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff spell:369968 |goto 23.25,84.22 |q 70415
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 70415/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "Dragon_World_Quest_Emissaries"
step
label quest-70413
accept Dragonrider Racing - Emberflow Flight##70413 |goto The Waking Shores/0 41.97,67.30
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##190519
Tell him _"I'd like to try the course."_
Prepare for the Race |havebuff spell:374182 |goto 41.97,67.30 |q 70413
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff spell:369968 |goto 41.93,67.43 |q 70413
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 70413/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "Dragon_World_Quest_Emissaries"
step
label quest-70410
accept Dragonrider Racing - Flashfrost Flyover##70410 |goto The Waking Shores/0 62.77,74.00
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##190326
Tell him _"I'd like to try the course."_
Prepare for the Race |havebuff spell:373851 |goto 62.77,74.00 |q 70410
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff spell:369968 |goto 62.84,74.19 |q 70410
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 70410/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "Dragon_World_Quest_Emissaries"
step
label quest-70416
accept Dragonrider Racing - Uktulut Coaster##70416 |goto The Waking Shores/0 55.45,41.13
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##190667
Tell him _"I'd like to try the course."_
Prepare for the Race |havebuff spell:374412 |goto 55.45,41.13 |q 70416
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff spell:369968 |goto 55.38,41.04 |q 70416
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 70416/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "Dragon_World_Quest_Emissaries"
step
label quest-70418
accept Dragonrider Racing - Wild Preserve Circuit##70418 |goto The Waking Shores/0 42.59,94.45
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##190503
Tell him _"I'd like to try the course."_
Prepare for the Race |havebuff spell:374143 |goto 42.59,94.45 |q 70418
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff spell:369968 |goto 42.44,94.68 |q 70418
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 70418/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "Dragon_World_Quest_Emissaries"
step
label quest-70412
accept Dragonrider Racing - Wild Preserve Slalom##70412 |goto The Waking Shores/0 47.01,85.58
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##190473
Tell him _"I'd like to try the course."_
Prepare for the Race |havebuff spell:374088 |goto 47.01,85.58 |q 70412
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff spell:369968 |goto 46.94,85.78 |q 70412
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 70412/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "Dragon_World_Quest_Emissaries"
step
label quest-70382
accept Dragonrider Racing - Ruby Lifeshrine Loop##70382 |goto The Waking Shores/0 63.32,70.91
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##190123
Tell him _"I'd like to try the course."_
Prepare for the Race |havebuff spell:373495 |goto 63.32,70.91 |q 70382
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff spell:369968 |goto 63.31,70.78 |q 70382
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 70382/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "Dragon_World_Quest_Emissaries"
step
label quest-70417
accept Dragonrider Racing - Wingrest Roundabout##70417 |goto The Waking Shores/0 73.19,33.93
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##190753
Tell him _"I'd like to try the course."_
Prepare for the Race |havebuff spell:374592 |goto 73.19,33.93 |q 70417
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff spell:369968 |goto 73.29,33.98 |q 70417
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 70417/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "Dragon_World_Quest_Emissaries"
step
label quest-67113
accept Excavation Emergency##67113
|tip You will accept this quest automatically.
|polish
stickystart "Slay_Earth_Elementals_67113"
step
click Dragon Artifact##377941+
Collect #5# Dragon Artifacts |q 67113/2
step
label "Slay_Earth_Elementals_67113"
Kill enemies around this area
'|kill Displaced Earth##187393, Unsettled Rubble##189795, Earth Elementals##190976, Expelled Rubble##193950
Slay #15# Earth Elementals |q 67113/1
|next "Dragon_World_Quest_Emissaries"
step
label quest-69916
Enter the cave |goto The Waking Shores/0 38.72,94.36 < 15 |walk
accept Famous Frogs##69916 |goto The Waking Shores/0 38.26,95.66
|tip You will accept this quest automatically.
step
use the Captivating Cap##197928
|tip Attack Hornswog enemies and lower their health to 50% before using the item on them.
Make #5# Hornswogs Famous |q 69916/1 |goto 38.26,95.66
|next "Dragon_World_Quest_Emissaries"
step
label quest-69938
accept Fishing Frenzy!##69938 |goto The Waking Shores/0 66.56,74.10
|tip You will accept this quest automatically.
step
extraaction Harpoon##377081
|tip Use it on Spawning Threshers in the water along the shore.
|tip They appear on your minimap as yellow dots.
extraaction Pull Hard##374599
|tip After Harpooning them, use the Pull Hard ability to pull them onto the shore.
kill Spawning Thresher##194342+
|tip They will die when you pull them onto the shore.
collect 8 Fresh Fish Steak##198350 |q 69938/1 |goto 66.56,74.10
You can find more around [68.81,72.88]
|next "Dragon_World_Quest_Emissaries"
step
label quest-72030
accept Fishing Frenzy!##72030 |goto The Waking Shores/0 34.01,64.83
|tip You will accept this quest automatically.
step
extraaction Harpoon##377081
|tip Use it on Icy Blue Crabs in the water.
|tip They appear on your minimap as yellow dots.
extraaction Pull Hard##374599
|tip After Harpooning them, use the Pull Hard ability to pull them onto the shore.
kill Icy Blue Crab##197862+
|tip They will die when you pull them onto the shore.
|tip You can also just kill them.
collect 8 Cooked Caviar##200854 |q 72030/1 |goto 34.01,64.83
|next "Dragon_World_Quest_Emissaries"
step
label quest-67014
accept Gorlocs No More-locs##67014 |goto The Waking Shores/0 80.13,42.79
|tip You will accept this quest automatically.
stickystart "Slay_Gorlocs_67014"
step
kill Whirglgurgl##188860 |q 67014/2 |goto 79.79,39.82
step
kill Sogglmoggl##188859 |q 67014/3 |goto 80.06,44.03
step
label "Slay_Gorlocs_67014"
Kill enemies around this area
'|kill Soggymaw Wavebringer##187263, Windyfin Skybasher##187431, Windyfin Squallstalker##187433, Soggymaw Seabasher##187320, Windyfin Windbringer##187432, Soggymaw Crabtrapper##187971
Slay #15# Gorlocs |q 67014/1 |goto 80.13,42.79
|next "Dragon_World_Quest_Emissaries"
step
label quest-66989
accept Helpful Harvest##66989 |goto The Waking Shores/0 59.84,64.78
|tip You will accept this quest automatically.
step
Kill Bloom enemies around this area
'|kill Overzealous Bloom##191099, Lively Bloom##193670
Click objects around this area
|tip Click Fragrant Dragonflowers, Ripened Dragonfruits, and Lush Seed Pods.
use the Trusty Dragonkin Rake##193826
clicknpc Ripened Dragonfruit##191296+
|tip Use it to knock down Dragonfruits.
Tend the Garden |q 66989/1 |goto 59.84,64.78
|next "Dragon_World_Quest_Emissaries"
step
label quest-67026
accept Hold the Shrine##67026 |goto The Waking Shores/0 56.50,80.68
|tip You will accept this quest automatically.
step
Kill enemies around this area
Help hold back the Primalists |q 67026/1 |goto 56.50,80.68
|next "Dragon_World_Quest_Emissaries"
step
label quest-67009
accept Hornswog Hogwash##67009 |goto The Waking Shores/0 66.64,64.43
|tip You will accept this quest automatically.
stickystart "Discipline Hornswogs_67009"
step
use the Jar of Fireflies##193918
|tip Use it on Bullied Frogs around this area.
clicknpc Pacified Frog##190981+
|tip Click them quickly while they are distracted.
Collect #12# Pacified Frogs |q 67009/1 |goto 66.64,64.43
step
label "Discipline Hornswogs_67009"
Kill Hornswog enemies around this area
'|kill Rowdy Hornswog##190980, Bossy Hornswog##190998
Discipline #8# Hornswogs |q 67009/2 |goto 66.64,64.43
|next "Dragon_World_Quest_Emissaries"
step
label quest-67005
accept How to Train a Proto-Drake##67005 |goto The Waking Shores/0 39.74,91.49
|tip You will accept this quest automatically.
step
use the Proto-Drake Wrangler Rope##194818
Wrangle Proto-Drages or Slay Players |q 67005/1 |goto 39.74,91.49
|next "Dragon_World_Quest_Emissaries"
step
label quest-66133
accept Keys Of Loyalty##66133 |goto The Waking Shores/0 28.47,59.14
|tip You will accept this quest automatically.
stickystart "Collect_Key_Fragments_66133"
step
Kill enemies around this area
collect 3 Key Framing##193201 |q 66133 |goto 28.47,59.14
step
label "Collect_Key_Fragments_66133"
Kill enemies around this area
collect 30 Key Fragments##191251 |q 66133 |goto 28.47,59.14
step
use the Key Framing##193201
collect 1 Greater Obsidian Key##191255 |q 66133/1 |goto 28.47,59.14
step
talk Wrathion##187284
accept Greater Obsidian Key##72337 |goto 26.85,62.52
|only if haveq(66133) and not completedq(66133)
step
Deliver the Greater Obsidian Key to Wrathion |q 66133/2 |goto 26.85,62.52
|next "Dragon_World_Quest_Emissaries"
step
label quest-66805
accept Keys Of Loyalty##66805 |goto The Waking Shores/0 28.47,59.14
|tip You will accept this quest automatically.
stickystart "Collect_Key_Fragments_66805"
step
Kill enemies around this area
collect 3 Key Framing##193201 |q 66805 |goto 28.47,59.14
step
label "Collect_Key_Fragments_66805"
Kill enemies around this area
collect 30 Key Fragments##191251 |q 66805 |goto 28.47,59.14
step
use the Key Framing##193201
collect 1 Greater Obsidian Key##191255 |q 66805/1 |goto 28.47,59.14
step
talk Sabellian##187447
accept Greater Obsidian Key##72338 |goto 27.71,56.59
|only if haveq(66805) and not completedq(66805)
step
Deliver the Greater Obsidian Key to Sabellian |q 66805/2 |goto 27.71,56.59
|next "Dragon_World_Quest_Emissaries"
step
label quest-64768
accept Lightsprocket's Artifact Hunt##64768 |goto The Waking Shores/0 48.70,36.97
|tip You will accept this quest automatically.
step
click Climbing Gear
Acquire the Climbing Gear |q 64768/1 |goto 48.70,36.97
step
click Handhold
Find a Handhold on the Cliff |q 64768/2 |goto 48.67,36.20
step
click Artifact Fragment+
|tip Artifact Fragments are found next to handholds on the wall.
|tip Click handholds to move up the wall and excavate artifacts.
|tip Move quickly past monkeys that throw banananas which cause you to lose grip.
Excavate #6# Artifact Fragments in the Cliff Face |q 64768/3 |goto 48.51,36.29
|next "Dragon_World_Quest_Emissaries"
step
label quest-70150
accept Many Whelps, Handle It##70150 |goto The Waking Shores/0 61.07,71.44
|tip You will accept this quest automatically.
step
clicknpc Emerald Whelpling##194301
clicknpc Ruby Whelpling##193979
clicknpc Azure Whelpling##194304
|tip On the balcony overlooking the lifeshrine.
Choose a Whelpling |q 70150/1 |goto 61.07,71.44
stickystart "Kill_Agitated_Weedling_70150"
stickystart "Kill_Intrusive_Pupstinger_70150"
step
kill Relentless Gust##194159 |q 70150/4 |goto 61.37,71.85
|tip Use the abilities on your action bar to kill enemies.
step
label "Kill_Agitated_Weedling_70150"
kill 12 Agitated Weedling##193994 |q 70150/2 |goto 61.37,71.85
|tip Use the abilities on your action bar to kill enemies.
step
label "Kill_Intrusive_Pupstinger_70150"
kill 6 Intrusive Pupstinger##194142 |q 70150/3 |goto 61.37,71.85
|tip Use the abilities on your action bar to kill enemies.
step
Return to the Balcony |outvehicle |script VehicleExit()
|tip Use the "Exit" button on your vehicle bar.
|next "Dragon_World_Quest_Emissaries"
step
label quest-66833
accept Marmoni in Distress##66833 |goto The Waking Shores/0 79.21,29.07
|tip You will accept this quest automatically.
stickystart "Slay_Wild_Coast_Protodragons_66833"
step
use the Marmoni Rescue Pack##193212
|tip Use it on Distressed Marmoni hanging from tree branches.
clicknpc Distressed Marmoni##184861+
Rescue #5# Distressed Marmoni |q 66833/1 |goto 79.21,29.07
step
label "Slay_Wild_Coast_Protodragons_66833"
Kill Proto enemies around this area
Slay #15# Wild Coast Protodragons |q 66833/2 |goto 79.21,29.07
|next "Dragon_World_Quest_Emissaries"
step
label quest-70172
accept Mountain Mysteries##70172 |goto The Waking Shores/0 48.22,52.70
|tip You will accept this quest automatically.
step
click Astral Essence+
|tip They look like swirling blue flames hovering above the ground around this area.
Collect #6# Astral Essence |q 70172/1 |goto 48.22,52.70
|next "Dragon_World_Quest_Emissaries"
step
label quest-66896
accept Net Income##66896 |goto The Waking Shores/0 52.00,35.73
|tip You will accept this quest automatically.
stickystart "Kill_Agitated_Snapper_66896"
step
use the Tuskarr Fishing Net##192191
|tip Toss it on Riverfish in the water.
Catch #10# Warwater Riverfish |q 66896/1 |goto 52.00,35.73
step
label "Kill_Agitated_Snapper_66896"
kill 6 Agitated Snapper##188334 |q 66896/2 |goto 52.00,35.73
|next "Dragon_World_Quest_Emissaries"
step
label quest-72008
accept Overcoming A Mountain: Krolkoth##72008 |goto The Waking Shores/0 43.05,57.88
|tip You will accept this quest automatically.
|tip You must be in War Mode to accept this quest.
step
kill Krolkoth the Mountain##197501 |q 72008/1 |goto 43.05,57.88
|tip This enemy is elite and may require additional assistance.
|next "Dragon_World_Quest_Emissaries"
step
label quest-70012
accept Protect the Nets!##70012 |goto The Waking Shores/0 54.74,59.06
|tip You will accept this quest automatically.
step
click Tuskarr Fishing Net+
|tip They look like nets strung on sticks around the river area.
|tip They appear on your minimap as yellow dots.
kill Coastal Salamanther##191653
|tip The slamanther will sometimes attack you the first time you click the net.
|tip Click it again to inspect it.
Inspect #6# Fishing Nets |q 70012/1 |goto 54.74,59.06
|next "Dragon_World_Quest_Emissaries"
step
label quest-67006
accept Quenching the Flame##67006 |goto The Waking Shores/0 64.71,34.43
|tip You will accept this quest automatically.
stickystart "Kill_Qalashi_Skirmishers_67006"
stickystart "Kill_Qalashi_Scoundrels_67006"
stickystart "Slay_Qalashi_Beasts_67006"
step
kill 3 Qalashi Ragetamer##190766 |q 67006/1 |goto 62.87,34.27
step
label "Kill_Qalashi_Skirmishers_67006"
kill 3 Qalashi Skirmisher##186792 |q 67006/2 |goto 62.87,34.27
step
label "Kill_Qalashi_Scoundrels_67006"
kill 3 Qalashi Scoundrel##191446 |q 67006/3 |goto 64.71,34.43
step
label "Slay_Qalashi_Beasts_67006"
Kill enemies around this area
'|kill Magmammoth Calf##180705, Lava Phoenix##186684, Blazing Dreadsquall##191509, Magmammoth Bull##191903
Slay #5# Qalashi Beasts |q 67006/4 |goto 64.71,30.77
|next "Dragon_World_Quest_Emissaries"
step
label quest-74840
accept Sharp as Flint##74840 |goto The Waking Shores/0 68.98,46.78
|tip You will accept this quest automatically.
step
talk Excavator Morgrum Emberflint##201802
Choose _"Begin pet battle."_
Defeat Excavator Morgrum Emberflint in a Pet Battle |q 74840/1 |goto 68.98,46.78
|next "Dragon_World_Quest_Emissaries"
step
label quest-67024
accept Smoldering Reinforcement##67024 |goto The Waking Shores/0 56.39,22.95
|tip You will accept this quest automatically.
step
Kill enemies around this area
Clear the Primalist Forces |q 67024/1 |goto 56.39,22.95
|next "Dragon_World_Quest_Emissaries"
step
label quest-70651
accept Stolen Luggage##70651 |goto The Waking Shores/0 60.93,49.12
|tip You will accept this quest automatically.
step
click Climbing Gear
Acquire the Climbing Gear |q 70651/1 |goto 60.93,49.12
step
click Handhold
Find a Handhold on the Cliff |q 70651/2 |goto 60.51,48.57
step
clicknpc Stolen Expedition Supplies##196002+
|tip Expedition Supplies are found next to handholds on the wall.
|tip Click handholds to move up the wall and excavate supplies.
|tip Move quickly past gorlocs that splash you which causes you to lose grip.
Knock Down #8# Stolen Expedition Supplies |q 70651/3 |goto 60.35,48.55
|next "Dragon_World_Quest_Emissaries"
step
label quest-70984
accept Surge Breaker##70984 |goto The Waking Shores/0 28.82,58.29
|tip You will accept this quest automatically.
step
Kill Qalashi enemies around this area
Repel the Djaradin Forces |q 70984/1 |goto 28.82,58.29
|next "Dragon_World_Quest_Emissaries"
step
label quest-66588
accept Swog the Elder##66588 |goto The Waking Shores/0 26.17,92.39
|tip You will accept this quest automatically.
step
clicknpc Swog##189376
Defeat Swog in a Pet Battle |q 66588/1 |goto 26.17,92.39
|next "Dragon_World_Quest_Emissaries"
step
label quest-69931
accept Swoop And Grab##69931 |goto The Waking Shores/0 51.81,19.51
|tip You will accept this quest automatically.
step
Recover #7# Stolen Supplies |q 69931/1 |goto 51.81,19.51
|tip Use your dragonriding abilities to fly through 10 golden rings.
|tip You can find them on cliffs and ledges around this area.
|tip They appear on your minimap as yellow dots.
|next "Dragon_World_Quest_Emissaries"
step
label quest-70021
accept Tale of Tapionnuq##70021 |goto The Waking Shores/0 13.97,91.46
|tip You will accept this quest automatically.
step
talk Memory of Tapionnuq##194730
Tell him _"I am ready."_
Speak with the Memory of Tapionuq |q 70021/1 |goto 13.97,91.46
step
clicknpc Kilpi##194732
|tip Use the "Fishing" ability on your vehicle bar to catch fish.
|tip Use the "Feed Kilpi" ability to feed the fish to it.
|tip Use "Feed Self" to eat a fish for health.
|tip Occasionally a sea monster will attack you.
|tip Defend yourself with "Tuskarr Smash."
Catch and Feed #5# Fish to Kilpi |q 70021/2 |goto 13.88,91.39
step
clicknpc Kilpi##194732
Cuddle Kilpi the Sea Turtle |q 70021/3 |goto 14.16,92.33
|next "Dragon_World_Quest_Emissaries"
step
label quest-66551
accept The Terrible Three##66551 |goto The Waking Shores/0 38.91,83.27
|tip You will accept this quest automatically.
step
talk Haniko##196264
Choose _"Begin pet battle."_
Defeat Haniko in a Pet Battle |q 66551/1 |goto 38.8,83.2 |goto 38.91,83.27
|next "Dragon_World_Quest_Emissaries"
step
label quest-69913
accept Towers of Earthen Power##69913
|tip You will accept this quest automatically.
|polish
step
Deposit #5# Earthen Energy |q 69913/1
|next "Dragon_World_Quest_Emissaries"
step
label quest-69924
accept Towers of Flaming Power##69924 |goto The Waking Shores/0 55.76,22.18
|tip You will accept this quest automatically.
|tip You must be in War Mode to accept this quest.
step
click Overflowing Fire Energy+
|tip Return it to an Elemental Energy Repository.
|tip They look like large red crystals floating above the ground around this area.
Deposit the Fire Energy |q 69924/1 |goto 55.76,22.18
|next "Dragon_World_Quest_Emissaries"
step
label quest-66203
accept Wash Over Them##66203 |goto The Waking Shores/0 39.79,75.83
|tip You will accept this quest automatically.
step
click Surging Torrent
Summon the Surging Torrent |q 66203/1 |goto 39.79,75.83
step
Kill enemies around this area
|tip Use the abilities on your vehicle bar.
Extinguish the Elemental Attackers |q 66203/2 |goto 37.86,73.00
|next "Dragon_World_Quest_Emissaries"
step
label quest-72058
accept What Hoof We Here: Tarolekk##72058
|tip You will accept this quest automatically.
|polish
step
kill Tarolekk, the Stomper##197650 |q 72058/1
|next "Dragon_World_Quest_Emissaries"
step
label quest-67012
accept When Riverbeasts Fly##67012 |goto The Waking Shores/0 77.73,47.85
|tip You will accept this quest automatically.
stickystart "Slay_Elementals_67012"
step
Click animals around this area
|tip They look like various helpless and cowering animals all over the area.
Rescue #15# Animals |q 67012/1 |goto 77.73,47.85
step
label "Slay_Elementals_67012"
Kill Rampaging enemies around this area
Slay #15# Elementals |q 67012/2 |goto 77.73,47.85
|next "Dragon_World_Quest_Emissaries"
step
label "Dragon_World_Quest_Emissaries"
#include "Dragon_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Daily Guides\\Dragonflight (60-70)\\Zaralek Cavern World Quests",{
author="support@zygorguides.com",
description="This guide will assist you in completing world quests in Zaralek Cavern.",
startlevel=60,
worldquestzone={2133},
patch='100100',
},[[
step
label "Choose_World_Quest"
#include "Dragon_Choose_World_Quests"
step
label vignette-5643
Enter the cave |goto Zaralek Cavern/0 56.77,73.27 < 20 |walk
accept Alcanon##75285 |goto 56.14,73.91
|tip You will accept this quest automatically.
|tip Inside the cave.
|polish
step
kill Alcanon##203515 |q 75285/1 |goto 56.14,73.91
|tip Inside the cave.
|tip Avoid standing in front during "Golem Smash" when possible.
|tip "Crush" deals heavy melee damage.
|next "Dragon_World_Quest_Emissaries"
step
label quest-75343
accept All That Glitter##75343 |goto Zaralek Cavern/0 56.65,71.41
|tip You will accept this quest automatically.
step
Collect #12# Glitter |q 75343/1 |goto 56.65,71.41
|tip Fly through glittering yellow orbs in the air around this area.
|next "Dragon_World_Quest_Emissaries"
step
label quest-75063
accept Ambergrease##75063 |goto Zaralek Cavern/0 44.27,76.99
|tip You will accept this quest automatically.
step
Choose a Snail |q 75063/1 |goto 44.27,76.99
|tip Click one of the three snails.
stickystart "Feed_the_Snail"
step
click Ambergrease+
|tip They look like small piles of dirt on the ground around this area.
|tip They snail will often leave one behind after eating a mushroom.
Collect #5# Ambergrease |q 75063/3 |goto 45.26,75.05
step
label "Feed_the_Snail"
Feed the Snail #5# Times |q 75063/2 |goto 45.26,75.05
|tip Stand next to small glowing mushrooms around this area.
|tip The snail will consume them in about 15 seconds.
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5640
accept Aquifon##75271 |goto Zaralek Cavern/0 48.36,75.09
|tip You will accept this quest automatically.
|polish
step
kill Aquifon##203468 |q 75271/1 |goto 48.36,75.09
|tip Interrupt "Elemental Edema" on cooldown.
|tip Move away from "Living Whirl" cyclones that pursue you.
|next "Dragon_World_Quest_Emissaries"
step
label quest-75750
Enter the cave |goto Zaralek Cavern/0 38.62,50.34 < 10 |walk
accept Are They Not Beautiful?##75750 |goto Zaralek Cavern/0 38.25,49.66
|tip Inside the cave.
|tip You will accept this quest automatically.
|polish
step
talk Shinmura##204792
|tip Inside the cave.
Choose _"Begin pet battle."_
Defeat Shinmura in a Pet Battle |q 75750/1 |goto 38.25,49.66
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5652
accept Brullo the Strong##75326 |goto Zaralek Cavern/0 41.52,86.13
|tip You will accept this quest automatically.
|polish
step
talk Brullo the Strong##203621
Choose _"<Show off your gains.>"_
kill Brullo the Strong##203621 |q 75326/1 |goto 41.52,86.13
|tip He will attack you after a brief dialogue
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5728
accept Captain Reykal##75612 |goto Zaralek Cavern/0 44.15,74.34
|tip You will accept this quest automatically.
|tip On top of the ledge.
|polish
step
kill Captain Reykal##204423 |q 75612/1 |goto 44.15,74.34
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5706
accept Cascades Calling##75612 |goto Zaralek Cavern/0 44.15,74.34
|tip You will accept this quest automatically.
|tip On top of the ledge.
|polish
step
click Control Pylon+
|tip They look like pillars of earth topped with white and blue swirling orbs around the water.
|tip Click them until Rimecaller Raava is released.
kill Rimecaller Raava##204423 |q 75612/1 |goto 44.15,74.34
|next "Dragon_World_Quest_Emissaries"
step
label quest-75126
accept Cataloging Zaralek Cavern##75126 |goto Zaralek Cavern/0 43.26,84.64
|tip You will accept this quest automatically.
|polish
step
clicknpc Cataloger's Raft##195713
|tip Use the "Catalog" ability on your vehicle bar to take puctures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
Ride the Cataloger's Raft |q 75126/1 |goto 43.26,84.64
step
Take Pictures of Wildlife |q 75126/2
|tip Use the "Catalog" ability on your vehicle bar to take puctures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5705
accept The Champion's Challenge##75624 |goto Zaralek Cavern/0 45.11,82.99
|tip You will accept this quest automatically.
|polish
step
click Rock Weight+
|tip They look like large weights sunk in the ground around this area.
kill Drogbar Participant##204531+
|tip They will attack you.
|tip When the Challenge Points bar fills up nearbye at Judge Roggul, the challenge is complete.
Complete the Champion's Challenge |q 75624/1 |goto 45.11,82.99
|next "Dragon_World_Quest_Emissaries"
step
label quest-73221
accept A Clear State of Mind##73221 |goto Zaralek Cavern/0 51.16,58.26
|tip You will accept this quest automatically.
|polish
step
use M.U.S.T##202714
|tip Use it in Refti enemies around this area.
Cleanse #8# Refti |q 73221/1 |goto 51.16,58.26
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5674
accept Colossian##75476 |goto Zaralek Cavern/0 48.38,23.80
|tip You will accept this quest automatically.
|polish
step
kill Colossian##204093 |q 75476/1 |goto 48.38,23.80
|tip Don't stand in front of Colossian during "Devastating Slam."
|tip Move quickly after "Fissuring Slam" out of the area under your feet.
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5708
accept Conspiracy of Flames##75455 |goto Zaralek Cavern/0 32.02,43.48
|tip You will accept this quest automatically.
|polish
step
click Ancient Dragon Skull+
|tip Click the skull with the orange orb over it to fill the bar.
|tip Keep alternating until all of the skulls are empowered.
Complete the Djaradin Ritual |q 75455/1 |goto 32.02,43.48
|next "Dragon_World_Quest_Emissaries"
step
label quest-74879
accept Corrosive Counterbalance##74879 |goto Zaralek Cavern/0 48.21,38.63
|tip You will accept this quest automatically.
|polish
step
Neutralize #6# Acidic Pools with Elemental Base |q 74879/1 |goto 48.21,38.63
|tip Drag Alkaline Ragers to the greenish-yellow vapor clouds.
step
Neutralize #6# Basic Pools with Elemental Acid |q 74879/2 |goto 48.21,38.63
|tip Drag Sulfuric Ragers to the blue vapor clouds.
|next "Dragon_World_Quest_Emissaries"
step
label quest-75030
accept Crystal Catastrophe!##75030 |goto Zaralek Cavern/0 58.82,46.49
|tip You will accept this quest automatically.
|polish
step
Catch #20# Crystals |q 75030/1 |goto 58.82,46.49
|tip Run into the blue patches on the ground to catch a crystal.
|tip Avoid the brown patches.
|tip You cannot catch crystals while mounted.
|next "Dragon_World_Quest_Emissaries"
step
label quest-75062
accept Crystalline Conundrum##75062 |goto Zaralek Cavern/0 56.90,63.68
|tip You will accept this quest automatically.
step
click Climbing Gear
Acquire the Climbing Gear |q 75062/1 |goto 56.90,63.68
step
click Handhold
Find a Handhold on the Cliff |q 75062/2 |goto 56.83,63.55
step
clicknpc Shimmering Crystal+
|tip They look like glowing crystals on the wall next to handholds.
|tip Click handholds to move up the wall and excavate artifacts from the wall by clicking them.
|tip Avoid Aggressive Rockvipers which will cause you to lose grip.
Collect #8# Shimmering Crystals |q 75062/3 |goto 56.70,63.06
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5700
accept Crystalline Survey##75471 |goto Zaralek Cavern/0 62.53,47.65
|tip You will accept this quest automatically.
|polish
step
kill Agitated Crystalline##204099+
Complete the Survey |q 75471/1 |goto 62.53,47.65
|next "Dragon_World_Quest_Emissaries"
step
label quest-75661
accept Curative Crystalline Collection##75661 |goto Zaralek Cavern/0 37.71,71.08
|tip You will accept this quest automatically.
|polish
step
Kill Viridian enemies around this area
collect 10 Viridian Heartcrystal##203012 |q 75661/1 |goto 37.71,71.08
|next "Dragon_World_Quest_Emissaries"
step
label quest-75344
accept Crystal Cracker##75344 |goto Zaralek Cavern/0 56.46,65.54
|tip You will accept this quest automatically.
stickystart "Kill_Crystalline_Walkers"
step
extraaction Shine Shardling##408547
|tip Use it on Living Clusters around this area.
|tip They look like small Crystalline Walkers near rock formations.
Shine #8# Shardlings |q 75344/2 |goto 56.46,65.54
step
label "Kill_Crystalline_Walkers"
kill 4 Crystalline Walker##201063 |q 75344/1 |goto 56.46,65.54
|next "Dragon_World_Quest_Emissaries"
step
label quest-75346
accept Delver Mardei##75346 |goto Zaralek Cavern/0 60.39,69.42
|tip You will accept this quest automatically.
|polish
step
extraaction Order Scan##411428
|tip It appears as a button on your screen.
|tip Use it on various creatures around this area.
Scan #10# Wildlife |q 75346/1 |goto 60.39,69.42
|next "Dragon_World_Quest_Emissaries"
step
label quest-75200
accept Deepflayer Slayer##75200 |goto Zaralek Cavern/0 60.34,37.33
|tip You will accept this quest automatically.
|polish
step
Enter the cave |goto Zaralek Cavern/0 60.42,37.07 < 10 |walk
Kill Scavengening enemies around this area
|tip Inside and outside the cave.
Slay #15# Deepflayers |q 75200/1 |goto 45.81,45.56
|next "Dragon_World_Quest_Emissaries"
step
label quest-74292
accept Deephollow Mysteries##74292 |goto Zaralek Cavern/0 61.93,53.77
|tip You will accept this quest automatically.
step
click Arcane Magnetbubble
|tip They look like blue bubbles floating underwater around this area.
Use the Arcane Magnetbubble to Breathe Underwater |q 74292/1 |goto 61.93,53.77
step
click Arcane Magnetbubble
|tip They look like blue bubbles floating underwater around this area.
|tip Clicking a distant one will drag you to it quickly.
Click objects around this area
|tip They look like various discarded items underwater around this area.
Collect #15# Strange Artifacts |q 74292/2 |goto 61.93,53.77
|next "Dragon_World_Quest_Emissaries"
step
label quest-75834
accept Delver Mardei##75834 |goto Zaralek Cavern/0 65.37,49.60
|tip You will accept this quest automatically.
|polish
step
talk Delver Mardei##204926
Choose _"Begin pet battle."_
Defeat Delver Mardei in a Pet Battle |q 75834/1 |goto 65.37,49.60
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5660
accept Dinn##75353 |goto Zaralek Cavern/0 28.50,51.13
|tip You will accept this quest automatically.
|polish
step
kill Dinn##203646 |q 75353/1 |goto 28.50,51.13
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5720
accept Discordant Crystals##75664 |goto Zaralek Cavern/0 56.57,65.54
|tip You will accept this quest automatically.
|polish
stickystart "Kill_Discordant_Chips"
step
kill Discordant Lodestone##204676 |q 75664/1 |goto 56.57,65.54
step
label "Kill_Discordant_Chips"
kill 8 Discordant Chip##204677 |q 75664/2 |goto 56.57,65.54
|tip They look like blue crystal clusters on the ground around this area.
|next "Dragon_World_Quest_Emissaries"
step
label quest-75835
accept Do You Even Train?##75835 |goto Zaralek Cavern/0 45.69,81.50
|tip You will accept this quest automatically.
|polish
step
talk Trainer Orlogg##204934
Choose _"Begin pet battle."_
Defeat Trainer Orlogg in a Pet Battle |q 75835/1 |goto 45.69,81.50
|next "Dragon_World_Quest_Emissaries"
step
label quest-75121
accept Dragonrider Racing - Brimstone Scramble##75121 |goto Zaralek Cavern/0 54.50,23.70
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##202749
Tell him _"I'd like to try the course."_
Prepare for the Race |havebuff spell:403746 |goto 54.50,23.70 |q 75121
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff spell:369968 |goto 54.49,23.80 |q 75121
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 75121/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "Dragon_World_Quest_Emissaries"
step
label quest-75120
accept Dragonrider Racing - Caldera Cruise##75120 |goto Zaralek Cavern/0 39.06,49.99
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##202676
Tell him _"I'd like to try the course."_
Prepare for the Race |havebuff spell:403533 |goto 39.06,49.99 |q 75120
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff spell:369968 |goto 39.09,49.89 |q 75120
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 75120/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "Dragon_World_Quest_Emissaries"
step
label quest-75119
accept Dragonrider Racing - Crystal Circuit##75119 |goto Zaralek Cavern/0 38.75,60.61
|tip You will accept this quest automatically.
|polish
step
talk Bronze Timekeeper##202524
Tell him _"I'd like to try the course."_
Prepare for the Race |havebuff spell:403192 |goto 38.75,60.61 |q 75119
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff spell:369968 |goto 38.65,60.61 |q 75119
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 75119/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "Dragon_World_Quest_Emissaries"
step
label quest-75123
accept Dragonrider Racing - Loamm Roamm##75123 |goto Zaralek Cavern/0 58.15,57.59
|tip You will accept this quest automatically.
|polish
step
talk Bronze Timekeeper##202795
Tell him _"I'd like to try the course."_
Prepare for the Race |havebuff spell:403934 |goto 58.15,57.59 |q 75123
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff spell:369968 |goto 58.07,57.61 |q 75123
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 75123/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "Dragon_World_Quest_Emissaries"
step
label quest-75122
accept Dragonrider Racing - Shimmering Slalom##75122 |goto Zaralek Cavern/0 58.72,45.03
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##202772
Tell him _"I'd like to try the course."_
Prepare for the Race |havebuff spell:403830 |goto 58.72,45.03 |q 75122
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff spell:369968 |goto 58.71,45.13 |q 75122
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 75122/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "Dragon_World_Quest_Emissaries"
step
label quest-75124
accept Dragonrider Racing - Sulfur Sprint##75124 |goto Zaralek Cavern/0 51.26,46.67
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##202973
Tell him _"I'd like to try the course."_
Prepare for the Race |havebuff spell:404558 |goto 51.26,46.67 |q 75124
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff spell:369968 |goto 51.20,46.65 |q 75124
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 75124/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5663
accept Emberdusk##75364 |goto Zaralek Cavern/0 31.81,50.63
|tip You will accept this quest automatically.
|polish
step
kill Emberdusk##203664 |q 75364/1 |goto 31.81,50.63
|next "Dragon_World_Quest_Emissaries"
step
label quest-75660
accept Ending Their Watch##75660 |goto Zaralek Cavern/0 53.56,79.28
|tip You will accept this quest automatically.
|polish
step
talk Rupert, the Gentleman Elemental##200291
Tell it _"I'm ready to travel with you."_
Ask Rupert to Bring You to the Buried Vault |q 75660/1 |goto 53.56,79.28
step
kill 6 Enraged Watcher##200407 |q 75660/2 |goto 52.92,81.05
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5661
Enter the cave |goto Zaralek Cavern/0 35.91,43.94 < 15
accept Flowfy##75358 |goto Zaralek Cavern/0 36.30,44.79
|tip You will accept this quest automatically.
|tip Inside the cave.
|polish
step
kill Flowfy##203660 |q 75358/1 |goto 36.30,44.79
|tip Inside the cave.
|tip "Fracturing Bite" stacks and causes 10% increased damage taken per stack.
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5645
accept General Zskorro##75296 |goto Zaralek Cavern/0 42.12,18.70
|tip You will accept this quest automatically.
|tip Inside the building.
|polish
step
kill General Zskorro##203592 |q 75296/1 |goto 42.12,18.70
|tip Inside the building.
|tip After "Thundering Stomp," avoid blue areas on the ground.
|tip Interrupt "Stonefall" or avoid the swirling areas on the ground.
|tip "Dragon Rend" deals bleed damage over 8 seconds.
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5704
accept Glimmerfish Before It's Gone##75611 |goto Zaralek Cavern/0 40.44,60.97
|tip You will accept this quest automatically.
|polish
step
kill Giant Glimmerfish##204389
click Glimmerfish Scale##399671+
|tip They drop from the Glimmerfish when you attack it.
collect 15 Glimmerfish Scale##205179 |q 75611/2 |goto 40.44,60.97
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5641
accept Kairoktra##75274 |goto Zaralek Cavern/0 68.80,46.01
|tip You will accept this quest automatically.
|polish
step
kill Goopal##203477 |q 75274/1 |goto 68.80,46.01
|next "Dragon_World_Quest_Emissaries"
step
label quest-74945
accept Guanite Gambit##74945 |goto Zaralek Cavern/0 49.59,41.20
|tip You will accept this quest automatically.
step
kill Nesting Shalewing##202785+
click Guanite+
|tip They look like small rocks around this area.
|tip They also drop from Nesting Shalewings.
collect 24 Guanite##204265 |q 74945/1 |goto 49.59,41.20
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5718
accept Hungry Hungry Hydra##75478 |goto Zaralek Cavern/0 47.30,20.92
|tip You will accept this quest automatically.
|polish
step
Kill enemies around this area
|tip Drag them to the hydra heads along the lava edge.
|tip Kill them in front of the hydra heads to feed them to the hydra.
Satiate the Hydra |q 75478/1 |goto 47.30,20.92
|next "Dragon_World_Quest_Emissaries"
step
label quest-74988
accept If You Can't Take the Heat##74988 |goto Zaralek Cavern/0 36.28,47.63
|tip You will accept this quest automatically.
step
kill Crumbling Scoria##199837+
use the Conductive Lodestone##204344
|tip Use it on defeated Crumbling Scoria enemies.
Siphon #10# Crumbling Scoria |q 74988/1 |goto 36.03,46.20
step
use the Conductive Lodestone##204344
|tip Use it on High Summoner Wahuna to kill him.
kill High Summoner Wahuna##202981 |q 74988/2 |goto 36.28,47.63
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5710
accept Imperfect Balance##75451 |goto Zaralek Cavern/0 35.46,51.20
|tip You will accept this quest automatically.
|polish
step
kill Fury of the Caldera##204108 |q 75451/1 |goto 35.46,51.20
|tip Stand in the pillar of earth and pillar of fire nearbye until both of the infusion bars are full.
|tip When fully infusted, it will be attackable.
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5654
accept Invohq##75336 |goto Zaralek Cavern/0 45.65,33.28
|tip You will accept this quest automatically.
|polish
step
kill Invohq##203627 |q 75336/1 |goto 45.65,33.28
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5653
accept Kairoktra##75334
|tip You will accept this quest automatically.
|polish
step
kill Kairoktra##203625 |q 75334/1
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5639
accept Kaprachu##75269 |goto Zaralek Cavern/0 59.64,39.51
|tip You will accept this quest automatically.
|polish
step
kill Kaprachu##203466 |q 75269/1 |goto 59.64,39.51
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5651
accept Klakatak##75322 |goto Zaralek Cavern/0 54.05,41.71
|tip You will accept this quest automatically.
|polish
step
kill Klakatak##203618 |q 75322/1 |goto 54.05,41.71
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5638
Enter the cave |goto Zaralek Cavern/0 64.67,55.45 < 10 |walk
accept Kob'rok##75267 |goto 65.42,55.87
|tip You will accept this quest automatically.
|tip Inside the cave.
|polish
step
kill Kob'rok##203462 |q 75267/1 |goto 65.42,55.87
|tip Inside the cave.
|next "Dragon_World_Quest_Emissaries"
step
label quest-74985
accept Like Moths to a Flame##74985 |goto Zaralek Cavern/0 47.69,49.19
|tip You will accept this quest automatically.
|polish
step
kill 12 Lightbound Swarmer##202841 |q 74985/1 |goto 47.69,49.19
|tip At the top of the tower.
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5716
accept Magmaclaw Matriarch##75461 |goto Zaralek Cavern/0 40.76,38.19
|tip You will accept this quest automatically.
|polish
step
Kill Magmaclaw enemies around this area
click Singed Offering+
|tip They look like charred pieces of meat next to lava around this area.
kill Magmaclaw Queen##203934 |q 75461/1 |goto 40.76,38.19
|tip It will spawn from the pool and attack you when the bar fills up.
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5656
accept Magmanesha##75340 |goto Zaralek Cavern/0 40.76,38.19
|tip You will accept this quest automatically.
|polish
step
kill Magmanesha##200111 |q 75340/1 |goto 40.76,38.19
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5721
accept Monument Maintenance##75705 |goto Zaralek Cavern/0 61.71,72.04
|tip You will accept this quest automatically.
|polish
step
Click objects around this area
|tip Find the Missing Arm, Missing Head, and Shattered Sphere around the area.
|tip They appear on your minimap as yellow dots.
|tip Bring them back to the statue and click it to restore the pieces.
|tip When you pick one up, don't mount and avoid enemies.
Restore the Crumbling Statue |q 75705/1 |goto 61.71,72.04
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5707
accept Mortar Warfare##75454 |goto Zaralek Cavern/0 40.26,43.52
|tip You will accept this quest automatically.
|polish
step
kill Fury of the Caldera##204108+
extraaction Frothing Lava##407633
|tip Run to the erupting fire and pick an orb up floating above the ground.
|tip Target a ballistae and use the Frothing Lava ability on it.
|tip Repeat this to destroy the three ballistae.
Destroy the Dragonkiller Ballistae |q 75454/1 |goto 40.26,43.52
|next "Dragon_World_Quest_Emissaries"
step
label quest-75350
accept Niffen Nabber##75350 |goto Zaralek Cavern/0 59.24,73.86
|tip You will accept this quest automatically.
step
click Prison Door
|tip They look like doors on large cages around this area.
Free #6# Kidnapped Niffen |q 75350/1 |goto 59.24,73.86
|next "Dragon_World_Quest_Emissaries"
step
label quest-75061
accept No Mushroom For Ever##75061 |goto Zaralek Cavern/0 54.49,68.01
|tip You will accept this quest automatically.
step
click Climbing Gear
Acquire the Climbing Gear |q 75061/1 |goto 54.49,68.01
step
click Handhold
Find a Handhold on the Cliff |q 75061/2 |goto 54.46,68.26
step
clicknpc Cavern Mushroom+
|tip They look like mushroom clusters growing on the wall next to handholds.
|tip Click handholds to move up the wall and excavate mushrooms from the wall by clicking them.
|tip Avoid Aggressive Rockvipers which will cause you to lose grip.
Collect #8# Cavern Mushrooms |q 75061/3 |goto 53.97,68.21
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5644
Enter the building |goto Zaralek Cavern/0 52.98,18.87 < 10 |walk
accept Professor Gastrinax##75292 |goto 55.84,18.99
|tip You will accept this quest automatically.
|tip Inside the building.
|polish
step
kill Professor Gastrinax##203521 |q 75292/1 |goto 55.84,18.99
|tip Inside the building.
|next "Dragon_World_Quest_Emissaries"
step
label quest-75151
accept Redistributing the Remnants##75151 |goto Zaralek Cavern/0 43.28,22.16
|tip You will accept this quest automatically.
|polish
step
Click objects around this area
|tip Click the various weapons and armor laying on the ground around this area.
collect 8 Drakeforged Armaments##204437 |q 75151/1 |goto 43.28,22.16
|next "Dragon_World_Quest_Emissaries"
step
label quest-75663
accept Restless Torment##75663 |goto Zaralek Cavern/0 49.86,39.10
|tip You will accept this quest automatically.
step
kill Ghostly Researcher##203013+
kill Failed Experiment##203007+
Kill #15# Ghostly Researchers or Failed Experiments |q 75663/1 |goto 49.86,39.10
|next "Dragon_World_Quest_Emissaries"
step
label quest-75067
accept Rock Viper Roundup##75067 |goto Zaralek Cavern/0 45.08,69.05
|tip You will accept this quest automatically.
|polish
stickystart "Destroy_Rock_Viper_Eggs"
step
kill 20 Rock Viper Egg##203054 |q 75067/2 |goto 45.08,69.05
step
label "Destroy_Rock_Viper_Eggs"
kill 10 Invasive Rock Viper##203053 |q 75067/1 |goto 45.08,69.05
|next "Dragon_World_Quest_Emissaries"
step
label quest-74990
accept Roiling Shadow##74990 |goto Zaralek Cavern/0 31.05,49.25
|tip You will accept this quest automatically.
step
extraaction Blazing Ascent##405041
|tip Use it to throw yourself in the air.
extraaction Surge Upward##404933
|tip Use it to briefly dash upward a short distance.
Pop #10# Shadowflame Boils |q 74990/2 |goto 31.05,49.25
step
kill Igneous Darkness##202866 |q 74990/1 |goto 32.51,50.05
|tip This enemy is elite and may require a group.
|next "Dragon_World_Quest_Emissaries"
step
label quest-73698
accept Rolie Polie Molie##73698 |goto Zaralek Cavern/0 61.97,49.52
|tip You will accept this quest automatically.
|polish
step
talk Olie##201042
Tell him _"I'm ready."_
Talk to Olie to Transform |q 73698/1 |goto 61.97,49.52
step
collect 20 Snail Slime##203229 |q 73698/2 |goto 61.60,48.59
|tip Use the "Jump" ability on your vehicle bar to burst up under Slimy Whelks.
|tip Run over the slime patches to collect them.
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5709
accept Seismic Ceremony##75450 |goto Zaralek Cavern/0 34.36,47.83
|tip You will accept this quest automatically.
|polish
step
clicknpc Primalist Runestone##204001+
Deactivate the Primalist Runestones |q 75450/1 |goto 34.36,47.83
|tip Every 8 seconds the stones will erupt and deal damage and stun anyone nearby.
|next "Dragon_World_Quest_Emissaries"
step
label quest-75155
accept Shadowflame Snuffer##75155 |goto Zaralek Cavern/0 48.44,16.89
|tip You will accept this quest automatically.
step
kill Shadowflame Emberling##203182+
|tip They look like little flaming elementals near the lava around this area.
|tip Run over them to squish them.
Snuff the Shadowflame |q 75155/1 |goto 48.44,16.89
|next "Dragon_World_Quest_Emissaries"
step
label quest-75345
accept Shell Corporation##75345 |goto Zaralek Cavern/0 59.34,67.77
|tip You will accept this quest automatically.
|polish
step
click Succulent Looking Deepcaps+
|tip They look like clusters of mushrooms on the ground around this area.
clicknpc Redolent Whelk##200898+
|tip They can be found all over this area.
extraaction Snail Stuffing!##408797
|tip Throw the stuffing at a Redolent Whelk snail.
|tip In a few seconds it will drop a shell.
|tip Don't mount or you will lose the ability.
click Cast Off Shell+
|tip They drop from snails you feed.
collect 8 Slime Sheathed Shell##205199 |q 75345/1 |goto 59.34,67.77
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5701
accept Shellfire##75222 |goto Zaralek Cavern/0 57.66,49.00
|tip You will accept this quest automatically.
|polish
step
kill Excited Ember##203330+
click Jar of Snuffer Powder
|tip They drop from Excited Embers.
extraaction Throw Snuffer Powder##405716
|tip Throw the powder on Big Bessie.
Extinguish Big Bessie |q 75222/1 |goto 57.66,49.00
|next "Dragon_World_Quest_Emissaries"
step
label quest-75064
accept Shrooming for a Living##75064 |goto Zaralek Cavern/0 47.22,20.96
|tip You will accept this quest automatically.
|polish
stickystart "Kill_Pesky_Sporemoths"
step
click Dewcup Mushroom+
|tip They look like cup-shaped mushrooms on the ground around this area.
Harvest #7# Dewcup Mushrooms |q 75064/1 |goto 52.03,76.46
step
label "Kill_Pesky_Sporemoths"
kill 12 Pesky Sporemoth##202625 |q 75064/2 |goto 52.03,76.46
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5659
accept Skornace##75349 |goto Zaralek Cavern/0 36.38,52.74
|tip You will accept this quest automatically.
|polish
step
kill Skornak##203643 |q 75349/1 |goto 36.38,52.74
|next "Dragon_World_Quest_Emissaries"
step
label quest-75128
accept Slime Ranching##75128 |goto Zaralek Cavern/0 52.49,18.87
|tip You will accept this quest automatically.
step
extraaction Slime Sucker 2000##405006
|tip Use it to vacuum slimes to you inside and outside the building.
Contain the Slimes |q 75128/1 |goto 52.49,18.87
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5702
map Zaralek Cavern/0
path follow smart; loop on; ants curved; dist 30
path	63.30,52.50	62.56,51.88	61.41,50.80	61.06,51.66	60.61,52.34
path	60.27,54.23	61.02,54.90	61.86,55.14	62.97,53.72
accept Smellincense##75370
|tip You will accept this quest automatically.
|polish
step
map Zaralek Cavern/0
path follow smart; loop on; ants curved; dist 30
path	63.30,52.50	62.56,51.88	61.41,50.80	61.06,51.66	60.61,52.34
path	60.27,54.23	61.02,54.90	61.86,55.14	62.97,53.72
Click objects on the ground
|tip Various small glowing objects will provide you with an action button on your screen.
extraaction Throw Ingredient##407047
|tip Target the wagon and throw the ingredient at it.
|tip When the wagon has 30 stacks of the buff, the incense is complete.
Complete the Incense |q 75370/1 |goto 62.53,47.65
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5703
accept Smelly Scramble##75441 |goto Zaralek Cavern/0 57.69,57.06
|tip You will accept this quest automatically.
|polish
step
Make the Concoction |q 75441/1 |goto 57.69,57.06
|tip Run into the circles on the ground and use the ability on-screen to throw it far away on the ground.
|tip Keep running and catching until the concoction finishes.
|next "Dragon_World_Quest_Emissaries"
step
label quest-73408
accept Sniffen 'em Out!##73408 |goto Deepflayer Nest/0 27.31,34.45
|tip You will accept this quest automatically.
step
use the Niffen Incense##203013
|tip Follow the trail of fumes, stopping around large patches and searching.
extraaction Dig!##399339
|tip Use it when it appears on-screen near a big patch of fumes.
Dig up #5# Reekroot |q 73408/1 |goto 27.31,34.45
|tip At the top of the tower.
|next "Dragon_World_Quest_Emissaries"
step
label quest-75071
accept Sniffing Mice are Nice##75071 |goto Zaralek Cavern/0 49.86,39.10
|tip You will accept this quest automatically.
|polish
step
clicknpc Sniffing Mouse##205042
Borrow a Sniffing Mouse |q 75071/1 |goto 49.86,39.10
step
extraaction Dig Here!##406104
|tip Use it on smoky glittering spots on the ground.
|tip After the Drogbar digs up the item, click it.
Collect #10# 'Smellies' |q 75071/2 |goto 49.18,73.71
|next "Dragon_World_Quest_Emissaries"
step
label quest-75058
accept Spearheading Acquisition##75058 |goto Zaralek Cavern/0 38.33,63.10
|tip You will accept this quest automatically.
step
click Climbing Gear
Acquire the Climbing Gear |q 75058/1 |goto 38.33,63.10
step
click Handhold
Find a Handhold on the Cliff |q 75058/2 |goto 38.17,63.07
step
clicknpc Zaqali Spear+
|tip They look like large spears in the stone next to handholds on the wall.
|tip Click handholds to move up the wall and excavate supplies.
|tip Move quickly past Rockworm Hatchlings which causes you to lose grip.
Collect #7# Zaqali Spears |q 75058/3 |goto 38.17,63.07
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5642
Enter the cave |goto Zaralek Cavern/0 54.66,65.95 < 10 |walk
accept Spinmarrow##75276 |goto Zaralek Cavern/0 53.10,64.23
|tip You will accept this quest automatically.
|tip Inside the cave.
|polish
step
kill Spinmarrow##203480 |q 75276/1 |goto 53.10,64.23
|tip Inside the cave.
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5699
accept Stress Express##75156 |goto Zaralek Cavern/0 65.60,51.15
|tip You will accept this quest automatically.
|polish
step
map Zaralek Cavern/0
path follow smart; loop off; ants curved; dist 30
path	66.25,49.91	65.50,51.10	64.20,51.01	62.47,50.02	60.54,50.18
path	59.28,53.80	58.27,54.81
kill Busted Wagon##203065
|tip Attack the wagon to cause it to move forward.
Push the Wagon into Loamm |q 75156/1 |goto 62.53,47.65
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5719
accept Strike the Colors##75494 |goto Zaralek Cavern/0 45.12,21.97
|tip You will accept this quest automatically.
|polish
step
click Brimstone Banner+
|tip They look like massive banners hanging from balconies and towers around this area.
|tip They appear on your minimap as yellow dots.
Replace Neltharion's Banners |q 75494/1 |goto 45.12,21.97
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5662
accept Subterrax##75360 |goto Zaralek Cavern/0 38.42,46.51
|tip You will accept this quest automatically.
|tip On top of the ledge.
|polish
step
kill Subterrax##203662 |q 75360/1 |goto 38.42,46.51
|next "Dragon_World_Quest_Emissaries"
step
label quest-75680
accept To a Land Down Under##75680 |goto Zaralek Cavern/0 52.41,66.04
|tip You will accept this quest automatically.
step
talk Explorer Bezzert##201004
Choose _"Begin pet battle."_
Defeat Explorer Bezzert in a Pet Battle |q 75680/1 |goto 52.41,66.04
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5646
accept Underlight Queen##75298 |goto Zaralek Cavern/0 57.79,69.13
|tip You will accept this quest automatically.
|polish
step
kill Underlight Queen##203593 |q 75298/1 |goto 57.79,69.13
|next "Dragon_World_Quest_Emissaries"
step
label quest-75060
accept A Veritable Dumping Ground##75060 |goto Zaralek Cavern/0 51.26,24.38
|tip You will accept this quest automatically.
|polish
step
click Climbing Gear
Acquire the Climbing Gear |q 75060/1 |goto 51.26,24.38
step
click Handhold
Find a Handhold on the Cliff |q 75060/2 |goto 51.34,24.43
step
clicknpc Draconic Artifact+
|tip They look like broken tablets in the stone next to handholds on the wall.
|tip Click handholds to move up the wall and excavate supplies.
|tip Move quickly past lava patches which causes you to lose grip.
Collect #7# Draconic Artifacts |q 75060/3 |goto 51.37,24.97
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5664
accept Viridian King##75366 |goto Zaralek Cavern/0 38.86,71.51
|tip You will accept this quest automatically.
|polish
step
kill Viridian King##201029 |q 75366/1 |goto 38.86,71.51
|next "Dragon_World_Quest_Emissaries"
step
label quest-74991
accept We Have Returned##74991 |goto Zaralek Cavern/0 32.89,41.98
|tip You will accept this quest automatically.
stickystart "Plant_Zaqali_Spears_in_Corpses"
step
click Ancient Ebon Spear
Retrieve #4# Ancient Ebon Spears |q 74991/1 |goto 32.89,41.98
step
label "Plant_Zaqali_Spears_in_Corpses"
Kill Zaqali enemies around this area
use the Bundle of Ebon Spears##204365
Plant #8# Zaqali Spears in Corpses |q 74991/2 |goto 32.89,41.98
|next "Dragon_World_Quest_Emissaries"
step
label vignette-5717
accept Whirling Zephyr##74352 |goto Zaralek Cavern/0 57.69,57.06
|tip You will accept this quest automatically.
|polish
step
Kill enemies around this area
collect Hurricane Scepter##203706 |n
clicknpc Lesser Storm Pylon##201299
|tip Destroy the lessor pylons with Hurricane Scepters to remove the greater pylon shield.
clicknpc Greater Storm Pylon##201262
Destroy the Greater Pylon |q 74352/1 |goto 57.69,57.06
|next "Dragon_World_Quest_Emissaries"
step
label quest-74892
accept Zaqali Elders##74892 |goto Zaralek Cavern/0 27.55,44.56
|tip You will accept this quest automatically.
|polish
step
kill Vakan##199855
kill Gholna##199853
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid standing in "Incineration" areas on the ground. |grouprole EVERYONE
|tip Avoid standing in "Scorching Eclipse" areas on the ground. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Random players will receiving stacking "Searing Touch" debuffs and require extra healing. |grouprole HEALER
|tip Random players will receiving stacking "Burning SHadows" debuffs and require extra healing. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Swap threat before the debuffs stack become too much for you to manage. |grouprole TANK
|tip Swap threat before the debuffs stack become too much for you to manage. |grouprole TANK
|tip Tank them apart so they don't gain the "Empowered Rivalry" buff. |grouprole TANK
Defeat the Zaqali Elders |q 74892 |goto 27.55,44.56
|next "Dragon_World_Quest_Emissaries"
step
label quest-74989
accept Zealous Defenses##74989 |goto Zaralek Cavern/0 29.25,50.17
|tip You will accept this quest automatically.
|polish
stickystart "Slay_Zaqali_or_Primalist_Enemies"
step
click Shrine Ward+
|tip They look like totems with flaming orbs above them around this area.
Destroy #5# Shrine Wards |q 74989/1 |goto 29.25,50.17
step
label "Slay_Zaqali_or_Primalist_Enemies"
Kill Zaqali and Primalist enemies around this area
Slay #8# Zaqali or Primalist Enemies |q 74989/2 |goto 29.25,50.17
|next "Dragon_World_Quest_Emissaries"
step
label "Dragon_World_Quest_Emissaries"
#include "Dragon_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Daily Guides\\Dragonflight (60-70)\\Dragonscale Expedition\\Dragonscale Basecamp Weekly Quests",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various weekly Wanted quests in Dragonscale Basecamp.",
condition_suggested=function() return factionrenown(2507) < 25 end,
patch='100002',
},[[
step
label "Begin_Dailies"
Click posters around this area
|tip Two wanted posters offer one quest each per week.
accept Wanted: Earthbound Primordial Core##71001 |goto The Waking Shores/0 47.70,82.76 |only if questpossible |or 2
accept Wanted: Disoriented Wishtail##71007 |goto 47.70,82.76 |only if questpossible |or 2
accept Wanted: Everblazing Fireheart##70975 |goto 47.70,82.76 |only if questpossible |or 2
accept Wanted: Fangfall##71005 |goto 47.70,82.76 |only if questpossible |or 2
accept Wanted: Fenistrasza's Skull##70995 |goto 47.70,82.76 |only if questpossible |or 2
accept Wanted: Lost Tuskarr Kite##70992 |goto 47.70,82.76 |only if questpossible |or 2
accept Wanted: Ohuna Mass-Binding Totem##71004 |goto 47.70,82.76 |only if questpossible |or 2
accept Wanted: Ruby Lifeband##70997 |goto 47.70,82.76 |only if questpossible |or 2
accept Wanted: Stoneheart's Stone Heart##71008 |goto 47.70,82.76 |only if questpossible |or 2
accept Wanted: Temporal Spyglass##71010 |goto 47.70,82.76 |only if questpossible |or 2
accept Wanted: Torrential Lily##71011 |goto 47.70,82.76 |only if questpossible |or 2
accept Wanted: Watcher's Golden Girdle##70965 |goto 47.70,82.76 |only if questpossible |or 2
Accept the Daily Quests |complete false |goto 47.70,82.76 |or 2
step
kill Prozela Galeshot##193669
collect Ohuna Mass-Binding Totem##200134 |q 71004/1 |goto Ohn'ahran Plains/0 59.92,66.95
|only if haveq(71004) or completedq(71004)
step
kill Lookout Mordren##193668
|tip Inside the top of the tower.
collect Temporal Spyglass##200122 |q 71010/1 |goto Thaldraszus/0 36.80,85.57
|only if haveq(71010) or completedq(71010)
step
Enter the cave |goto The Azure Span/0 60.87,50.01 < 10 |walk
kill Stoneheart##187387
|tip Inside the cave.
collect Stoneheart's Stone Heart##200125 |q 71008/1 |goto The Azure Span/0 60.52,49.49
|only if haveq(71008) or completedq(71008)
step
kill Firava the Rekindler##195915
|tip This enemy is elite and may require a group.
|tip It walks all over the lava area.
collect Everblazing Fireheart##200119 |q 70975/1 |goto The Waking Shores/0 55.54,22.09
|only if haveq(70975) or completedq(70975)
step
talk Tarjin the Blind##196214
accept Tarjin's Tales##70779 |goto 16.17,62.61
|only if haveq(70995) or completedq(70995)
step
kill Disoriented Watcher##187745
|tip This enemy is elite and may require a group.
collect Watcher's Golden Girdle##200117 |q 70965/1 |goto 67.06,57.02
|only if haveq(70965) or completedq(70965)
step
Kill Proto-Dragon enemies around this area
|tip Only elite proto-dragons drop Impressive Dragon Skulls.
collect 5 Impressive Dragon Skull##199822 |q 70779/1 |goto 55.93,82.22
|only if haveq(70995) or completedq(70995)
step
talk Tarjin the Blind##196214
turnin Tarjin's Tales##70779 |goto 16.17,62.61
|only if haveq(70995) or completedq(70995)
step
click Fenistrasza's Skull##381636
collect Fenistrasza's Skull##200143 |q 70995/1 |goto 16.26,62.88
|only if haveq(70995) or completedq(70995)
step
clicknpc Lost Tuskarr Kite##196762
|tip Check the time until the boat arrives.
|tip You can come back to this location at that time or you can travel around and attempt to find it.
|tip You can only click the kite when the ship is not in motion and it falls in the water.
collect Lost Tuskarr Kite##200162 |q 70992/1 |goto 45.38,25.80
It will fall in the water here [44.85,25.90]
|only if haveq(70992) or completedq(70992)
step
kill Alora Mistbreeze##189243
collect Torrential Lily##200123 |q 71011/1 |goto Thaldraszus/0 54.62,62.64
|only if haveq(71011) or completedq(71011)
step
Kill enemies around this area
collect 100 Fragments of Fangfall##200140 |q 71005/1 |goto Ohn'ahran Plains/0 63.46,15.94
|only if haveq(71005) or completedq(71005)
step
kill Cascade##186962
collect Disoriented Wishtail##200124 |q 71007/1 |goto The Azure Span/0 23.49,33.24
|only if haveq(71007) or completedq(71007)
step
click Ruby Lifeband
|tip It looks like a piece of jewelry in a box on a table on the top ring.
collect Ruby Lifeband##200179 |q 70997/1 |goto Ruby Life Pools/1 43.65,63.88
|only if haveq(70997) or completedq(70997)
step
click Earthbound Primordial Core##381660
|tip In the room with Warlord Sargha.
collect Earthbound Primordial Core##200200 |q 71001/1 |goto Neltharus/0 47.35,72.89
|only if haveq(71001) or completedq(71001)
step
talk Cataloger Jakes##189226
|tip Inside the tent.
turnin Wanted: Disoriented Wishtail##71007 |goto The Waking Shores/0 47.11,82.58 |only if haveq(71007) or completedq(71007)
turnin Wanted: Earthbound Primordial Core##71001 |goto 47.11,82.58 |only if haveq(71001) or completedq(71001)
turnin Wanted: Everblazing Fireheart##70975 |goto 47.11,82.58 |only if haveq(70975) or completedq(70975)
turnin Wanted: Fangfall##71005 |goto 47.11,82.58 |only if haveq(71005) or completedq(71005)
turnin Wanted: Fenistrasza's Skull##70995 |goto 47.11,82.58 |only if haveq(70995) or completedq(70995)
turnin Wanted: Lost Tuskarr Kite##70992 |goto 47.11,82.58 |only if haveq(70992) or completedq(70992)
turnin Wanted: Ohuna Mass-Binding Totem##71004 |goto 47.11,82.58 |only if haveq(71004) or completedq(71004)
turnin Wanted: Ruby Lifeband##70997 |goto 47.11,82.58 |only if haveq(70997) or completedq(70997)
turnin Wanted: Stoneheart's Stone Heart##71008 |goto 47.11,82.58 |only if haveq(71008) or completedq(71008)
turnin Wanted: Temporal Spyglass##71010 |goto 47.11,82.58 |only if haveq(71010) or completedq(71010)
turnin Wanted: Torrential Lily##71011 |goto 47.11,82.58 |only if haveq(71011) or completedq(71011)
turnin Wanted: Watcher's Golden Girdle##70965 |goto 47.11,82.58 |only if haveq(70965) or completedq(70965)
|only if haveq(71007,71001,70975,71005,70995,70992,71004,70997,71008,71010,71011,70965) or completedq(71007,71001,70975,71005,70995,70992,71004,70997,71008,71010,71011,70965)
step
You have completed all weekly quests in the Dragonscale Basecamp
|tip This guide will reset when more become available.
'|complete not completedq(71007,71001,70975,71005,70995,70992,71004,70997,71008,71010,71011,70965) |next "Begin_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Daily Guides\\Dragonflight (60-70)\\Iskaara Tuskarr\\Grimtusk's Fishing Hole",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various daily quests at the Grimtusk's fishing location.",
condition_suggested=function() return level == 70 and completedq(70941) and factionrenown(2503) < 25 and areapoi(2024,7266) end,
startlevel=62,
areapoiid=7266,
areapoitype="Fishing Hole",
patch='100002',
},[[
step
talk Elder Poa##186448 |goto The Azure Span/0 12.41,49.34
|tip Inside the building.
|tip Turn in Stolen Totems from treasures in The Azure Span for rep.
'|turnin More Stolen Totems##70927 |repeatable |n
'|turnin Stolen Totems##70926 |repeatable |n
'|turnin Story of a Memorable Victory##72291 |n
Reach Renown Level 4 with the Iskaara Tuskarr |complete factionrenown(2511) >= 4
|tip Complete daily quests, weekly quests, and zone quests in The Azure Span to gain renown.
step
_Next to you:_
talk Rowie##197631
accept Fishing Holes##70941
step
talk Nunvuq##186554
Train Fishing |skillmax Fishing,1 |goto 13.94,49.24
step
talk Nunvuq##186554
Train Dragon Isles Fishing |q 70941/1 |goto 13.94,49.24
step
talk Nunvuq##186554
turnin Fishing Holes##70941 |goto 13.94,49.24
step
Wait for Grimtusk's Fishing Hole to Become Active |complete areapoi(2024,7266)
step
label "Begin_Daily_Quests"
talk Gruff Fisher##196860
accept Subglacial Refill##72069 |goto 58.62,34.50
|tip Completing this quest will increase the Grimtusk's fishing hole stock quantity by 20.
|tip You may want to fish it down some before proceeding.
step
talk Gruff Fisher##196860
accept Net Worth##71191 |goto 58.62,34.50 |or
|tip Completing this quest will increase the Grimtusk's fishing hole stock quantity by 10.
|tip You may want to fish it down some before proceeding.
Click Here if this Quest Is Unavailable |confirm |or
step
clicknpc Stock Fish##195340
|tip They look like groups of small fish around the water.
use Throw Net##198855
|tip Use it on schools of stock fish.
Collect #3# Stock Fish |q 72069/1 |goto 58.68,54.72
step
click Ice Crack!
|tip They look like light blue cracks in the ice around this area.
|tip They appear on your minimap as yellow fish.
|tip Doing this will open an Ice Hole that you can drop fish into.
extraaction Release Fish##385852
|tip Drop fish near the hole you just opened.
Drop #3# Fish From Above |q 72069/2 |goto 58.27,32.33
step
click Ice Crack!
|tip They look like light blue cracks in the ice around this area.
|tip They appear on your minimap as yellow fish.
click Ice Fishing Hole
|tip Click the fishing hole to fish in it until you fish up the net.
collect Gruff Fisher's Net##200646 |q 71191/1 |goto 56.95,33.20
|only if haveq(71191) or completedq(71191)
step
talk Gruff Fisher##196860
turnin Net Worth##71191 |goto 58.62,34.50|only if haveq(71191) or completedq(71191)
|tip Completing this quest will increase the Grimtusk's fishing hole stock quantityby 10.|only if haveq(71191) or completedq(71191)
turnin Subglacial Refill##72069 |goto 58.62,34.50
|tip Completing this quest will increase the Grimtusk's fishing hole stock quantity by 20.
|tip You may want to fish it down some before proceeding.
step
talk Young Quickhands##196840 |only if (itemcount(194730) >= 20 and not completedq(72828)) or (itemcount(194966) >= 20 and not completedq(72827)) or (itemcount(194967) >= 20 and not completedq(72826)) or (itemcount(194968) >= 20 and not completedq(72825)) or (itemcount(194969) >= 20 and not completedq(72824)) or (itemcount(194970) >= 20 and not completedq(72823))
accept Catch and Release: Scalebelly Mackerel##70199 |goto 58.81,34.78 |repeatable |only if itemcount(194730) >= 20 and not completedq(72828)
accept Catch and Release: Thousandbite Piranha##70200 |goto 58.81,34.78 |repeatable |only if itemcount(194966) >= 20 and not completedq(72827)
accept Catch and Release: Aileron Seamoth##70201 |goto 58.81,34.78 |repeatable |only if itemcount(194967) >= 20 and not completedq(72826)
accept Catch and Release: Cerulean Spinefish##70202 |goto 58.81,34.78 |repeatable |only if itemcount(194968) >= 20 and not completedq(72825)
accept Catch and Release: Temporal Dragonhead##70203 |goto 58.81,34.78 |repeatable |only if itemcount(194969) >= 20 and not completedq(72824)
accept Catch and Release: Islefin Dorado##70935 |goto 58.81,34.78 |repeatable |only if itemcount(194970) >= 20 and not completedq(72823)
|tip |only if (itemcount(194730) >= 20 and not completedq(72828)) or (itemcount(194966) >= 20 and not completedq(72827)) or (itemcount(194967) >= 20 and not completedq(72826)) or (itemcount(194968) >= 20 and not completedq(72825)) or (itemcount(194969) >= 20 and not completedq(72824)) or (itemcount(194970) >= 20 and not completedq(72823))
You have completed the available daily quests at the Grimtusk's fishing hole
|tip This guide will reset when more become available.
|tip You can only earn reputation for turning in 1 Catch and Release quest of each type per week.
|tip You have completed the following turnins for the week: |only if completedq(72828,72827,72826,72825,72824,72823)
|tip Scalebelly Mackerel |only if completedq(72828)
|tip Thousandbite Piranha |only if completedq(72827)
|tip Aileron Seamoth |only if completedq(72826)
|tip Cerulean Spinefish |only if completedq(72825)
|tip Temporal Dragonhead |only if completedq(72824)
|tip Islefin Dorado |only if completedq(72823)
'|complete not completedq(72069) |next "Begin_Daily_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Daily Guides\\Dragonflight (60-70)\\Iskaara Tuskarr\\River Mouth Fishing Hole",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various daily quests at the River Mouth fishing location.",
condition_suggested=function() return level == 70 and completedq(70941) and factionrenown(2503) < 25 and areapoi(2022,7086) end,
startlevel=62,
areapoiid=7086,
areapoitype="Fishing Hole",
patch='100002',
},[[
step
talk Elder Poa##186448 |goto The Azure Span/0 12.41,49.34
|tip Inside the building.
|tip Turn in Stolen Totems from treasures in The Azure Span for rep.
'|turnin More Stolen Totems##70927 |repeatable |n
'|turnin Stolen Totems##70926 |repeatable |n
'|turnin Story of a Memorable Victory##72291 |n
Reach Renown Level 4 with the Iskaara Tuskarr |complete factionrenown(2511) >= 4
|tip Complete daily quests, weekly quests, and zone quests in The Azure Span to gain renown.
step
_Next to you:_
talk Rowie##197631
accept Fishing Holes##70941
step
talk Nunvuq##186554
Train Fishing |skillmax Fishing,1 |goto 13.94,49.24
step
talk Nunvuq##186554
Train Dragon Isles Fishing |q 70941/1 |goto 13.94,49.24
step
talk Nunvuq##186554
turnin Fishing Holes##70941 |goto 13.94,49.24
step
Wait for the River Mouth Fishing Hole to Become Active |complete areapoi(2022,7086)
step
label "Begin_Daily_Quests"
talk Brix Rocketcast##195444
accept Otter Devastation##70450 |goto The Waking Shores/0 63.63,75.01 |or
|tip Completing this quest will increase the River Mouth fishing hole stock quantity by 10.
|tip You may want to fish it down some before proceeding.
Click Here if this Quest Is Unavailable |confirm |or
step
talk Fisherman Pasqaa##195338
accept Flying Fish##70438 |goto 63.76,76.58
|tip Completing this quest will increase the River Mouth fishing hole stock quantity by 20.
|tip You may want to fish it down some before proceeding.
step
clicknpc Pesky Ottuk##195442
|tip Swim near them to scare them off.
Scare Off #10# Pesky Ottuks |q 70450/1 |goto 63.99,77.37
|only if haveq(70450) or completedq(70450)
step
talk Brix Rocketcast##195444
turnin Otter Devastation##70450 |goto 63.63,75.01
|tip Completing this quest will increase the River Mouth fishing hole stock quantity by 10.
|tip You may want to fish it down some before proceeding.
|only if haveq(70450) or completedq(70450)
step
clicknpc Stock Fish##195340
|tip They look like groups of small fish near the shore all over the riverbank.
use Throw Net##198855
|tip Use it on schools of stock fish.
Collect #3# Stock Fish |q 70438/1 |goto 74.22,67.49
step
extraaction Release Fish##385852
|tip Mount up and use your dragonriding.
Drop #3# Fish From Above |q 70438/2 |goto 64.78,77.10
step
talk Fisherman Pasqaa##195338
turnin Flying Fish##70438 |goto 63.76,76.58
|tip Completing this quest will increase the River Mouth fishing hole stock quantity by 20.
|tip You may want to fish it down some before proceeding.
step
talk Khuri##194584 |only if (itemcount(194730) >= 20 and not completedq(72828)) or (itemcount(194966) >= 20 and not completedq(72827)) or (itemcount(194967) >= 20 and not completedq(72826)) or (itemcount(194968) >= 20 and not completedq(72825)) or (itemcount(194969) >= 20 and not completedq(72824)) or (itemcount(194970) >= 20 and not completedq(72823))
accept Catch and Release: Scalebelly Mackerel##70199 |goto 63.32,75.82 |repeatable |noautoaccept |only if itemcount(194730) >= 20 and not completedq(72828)
accept Catch and Release: Thousandbite Piranha##70200 |goto 63.32,75.82 |repeatable |noautoaccept |only if itemcount(194966) >= 20 and not completedq(72827)
accept Catch and Release: Aileron Seamoth##70201 |goto 63.32,75.82 |repeatable |noautoaccept |only if itemcount(194967) >= 20 and not completedq(72826)
accept Catch and Release: Cerulean Spinefish##70202 |goto 63.32,75.82 |repeatable |noautoaccept |only if itemcount(194968) >= 20 and not completedq(72825)
accept Catch and Release: Temporal Dragonhead##70203 |goto 63.32,75.82 |repeatable |noautoaccept |only if itemcount(194969) >= 20 and not completedq(72824)
accept Catch and Release: Islefin Dorado##70935 |goto 63.32,75.82 |repeatable |noautoaccept |only if itemcount(194970) >= 20 and not completedq(72823)
|tip |only if (itemcount(194730) >= 20 and not completedq(72828)) or (itemcount(194966) >= 20 and not completedq(72827)) or (itemcount(194967) >= 20 and not completedq(72826)) or (itemcount(194968) >= 20 and not completedq(72825)) or (itemcount(194969) >= 20 and not completedq(72824)) or (itemcount(194970) >= 20 and not completedq(72823))
You have completed the available daily quests at the River Mouth fishing hole
|tip This guide will reset when more become available.
|tip You can only earn reputation for turning in 1 Catch and Release quest of each type per week.
|tip You have completed the following turnins for the week: |only if completedq(72828,72827,72826,72825,72824,72823)
|tip Scalebelly Mackerel |only if completedq(72828)
|tip Thousandbite Piranha |only if completedq(72827)
|tip Aileron Seamoth |only if completedq(72826)
|tip Cerulean Spinefish |only if completedq(72825)
|tip Temporal Dragonhead |only if completedq(72824)
|tip Islefin Dorado |only if completedq(72823)
'|complete not completedq(70438) |next "Begin_Daily_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Daily Guides\\Dragonflight (60-70)\\Iskaara Tuskarr\\Tyrhold Fishing Hole",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various daily quests at the Tyrhold fishing location.",
condition_suggested=function() return level == 70 and completedq(70941) and factionrenown(2503) < 25 and areapoi(2025,7271) end,
startlevel=62,
areapoiid=7271,
areapoitype="Fishing Hole",
patch='100002',
},[[
step
talk Elder Poa##186448 |goto The Azure Span/0 12.41,49.34
|tip Inside the building.
|tip Turn in Stolen Totems from treasures in The Azure Span for rep.
'|turnin More Stolen Totems##70927 |repeatable |n
'|turnin Stolen Totems##70926 |repeatable |n
'|turnin Story of a Memorable Victory##72291 |n
Reach Renown Level 4 with the Iskaara Tuskarr |complete factionrenown(2511) >= 4
|tip Complete daily quests, weekly quests, and zone quests in The Azure Span to gain renown.
step
_Next to you:_
talk Rowie##197631
accept Fishing Holes##70941
step
talk Nunvuq##186554
Train Fishing |skillmax Fishing,1 |goto 13.94,49.24
step
talk Nunvuq##186554
Train Dragon Isles Fishing |q 70941/1 |goto 13.94,49.24
step
talk Nunvuq##186554
turnin Fishing Holes##70941 |goto 13.94,49.24
step
Wait for the Tyrhold Fishing Hole to Become Active |complete areapoi(2025,7271)
step
label "Begin_Daily_Quests"
talk Cautious Fisher##197597
accept Underwater Menace##71193 |goto Thaldraszus/0 57.31,65.32
|tip Completing this quest will increase the Tyrhold fishing hole stock quantity by 10.
accept Highland Habitat##72074 |goto 56.57.31,65.32
|tip Completing this quest will increase the Tyrhold fishing hole stock quantity 20.
|tip You may want to fish it down some before proceeding.
step
cast Fishing##131474
|tip Fish in open water locations or in fishing pools.
|tip Fishing holes have a higher chance to drop these.
collect 5 Ominous Conch##194701 |q 71193
step
use Ominous Conch##194701
kill Astray Splasher##197411
|tip It spawns from the water.
|tip This enemy is elite and may require a group.
collect Grim Morsel##200667 |q 71193/1 |goto 57.31,65.46
step
talk Cautious Fisher##197597
turnin Underwater Menace##71193 |goto 57.31,65.32
|tip Completing this quest will increase the Tyrhold fishing hole stock quantity by 10.
|tip You may want to fish it down some before proceeding.
step
clicknpc Stock Fish##195340
|tip They look like groups of small fish near the shore all over the riverbank.
|tip They appear on your minimap as yellow dots.
use Throw Net##198855
|tip Use it on schools of stock fish.
Collect #3# Stock Fish |q 72074/1 |goto 56.99,62.28
step
extraaction Release Fish##385852
|tip Mount up and use your dragonriding.
Drop #3# Fish From Above |q 72074/2 |goto 57.01,65.33
step
talk Cautious Fisher##197597
turnin Highland Habitat##72074 |goto 57.31,65.32
|tip Completing this quest will increase the Tyrhold fishing hole stock quantity 20.
|tip You may want to fish it down some before proceeding.
step
talk Daring Fisher##197645 |only if (itemcount(194730) >= 20 and not completedq(72828)) or (itemcount(194966) >= 20 and not completedq(72827)) or (itemcount(194967) >= 20 and not completedq(72826)) or (itemcount(194968) >= 20 and not completedq(72825)) or (itemcount(194969) >= 20 and not completedq(72824)) or (itemcount(194970) >= 20 and not completedq(72823))
accept Catch and Release: Scalebelly Mackerel##70199 |goto 56.88,64.78 |repeatable |noautoaccept |only if itemcount(194730) >= 20 and not completedq(72828)
accept Catch and Release: Thousandbite Piranha##70200 |goto 56.88,64.78 |repeatable |noautoaccept |only if itemcount(194966) >= 20 and not completedq(72827)
accept Catch and Release: Aileron Seamoth##70201 |goto 56.88,64.78 |repeatable |noautoaccept |only if itemcount(194967) >= 20 and not completedq(72826)
accept Catch and Release: Cerulean Spinefish##70202 |goto 56.88,64.78 |repeatable |noautoaccept |only if itemcount(194968) >= 20 and not completedq(72825)
accept Catch and Release: Temporal Dragonhead##70203 |goto 56.88,64.78 |repeatable |noautoaccept |only if itemcount(194969) >= 20 and not completedq(72824)
accept Catch and Release: Islefin Dorado##70935 |goto 56.88,64.78 |repeatable |noautoaccept |only if itemcount(194970) >= 20 and not completedq(72823)
|tip |only if (itemcount(194730) >= 20 and not completedq(72828)) or (itemcount(194966) >= 20 and not completedq(72827)) or (itemcount(194967) >= 20 and not completedq(72826)) or (itemcount(194968) >= 20 and not completedq(72825)) or (itemcount(194969) >= 20 and not completedq(72824)) or (itemcount(194970) >= 20 and not completedq(72823))
You have completed the available daily quests at the Tyrhold fishing hole
|tip This guide will reset when more become available.
|tip You can only earn reputation for turning in 1 Catch and Release quest of each type per week.
|tip You have completed the following turnins for the week: |only if completedq(72828,72827,72826,72825,72824,72823)
|tip Scalebelly Mackerel |only if completedq(72828)
|tip Thousandbite Piranha |only if completedq(72827)
|tip Aileron Seamoth |only if completedq(72826)
|tip Cerulean Spinefish |only if completedq(72825)
|tip Temporal Dragonhead |only if completedq(72824)
|tip Islefin Dorado |only if completedq(72823)
'|complete not completedq(71193,72074) |next "Begin_Daily_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Daily Guides\\Dragonflight (60-70)\\Iskaara Tuskarr\\Roaring Dragonspring Fishing Hole",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various daily quests at the Roaring Dragonspring fishing location.",
condition_suggested=function() return level == 70 and completedq(70941) and factionrenown(2503) < 25 and areapoi(2023,7270) end,
startlevel=62,
areapoiid=7270,
areapoitype="Fishing Hole",
patch='100002',
},[[
step
talk Elder Poa##186448 |goto The Azure Span/0 12.41,49.34
|tip Inside the building.
|tip Turn in Stolen Totems from treasures in The Azure Span for rep.
'|turnin More Stolen Totems##70927 |repeatable |n
'|turnin Stolen Totems##70926 |repeatable |n
'|turnin Story of a Memorable Victory##72291 |n
Reach Renown Level 4 with the Iskaara Tuskarr |complete factionrenown(2511) >= 4
|tip Complete daily quests, weekly quests, and zone quests in The Azure Span to gain renown.
step
_Next to you:_
talk Rowie##197631
accept Fishing Holes##70941
step
talk Nunvuq##186554
Train Fishing |skillmax Fishing,1 |goto 13.94,49.24
step
talk Nunvuq##186554
Train Dragon Isles Fishing |q 70941/1 |goto 13.94,49.24
step
talk Nunvuq##186554
turnin Fishing Holes##70941 |goto 13.94,49.24
step
Wait for the Roaring Dragonspring Fishing Hole to Become Active |complete areapoi(2023,7270)
step
label "Begin_Daily_Quests"
talk Thrifty Fisher##198766
accept Predator Control##71192 |goto Ohn'ahran Plains/0 80.90,78.48
|tip Completing this quest will increase the Roaring Dragonspring fishing hole stock quantity by 10.
|tip You may want to fish it down some before proceeding.
accept Dragonsprings Drop##72072 |goto 80.90,78.48
|tip Completing this quest will increase the Roaring Dragonspring fishing hole stock quantity 20.
|tip You may want to fish it down some before proceeding.
stickystart "Collect_Stock_Fish"
step
click Place Effigy
|tip They look like small yellow totems on the ground near the water.
Set Up the Scary Effigy |q 71192/1 |goto 83.97,78.03 |count 1
step
click Place Effigy
|tip They look like small yellow totems on the ground near the water.
Set Up the Scary Effigy |q 71192/1 |goto 82.91,76.90 |count 2
step
click Place Effigy
|tip They look like small yellow totems on the ground near the water.
Set Up the Scary Effigy |q 71192/1 |goto 83.01,76.04 |count 3
step
click Place Effigy
|tip They look like small yellow totems on the ground near the water.
Set Up the Scary Effigy |q 71192/1 |goto 83.50,76.42 |count 4
step
click Place Effigy
|tip They look like small yellow totems on the ground near the water.
Set Up the Scary Effigy |q 71192/1 |goto 84.19,74.75 |count 5
step
label "Collect_Stock_Fish"
clicknpc Stock Fish##195340
|tip They look like groups of small fish near the shore all over the riverbank.
use Throw Net##198855
|tip Use it on schools of stock fish.
Collect #3# Stock Fish |q 72072/1 |goto 83.11,75.37
step
extraaction Release Fish##385852
|tip Mount up and use your dragonriding.
Drop #3# Fish From Above |q 72072/2 |goto 80.81,78.17
step
talk Thrifty Fisher##198766
turnin Predator Control##71192 |goto 80.90,78.48
|tip Completing this quest will increase the Roaring Dragonspring fishing hole stock quantity by 10.
|tip You may want to fish it down some before proceeding.
turnin Dragonsprings Drop##72072 |goto 80.90,78.48
|tip Completing this quest will increase the Roaring Dragonspring fishing hole stock quantity 20.
|tip You may want to fish it down some before proceeding.
step
talk Thrifty Fisher##198766 |only if (itemcount(194730) >= 20 and not completedq(72828)) or (itemcount(194966) >= 20 and not completedq(72827)) or (itemcount(194967) >= 20 and not completedq(72826)) or (itemcount(194968) >= 20 and not completedq(72825)) or (itemcount(194969) >= 20 and not completedq(72824)) or (itemcount(194970) >= 20 and not completedq(72823))
accept Catch and Release: Scalebelly Mackerel##70199 |goto 80.90,78.48 |repeatable |only if itemcount(194730) >= 20 and not completedq(72828)
accept Catch and Release: Thousandbite Piranha##70200 |goto 80.90,78.48 |repeatable |only if itemcount(194966) >= 20 and not completedq(72827)
accept Catch and Release: Aileron Seamoth##70201 |goto 80.90,78.48 |repeatable |only if itemcount(194967) >= 20 and not completedq(72826)
accept Catch and Release: Cerulean Spinefish##70202 |goto 80.90,78.48 |repeatable |only if itemcount(194968) >= 20 and not completedq(72825)
accept Catch and Release: Temporal Dragonhead##70203 |goto 80.90,78.48 |repeatable |only if itemcount(194969) >= 20 and not completedq(72824)
accept Catch and Release: Islefin Dorado##70935 |goto 80.90,78.48 |repeatable |only if itemcount(194970) >= 20 and not completedq(72823)
|tip |only if (itemcount(194730) >= 20 and not completedq(72828)) or (itemcount(194966) >= 20 and not completedq(72827)) or (itemcount(194967) >= 20 and not completedq(72826)) or (itemcount(194968) >= 20 and not completedq(72825)) or (itemcount(194969) >= 20 and not completedq(72824)) or (itemcount(194970) >= 20 and not completedq(72823))
You have completed the available daily quests at the Roaring Dragonspring fishing hole
|tip This guide will reset when more become available.
|tip You can only earn reputation for turning in 1 Catch and Release quest of each type per week.
|tip You have completed the following turnins for the week: |only if completedq(72828,72827,72826,72825,72824,72823)
|tip Scalebelly Mackerel |only if completedq(72828)
|tip Thousandbite Piranha |only if completedq(72827)
|tip Aileron Seamoth |only if completedq(72826)
|tip Cerulean Spinefish |only if completedq(72825)
|tip Temporal Dragonhead |only if completedq(72824)
|tip Islefin Dorado |only if completedq(72823)
'|complete not completedq(71192,72072) |next "Begin_Daily_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Daily Guides\\Dragonflight (60-70)\\Maruuk Centaur\\Aylaag Outpost Daily Quests (Rusza'thar Reach)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various daily quests at the Rusza'thar Reach Aylaag Outpost location.",
condition_suggested=function() return level == 62 and factionrenown(2503) >= 4 and factionrenown(2503) < 25 and areapoitime(7102) > 0 end,
startlevel=62,
areapoiid=7102,
areapoitype="Aylaag Outpost",
patch='100002',
},[[
step
talk Hunt Instructor Basku##195454 |goto Ohn'ahran Plains/0 64.01,41.00
|tip Turn in hunting trophies from grand hunts for rep.
'|turnin More Hunting Trophies##72868 |repeatable |n
'|turnin More Hunting Trophies##70929 |repeatable |n
'|turnin More Hunting Trophies##70928 |repeatable |n
Reach Renown Level 4 with the Maruuk Centaur |complete factionrenown(2503) >= 4
|tip Complete daily quests, weekly quests, and zone quests in Ohn'ahran Plains to gain renown.
|tip The Aylaag Nomads will offer you quests each time they set up camp in Ohn'ahran Plains.
step
Wait for the Aylaag Centaur to Set Up Camp at Rusza'thar Reach |complete areapoitime(7102) > 0
|tip The Aylaag centaur are currently travelling. |only if areapoitime(7101) == 0 and areapoitime(7102) == 0 and areapoitime(7103) == 0
|tip |only if areapoitime(7102) == 0
Click Here to Load the "Aylaag Outpost Daily Quests (Eaglewatch Outpost)" Guide |confirm |next "Daily Guides\\Dragonflight (60-70)\\Maruuk Centaur\\Aylaag Outpost Daily Quests (Eaglewatch Outpost)" |only if areapoitime(7103) > 0
|tip The Aylaag centaur are currently camped at Eaglewatch Outpost. |only if areapoitime(7103) > 0
Click Here to Load the "Aylaag Outpost Daily Quests (Pinewood Post)" Guide |confirm |next "Daily Guides\\Dragonflight (60-70)\\Maruuk Centaur\\Aylaag Outpost Daily Quests (Pinewood Post)" |only if areapoitime(7101) > 0
|tip The Aylaag centaur are currently camped at Pinewood Post. |only if areapoitime(7101) > 0
|tip You need to be inside Ohn'ahran Plains to detect its location.
step
label "Begin_Dailies"
talk Hadari Khan##185853
|tip Inside the building.
accept The Best Defense...##65796 |goto Ohn'ahran Plains/0 71.39,31.04 |only if questpossible |or
Accept the Daily Quest |complete false or completedq(65796) |goto 71.39,31.04 |or
step
talk Barnak of the Reeds##185867
|tip Inside the building.
accept Where Rivers Sleep##65789 |goto 71.35,31.02 |only if questpossible |or
Accept the Daily Quest |complete false or completedq(65789) |goto 71.35,31.02 |or
step
talk Huntmaster Malkik##185870
accept The Otter Side##65784 |goto 71.20,31.55 |only if questpossible |or 2
accept Counting Argali##66698 |goto 71.20,31.55 |only if questpossible |or 2
Accept the Daily Quest |complete false or completedq(65784,66698) |goto 71.20,31.55 |or 2
step
talk Aylaag Shepherd##190260
Speak with the Aylaag Shepherd |q 66698/1 |goto 73.85,31.28
|only if haveq(66698) or completedq(66698)
step
Return #2# Wandering Argali to the Herd |q 66698/2 |goto 76.74,31.14
|tip Find a wandering Argali and walk towards it.
|tip It will run the opposite direction of you.
|tip Run it back to the main herd.
You can find the herd at [74.51,30.99]
You can find another Wandering Argali at [75.90,34.06]
|only if haveq(66698) or completedq(66698)
step
click Otter Burrow+
|tip They look like unstable patches of earth on the ground.
clicknpc Gargantuan River Otter##187977+
|tip Use the "Hold Tight" ability when the otter begins to run around.
Bring #3# Gargantuan River Otters to the Huntmaster |q 65784/1 |goto 75.59,25.39
Return them to Malkik here [71.21,31.55]
|only if haveq(65784) or completedq(65784)
stickystart "Collect_Mudfin_Pouches"
step
click Fragrant Bloom##376034+
|tip They look like large plants around this area.
collect 8 Fragrant Bloom##191839 |q 65789/1 |goto 82.44,27.13
|only if haveq(65789) or completedq(65789)
step
label "Collect_Mudfin_Pouches"
Kill enemies around this area
collect 6 Mudfin Pouch##191840 |q 65789/2 |goto 81.87,30.58
|only if haveq(65789) or completedq(65789)
step
kill Sirena the Fangbreaker##185907 |q 65796/1 |goto 76.85,39.83
|tip This enemy is elite and may require a group.
|only if haveq(65796) or completedq(65796)
step
talk Hadari Khan##185853
|tip Inside the building.
turnin The Best Defense...##65796 |goto Ohn'ahran Plains/0 71.39,31.04
|only if haveq(65796) or completedq(65796)
step
talk Barnak of the Reeds##185867
|tip Inside the building.
turnin Where Rivers Sleep##65789 |goto 71.35,31.02
|only if haveq(65789) or completedq(65789)
step
talk Huntmaster Malkik##185870
turnin The Otter Side##65784 |goto 71.20,31.55 |only if haveq(65784) or completedq(65784)
turnin Counting Argali##66698 |goto 71.20,31.55 |only if haveq(66698) or completedq(66698)
|only if haveq(65784,66698) or completedq(65784,66698)
step
You have completed all daily quests in Aylaag Outpost
|tip This guide will reset when more become available.
'|complete not completedq(65796,65789,65784,66698) |next "Begin_Dailies"
step
You have completed all daily quests for the Rusza'thar Reach area Aylaag Outpost |only if areapoitime(7102) > 0
|tip You can only complete these quests once each time the outpost sets up at this location. |only if areapoitime(7102) > 0
|tip This guide will reset when they offer more quests at this location. |only if areapoitime(7102) > 0
The Aylaag centaur are currently travelling and not offering quests |complete false |only if default
Click Here to Load the "Aylaag Outpost Daily Quests (Pinewood Post)" Guide |confirm |next "Daily Guides\\Dragonflight (60-70)\\Maruuk Centaur\\Aylaag Outpost Daily Quests (Pinewood Post)" |only if areapoitime(7101) > 0
|tip The Aylaag centaur are currently camped at Pinewood Post. |only if areapoitime(7101) > 0
Click Here to Load the "Aylaag Outpost Daily Quests (Eaglewatch Outpost)" Guide |confirm |next "Daily Guides\\Dragonflight (60-70)\\Maruuk Centaur\\Aylaag Outpost Daily Quests (Eaglewatch Outpost)" |only if areapoitime(7103) > 0
|tip The Aylaag centaur are currently camped at Eaglewatch Outpost. |only if areapoitime(7103) > 0
'|complete not completedq(65796,65789,65784,66698) and areapoitime(7102) > 0 |next "Begin_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Daily Guides\\Dragonflight (60-70)\\Maruuk Centaur\\Aylaag Outpost Daily Quests (Pinewood Post)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various daily quests at the Pinewood Post Aylaag Outpost location.",
condition_suggested=function() return level == 62 and factionrenown(2503) >= 4 and factionrenown(2503) < 25 and areapoitime(7101) > 0 end,
startlevel=62,
areapoiid=7101,
areapoitype="Aylaag Outpost",
patch='100002',
},[[
step
talk Hunt Instructor Basku##195454 |goto Ohn'ahran Plains/0 64.01,41.00
|tip Turn in hunting trophies from grand hunts for rep.
'|turnin More Hunting Trophies##72868 |repeatable |n
'|turnin More Hunting Trophies##70929 |repeatable |n
'|turnin More Hunting Trophies##70928 |repeatable |n
Reach Renown Level 4 with the Maruuk Centaur |complete factionrenown(2503) >= 4
|tip Complete daily quests, weekly quests, and zone quests in Ohn'ahran Plains to gain renown.
|tip The Aylaag Nomads will offer you quests each time they set up camp in Ohn'ahran Plains.
step
Wait for the Aylaag Centaur to Set Up Camp at Pinewood Post |complete areapoitime(7101) > 0
|tip The Aylaag centaur are currently travelling. |only if areapoitime(7101) == 0 and areapoitime(7102) == 0 and areapoitime(7103) == 0
|tip |only if areapoitime(7101) == 0
Click Here to Load the "Aylaag Outpost Daily Quests (Rusza'thar Reach)" Guide |confirm |next "Daily Guides\\Dragonflight (60-70)\\Maruuk Centaur\\Aylaag Outpost Daily Quests (Rusza'thar Reach)" |only if areapoitime(7102) > 0
|tip The Aylaag centaur are currently camped at Rusza'thar Reach. |only if areapoitime(7102) > 0
Click Here to Load the "Aylaag Outpost Daily Quests (Eaglewatch Outpost)" Guide |confirm |next "Daily Guides\\Dragonflight (60-70)\\Maruuk Centaur\\Aylaag Outpost Daily Quests (Eaglewatch Outpost)" |only if areapoitime(7103) > 0
|tip The Aylaag centaur are currently camped at Eaglewatch Outpost. |only if areapoitime(7103) > 0
|tip You need to be inside Ohn'ahran Plains to detect its location.
step
label "Begin_Dailies"
Talk to NPCs around the camp
accept Darkened Clouds##67222 |goto Ohn'ahran Plains/0 70.70,63.05 |only if questpossible |or 4
accept Scaling Ever Higher##70352 |goto 70.70,63.05 |only if questpossible |or 4
accept Blood of Dragons##70279 |goto 70.70,63.05 |only if questpossible |or 4
accept If There's Wool There's a Way##70990 |goto 70.70,63.05 |only if questpossible |or 4
accept Of Wind and Water##67034 |goto 70.70,63.05 |only if questpossible |or 4
Accept the Daily Quest |complete false or completedq(67222,70352,70279,70990,67034) |goto 70.70,63.05 |or 4
step
use the Aylaag Skinning Shear##200153
|tip Use it on Wild Cliffhoofs around this area.
|tip Some of them will attack you.
collect 8 Wild Argali Wool##200149 |q 70990/1 |goto 68.25,66.83
|only if haveq(70990) or completedq(70990)
stickystart "Slay_Windsong_Rise_Forces"
step
click Storm Scepter+
Destroy #6# Storm Scepters |q 67222/2 |goto 59.62,65.71
|only if haveq(67222) or completedq(67222)
step
label "Slay_Windsong_Rise_Forces"
Kill Nokud and Primalist enemies around this area
Slay#12# Windsong Rise Forces |q 67222/1 |goto 59.62,65.71
|only if haveq(67222) or completedq(67222)
step
Enter the cave |goto 62.08,77.22 < 20 |walk
kill Karkidan##193725 |q 70279/1 |goto 61.67,79.35
|tip Inside the cave.
|tip This enemy is elite and may require a group.
|only if haveq(70279) or completedq(70279)
step
extraaction Call for Fire##385191
|tip Use it on Territorial Proto Drakes flying around in the air.
kill 5 Territorial Proto Drake##191778 |q 70352/2 |goto 81.88,76.16
You can find more around:
[83.22,68.95]
[77.93,76.42]
|only if haveq(70352) or completedq(70352)
stickystart "Collect_Springborn_Core"
step
click Windtossed Feather##377560+
|tip They look like small feathers surrounded by swirling wind on the ground around this area.
|tip It helps to zoom your camera in slightly to see them better.
collect 5 Windtossed Feather##194452 |q 67034/2 |goto 78.67,78.24
|only if haveq(67034) or completedq(67034)
step
label "Collect_Springborn_Core"
kill Sulfuric Rager##191682+
kill Hissing Springsoul##191712+
collect 8 Springborn Core##194509 |q 67034/1 |goto 78.67,78.24
|only if haveq(67034) or completedq(67034)
step
Kill Hornswog enemies around this area
Slay #10# Hornswogs |q 70352/1 |goto 81.66,71.78
You can find more around [79.25,75.98] |notinsticky
|only if haveq(70352) or completedq(70352)
step
talk Barnak of the Reeds##185867
|tip Inside the building.
turnin Of Wind and Water##67034 |goto 70.94,62.62
|only if haveq(67034) or completedq(67034)
step
talk Hadari Khan##185853
|tip Inside the building.
turnin Darkened Clouds##67222 |goto Ohn'ahran Plains/0 70.98,62.58
|only if haveq(67222) or completedq(67222)
step
talk Toluiqi##185881
turnin Scaling Ever Higher##70352 |goto 70.56,62.85
|only if haveq(70352) or completedq(70352)
step
talk Huntmaster Malkik##185870
turnin Blood of Dragons##70279 |goto 70.65,63.58 |only if haveq(70279) or completedq(70279)
turnin If There's Wool There's a Way##70990 |goto 70.65,63.58 |only if haveq(70990) or completedq(70990)
|only if haveq(70279,70990) or completedq(70279,70990)
step
You have completed all daily quests for the Pinewood Post area Aylaag Outpost |only if areapoitime(7101) > 0
|tip You can only complete these quests once each time the outpost sets up at this location. |only if areapoitime(7101) > 0
|tip This guide will reset when they offer more quests at this location. |only if areapoitime(7101) > 0
The Aylaag centaur are currently travelling and not offering quests |complete false |only if default
Click Here to Load the "Aylaag Outpost Daily Quests (Rusza'thar Reach)" Guide |confirm |next "Daily Guides\\Dragonflight (60-70)\\Maruuk Centaur\\Aylaag Outpost Daily Quests (Rusza'thar Reach)" |only if areapoitime(7102) > 0
|tip The Aylaag centaur are currently camped at Rusza'thar Reach. |only if areapoitime(7102) > 0
Click Here to Load the "Aylaag Outpost Daily Quests (Eaglewatch Outpost)" Guide |confirm |next "Daily Guides\\Dragonflight (60-70)\\Maruuk Centaur\\Aylaag Outpost Daily Quests (Eaglewatch Outpost)" |only if areapoitime(7103) > 0
|tip The Aylaag centaur are currently camped at Eaglewatch Outpost. |only if areapoitime(7103) > 0
'|complete not completedq(67222,70352,70279,70990,67034) and areapoitime(7101) > 0 |next "Begin_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Daily Guides\\Dragonflight (60-70)\\Maruuk Centaur\\Aylaag Outpost Daily Quests (Eaglewatch Outpost)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various daily quests at the Eaglewatch Outpost Aylaag Outpost location.",
condition_suggested=function() return level == 62 and factionrenown(2503) >= 4 and factionrenown(2503) < 25 and areapoitime(7103) > 0 end,
startlevel=62,
areapoiid=7103,
areapoitype="Aylaag Outpost",
patch='100002',
},[[
step
talk Hunt Instructor Basku##195454 |goto Ohn'ahran Plains/0 64.01,41.00
|tip Turn in hunting trophies from grand hunts for rep.
'|turnin More Hunting Trophies##72868 |repeatable |n
'|turnin More Hunting Trophies##70929 |repeatable |n
'|turnin More Hunting Trophies##70928 |repeatable |n
Reach Renown Level 4 with the Maruuk Centaur |complete factionrenown(2503) >= 4
|tip Complete daily quests, weekly quests, and zone quests in Ohn'ahran Plains to gain renown.
|tip The Aylaag Nomads will offer you quests each time they set up camp in Ohn'ahran Plains.
step
Wait for the Aylaag Centaur to Set Up Camp at Eaglewatch Outpost |complete areapoitime(7103) > 0
|tip The Aylaag centaur are currently travelling. |only if areapoitime(7101) == 0 and areapoitime(7102) == 0 and areapoitime(7103) == 0
|tip |only if areapoitime(7103) == 0
Click Here to Load the "Aylaag Outpost Daily Quests (Rusza'thar Reach)" Guide |confirm |next "Daily Guides\\Dragonflight (60-70)\\Maruuk Centaur\\Aylaag Outpost Daily Quests (Rusza'thar Reach)" |only if areapoitime(7102) > 0
|tip The Aylaag centaur are currently camped at Rusza'thar Reach. |only if areapoitime(7102) > 0
Click Here to Load the "Aylaag Outpost Daily Quests (Pinewood Post)" Guide |confirm |next "Daily Guides\\Dragonflight (60-70)\\Maruuk Centaur\\Aylaag Outpost Daily Quests (Pinewood Post)" |only if areapoitime(7101) > 0
|tip The Aylaag centaur are currently camped at Pinewood Post. |only if areapoitime(7101) > 0
|tip You need to be inside Ohn'ahran Plains to detect its location.
step
label "Begin_Dailies"
Talk to NPCs around Eaglewatch Outpost
accept An Opportunistic Approach##65798 |goto Ohn'ahran Plains/0 55.66,52.11 |only if questpossible |or 4
accept Tradition Not Forgotten##70210 |goto 55.66,52.11 |only if questpossible |or 4
accept Thundering Plains##67605 |goto 55.66,52.11 |only if questpossible |or 4
accept Duck, Duck, Trap##71241 |goto 55.66,52.11 |only if questpossible |or 4
accept Bakar Dream of Lost Argali##70701 |goto 55.66,52.11 |only if questpossible |or 4
accept Draconic Defensive##70299 |goto 55.66,52.11 |only if questpossible |or 4
Accept the Daily Quests |complete false or completedq(65798,70210,67605,71241) |goto 55.66,52.11 |or 4
step
talk Aylaag Shepherd##196041
Speak with the Aylaag Shepherd |q 70701/1 |goto 54.66,52.11
|only if haveq(70701) or completedq(70701)
stickystart "Collect_Ayanga's_Horn"
step
clicknpc Wandering Argali##199874
Return #3# Wandering Argali to the herd |q 70701/2 |goto 53.56,50.04
|tip Find a wandering Argali and walk towards it.
|tip It will run the opposite direction of you.
|tip Run it back to the main herd.
You can find the herd at [54.28,52.04]
You can find another Wandering Argali at [56.65,54.81]
|only if haveq(70701) or completedq(70701)
step
label "Collect_Ayanga's_Horn"
kill Ayanga##192961
|tip This enemy is elite and may require a group.
collect Ayanga's Horn##195386 |q 67605/1 |goto 52.41,49.96
|only if haveq(67605) or completedq(67605)
step
kill Bluebill Waddler##192947+
collect Bluebill Meat##200674 |n
click Sprung Trap
|tip They look like small steel traps on the ground around this area.
|tip Each trap requires one Bluebill Meat to reset.
Reset #6# Traps |q 71241/1 |goto 43.11,46.38
|only if haveq(71241) or completedq(71241)
stickystart "Slay_Nokhud_Forces"
step
Click Weapons and Armor around this area
|tip Click the various weapons and shields found throughout the camp.
collect 8 Nokhud Armament##199477 |q 65798/2 |goto 40.94,39.54
|only if haveq(65798) or completedq(65798)
step
label "Slay_Nokhud_Forces"
Kill Nokud and Primalist enemies around this area
Slay#10# Nokhud Forces |q 65798/1 |goto 40.94,39.54
|only if haveq(65798) or completedq(65798)
stickystart "Collect_Howling_Hearts"
step
Kill Primalist enemies around this area
Slay#10# Primalist Forces |q 70299/2 |goto 23.40,37.45
|only if haveq(70299) or completedq(70299)
step
label "Collect_Howling_Hearts"
Kill Invading enemies around this area
collect 8 Howling Heart##198691 |q 70299/1 |goto 23.40,37.45
|only if haveq(70299) or completedq(70299)
stickystart "Slay_Risen_Beasts"
step
click Aylaag Incense+
|tip They look like bowls filled with incense sticks.
Place #6# Aylaag Incense |q 70210/1 |goto 34.48,67.78
You can find more around [79.25,75.98] |notinsticky
|only if haveq(70210) or completedq(70210)
step
label "Slay_Risen_Beasts"
Kill Risen enemies around this area
Slay #8# Risen Beasts |q 70210/2 |goto 34.48,67.78
|only if haveq(70210) or completedq(70210)
step
talk Hadari Khan##185853
|tip Inside the building.
turnin An Opportunistic Approach##65798 |goto Ohn'ahran Plains/0 55.91,51.79
|only if haveq(65798) or completedq(65798)
step
talk Barnak of the Reeds##185867
turnin Tradition Not Forgotten##70210 |goto 55.91,51.88
turnin Draconic Defensive##70299 |goto 55.91,51.88
|only if haveq(70210) or completedq(70210)
step
talk Huntmaster Malkik##185870
turnin Thundering Plains##67605 |goto 55.59,52.52 |only if haveq(67605) or completedq(67605)
turnin Duck, Duck, Trap##71241 |goto 55.59,52.52 |only if haveq(71241) or completedq(71241)
turnin Bakar Dream of Lost Argali##70701 |goto 55.59,52.52 |only if haveq(70701) or completedq(70701)
|only if haveq(67605,71241,70701) or completedq(67605,71241,70701)
step
You have completed all daily quests in Aylaag Outpost
|tip This guide will reset when more become available.
'|complete not completedq(65798,70210,67605,71241) |next "Begin_Dailies"
step
You have completed all daily quests for the Eaglewatch Outpost area Aylaag Outpost |only if areapoitime(7103) > 0
|tip You can only complete these quests once each time the outpost sets up at this location. |only if areapoitime(7103) > 0
|tip This guide will reset when they offer more quests at this location. |only if areapoitime(7103) > 0
The Aylaag centaur are currently travelling and not offering quests |complete false |only if default
Click Here to Load the "Aylaag Outpost Daily Quests (Rusza'thar Reach)" Guide |confirm |next "Daily Guides\\Dragonflight (60-70)\\Maruuk Centaur\\Aylaag Outpost Daily Quests (Rusza'thar Reach)" |only if areapoitime(7102) > 0
|tip The Aylaag centaur are currently camped at Rusza'thar Reach. |only if areapoitime(7102) > 0
Click Here to Load the "Aylaag Outpost Daily Quests (Pinewood Post)" Guide |confirm |next "Daily Guides\\Dragonflight (60-70)\\Maruuk Centaur\\Aylaag Outpost Daily Quests (Pinewood Post)" |only if areapoitime(7101) > 0
|tip The Aylaag centaur are currently camped at Pinewood Post. |only if areapoitime(7101) > 0
'|complete not completedq(65798,70210,67605,71241) and areapoitime(7103) > 0 |next "Begin_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Daily Guides\\Dragonflight (60-70)\\The Obsidian Citadel Weekly Quests",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various weekly quests in the Obsidian Citadel \n"..
"for Sabellian and Wrathion.",
condition_suggested=function() return level == 70 end,
startlevel=70,
areapoiid=7394,
areapoitype="Obsidian Citadel",
patch='100002',
},[[
step
label "Begin_Dailies"
accept Allegiance To One##66419 |goto The Waking Shores/0 24.38,55.69
|tip On the top balcony.
|tip You will accept this quest automatically.
step
talk Sabellian##185894
_Or_
talk Wrathion##187495
Tell them _"I swear to support your current efforts._"
|tip On the balcony.
|tip You will unlock an additional quest to gain reputation with whichever one you choose.
Show Support to Wrathion or Sabellian |q 66419/1 |goto 24.38,55.69
step
Talk to NPCs around this area
accept Eager To Please##66103 |goto The Waking Shores/0 26.50,62.39 |only if questpossible |or 2
accept Shaking Our Foundations##69918 |goto 26.50,62.39 |only if questpossible |or 2
accept Make a Statement##66633 |goto 26.50,62.39 |only if questpossible |or 2
accept Becca Black and the Seven Gnomes##69926 |goto 26.50,62.39 |only if questpossible |or 2
accept Becca Black and the Seven Gnomes##66856 |goto 26.50,62.39 |only if questpossible |or 2
accept Disarming Behavior##65842 |goto 26.50,62.39 |only if questpossible |or 2
accept Securing Our Legacy##72448 |goto 26.50,62.39 |only if questpossible |or 2
Accept the Daily Quests |complete false |goto 26.50,62.39 |or 2
|only if not completedq(66802)
step
Talk to NPCs around this area
accept Eager To Please##66103 |goto The Waking Shores/0 26.50,62.39 |only if questpossible |or 3
accept Shaking Our Foundations##69918 |goto 26.50,62.39 |only if questpossible |or 3
accept Make a Statement##66633 |goto 26.50,62.39 |only if questpossible |or 3
accept Becca Black and the Seven Gnomes##69926 |goto 26.50,62.39 |only if questpossible |or 3
accept Becca Black and the Seven Gnomes##66856 |goto 26.50,62.39 |only if questpossible |or 3
accept Disarming Behavior##65842 |goto 26.50,62.39 |only if questpossible |or 3
accept Securing Our Legacy##72448 |goto 26.50,62.39 |only if questpossible |or 3
Accept the Daily Quests |complete false |goto 26.50,62.39 |or 3
|only if completedq(66802)
step
talk Stoker Volrax##188179
accept The Tools Of One's Trade##66326 |goto 24.87,60.35 |only if questpossible |or
accept Feeding the Fire##66308 |goto 24.87,60.35 |only if questpossible |or
Accept the Daily Quest |complete false |goto 24.87,60.35 |or
stickystart "Collect_Dragonclaw_Punches"
stickystart "Collect_Obsidian_Bickern"
stickystart "Collect_Precision_Scale_Hammer"
stickystart "Collect_Blacksteel_Tongs"
step
Talk to NPCs around this area
accept Honor Our Fallen##66445 |goto 27.61,56.51 |only if questpossible |or 2
accept Greatest Of Threats##72447 |goto 27.61,56.51 |only if questpossible |or 2
accept Bar Their Efforts##66321 |goto 27.61,56.51 |only if questpossible |or 2
accept Dragon Eyes##67051 |goto 27.61,56.51 |only if questpossible |or 2
accept Dragon Eyes##67099 |goto 27.61,56.51 |only if questpossible |or 2
accept Wyrm Food##67142 |goto 27.61,56.51 |only if questpossible |or 2
accept Hands-Off Operation##66449 |goto 27.61,56.51 |only if questpossible |or 2
Accept the Daily Quests |complete false |goto 27.61,56.51 |or 2
|only if completedq(66802)
step
Talk to NPCs around this area
accept Honor Our Fallen##66445 |goto 27.61,56.51 |only if questpossible |or 3
accept Greatest Of Threats##72447 |goto 27.61,56.51 |only if questpossible |or 3
accept Bar Their Efforts##66321 |goto 27.61,56.51 |only if questpossible |or 3
accept Dragon Eyes##67051 |goto 27.61,56.51 |only if questpossible |or 3
accept Dragon Eyes##67099 |goto 27.61,56.51 |only if questpossible |or 3
accept Wyrm Food##67142 |goto 27.61,56.51 |only if questpossible |or 3
accept Hands-Off Operation##66449 |goto 27.61,56.51 |only if questpossible |or 3
Accept the Daily Quests |complete false |goto 27.61,56.51 |or 3
|only if not completedq(66802)
step
talk Evorian##192661
Ask him _"What are you doing here?"_
collect Evorian Report##194716 |q 67099/3 |goto 20.17,39.54
|only if haveq(67099) or completedq(67099)
stickystop "Collect_Dragonclaw_Punches"
stickystop "Collect_Obsidian_Bickern"
stickystop "Collect_Precision_Scale_Hammer"
stickystop "Collect_Blacksteel_Tongs"
step
Enter the cave |goto 29.36,52.52 < 7 |walk
Kill Pitchstone enemies around this area
|tip Inside the cave.
collect Cindershard Coal##191659 |q 66308/1 |goto 29.43,48.49
|only if haveq(66308) or completedq(66308)
stickystart "Collect_Worldbreaker_Weapons"
step
Enter the cave |goto 35.63,47.95 < 10 |walk
kill Weaponmaster Vordak##186219 |q 65842/2 |goto 34.38,45.95
|tip Inside the cave.
|only if haveq(65842) or completedq(65842)
step
label "Collect_Worldbreaker_Weapons"
click Worldbreaker Weapon Rack##376084+
|tip They look like large racks full of weapons all over the area.
click Worldbreaker Weapon##376103+
collect 15 Worldbreaker Weapons##191057 |q 65842/1 |goto 27.65,56.12
|tip They look like loose weapons on the ground all over the area.
|only if haveq(65842) or completedq(65842)
step
talk Myridian##192564
Ask her _"What have you found here?"_
collect Myridian Report##194707 |q 67099/1 |goto 39.41,49.94
|only if haveq(67099) or completedq(67099)
step
use Gulchak's Pointer##194743
|tip Use it on rubble clouds on the ground.
Kill enemies around this area
collect 12 Lava-Charred Flesh##194744 |q 67142/1 |goto 39.59,61.10
|only if haveq(67142) or completedq(67142)
step
talk Zepharion##192474
Ask him _"What have you found here?"_
collect Zepharion Report##194713 |q 67099/2 |goto 46.35,54.58
|only if haveq(67099) or completedq(67099)
step
Talk to Blacktalon NPCs around this area
Tell them _"I'm here to test your combat skills."_
|tip Defeat them in combat.
Test #10# Blacktalons |q 66103/1 |goto 42.70,67.21
|only if haveq(66103) or completedq(66103)
step
talk Fao the Relentless##186331
turnin Eager To Please##66103 |goto 42.42,66.18
|only if haveq(66103) or completedq(66103)
step
Enter the cave |goto 32.94,73.99 < 20 |walk
Run up the ramp |goto 32.69,74.87 < 7 |only if walking
talk Baskilan##188158
|tip Inside the cave.
Ask him _"What have you found here?"_
Retrieve Baskilan's Report |q 67051/1 |goto 33.44,76.06
|only if haveq(67051) or completedq(67051)
step
Leave the cave |goto 32.90,73.88 < 20 |only if walking
talk Vazallia##188140
|tip Up on top of the mountain.
Ask her _"What have you found here?"_
Retrieve Vazallia's Report |q 67051/2 |goto 33.48,76.22
|only if haveq(67051) or completedq(67051)
step
kill Olphis the Molten##181875
collect Neltharus Forge Crystal##193625 |q 66856/2 |goto 34.80,66.88
|only if haveq(66856) or completedq(66856)
step
kill Searing Flame Harchek##191476
collect Obsidian Crafting Fork##193627 |q 66856/1 |goto 32.51,68.44
|only if haveq(66856) or completedq(66856)
stickystart "Disrupt_the_Burning_Ascent_Djaradin"
step
kill Ruinous##193522
collect Lavafused Armor##197959 |q 69926/2 |goto 32.75,71.91
|only if haveq(69926) or completedq(69926)
step
click Djaradin Sachel##377498+
|tip They look like large bags on the ground.
collect 12 Precision Pennyweight##193626 |q 66856/3 |goto 32.24,65.74
|only if haveq(66856) or completedq(66856)
step
click Deepminted Coin##378471+
|tip They look like large coins on the ground around the lava.
collect 10 Deepminted Coin##197950 |q 69926/3 |goto 33.64,64.20
|only if haveq(69926) or completedq(69926)
step
talk Zepharion##192474
Ask him _"What have you found here?"_
Retrieve Zepharion's Report |q 67051/3 |goto 31.86,70.50
|only if haveq(67051) or completedq(67051)
step
Enter the cave |goto 22.83,75.41 < 7 |walk
kill Pirdan The Blinder##186512
|tip Inside the cave.
collect Dragonforged Poker##197946 |q 69926/1 |goto 22.60,74.60
|only if haveq(69926) or completedq(69926)
step
label "Disrupt_the_Burning_Ascent_Djaradin"
Kill Qalashi enemies around this area
click Siege Arbalest+
|tip They look like giant ballista all over the camp.
click Djaradin Banner+
|tip They look like large flags on posts all over the camp.
Disrupt the Burning Ascent Djaradin |q 66321/1 |goto 36.47,62.15
|only if haveq(66321) or completedq(66321)
step
use Osoria's Assistance##194519
Begin Flying with Osoria |invehicle |q 66449 |goto 27.69,56.38
|only if haveq(66449) or completedq(66449)
stickystart "Kill_Searclaw_Phoenixes"
step
kill Stone Shackles##192325+
|tip They look like stone hands growing out of the ground around the citadel.
|tip Use the "Searing Bolt" ability to damage enemies.
|tip "Speed of Flight" will provide a brief speed boost.
Rescue #8# Threatened Whelps |q 66449/1 |goto 28.42,59.14
|only if haveq(66449) or completedq(66449)
step
label "Kill_Searclaw_Phoenixes"
kill 12 Searclaw Phoenix##196552 |q 66449/2 |goto 28.42,59.14
|tip Use the "Searing Bolt" ability to damage them in the air.
|tip "Speed of Flight" will provide a brief speed boost.
|only if haveq(66449) or completedq(66449)
step
Stop Flying with Osoria |outvehicle |goto 24.89,60.79 |q 66449
|tip Use the "Drop Off" ability on your vehicle bar to safely return to the ground.
|only if haveq(66449) or completedq(66449)
step
kill Ashbinder Tornecha##192344 |q 66449/3 |goto 24.37,60.95
|tip Use the "Searing Bolt" ability to damage enemies.
|tip "Speed of Flight" will provide a brief speed boost.
|only if haveq(66449) or completedq(66449)
stickystart "Collect_Earth-Warder's_Flame_Blade"
stickystart "Collect_Dragonclaw_Punches"
stickystart "Collect_Obsidian_Bickern"
stickystart "Collect_Precision_Scale_Hammer"
stickystart "Plant_Banners_in_Djaradin_Corpses"
stickystart "Collect_Fallen_Defender's_Rings"
stickystart "Collect_Blacksteel_Tongs"
stickystart "Slay_Rare_Enemies"
stickystart "Slay_Rare_Enemies_2"
step
kill Boneshaper Jardak##188693
collect Horn of Scorxia##191908 |q 66445/3 |goto 27.39,59.39
|only if haveq(66445) or completedq(66445)
step
Enter the tunnel |goto 27.13,60.84 < 10 |walk
kill Stonewrecker Tokara##193442 |q 69918/1 |goto 25.10,54.93
|tip Inside the underground ruin.
|only if haveq(69918) or completedq(69918)
step
kill Molka The Grinder##193443 |q 69918/2 |goto 26.03,55.94
|tip Inside the underground ruin.
|only if haveq(69918) or completedq(69918)
step
talk Talonstalker Kavia##190899
turnin Shaking Our Foundations##69918 |goto 26.61,62.49 |only if haveq(69918) or completedq(69918)
turnin Disarming Behavior##65842 |goto 26.61,62.49 |only if haveq(65842) or completedq(65842)
|only if haveq(69918,65842) or completedq(69918,65842)
step
label "Collect_Earth-Warder's_Flame_Blade"
kill Molten Uprising##187868+
|tip You can also kill elite enemies in the courtyard.
collect 3 Earth-Warder's Flame Blade##194544 |q 66445/2 |goto 30.03,56.07
|only if haveq(66445) or completedq(66445)
step
label "Collect_Dragonclaw_Punches"
Kill enemies around this area
collect 10 Dragonclaw Punch##191686 |q 66326/1 |goto 28.68,58.93
|only if haveq(66326) or completedq(66326)
step
label "Collect_Obsidian_Bickern"
Kill enemies around this area
collect Obsidian Bickern##191683 |q 66326/3 |goto 28.68,58.93
|only if haveq(66326) or completedq(66326)
step
label "Collect_Precision_Scale_Hammer"
Kill enemies around this area
collect Precision Scale Hammer##194336 |q 66326/4 |goto 28.68,58.93
|only if haveq(66326) or completedq(66326)
step
label "Plant_Banners_in_Djaradin_Corpses"
Kill enemies around this area
use the Flag of the Black Dragon Flight##193915
|tip Use it on the corpses of Djaradin enemies you kill.
Plant #12# Banners in Djaradin Corpses |q 66633/1 |goto 28.68,58.93
|only if haveq(66633) or completedq(66633)
step
label "Collect_Fallen_Defender's_Rings"
click Bone Pile+
|tip They look like large piles of loose bones all over the citadel and surrounding area.
collect 8 Fallen Defender's Ring##191902 |q 66445/1 |goto 27.72,56.33
|only if haveq(66445) or completedq(66445)
step
label "Collect_Blacksteel_Tongs"
click Blacksteel Tongs##376511+
|tip They look like small sets of tongs on the ground all over the citadel.
collect 5 Blacksteel Tongs##191684 |q 66326/2 |goto 28.68,58.93
|only if haveq(66326) or completedq(66326)
step
talk Talonstalker Kavia##190899
turnin Make a Statement##66633 |goto 26.61,62.49 |only if haveq(66633) or completedq(66633)
turnin Disarming Behavior##65842 |goto 26.61,62.49 |only if haveq(65842) or completedq(65842)
turnin Flamecarved Bone##69983 |goto 26.61,62.49 |only if haveq(69983) or completedq(69983)
turnin Lost Battlepack##66882 |goto 26.61,62.49 |only if haveq(66882) or completedq(66882)
turnin Securing Our Legacy##72448 |goto 26.61,62.49 |only if readyq(72448) or completedq(72448)
turnin Ancient Obsidian Charm##70847 |goto 27.69,56.37 |only if haveq(70847) or completedq(70847)
|only if readyq(72448) or haveq(66633,69983,66882,70847) or completedq(66633,69983,66882,72448,70847)
step
talk Becca Black##191014
turnin Becca Black and the Seven Gnomes##69926 |goto 26.45,62.34 |only if haveq(69926) or completedq(69926)
turnin Becca Black and the Seven Gnomes##66856 |goto 26.45,62.34 |only if haveq(66856) or completedq(66856)
|only if haveq(69926,66856) or completedq(69926,66856)
step
talk Stoker Volrax##188179
turnin The Tools Of One's Trade##66326 |goto 24.87,60.35 |only if haveq(66326) or completedq(66326)
turnin Feeding the Fire##66308 |goto 24.87,60.35 |only if haveq(66308) or completedq(66308)
|only if haveq(66326,66308) or completedq(66326,66308)
step
talk Voraxian##196518
turnin Wyrm Food##67142 |goto 27.60,56.68
|only if haveq(67142) or completedq(67142)
step
talk Exadria##191193
turnin Honor Our Fallen##66445 |goto 27.69,56.37 |only if haveq(66445) or completedq(66445)
turnin Greatest Of Threats##72447 |goto 27.69,56.37 |only if readyq(72447) or completedq(72447)
turnin Bar Their Efforts##66321 |goto 27.69,56.37 |only if readyq(66321) or completedq(66321)
turnin Dragon Eyes##67051 |goto 27.69,56.37 |only if haveq(67051) or completedq(67051)
turnin Dragon Eyes##67099 |goto 27.69,56.37 |only if haveq(67099) or completedq(67099)
turnin Hands-Off Operation##66449 |goto 27.69,56.37 |only if haveq(66449) or completedq(66449)
turnin Gold-Banded Dragon Tooth##69984 |goto 27.69,56.37 |only if haveq(69984) or completedq(69984)
turnin Ancient Horn Ring##66883 |goto 27.69,56.37 |only if haveq(66883) or completedq(66883)
turnin Forgotten Dragon Crest##70848 |goto 27.69,56.37 |only if haveq(70848) or completedq(70848)
|only if readyq(72447) or haveq(66445,69984,66883,70848,66321,67051,67099,66449) or completedq(66445,72447,69984,66883,70848,66321,67051,67099,66449)
step
label "Slay_Rare_Enemies"
Slay #2# Rare Enemies |q 72447/1 |goto 28.24,60.34 |or
'|complete not completedq(69918,66103,66633,65842,72448,69926,66326,66308,67142,66445,72447,66321,67051,67099,66449) |next "Begin_Dailies" |or
|only if haveq(72447) or completedq(72447)
step
label "Slay_Rare_Enemies_2"
Slay #2# Rare Enemies |q 72448/1 |goto 28.24,60.34 |or
'|complete not completedq(69918,66103,66633,65842,72448,69926,66326,66308,67142,66445,72447,66321,67051,67099,66449) |next "Begin_Dailies" |or
|only if haveq(72448) or completedq(72448)
step
talk Talonstalker Kavia##190899
turnin Flamecarved Bone##69983 |goto 26.61,62.49 |only if haveq(69983) or completedq(69983)
turnin Lost Battlepack##66882 |goto 26.61,62.49 |only if haveq(66882) or completedq(66882)
turnin Securing Our Legacy##72448 |goto 26.61,62.49 |only if haveq(72448) or completedq(72448)
turnin Ancient Obsidian Charm##70847 |goto 27.69,56.37 |only if haveq(70847) or completedq(70847)
|only if haveq(69983,66882,72448,70847) or completedq(69983,66882,72448,70847)
step
talk Exadria##191193
turnin Greatest Of Threats##72447 |goto 27.69,56.37 |only if haveq(72447) or completedq(72447)
turnin Gold-Banded Dragon Tooth##69984 |goto 27.69,56.37 |only if haveq(69984) or completedq(69984)
turnin Ancient Horn Ring##66883 |goto 27.69,56.37 |only if haveq(66883) or completedq(66883)
turnin Forgotten Dragon Crest##70848 |goto 27.69,56.37 |only if haveq(70848) or completedq(70848)
|only if haveq(72447,69984,66883,70848) or completedq(72447,69984,66883,70848)
step
You have completed all weekly quests the Obsidian Citadel
|tip This guide will reset when more become available.
'|complete not completedq(69918,66103,66633,65842,72448,69926,66326,66308,67142,66445,72447,66321,67051,67099,66449) |next "Begin_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Daily Guides\\Dragonflight (60-70)\\Siege on Dragonbane Keep",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Siege on Dragonbane Keep \n"..
"in The Waking Shores.",
condition_suggested=function() return level == 70 end,
areapoiid=7267,
areapoitype="Dragonbane Keep",
patch='100002',
},[[
step
talk Sorotis##195768 |goto Valdrakken/0 26.08,40.03
|tip Inside the building.
|tip Turn in Titan Relics from titan, dragon, and primalist treasures.
'|turnin More Titan Relics##70841
'|turnin A Titan Relic##70840
Reach Renown Level 5 with the Valdrakken Accord |complete factionrenown(2510) >= 5
|tip Complete daily quests, weekly quests, and zone quests in Thaldraszus to gain renown.
|tip Renown level 5 unlocks the assault on Dragonbane Keep event in The Waking Shores.
step
label "Begin_Dragonbane_Keep"
Wait for the Assault on Dragonbane Keep to Begin |complete areapoitime(7267) == 0 |goto The Waking Shores/0 30.42,78.08
|tip The assault group will take one hour to assemble.
|tip You will need a small group to complete this.
step
Wait for the Group to Assemble |scenariostart |goto The Waking Shores/0 30.42,78.08
|tip It takes a few minutes for the group to begin moving.
|tip You will need a small group to complete this.
step
map The Waking Shores/0
path follow smart; loop off; ants straight; dist 30
path	30.44,78.16	30.71,76.19	30.71,74.32	31.52,72.65	31.69,71.39
path	31.62,70.48
clicknpc Beef Snack##195806+
|tip They look like charred slugs off the road on either side.
extraaction Feed Beef##386728
|tip Feed the meat to Beef.
Kill enemies that attack the wagon
Reach the camp |scenariogoal 1/53396 |goto 30.67,75.67
step
Click objects around this area
|tip Click the various yellow objects.
Kill enemies around this area
Clear out the Entrance and Setup Base Camp |scenariogoal 2/0 |goto 30.26,70.27
stickystart "Slay_Djaradin_Forces"
step
kill Wyrmeater##186612 |scenariogoal 3/53399 |goto 29.17,72.35
step
kill Scalepiercer##186632 |scenariogoal 3/53764 |goto 28.09,68.43
|tip Inside the tent.
step
label "Slay_Djaradin_Forces"
Kill enemies around this area
Slay the Djaradin Forces |scenariogoal 3/0 |goto 26.39,70.92
step
kill Grand Flame##188009 |scenariogoal 4/53765 |goto 24.67,70.43
step
Enter the building |goto 24.26,70.37 < 10 |walk
kill Inferna the Bound##186735 |scenariogoal 5/53360 |goto 24.11,70.30
|tip Downstairs inside the building.
step
Wait for the Assault to Begin Assembling |complete areapoitime(7104) == 0 |next "Begin_Dragonbane_Keep"
|tip The keep will remain captured for one hour.
]])
ZygorGuidesViewer:RegisterGuide("Daily Guides\\Dragonflight (60-70)\\A Cataloger's Paradise",{
author="support@zygorguides.com",
description="\nUnlock cataloging World Quests with the Dragonscale Expedition.",
condition_suggested=function() return level >= 60 and factionrenown(2507) >= 8 and not achieved(16758) end,
condition_end=function() return completedq(65486) end,
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
|tip Use the "Catalog" ability on your vehicle bar to take puctures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
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
ZygorGuidesViewer:RegisterGuide("Daily Guides\\Dragonflight (60-70)\\A Climber's Calling",{
author="support@zygorguides.com",
description="\nThis guide will walk you through unlocking the Climbing ability.",
condition_suggested=function() return level == 60 and factionrenown(2507) >= 6 and not completedq(65421) end,
condition_end=function() return completedq(65421) end,
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
ZygorGuidesViewer:RegisterGuide("Daily Guides\\Dragonflight (60-70)\\Dragon Isles Emissary",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the questline to unlock a weekly renown quest.",
startlevel=60,
patch='100002',
},[[
step
talk Alexstrasza the Life-Binder##187678
|tip At the top of the tower.
accept Renown of the Dragon Isles##71232 |goto Valdrakken/0 58.00,34.60
step
talk Therazal##196499
turnin Renown of the Dragon Isles##71232 |goto 50.15,56.29
accept Open Orientation##72585 |goto 50.15,56.29
step
Enter the building |goto Valdrakken/0 55.41,45.81 < 30 |walk
talk Unatos##193015
|tip Inside the building.
accept Orientation: Valdrakken##72406 |goto 58.16,35.11
step
talk Kaestrasz##185561
Meet the Drake Manuscript and Armor Supplier |q 72406/2 |goto 46.67,78.94
step
talk Dothenos##191000
Meet the Trade Coordinator |q 72406/3 |goto 36.43,62.79
step
Enter the building |goto 37.57,50.31 < 10 |walk
talk Provisioner Thom##193659
|tip Inside the building.
Meet the Equipment Supplier |q 72406/1 |goto 36.57,50.64
step
talk Unatos##193015
|tip Inside the building, on the ground floor.
turnin Orientation: Valdrakken##72406 |goto 58.17,35.12
step
talk Naleidea Rivergleam##186869
accept Orientation: Dragonscale Basecamp##72397 |goto The Waking Shores/0 47.88,82.41
step
talk Rae'ana##188265
Meet the Scholars Supplier |q 72397/1 |goto 47.92,82.08
step
talk Granpap Whiskers##187408
Meet the Catalogers Supplier |q 72397/2 |goto 47.73,83.23
step
talk Pathfinder Jeb##187700
Meet the Explorers Supplier |q 72397/3 |goto 47.33,83.40
step
talk Boss Magor##189065
Meet the Artisans Supplier |q 72397/4 |goto 46.94,82.89
step
Enter the building |goto 47.30,82.77 < 10 |walk
talk Cataloger Jakes##189226
|tip Inside the building.
Meet the Keeper of Renown |q 72397/5 |goto 47.11,82.57
step
talk Toddy Whiskers##187276
|tip Inside the building.
turnin Orientation: Dragonscale Basecamp##72397 |goto 47.22,82.73
step
talk Sansok Khan##191283
accept Orientation: Maruukai##72429 |goto Ohn'ahran Plains/0 61.44,39.51
step
talk Quartermaster Huseng##196707
|tip Inside the building.
Meet the Renown Quartermaster |q 72429/2 |goto 60.40,37.72
step
talk Agari Dotur##185179
|tip Inside the building.
Meet the Keeper of Renown |q 72429/1 |goto 60.40,37.66
step
talk Agari Dotur##185179
|tip Inside the building.
turnin Orientation: Maruukai##72429 |goto 60.40,37.66
step
talk Murik##193006
accept Orientation: Iskaara##72435 |goto The Azure Span/0 13.14,49.26
step
talk Arvik##186449
Meet the Equipment Supplier |q 72435/1 |goto 12.90,48.82
step
talk Norukk##196544
Meet the Drake Scholar |q 72435/4 |goto 12.93,48.62
step
talk Tatto##186462
Meet the Mount Supplier |q 72435/3 |goto 13.80,49.73
step
talk Rokkutuk##194059
Meet the Recipe Supplier |q 72435/2 |goto 13.91,50.08
step
talk Murik##193006
turnin Orientation: Iskaara##72435 |goto 13.14,49.26
step
talk Therazal##196499
turnin Open Orientation##72585 |goto Valdrakken/0 50.15,56.29
step
label "Begin_Weekly_Quests"
talk Therazal##196499
accept Aiding the Accord##70750 |goto 50.15,56.29 |only if questpossible |or
accept Aiding the Accord: A Feast For All##72068 |goto 50.15,56.29 |only if questpossible |or
accept Aiding the Accord: The Hunt is On##72373 |goto 50.15,56.29 |only if questpossible |or
accept Aiding the Accord: Dragonbane Keep##72374 |goto 50.15,56.29 |only if questpossible |or
accept Aiding the Accord: The Isles Call##72375 |goto 50.15,56.29 |only if questpossible |or
accept Aiding the Accord: Sniffenseeking##75859 |goto 50.15,56.29 |only if questpossible |or
Accept the Weekly Quest |complete false |goto 50.15,56.29 |or
stickystart "Gain_Reputation_Throughout_the_Dragon_Isles_72068"
stickystart "Gain_Reputation_Throughout_the_Dragon_Isles_72373"
stickystart "Gain_Reputation_Throughout_the_Dragon_Isles_72374"
stickystart "Gain_Reputation_Throughout_the_Dragon_Isles_72375"
stickystart "Gain_Reputation_Throughout_the_Dragon_Isles_75859"
step
Gain #4000# Reputation Throughout the Dragon Isles |q 70750/1
|tip Gain reputation by completing world quests, daily quests, and weekly quests in the Dragon Isles.
|tip You can also gain reputation by working through leveling guides and zone side quests.
|only if haveq(70750) or completedq(70750)
step
Participate in a Community Feast |q 72068/1 |or
|tip Use the "Community Feast" guide to accomplish this.
Click Here to Load the "Community Feast" Guide |confirm |loadguide "Reputation Guides\\Dragonflight Reputations\\Iskaara Tuskarr\\Community Feast"
|only if haveq(72068) or completedq(72068)
step
Participate in a Hunt |q 72373/1
|tip Use the various grand hunt guides to accomplish this.
|tip Click on an active hunt icon in progress from a zone map to load the appropriate guide.
|only if haveq(72373) or completedq(72373)
step
Lay Siege to Dragonbane Keep |q 72374/1
|tip Use the "Seige on Dragonbane Keep" guide to accomplish this.
Click Here to Load the "Seige on Dragonbane Keep" Guide |confirm |loadguide "Daily Guides\\Dragonflight (60-70)\\Siege on Dragonbane Keep"
|only if haveq(72374) or completedq(72374)
step
Complete #5# World Quests |q 72375/1
|tip Use the Dragonflight world quest guides to accomplish this.
|only if haveq(72375) or completedq(72375)
step
Complete a Dig with Myrrit |q 75859/2
|tip Use the Dragonflight world quest guides to accomplish this.
|only if haveq(75859) or completedq(75859)
step
label "Gain_Reputation_Throughout_the_Dragon_Isles_72068"
Gain #3000# Reputation Throughout the Dragon Isles |q 72068/2
|tip Gain reputation by completing world quests, daily quests, and weekly quests in the Dragon Isles.
|tip You can also gain reputation by working through leveling guides and zone side quests.
|only if haveq(72068) or completedq(72068)
step
label "Gain_Reputation_Throughout_the_Dragon_Isles_72373"
Gain #3000# Reputation Throughout the Dragon Isles |q 72373/2
|tip Gain reputation by completing world quests, daily quests, and weekly quests in the Dragon Isles.
|tip You can also gain reputation by working through leveling guides and zone side quests.
|only if haveq(72373) or completedq(72373)
step
label "Gain_Reputation_Throughout_the_Dragon_Isles_72374"
Gain #3000# Reputation Throughout the Dragon Isles |q 72374/2
|tip Gain reputation by completing world quests, daily quests, and weekly quests in the Dragon Isles.
|tip You can also gain reputation by working through leveling guides and zone side quests.
|only if haveq(72374) or completedq(72374)
step
label "Gain_Reputation_Throughout_the_Dragon_Isles_72375"
Gain #3000# Reputation Throughout the Dragon Isles |q 72375/2
|tip Gain reputation by completing world quests, daily quests, and weekly quests in the Dragon Isles.
|tip You can also gain reputation by working through leveling guides and zone side quests.
|only if haveq(72375) or completedq(72375)
step
label "Gain_Reputation_Throughout_the_Dragon_Isles_75859"
Gain #3000# Reputation Throughout the Dragon Isles |q 75859/3
|tip Gain reputation by completing world quests, daily quests, and weekly quests in the Dragon Isles.
|tip You can also gain reputation by working through leveling guides and zone side quests.
|only if haveq(75859) or completedq(75859)
step
talk Therazal##196499
turnin Aiding the Accord##70750 |goto 50.15,56.29 |only if haveq(70750) or completedq(70750)
turnin Aiding the Accord: A Feast For All##72068 |goto 50.15,56.29 |only if haveq(72068) or completedq(72068)
turnin Aiding the Accord: The Hunt is On##72373 |goto 50.15,56.29 |only if haveq(72373) or completedq(72373)
turnin Aiding the Accord: Dragonbane Keep##72374 |goto 50.15,56.29 |only if haveq(72374) or completedq(72374)
turnin Aiding the Accord: The Isles Call##72375 |goto 50.15,56.29 |only if haveq(72375) or completedq(72375)
turnin Aiding the Accord: Sniffenseeking##75859 |goto 50.15,56.29 |only if haveq(75859) or completedq(75859)
step
You have completed all daily quests in Aylaag Outpost
|tip This guide will reset when more become available.
'|complete not completedq(70750,72068,72373,72374,72375,75859) |next "Begin_Weekly_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Daily Guides\\Dragonflight (60-70)\\Forbidden Reach Envoy Dailies",{
author="support@zygorguides.com",
description="This guide will walk you through completing the various daily quests in the Forbidden Reach.",
condition_valid=function() return completedallq(75050,74769,73157) end,
condition_valid_msg="You must complete the \"An Eclectic Accord,\" \"Stemming the Irontide,\" and \"Wings of Mercy,\" quests in the Forbidden Reach leveling guide to unlock envoy quests.",
patch='100007',
},[[
step
click Envoy Charter
|tip Choose your envoy for the day.
|tip Each day you can select an envoy and gain +10% renown gained for that day.
|tip Picking an envoy for the first time each week will unlock that envoy's twice-weekly envoy quests.
|tip You can unlock all 4 envoy quests each week by picking a new envoy each day until you choose them all.
Click Here to Continue |confirm |goto The Forbidden Reach/5 34.18,59.90
step
talk Cataloger Daela##200566
turnin New Adventures##74908 |goto 34.32,59.98
|only if haveq(74908)
step
talk Turik##200562
turnin New Catches##74909 |goto 34.20,60.03
|only if haveq(74909)
step
talk Storykeeper Ashekh##200564
turnin New Foes##74910 |goto 34.08,59.97
|only if haveq(74910)
step
talk Kraxxus##200563
turnin New Horizons##74911 |goto 34.00,59.81
|only if haveq(74911)
step
talk Cataloger Daela##200566
accept Filming the Caldera##74389 |goto 34.32,59.98 |only if questactive(74389)
accept Spelunking the Den##74118 |goto 34.32,59.98 |only if questactive(74118)
|only if questactive(74389,74118)
step
click Cataloger's Gyrocopter
|tip Use the "Catalog" ability on your vehicle bar to take puctures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
Ride the Cataloger's Gyrocopter |q 74389/1 |goto 42.76,35.36
|only if haveq(74389) or completedq(74389)
step
Take Pictures of Wildlife |q 74389/2 |goto 42.32,36.83
|tip Use the "Catalog" ability on your vehicle bar to take puctures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
|only if haveq(74389) or completedq(74389)
step
click Climbing Gear
|tip Inside the cave.
Acquire the Climbing Gear |q 74118/1 |goto 42.62,60.91
|only if haveq(74118) or completedq(74118)
step
click Expedition Climbing Hook
|tip On the ceiling.
Grapple onto the Expedition Climbing Hook |q 74118/2 |goto 42.91,61.64
|only if haveq(74118) or completedq(74118)
step
click Primalist Cache Key
|tip Follow the left side to the hanging bag.
|tip Click Stalactite Handholds to move along the ceiling and excavate artifacts.
collect Primalist Cache Key##204561 |q 74118/3 |goto 42.70,59.75
|only if haveq(74118) or completedq(74118)
step
click Primalist Cache
|tip It's in an alcove high up in the cave.
|tip Click Stalactite Handholds to move along the ceiling.
|tip Follow the right side to the handhold that provides a clear view of the hook in the alcove above with the chest.
collect Primalist Scriptures##204852 |q 74118/4 |goto 43.69,62.10
|only if haveq(74118) or completedq(74118)
step
talk Turik##200562
accept Harpooner's Challenge##74391 |goto 34.20,60.03 |only if questactive(74391)
accept Angler's Challenge##74119 |goto 34.19,60.04 |only if questactive(74119)
|only if questactive(74391,74119)
step
use the Ominous Conch##194701
|tip Use 5 of these at the Large Lunker Sighting here to summon a Lunker.
|tip You can also fish in open water, and summon a lunker each time you catch an Ominious Conch.
use the Iskaaran Harpoon##194510
|tip Use it to spear the lunker.
extraaction Pull Hard##374599
|tip Use this after spearing a lunker to pull it to the shore and kill it.
collect 3 Lunker Morsel##204093 |q 74391/2 |goto 76.25,44.57
|only if haveq(74391) or completedq(74391)
step
cast Fishing##131474
|tip Catch fish in the fishing hole.
|tip You can also complete the "Dragonskull Shoal" fishing daily quest.
|tip The daily quest counts as 40 caught fish.
Catch 50 or Restock 25 Fish in Dragonskull Fishing Hole |q 74119/1 |goto 34.18,59.98
|only if haveq(74119) or completedq(74119)
step
talk Storykeeper Ashekh##200564
accept Rare Prey##74117 |goto 34.07,59.96 |only if questactive(74117)
accept Brutal Prey##74390 |goto 34.07,59.96 |only if questactive(74390)
|only if questactive(74117,74390)
step
Kill rare elite enemies
|tip Open your world map and look for rare elite icons.
|tip They look like stars with silver dragons around them.
|tip You may need a group to defeat these enemies.
|tip Kill any two you can find.
Hunt Down #2# Rare Elite Creatures |q 74117/1
|only if haveq(74117) or completedq(74117)
step
Kill elite enemies
|tip Inside the building.
|tip You may need a group to defeat these enemies.
Slay #5# Elite Creatures |q 74390/1 |goto The War Creche/0 61.04,45.79
|only if haveq(74390) or completedq(74390)
step
talk Kraxxus##200563
accept Reach South##75263 |goto The Forbidden Reach/5 34.00,59.81 |only if questactive(75263)
accept Reach South##74392 |goto 34.00,59.81 |only if questactive(74392)
accept Reach Center##75261 |goto 34.00,59.81 |only if questactive(75261)
accept Reach North##75237 |goto 34.00,59.81 |only if questactive(75237)
|only if questactive(75263,74392,75261,75237)
stickystart "Complete_the_Southern_Reach_Route_75263"
step
talk Bronze Timekeeper##200183
Complete the Stormsunder Crater Circuit |q 75263/1 |goto 76.14,65.62
|tip You can complete either one of these races in reverse or advanced mode once to complete the quest.
|only if haveq(75263) or completedq(75263)
step
label "Complete_the_Southern_Reach_Route_75263"
talk Bronze Timekeeper##200247 |notinsticky
Complete the Southern Reach Route |q 75263/2 |goto 63.66,84.06
|tip You can complete either one of these races in reverse or advanced mode once to complete the quest. |notinsticky
|only if haveq(75263) or completedq(75263)
stickystart "Complete_the_Southern_Reach_Route_74392"
step
talk Bronze Timekeeper##200183
Complete the Stormsunder Crater Circuit |q 74392/1 |goto 76.14,65.62
|tip You can complete either one of these races in reverse or advanced mode once to complete the quest.
|only if haveq(74392) or completedq(74392)
step
label "Complete_the_Southern_Reach_Route_74392"
talk Bronze Timekeeper##200247 |notinsticky
Complete the Southern Reach Route |q 74392/2 |goto 63.66,84.06
|tip You can complete either one of these races in reverse or advanced mode once to complete the quest. |notinsticky
|only if haveq(74392) or completedq(74392)
stickystart "Complete_the_Aerie_Chasm_Cruise_75261"
stickystart "Complete_the_Caldera_Climb_75237"
step
talk Bronze Timekeeper##200417
Complete the Forbidden Reach Rush |q 75261/2 |goto 49.42,60.06
|tip You can complete either one of these races in reverse or advanced mode once to complete the quest.
|only if haveq(75261) or completedq(75261)
step
label "Complete_the_Aerie_Chasm_Cruise_75261"
talk Bronze Timekeeper##200417 |notinsticky
Complete the Aerie Chasm Cruise |q 75261/1 |goto 63.09,51.95
|tip You can complete either one of these races in reverse or advanced mode once to complete the quest. |notinsticky
|only if haveq(75261) or completedq(75261)
stickystart "Complete_the_Aerie_Chasm_Cruise_75237"
step
talk Bronze Timekeeper##200417
Complete the Forbidden Reach Rush |q 75237/3 |goto 49.42,60.06
|tip You can complete either one of these races in reverse or advanced mode once to complete the quest.
|only if haveq(75237) or completedq(75237)
step
label "Complete_the_Aerie_Chasm_Cruise_75237"
talk Bronze Timekeeper##200417 |notinsticky
Complete the Aerie Chasm Cruise |q 75237/1 |goto 63.09,51.95
|tip You can complete either one of these races in reverse or advanced mode once to complete the quest. |notinsticky
|only if haveq(75237) or completedq(75237)
step
label "Complete_the_Caldera_Climb_75237"
talk Bronze Timekeeper##200316 |notinsticky
Complete the Caldera Climb |q 75237/2 |goto 41.36,14.55
|tip You can complete either one of these races in reverse or advanced mode once to complete the quest. |notinsticky
|only if haveq(75237) or completedq(75237)
step
talk Kraxxus##200563
turnin Reach South##75263 |goto 34.00,59.81 |only if haveq(75263) or completedq(75263)
turnin Reach South##74392 |goto 34.00,59.81 |only if haveq(74392) or completedq(74392)
turnin Reach Center##75261 |goto 34.00,59.81 |only if haveq(75261) or completedq(75261)
turnin Reach North##75237 |goto 34.00,59.81 |only if haveq(75237) or completedq(75237)
|only if haveq(75263,74392,75261,75237) or completedq(75263,74392,75261,75237)
step
talk Cataloger Daela##200566
turnin Filming the Caldera##74389 |goto 34.32,59.98 |only if haveq(74389) or completedq(74389)
turnin Spelunking the Den##74118 |goto 34.32,59.98 |only if haveq(74118) or completedq(74118)
|only if haveq(74389,74118) or completedq(74389,74118)
step
talk Storykeeper Ashekh##200564
turnin Rare Prey##74117 |goto 34.07,59.96 |only if haveq(74117) or completedq(74117)
turnin Brutal Prey##74390 |goto 34.07,59.96 |only if haveq(74390) or completedq(74390)
|only if haveq(74117,74390) or completedq(74117,74390)
step
talk Turik##200562
turnin Harpooner's Challenge##74391 |goto 34.20,60.03 |only if haveq(74391) or completedq(74391)
turnin Angler's Challenge##74119 |goto 34.19,60.04 |only if haveq(74119) or completedq(74119)
|only if haveq(74391,74119) or completedq(74391,74119)
]])
ZygorGuidesViewer:RegisterGuide("Daily Guides\\Dragonflight (60-70)\\Iskaara Tuskarr\\Dragonskull Island Fishing Hole",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various daily quests at the Dragonskull Island fishing location.",
startlevel=60,
areapoiid=7412,
areapoitype="Fishing Hole",
patch='100007',
},[[
step
talk Elder Poa##186448 |goto The Azure Span/0 12.41,49.34
|tip Inside the building.
|tip Turn in Stolen Totems from treasures in The Azure Span for rep.
'|turnin More Stolen Totems##70927 |repeatable |n
'|turnin Stolen Totems##70926 |repeatable |n
'|turnin Story of a Memorable Victory##72291 |n
Reach Renown Level 4 with the Iskaara Tuskarr |complete factionrenown(2511) >= 4
|tip Complete daily quests, weekly quests, and zone quests in The Azure Span to gain renown.
step
_Next to you:_
talk Rowie##197631
accept Fishing Holes##70941
step
talk Nunvuq##186554
Train Fishing |skillmax Fishing,1 |goto 13.94,49.24
step
talk Nunvuq##186554
Train Dragon Isles Fishing |q 70941/1 |goto 13.94,49.24
step
talk Nunvuq##186554
turnin Fishing Holes##70941 |goto 13.94,49.24
step
Wait for the Tyrhold Fishing Hole to Become Active |complete areapoi(2151,7412)
step
label "Begin_Daily_Quests"
talk Reclusive Fisher##200947
accept Dragonskull Shoal##73226 |goto The Forbidden Reach/5 74.17,40.53
|tip Completing this quest will increase the Dragonskull Island fishing hole stock quantity by 20.
|tip You may want to fish it down some before proceeding.
step
clicknpc Stock Fish##195340
|tip They look like groups of small fish near the shore all over the riverbank.
|tip They appear on your minimap as yellow dots.
use Throw Net##198855
|tip Use it on schools of stock fish.
Collect #3# Stock Fish |q 73226/1 |goto 83.76,29.78
step
extraaction Release Fish##385852
|tip Mount up and use your dragonriding.
Drop #3# Fish From Above |q 73226/2 |goto 74.17,40.53
step
talk Reclusive Fisher##200947
turnin Dragonskull Shoal##73226 |goto 74.17,40.53
|tip Completing this quest will increase the Dragonskull Island fishing hole stock quantity 20.
|tip You may want to fish it down some before proceeding.
step
You have completed the available daily quests at the Dragonskull Island fishing hole
|tip This guide will reset when more become available.
'|complete not completedq(73226) |next "Begin_Daily_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (60-70)\\The Forbidden Reach Side Quests",{
author="support@zygorguides.com",
startlevel=68,
patch='100007',
},[[
step
label "Active_Quests_Available"
Wait for a Quest to Become Available |complete questactive(73189,75024,75026,73191,75025,73190,73142,73179,73178)
step
talk Volethi##200727
accept Creche Cache##73189 |goto The Forbidden Reach/5 34.84,57.47 |only if questactive(73189)
accept Sneaky Pebbles##75024 |goto 34.85,57.48 |only if questactive(75024)
|only if questactive(73189,75024)
step
talk Tukkaraq##200558
accept Up to the Highest Height!##75026 |goto 34.36,58.57
|only if questactive(75026)
step
talk Cataloger Coralie##201291
accept Snake Wrangling##73191 |goto 34.36,59.28 |only if questactive(73191)
accept A Good Day for Rolling##75025 |goto 34.36,59.28 |only if questactive(75025)
|only if questactive(73191,75025)
step
talk Scalecommander Cindrethresh##199199
accept Toxic Infestation##73190 |goto 35.31,59.49 |only if questactive(73190)
accept Busting Blues##73142 |goto 35.31,59.50 |only if questactive(73142)
accept Soupocalypse Now!##73179 |goto 35.30,59.49 |only if questactive(73179)
accept Up Close and Personal##73194 |goto 35.30,59.49 |only if questactive(73194)
|only if questactive(73190,73142,73179,73194)
step
talk Scalecommander Azurathel##199204
accept Hands Off Our Booty!##73178 |goto 35.53,58.69
|only if questactive(73178)
stickystart "Slay_Irontide_Cutthroats"
step
click Stolen Booty##385999+
|tip They look like small chests around these areas.
collect 10 Stolen Goods##202647 |q 73178/2 |goto 38.56,64.50
You can find more around:
[37.67,78.67]
[34.25,45.30]
step
label "Slay_Irontide_Cutthroats"
Kill Irontide enemies around this area
Slay #10# Irontide Cutthroats |q 73178/1 |goto 37.67,78.67
step
talk Fusethrian##200987
Choose _<Ask for explosive... soup?>_
Obtain the Explosive Soup Experiments |q 73179/1 |goto 34.16,59.77
|only if haveq(73179) or completedq(73179)
step
clicknpc Morqut Glider##201376
Take the Glider |q 73179/2 |goto 35.70,59.00
|only if haveq(73179) or completedq(73179)
step
Slay #50# Irontide Invaders |q 73179/3 |goto 21.13,45.45
|tip Use the abilities on your vehicle bar to attack enemies on the boat.
|only if haveq(73179) or completedq(73179)
stickystart "Kill_Dragonbane_Beetles"
step
kill Pestilent Pincher##200910 |q 73190/2 |goto 41.04,35.84
|only if haveq(73190) or completedq(73190)
step
use the Proto-Killing Spear##202642
|tip Use it on a proto dragon flying around one of these areas.
|tip While on the proto dragon, attack it until your bar switches to a vehicle bar.
|tip Spam the ability to deal damage to the proto dragon.
|tip Repeat this until it dies.
Slay a Proto-dragon with the Proto-Killing Spear |q 73194/1 |goto 39.60,52.62
You can find more around:
[50.33,53.11]
[60.69,60.44]
[69.68,58.47]
|only if haveq(73194) or completedq(73194)
step
click Infuser Shard+
|tip They look like tiny crystals on the ground around this area.
|tip Aim at Dragonbane Beetles and fire the crystal at them to infuse and defeat them.
Defeat #12# Infused Beetles |q 75024/1 |goto 39.36,32.76
|only if haveq(75024) or completedq(75024)
step
label "Kill_Dragonbane_Beetles"
kill 24 Dragonbane Beetle##198792 |q 73190/1 |goto 39.83,35.02
|only if haveq(73190) or completedq(73190)
step
click Snowball
|tip They look like large round balls of snow on the ground around this area.
|tip While carrying them, run over burning critters to save them.
Save #14# Overcharged Critters |q 75025/1 |goto 61.81,26.70
|only if haveq(75025) or completedq(75025)
step
clicknpc Broken Kite Piece##203134+
|tip They look like small pieces of wood on the ground around this area.
|tip They appear on your minimap as yellow dots.
Collect #12# Kite Pieces |q 75026/1 |goto 31.97,60.59
|only if haveq(75026) or completedq(75026)
step
click Rustling Bush##384952+
|tip They look like green bushes on the ground around this area.
Collect #6# Toxic Watersnakes |q 73191/1 |goto 41.28,40.55
You can find more around [45.61,37.24]
|only if haveq(73191) or completedq(73191)
step
extraaction Release Watersnakes##400872
|tip Use the button that appears on your screen.
Release the Toxic Watersnakes |q 73191/2 |goto 42.91,38.91
|only if haveq(73191) or completedq(73191)
step
Kill enemies around this area
collect 10 Arcane Focus##202362 |q 73142/1 |goto 52.59,56.41
|only if haveq(73142) or completedq(73142)
step
Enter the Support Creche |q 73189/1 |goto 36.68,32.41
|only if haveq(73189) or completedq(73189)
step
use the Toxin Antidote##202620
|tip Use it to reduce your toxin level before it overwhelms you.
|tip Avoid cloudy areas on the ground, which increase your toxicity level faster.
click Mender Supplies##385990+
|tip They look like wooden crates inside the building.
collect 6 Mender Supplies##202619 |q 73189/2 |goto The Support Creche/0 37.51,44.98
|only if haveq(73189) or completedq(73189)
step
use the Toxin Antidote##202620 |only if subzone("The Support Creche")
|tip Use it to reduce your toxin level before it overwhelms you. |only if subzone("The Support Creche")
|tip Avoid cloudy areas on the ground, which increase your toxicity level faster. |only if subzone("The Support Creche")
talk Volethi##200727
turnin Creche Cache##73189 |goto The Forbidden Reach/5 34.84,57.47 |only if haveq(73189) or completedq(73189)
turnin Sneaky Pebbles##75024 |goto 34.85,57.48 |only if haveq(75024) or completedq(75024)
|only if haveq(73189,75024) or completedq(73189,75024)
step
talk Cataloger Coralie##201291
turnin Snake Wrangling##73191 |goto 34.36,59.28 |only if haveq(73191) or completedq(73191)
turnin A Good Day for Rolling##75025 |goto 34.36,59.28 |only if haveq(75025) or completedq(75025)
|only if haveq(73191,75025) or completedq(73191,75025)
step
talk Tukkaraq##200558
turnin Up to the Highest Height!##75026 |goto 34.36,58.57
|only if haveq(75026) or completedq(75026)
step
talk Scalecommander Cindrethresh##199199
turnin Toxic Infestation##73190 |goto 35.31,59.49 |only if haveq(73190) or completedq(73190)
turnin Busting Blues##73142 |goto 35.31,59.50 |only if haveq(73142) or completedq(73142)
turnin Soupocalypse Now!##73179 |goto 35.30,59.49 |only if haveq(73179) or completedq(73179)
turnin Up Close and Personal##73194 |goto 35.30,59.49 |only if haveq(73194) or completedq(73194)
|only if haveq(73190,73142,73179,73194) or completedq(73190,73142,73179,73194)
step
talk Scalecommander Azurathel##199204
turnin Hands Off Our Booty!##73178 |goto 35.53,58.69
|only if haveq(73178) or completedq(73178)
step
You have completed all available side quests in The Forbidden Reach
|tip This guide will reset when more become available.
'|complete questactive(73189,75024,75026,73191,75025,73190,73142,73179,73178,73194) |next "Active_Quests_Available"
]])
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Daily Guides\\Dragonflight (60-70)\\Sniffenseeking!",{
author="support@zygorguides.com",
description="This guide will help you complete the 17 digs available from Myrrit in Loamm.",
startlevel=68,
patch='100100',
},[[
step
Unlock Zaralek Cavern |complete completedq(72973)
|tip Complete the beginning of the "Zaralek Cavern" leveling guide to unlock Loamm.
step
label "Start_Dig"
use the Lost Dig Map##205982
|tip Lost dig maps have a chance to drop from the Scentsational Niffen Treasures after completing the weekly quest.
use the Bartered Dig Map##205984
|tip This dig map can be purchased from Ponzo in Loamm for 3 Barter Brick.
talk Myrrit##201426
'|accept The Buddy System##74876 |only if not completedq(74876) |or
'|accept The Heavy Crown##74953 |only if not completedq(74953) |or
'|accept Best Friends##74877 |only if not completedq(74877) |or
Tell him _"Let's go Sniffenseeking!"_
Ride with Myrrit |havebuff spell:410214 |goto Zaralek Cavern/0 55.62,57.45 |or |override
step
talk Effervesta##202778
Ask her _"Myrrit really needs to speak with you. He's here. Can you see him?"_
Talk to Effervesta |q 74953/1 |goto 54.61,54.94
|only if haveq(74953)
step
click Cushion of Questions
Sat on the "Throne" while perfumed |q 74953/2 |goto 54.61,54.94
|only if haveq(74953)
step
talk Marron Glassee##202996
|tip Pick whichever you like, it doesn't matter.
Solve the Problem |q 74953/3 |goto 54.61,54.94
|only if haveq(74953)
step
talk Myrrit##202766
turnin The Heavy Crown##74953 |goto 54.65,54.36 |only if haveq(74953)
accept Old Friends, Dear Friends##74878 |goto 54.65,54.36 |only if completedq(74953) and not completedq(74878)
|only if (haveq(74953) or completedq(74953)) and not completedq(74878)
step
talk Effervesta##202778
Tell her _"Myrrit is having trouble telling you what's wrong because he's afraid of how you'll react."_
Talk to Effervesta |q 74878/1 |goto 54.61,54.38
|only if haveq(74878)
step
talk Myrrit##202766
Choose _"<Encourage Myrrit to be truthful about how he feels.>"_
Myrrit encouraged |q 74878/2 |goto 54.65,54.36
|only if haveq(74878)
step
talk Myrrit##202766
turnin Old Friends, Dear Friends##74878 |goto 54.65,54.36 |next "Start_Dig"
|only if haveq(74878)
step
talk Effervesta##202778
Tell her _" Myrrit is wondering if you have time to go on a dig with him."_
Talk to Effervesta |q 74877/1 |goto 54.61,54.94
|only if haveq(74877)
step
talk Myrrit##201426
Tell him _"Effervesta says she will meet with you at your 'spot.'"_
Give Myrrit the Good News |q 74877/2 |goto 55.62,57.45
|only if haveq(74877)
step
talk Floressa##203293
|tip Inside the building.
buy 1 Squishy Snack##204791 |q 74877/3 |goto 56.42,55.84
|only if haveq(74877)
step
Check on Myrrit at the "Secret Spot" |q 74877/4 |goto 52.27,62.87
|only if haveq(74877)
step
talk Myrrit##202766
turnin Best Friends##74877 |goto 52.17,62.80 |next "Start_Dig"
|only if haveq(74877)
step
talk Myrrit##201426
Tell him _"Let's go Sniffenseeking!"_
Ride with Myrrit |havebuff spell:410214 |goto 55.62,57.45
step
Watch the dialogue
Reach the Mysterious Cave |nobuff spell:410214
step
accept Brand New Digs##75459 |only if not completedq(75459) |or
accept Sneak and Sniff##75517 |only if not completedq(75517) |or
accept The Living Drill##76016 |only if not completedq(76016) |or
accept Thieving Critters##75619 |only if not completedq(75619) |or
accept Element Whispers##75621 |only if not completedq(75621) |or
accept Living Statue##76014 |only if not completedq(76014) |or
accept Making Scents##75393 |only if not completedq(75393) |or
accept Vertical Anomaly##75390 |only if not completedq(75390) |or
accept Flapping and Screaming##76027 |only if not completedq(76027) |or
accept Scratch and Sniff##75234 |only if not completedq(75234) |or
accept Successful Interventions##75516 |only if not completedq(75516) |or
accept Those Rascally Worms##75397 |only if not completedq(75397) |or
accept Your Weight in Gold##75996 |only if not completedq(75996) |or
accept Heart of Iron##76015 |only if not completedq(76015) |or
accept Liars in Light##75620 |only if not completedq(75620) |or
accept Frostfire Finesse##76084 |only if not completedq(76084) |or
accept Liars of Spirit##76081 |only if not completedq(76081) |or
|tip You will accept one of these quests automatically.
step
_Next to you:_
clicknpc Myrrit##205098
|tip Inside the cave.
Pick Myrrit Up |havebuff spell:400133 |q 75459
|only if haveq(75459)
step
collect Metal Key##204867 |q 75459/2 |goto 55.95,48.93
|tip Use "Sniff" to find the treasure inside the cave.
|tip Then "Burrow" under it and use "Dig" to collect it.
|only if haveq(75459)
step
Burrowed with Myrrit |q 75459/5 |goto 55.95,49.91
|tip Use "Burrow" to move under the gas inside the cave to safety on the other side.
|tip Then "Emerge" from the ground.
|only if haveq(75459)
step
Burrow Past the Toxic Gas at the Entrance |q 75459/6 |goto 55.84,49.17
|tip Inside the cave.
|only if haveq(75459)
step
Place Myrrit on the Pressure Plate |q 75459/7 |goto 55.88,48.86
|tip Stand in the middle of the plate inse the cave and "Put Down Myrrit" to leave him on the plate and keep it activated.
|only if haveq(75459)
step
click Treasure Chest
|tip Inside the cave.
Solve the Chest Puzzle |q 75459/8 |goto 56.08,48.91
|only if haveq(75459)
step
Go on a Dig with Myrrit |q 74876/1 |goto 56.08,48.91
|only if haveq(74876)
step
_Next to you:_
clicknpc Myrrit##205098
|tip Inside the cave.
Pick Myrrit Up |havebuff spell:400133 |q 75517
|only if haveq(75517)
step
click Jangly Keys
|tip "Burrow" underground, avoiding the patches of disturbed ground which spawn enemies.
collect 1 Jangly Key##205412 |q 75517/1 |goto 55.42,53.56
|only if haveq(75517)
step
click Treasure Chest
|tip You must "Emerge" and drop Myrrit first.
Open the Chest |q 75517/2 |goto 56.71,53.22
|only if haveq(75517)
step
_Next to you:_
clicknpc Myrrit##205098
|tip Inside the cave.
Pick Myrrit Up |havebuff spell:400133 |q 76016
|only if haveq(76016)
step
kill Diganthor##204434
|tip Pick up Myrrit and "Burrow," then "Dig" beneath disturbed areas on the ground.
|tip Kill the enemies that spawn from each area until Diganthor spawns.
collect 1 Spit-covered Key##205941 |q 76016/1 |goto 56.22,52.99
|only if haveq(76016)
step
click Treasure Chest
|tip Pick up Myrrit and "Burrow," then "Dig" beneath this spot on the ground.
|tip You will have to put Myrrit down to loot the chest.
Loot the Treasure Chest |q 76016/2 |goto 56.01,53.18
|only if haveq(76016)
step
_Next to you:_
clicknpc Myrrit##205098
|tip Inside the cave.
Pick Myrrit Up |havebuff spell:400133 |q 75619
|only if haveq(75619)
step
kill Sneaky Darkfang##204435
|tip Pick up Myrrit and "Burrow," avoiding spider webs on the ground.
|tip "Emerge" and put down Myrrit to click the web, spawning the darkfang.
collect Sticky Key##205186 |goto 56.84,55.50 |q 75619
|only if haveq(75619)
step
kill Mischievous Stagnose##204432
|tip Pick up Myrrit and "Burrow," avoiding spider webs on the ground.
|tip "Dig" under the moving patch of rumbling earth to spawn the stagnose.
|tip It moves in a counter-clockwise circle in the cave.
collect Muddy Key##205185 |goto 55.59,57.21 |q 75619
|only if haveq(75619)
step
click Double-Locked Chest
|tip Pick up Myrrit and "Burrow" to bypass enemies, avoiding spider webs.
|tip "Emerge" and put him down to loot the chest.
Loot the Double-Locked Chest |q 75619/1 |goto 56.73,57.28
|only if haveq(75619)
step
_Next to you:_
clicknpc Myrrit##205098
|tip Inside the cave.
Pick Myrrit Up |havebuff spell:400133 |q 75621
|only if haveq(75621)
step
talk Earthward Challenger##204800
|tip In the upper portion of the cave.
Ask it _"Can you check to see if my pattern is right?"_
Speak with Guardian |q 75621/1 |goto 56.01,51.01
|tip This will tell you in chat how many of your selections are correct.
|only if haveq(75621)
step
kill Earthward Challenger##204800
|tip In the upper portion of the cave.
|tip Set the West Brazier to Earth.
|tip Set the South Brazier to Water.
|tip Set the East Brazier to Air.
|tip Set the North Brazier to Fire.
|tip When you do this, the elementals downstairs will attack you.
|tip Then, check your pattern and the Challenger will attack you.
collect 1 Champion's Crystal##205689 |q 75621/2 |goto 56.04,51.04
|only if haveq(75621)
step
click Elementally Guarded Geode
|tip Downstairs inside the cave.
Open the Elementally Guarded Geode |q 75621/3 |goto 56.01,51.17
|only if haveq(75621)
step
_Next to you:_
clicknpc Myrrit##205098
|tip Inside the cave.
Pick Myrrit Up |havebuff spell:400133 |q 76014
|only if haveq(76014)
step
click Light Etched Key
|tip Inside the cave.
Pick Up the Light Etched Key |havebuff spell:411171 |goto 57.97,55.06 |q 76014
|only if haveq(76014)
step
click Etched Receiver North
|tip Inside the cave.
Restore the North Etched Key |q 76014/4 |goto 58.08,55.80
|only if haveq(76014)
step
_Next to you:_
clicknpc Myrrit##205098
|tip Inside the cave.
Pick Myrrit Up |havebuff spell:400133 |q 76014
|only if haveq(76014)
step
click Light Etched Key
|tip "Burrow" underground, then "Dig" at this spot inside the cave to move the rubble.
Pick Up the Light Etched Key |havebuff spell:411171 |goto 58.17,54.58 |q 76014
|only if haveq(76014)
step
click Etched Receiver East
|tip Inside the cave.
Restore the East Etched Key |q 76014/3 |goto 57.87,56.09
|only if haveq(76014)
step
_Next to you:_
clicknpc Myrrit##205098
|tip Inside the cave.
Pick Myrrit Up |havebuff spell:400133 |q 76014
|only if haveq(76014)
step
click Light Etched Key
|tip "Burrow" underground, then "Dig" at this spot inside the cave to move the rubble.
Pick Up the Light Etched Key |havebuff spell:411171 |goto 58.53,56.45 |q 76014
|only if haveq(76014)
step
click Etched Holder South
|tip Inside the cave.
Restore the South Etched Key |q 76014/2 |goto 58.07,56.40
|only if haveq(76014)
step
_Next to you:_
clicknpc Myrrit##205098
|tip Inside the cave.
Pick Myrrit Up |havebuff spell:400133 |q 76014
|only if haveq(76014)
step
click Light Etched Key
|tip "Burrow" underground, then "Dig" at this spot inside the cave to move the rubble.
Pick Up the Light Etched Key |havebuff spell:411171 |goto 57.61,56.42 |q 76014
|only if haveq(76014)
step
click Etched Holder West
|tip Inside the cave.
Restore the West Etched Key |q 76014/1 |goto 58.27,56.11
|only if haveq(76014)
step
click Protector Lynaera Statue
|tip This will cause it to animate and attack you.
kill Empowered Protector Lynaera##204419
collect 1 Heated Titan Key##205938 |q 76014/5 |goto 58.07,56.09
|only if haveq(76014)
step
click Etched Titan Chest
|tip Inside the cave.
Open the Etched Titan Chest |q 76014/6 |goto 58.28,57.19
|only if haveq(76014)
step
_Next to you:_
clicknpc Myrrit##205098
|tip Inside the cave.
Pick Myrrit Up |havebuff spell:400133 |q 75393
|only if haveq(75393)
step
kill Calibrating Scent Matrix##203606
extraaction Sniff##411068
|tip When "Olfactory Defenses" go off, use this ability to get a clue as to which orb to click.
|tip When lightning is mentioned, click Air.
|tip When fish are mentioned, click Water.
|tip When charcoal is mentioned, click Fire.
|tip When worms are mentioned, click Earth.
click Titan Smell Cache
|tip It will spawn after killing the Matrix
Loot the Titan Smell Cache |q 75393/1 |goto 58.07,56.08
|only if haveq(75393)
step
_Next to you:_
clicknpc Myrrit##205098
|tip Inside the cave.
Pick Myrrit Up |havebuff spell:400133 |q 75390
|only if haveq(75390)
step
confirm |goto 54.51,49.23
|tip "Burrow" underground, then "Dig" at this spot inside the cave to break the crystal.
|only if haveq(75390)
step
confirm |goto 55.05,48.94
|tip "Burrow" underground, then "Dig" at this spot inside the cave to break the crystal.
|only if haveq(75390)
step
_Next to you:_
clicknpc Myrrit##205098
|tip Inside the cave.
Pick Myrrit Up |havebuff spell:400133 |q 75390
|only if haveq(75390)
step
Drop Myrrit on the Plate |nobuff spell:400133 |goto 54.92,49.09
|tip Use "Put Down Myrrit" to leave him on the plate and activate the steam vent.
|only if haveq(75390)
step
Access the Transit Bubble |q 75390/1 |goto 54.67,48.80
|tip Walk into the bubble to gain a brief buff.
|only if haveq(75390)
step
click Floating Chest
|tip Float up inside the transit bubble and wait for the bubble that moves around the room to line up with the one over the steam vent.
|tip Float from the transit bubble, to the moving bubble, to the steam vent bubble to reach the chest.
collect Waterlogged Key##203655 |q 75390/2 |goto 54.98,48.67
|only if haveq(75390)
step
click Lost Dive Box
Open the Lost Dive Box |q 75390/3 |goto 54.65,48.85
|only if haveq(75390)
step
_Next to you:_
clicknpc Myrrit##205098
|tip Inside the cave.
Pick Myrrit Up |havebuff spell:400133 |q 76081
|only if haveq(76081)
step
Put Down Myrrit |nobuff spell:400133 |goto 60.13,56.15 |q 76081
|tip Use the "Put Down Myrrit" ability to leave Myrrit on the pressure plate.
|only if haveq(76081)
step
click Regal Statue
Select _"Choose this statue as telling the truth."_
kill Pahi'rys##205540
|tip It will spawn nearby.
collect 1 Fierce Key##205990 |q 76081/2 |goto 59.98,55.98
|only if haveq(76081)
step
click Titan Chest
Loot the Titan Chest |q 76081/3 |goto 60.14,57.00
|only if haveq(76081)
step
click Critter Lasso
Pick Up the Critter Lasso |havebuff spell:411301 |goto 54.54,49.38 |q 76027
|only if haveq(76027)
step
clicknpc Cave Screecher##205417+
|tip They're small bats flying around the cave.
extraaction Critter Lasso##411283
|tip Lasso a bat and quickly run to the crystal until it shatters.
|tip If the key is not in this crystal, continue shattering them until you find it.
click Glowing Key##402578
collect 1 Glowing Key##205969 |q 76027/1 |goto 54.73,48.88
|only if haveq(76027)
step
click Glowing Chest
Unlock the Treasure Chest |q 76027/2 |goto 54.86,48.94
|only if haveq(76027)
step
_Next to you:_
clicknpc Myrrit##205098
|tip Inside the cave.
Pick Myrrit Up |havebuff spell:400133 |q 75996
|only if haveq(75996)
step
Open the Sealed Chamber Door |q 75996/1 |goto 58.69,51.97
|tip "Burrow" underground, then "Dig" at these spots inside the cave to move the rubble.
|tip A mob will spawn and attack you.
|tip Keep it alive and drag it to nearby pressure plates.
|tip Stand on them to activate them, then wait for it to surround you with a giant gold area and run to the next one.
|tip Do this with 3 pressure plates and stand on the final one yourself.
|tip Or, you can do this with 2 pressure plates, kill it, then quicky place Myrrit on one and yourself on the fourth.
You can find rubble at:
[58.66,52.19]
[58.86,52.25]
[58.87,52.08]
[58.60,51.59]
|only if haveq(75996)
step
click Bag of Secrets
Find the Bag of Secrets |q 75996/2 |goto 57.41,51.37
|only if haveq(75996)
step
click Sunflower Tea
Sip the Sunflower Tea |q 75516/1 |goto 58.69,49.83
|only if haveq(75516)
step
talk Mr. Sunflower##205080
Ask him _"What exactly is going on in here?"_
Question Mr. Sunflower |q 75516/2 |goto 58.73,49.85
|only if haveq(75516)
step
_Next to you:_
clicknpc Myrrit##205098
|tip Inside the cave.
Pick Myrrit Up |havebuff spell:400133 |q 75516
|only if haveq(75516)
step
talk Webbed "Guest"##205089
Choose _"Point out that this is Ralph to Mr. Sunflower."_
|tip Use the "Sniff" ability next to Webbed Guests around the table.
|tip Myrrit will say the correct guest smells like some sort of hairy creature that has been here a long time.
Find Ralph |q 75516/3 |goto 58.62,49.87
|only if haveq(75516)
step
Put Down Myrrit |nobuff spell:400133 |goto 58.75,50.17 |q 75516
|tip Use the "Put Down Myrrit" ability to drop him.
|only if haveq(75516)
step
click Ralph's Abandoned Belongings
Collect Ralph's Abandoned Belongings |q 75516/4 |goto 58.75,50.17
|only if haveq(75516)
step
click Smelly Bag+
|tip They look like small piles of dirt revealed by Myrrit at the locations listed below.
kill Thieving Worm##203850+
|tip Pick up Myrrit, then "Burrow" underground.
|tip Move beneath areas of disturbed dirt and "Dig" to reveal worms.
|tip Avoid the swirling areas on the ground.
collect 6 Pipsee Cheese Snack##202180 |q 75397/2 |goto 58.56,51.99
Smelly Bags can be found at:
[58.44,51.52]
[58.59,51.70]
[58.52,52.20]
[58.57,52.55]
[58.84,52.17]
|only if haveq(75397)
step
talk Pipsee##205267
Tell it _"Offer Pipsee the snacks."_
Feed Pipsee |q 75397/3 |goto 57.54,51.35
|only if haveq(75397)
step
Put Down Myrrit |nobuff spell:400133 |goto 57.54,51.34 |q 75397
|tip Use the "Put Down Myrrit" ability to drop him.
|only if haveq(75397)
step
click Pipsee's Treasures
Collect Pipsee's Treasures |q 75397/4 |goto 57.54,51.34
|only if haveq(75397)
step
_Next to you:_
clicknpc Myrrit##205098
|tip Inside the cave.
|tip He may also be nearby.
Pick Myrrit Up |havebuff spell:400133 |q 76084
|only if haveq(76084)
step
Put Down Myrrit |nobuff spell:400133 |goto 60.22,55.50 |q 76084
|tip Use the "Put Down Myrrit" ability to drop him on the pressure plate.
|only if haveq(76084)
step
click Frost Charge
Gain the "Extinguishing Frost" Buff |havebuff spell:411696 |goto 60.05,55.48 |q 76084
|only if haveq(76084)
step
click Flame-Engulfed Key Fragment##402855
|tip Avoid the hazards, which will deplete the shield you have.
|tip Move clockwise with the beam and avoid the orbs.
|tip Point your camera towards the ground to see the path of the orbs better.
collect Flame-Engulfed Key Fragment##206002 |goto 60.37,56.55
|only if haveq(76084)
step
_Next to you:_
clicknpc Myrrit##205098
|tip Inside the cave.
Pick Myrrit Up |havebuff spell:400133 |goto 60.22,55.50 |q 76084
|only if haveq(76084)
step
Put Down Myrrit |nobuff spell:400133 |goto 60.05,55.48 |q 76084
|tip Use the "Put Down Myrrit" ability to drop him on the pressure plate.
|only if haveq(76084)
step
click Fire Charge
Gain the "Thawing Flame" Buff |havebuff spell:411698 |goto 60.22,55.49 |q 76084
|only if haveq(76084)
step
click Frost-Encased Key Fragment##402856
|tip Avoid the hazards, which will deplete the shield you have.
|tip Move clockwise with the beam and avoid the orbs.
|tip Point your camera towards the ground to see the path of the orbs better.
collect Frost-Encased Key Fragment##206001 |goto 59.90,56.55
|only if haveq(76084)
step
extraaction Combine Fragments##411729
|tip it appears as a button on your screen.
collect Frostfire Key##206000 |q 76084/1 |goto 60.14,56.77
|only if haveq(76084)
step
click Frostfire Cache
Open the Frostfire Cache |q 76084/2 |goto 60.14,57.09
|only if haveq(76084)
step
kill Jalgon Stoutburn##204426
|tip Move out of areas targeted on the ground.
|tip Mole machines that spawn deal damage in the entire room.
collect Iron Titan Key##205939 |q 76015/1 |goto 58.09,56.07
|only if haveq(76015)
step
click Scorched Chest
|tip Pick up Myrrit and "Burrow" under these locations.
|tip Using "Sniff" will reveal them so you can see them.
|tip Use "Dig" beneath them to reveal what's underneath.
|tip If it is a mine, run away before it blows up.
|tip Put down Myrrit to loot the chest.
Unlock the Scorched Chest |q 76015/2 |goto 58.35,55.94
You can find dirt piles at:
[58.38,56.40]
[58.02,56.56]
[57.77,56.23]
|only if haveq(76015)
step
kill Bogg##201747
|tip Pick up Myrrit and "Burrow" under these locations.
|tip Using "Sniff" will reveal them so you can see them.
|tip Use "Dig" beneath them to reveal what's underneath.
|tip Bogg will be in one of the piles instead of a normal enemy.
collect Stolen Key##205277 |q 75234/2 |goto 54.82,52.62
You can find dirt piles at:
[54.71,52.33]
[54.47,52.24]
[54.32,51.82]
[54.57,51.48]
[54.68,51.21]
[55.06,51.78]
|only if haveq(75234)
step
click Treasure Chest
Unlock the Treasure Chest |q 75234/3 |goto 54.73,52.16
|only if haveq(75234)
step
_Next to you:_
clicknpc Myrrit##205098
|tip Inside the cave.
Pick Myrrit Up |havebuff spell:400133 |q 75620
|only if haveq(75620)
step
Put Down Myrrit |nobuff spell:400133 |goto 59.99,56.10 |q 75620
|tip Use the "Put Down Myrrit" ability to leave Myrrit on the pressure plate.
|only if haveq(75620)
step
click Tauren Statue
|tip Stand on this pressure plate and click the statue.
kill Shade of Skytalon##204430
collect Small Key##205202 |q 75620/2 |goto 60.27,56.10
|only if haveq(75620)
step
click Titan Chest
Unlock the Titan Chest |q 75620/3 |goto 60.13,56.62
|only if haveq(75620)
step
_Next to you:_
clicknpc Myrrit##205098
|tip Inside the cave.
|tip He may also be nearby.
|tip If Myrrit disappears, use his backpack near the entrance to call him.
Pick Myrrit Up |havebuff spell:400133
step
Return with Myrrit to Loamm |goto 55.64,57.36 < 50 |c |noway
|tip Pick up Myrrit again and use "Escape" to leave the cave after you're finished.
step
talk Myrrit##201426
turnin The Buddy System##74876 |goto Zaralek Cavern/0 55.62,57.45
|only if haveq(74876) or completedq(74876)
step
talk Citros##200055
turnin Incense Replay##75771 |goto 56.80,54.00
|only if readyq(75771)
step
talk Chigoe##204861
turnin Drawing a Blank##75769 |goto 57.23,52.68
|only if readyq(75769)
step
talk Garram##203644
turnin Flask Manager##75772 |goto 57.25,55.85
|only if readyq(75772)
step
Click Here When a New Dig Becomes Available |confirm |next "Start_Dig"
|tip You can purchase a dig from Ponso in Loamm once per week for 3 Barter Bricks.
|tip You also get a dig from the weekly "A Worthy Ally: Loamm Niffen" quest.
]])
ZygorGuidesViewer:RegisterGuide("Daily Guides\\Dragonflight (60-70)\\Snail Racing Dailies",{
author="support@zygorguides.com",
startlevel=68,
patch='100100',
},[[
step
click TICKET: Glimmerogg Games
accept TICKET: Glimmerogg Games##73707 |goto Zaralek Cavern/0 55.61,54.56
step
talk Brogg the Beast##201098
turnin TICKET: Glimmerogg Games##73707 |goto 43.79,82.98
accept Pay to Play##73708 |goto 43.79,82.98
accept Favor on the Side##73709 |goto 43.79,82.98
step
talk Festival Challenger##202571
Tell him _"You're a party crasher!"_
Find #6# Intruders |q 73709/1 |goto 44.27,82.29
step
kill Echoed Lurker##202636+
collect 4 Echoed Lurker Flesh##204803 |q 73708/1 |goto 44.20,84.66
step
click Glimmer Mushroom##388520
collect 1 Glimmer Mushroom##205169 |q 73708/2 |goto 38.12,78.45
step
click Glimmer Mushroom##388520
collect 2 Glimmer Mushroom##205169 |q 73708/2 |goto 37.93,77.49
step
click Glimmer Mushroom##388520
collect 3 Glimmer Mushroom##205169 |q 73708/2 |goto 37.63,76.63
step
click Glimmer Mushroom##388520
collect 4 Glimmer Mushroom##205169 |q 73708/2 |goto 38.28,76.66
step
talk Brogg the Beast##201098
turnin Pay to Play##73708 |goto 43.79,82.98
turnin Favor on the Side##73709 |goto 43.79,82.98
step
talk Storul Heavystone##201100
accept Rock By Rock##73710 |goto 44.97,83.29
step
click Starter Rock Bar
Lift the Weight Bars |q 73710/1 |count 1 |goto 45.13,83.35
step
click Mid-Weight Rock Bar
Lift the Weight Bars |q 73710/1 |count 2 |goto 45.08,83.24
step
click Heavy Rock Bar
Lift the Weight Bars |q 73710/1 |count 3 |goto 44.99,83.10
step
talk Storul Heavystone##201100
turnin Rock By Rock##73710 |goto 44.98,83.31
accept Marked Champion##73711 |goto 44.98,83.30
step
Enter the cave |goto 45.40,86.85 < 10 |walk
kill Carcaxas##202836 |q 73711/1 |goto 45.59,87.62
|tip Inside the cave.
step
talk Storul Heavystone##201100
turnin Marked Champion##73711 |goto 44.98,83.29
step
Reach Renown Level 7 with the Loamm Niffen |complete factionrenown(2564) >= 7
|tip Complete daily quests, weekly quests, and zone quests in Zaralek Caverns to gain renown.
|tip Completing the "Zaralek Cavern" guide awards numerous reputation tokens.
step
_Next to you:_
talk Newsy##205127
accept Off to the Track##75725
|tip You may need to relog to see this quest or leave Zaralek Cavern.
step
talk Briggul##201752
turnin Off to the Track##75725 |goto 44.25,79.93
accept Come Snail Away##74787 |goto 44.25,79.93
step
clicknpc Big Slick in the City##202731
Meet Slick |q 74787/1 |goto 44.17,79.98
step
talk Briggul##201752
turnin Come Snail Away##74787 |goto 44.26,79.93
step
label "Begin_Daily_Quests"
talk Briggul##201752
accept Resistance Training##74518 |goto 44.25,79.92 |only if questpossible |or
accept A Snail's Pace##74516 |goto 44.25,79.92 |only if questpossible |or
accept The Slowest Fan Club##74514 |goto 44.25,79.92 |only if questpossible |or
accept Good for Goo##74519 |goto 44.25,79.92 |only if questpossible |or
accept All Terrain Snail##74517 |goto 44.25,79.92 |only if questpossible |or
Accept the Daily Quest |complete false |goto 44.25,79.92 |or
step
Summon Your Level 25 Amethyst Softshell |complete activepet(2697) |goto 44.25,79.92
|tip You can complete a special quest for having this pet at max level.
|only if petlevel(2697) >= 25 and not completedq(74948)
step
talk Briggul##201752
accept Snailspiration: Amethyst Softshell##74948 |goto 44.25,79.92
|tip This quest will only appear with your level 25 Amethyst Softshell summoned.
|only if petlevel(2697) >= 25 and not completedq(74948)
step
talk Briggul##201752
Choose _"<Show Briggul your level 25 Amethyst Softshell.>"_
|tip Your level 25 Amethyst Softshell must be summoned.
Show Your Max Level Amethyst Softshell to Briggul |q 74948/1 |goto 44.25,79.92
|only if petlevel(2697) >= 25 and not completedq(74948)
step
talk Briggul##201752
turnin Snailspiration: Amethyst Softshell##74948 |goto 44.25,79.92
|tip This quest will only appear with your level 25 Amethyst Softshell summoned.
|only if petlevel(2697) >= 25 and not completedq(74948)
step
Summon Your Level 25 Blackchasm Crawler |complete activepet(2657) |goto 44.25,79.92
|tip You can complete a special quest for having this pet at max level.
|only if petlevel(2657) >= 25 and not completedq(74950)
step
talk Briggul##201752
accept Snailspiration: Blackchasm Crawler##74950 |goto 44.25,79.92
|tip This quest will only appear with your level 25 Blackchasm Crawler summoned.
|only if petlevel(2657) >= 25 and not completedq(74950)
step
talk Briggul##201752
Choose _"<Show Briggul your level 25 Blackchasm Crawler.>"_
|tip Your level 25 Blackchasm Crawler must be summoned.
Show Your Max Level Blackchasm Crawler to Briggul |q 74950/1 |goto 44.25,79.92
|only if petlevel(2657) >= 25 and not completedq(74950)
step
talk Briggul##201752
turnin Snailspiration: Blackchasm Crawler##74950 |goto 44.25,79.92
|tip This quest will only appear with your level 25 Blackchasm Crawler summoned.
|only if petlevel(2657) >= 25 and not completedq(74950)
step
Summon Your Level 25 Microlicid |complete activepet(3235) |goto 44.25,79.92
|tip You can complete a special quest for having this pet at max level.
|only if petlevel(3235) >= 25 and not completedq(74952)
step
talk Briggul##201752
accept Snailspiration: Microlicid##74952 |goto 44.25,79.92
|tip This quest will only appear with your level 25 Microlicid summoned.
|only if petlevel(3235) >= 25 and not completedq(74952)
step
talk Briggul##201752
Choose _"<Show Briggul your level 25 Microlicid.>"_
|tip Your level 25 Microlicid must be summoned.
Show Your Max Level Microlicid to Briggul |q 74952/1 |goto 44.25,79.92
|only if petlevel(3235) >= 25 and not completedq(74952)
step
talk Briggul##201752
turnin Snailspiration: Microlicid##74952 |goto 44.25,79.92
|tip This quest will only appear with your level 25 Microlicid summoned.
|only if petlevel(3235) >= 25 and not completedq(74952)
step
Summon Your Level 25 Mudshell Conch |complete activepet(1776) |goto 44.25,79.92
|tip You can complete a special quest for having this pet at max level.
|only if petlevel(1776) >= 25 and not completedq(74959)
step
talk Briggul##201752
accept Snailspiration: Mudshell Conch##74959 |goto 44.25,79.92
|tip This quest will only appear with your level 25 Mudshell Conch summoned.
|only if petlevel(1776) >= 25 and not completedq(74959)
step
talk Briggul##201752
Choose _"<Show Briggul your level 25 Mudshell Conch.>"_
|tip Your level 25 Mudshell Conch must be summoned.
Show Your Max Level Mudshell Conch to Briggul |q 74959/1 |goto 44.25,79.92
|only if petlevel(1776) >= 25 and not completedq(74959)
step
talk Briggul##201752
turnin Snailspiration: Mudshell Conch##74959 |goto 44.25,79.92
|tip This quest will only appear with your level 25 Mudshell Conch summoned.
|only if petlevel(1776) >= 25 and not completedq(74959)
step
Summon Your Level 25 Predatory Helicid |complete activepet(3219) |goto 44.25,79.92
|tip You can complete a special quest for having this pet at max level.
|only if petlevel(3219) >= 25 and not completedq(74960)
step
talk Briggul##201752
accept Snailspiration: Predatory Helicid##74960 |goto 44.25,79.92
|tip This quest will only appear with your level 25 Predatory Helicid summoned.
|only if petlevel(3219) >= 25 and not completedq(74960)
step
talk Briggul##201752
Choose _"<Show Briggul your level 25 Predatory Helicid.>"_
|tip Your level 25 Predatory Helicid must be summoned.
Show Your Max Level Predatory Helicid to Briggul |q 74960/1 |goto 44.25,79.92
|only if petlevel(3219) >= 25 and not completedq(74960)
step
talk Briggul##201752
turnin Snailspiration: Predatory Helicid##74960 |goto 44.25,79.92
|tip This quest will only appear with your level 25 Predatory Helicid summoned.
|only if petlevel(3219) >= 25 and not completedq(74960)
step
Summon Your Level 25 Prismatic Softshell |complete activepet(2698) |goto 44.25,79.92
|tip You can complete a special quest for having this pet at max level.
|only if petlevel(2698) >= 25 and not completedq(74961)
step
talk Briggul##201752
accept Snailspiration: Prismatic Softshell##74961 |goto 44.25,79.92
|tip This quest will only appear with your level 25 Prismatic Softshell summoned.
|only if petlevel(2698) >= 25 and not completedq(74961)
step
talk Briggul##201752
Choose _"<Show Briggul your level 25 Prismatic Softshell.>"_
|tip Your level 25 Prismatic Softshell must be summoned.
Show Your Max Level Prismatic Softshell to Briggul |q 74961/1 |goto 44.25,79.92
|only if petlevel(2698) >= 25 and not completedq(74961)
step
talk Briggul##201752
turnin Snailspiration: Prismatic Softshell##74961 |goto 44.25,79.92
|tip This quest will only appear with your level 25 Prismatic Softshell summoned.
|only if petlevel(2698) >= 25 and not completedq(74961)
step
Summon Your Level 25 Rapana Whelk |complete activepet(743) |goto 44.25,79.92
|tip You can complete a special quest for having this pet at max level.
|only if petlevel(743) >= 25 and not completedq(74962)
step
talk Briggul##201752
accept Snailspiration: Rapana Whelk##74962 |goto 44.25,79.92
|tip This quest will only appear with your level 25 Rapana Whelk summoned.
|only if petlevel(743) >= 25 and not completedq(74962)
step
talk Briggul##201752
Choose _"<Show Briggul your level 25 Rapana Whelk.>"_
|tip Your level 25 Rapana Whelk must be summoned.
Show Your Max Level Rapana Whelk to Briggul |q 74962/1 |goto 44.25,79.92
|only if petlevel(743) >= 25 and not completedq(74962)
step
talk Briggul##201752
turnin Snailspiration: Rapana Whelk##74962 |goto 44.25,79.92
|tip This quest will only appear with your level 25 Rapana Whelk summoned.
|only if petlevel(743) >= 25 and not completedq(74962)
step
Summon Your Level 25 Rusty Snail |complete activepet(496) |goto 44.25,79.92
|tip You can complete a special quest for having this pet at max level.
|only if petlevel(496) >= 25 and not completedq(74963)
step
talk Briggul##201752
accept Snailspiration: Rusty Snail##74963 |goto 44.25,79.92
|tip This quest will only appear with your level 25 Rusty Snail summoned.
|only if petlevel(496) >= 25 and not completedq(74963)
step
talk Briggul##201752
Choose _"<Show Briggul your level 25 Rusty Snail.>"_
|tip Your level 25 Rusty Snail must be summoned.
Show Your Max Level Rusty Snail to Briggul |q 74963/1 |goto 44.25,79.92
|only if petlevel(496) >= 25 and not completedq(74963)
step
talk Briggul##201752
turnin Snailspiration: Rusty Snail##74963 |goto 44.25,79.92
|tip This quest will only appear with your level 25 Rusty Snail summoned.
|only if petlevel(496) >= 25 and not completedq(74963)
step
Summon Your Level 25 Scooter the Snail |complete activepet(289) |goto 44.25,79.92
|tip You can complete a special quest for having this pet at max level.
|only if petlevel(289) >= 25 and not completedq(74964)
step
talk Briggul##201752
accept Snailspiration: Scooter the Snail##74964 |goto 44.25,79.92
|tip This quest will only appear with your level 25 Scooter the Snail summoned.
|only if petlevel(289) >= 25 and not completedq(74964)
step
talk Briggul##201752
Choose _"<Show Briggul your level 25 Scooter the Snail.>"_
|tip Your level 25 Scooter the Snail must be summoned.
Show Your Max Level Scooter the Snail to Briggul |q 74964/1 |goto 44.25,79.92
|only if petlevel(289) >= 25 and not completedq(74964)
step
talk Briggul##201752
turnin Snailspiration: Scooter the Snail##74964 |goto 44.25,79.92
|tip This quest will only appear with your level 25 Scooter the Snail summoned.
|only if petlevel(289) >= 25 and not completedq(74964)
step
Summon Your Level 25 Shelly |complete activepet(3222) |goto 44.25,79.92
|tip You can complete a special quest for having this pet at max level.
|only if petlevel(3222) >= 25 and not completedq(74965)
step
talk Briggul##201752
accept Snailspiration: Shelly##74965 |goto 44.25,79.92
|tip This quest will only appear with your level 25 Shelly summoned.
|only if petlevel(3222) >= 25 and not completedq(74965)
step
talk Briggul##201752
Choose _"<Show Briggul your level 25 Shelly.>"_
|tip Your level 25 Shelly must be summoned.
Show Your Max Level Shelly to Briggul |q 74965/1 |goto 44.25,79.92
|only if petlevel(3222) >= 25 and not completedq(74965)
step
talk Briggul##201752
turnin Snailspiration: Shelly##74965 |goto 44.25,79.92
|tip This quest will only appear with your level 25 Shelly summoned.
|only if petlevel(3222) >= 25 and not completedq(74965)
step
Summon Your Level 25 Shimmershell Snail |complete activepet(493) |goto 44.25,79.92
|tip You can complete a special quest for having this pet at max level.
|only if petlevel(493) == 25 and not completedq(74786)
step
talk Briggul##201752
accept Snailspiration: Shimmershell Snail##74786 |goto 44.25,79.92
|tip This quest will only appear with your level 25 Shimmershell Snail summoned.
|only if petlevel(493) >= 25 and not completedq(74786)
step
talk Briggul##201752
Choose _"<Show Briggul your level 25 Shimmershell Snail.>"_
|tip Your level 25 Shimmershell Snail must be summoned.
Show Your Max Level Shimmershell Snail to Briggul |q 74786/1 |goto 44.25,79.92
|only if petlevel(493) >= 25 and not completedq(74786)
step
talk Briggul##201752
turnin Snailspiration: Shimmershell Snail##74786 |goto 44.25,79.92
|tip This quest will only appear with your level 25 Shimmershell Snail summoned.
|only if petlevel(493) >= 25 and not completedq(74786)
step
Summon Your Level 25 Silkbead Snail |complete activepet(568) |goto 44.25,79.92
|tip You can complete a special quest for having this pet at max level.
|only if petlevel(568) >= 25 and not completedq(74966)
step
talk Briggul##201752
accept Snailspiration: Silkbead Snail##74966 |goto 44.25,79.92
|tip This quest will only appear with your level 25 Silkbead Snail summoned.
|only if petlevel(568) >= 25 and not completedq(74966)
step
talk Briggul##201752
Choose _"<Show Briggul your level 25 Silkbead Snail.>"_
|tip Your level 25 Silkbead Snail must be summoned.
Show Your Max Level Silkbead Snail to Briggul |q 74966/1 |goto 44.25,79.92
|only if petlevel(568) >= 25 and not completedq(74966)
step
talk Briggul##201752
turnin Snailspiration: Silkbead Snail##74966 |goto 44.25,79.92
|tip This quest will only appear with your level 25 Silkbead Snail summoned.
|only if petlevel(568) >= 25 and not completedq(74966)
step
Summon Your Level 25 Spireshell Snail |complete activepet(2653) |goto 44.25,79.92
|tip You can complete a special quest for having this pet at max level.
|only if petlevel(2653) >= 25 and not completedq(74967)
step
talk Briggul##201752
accept Snailspiration: Spireshell Snail##74967 |goto 44.25,79.92
|tip This quest will only appear with your level 25 Spireshell Snail summoned.
|only if petlevel(2653) >= 25 and not completedq(74967)
step
talk Briggul##201752
Choose _"<Show Briggul your level 25 Spireshell Snail.>"_
|tip Your level 25 Spireshell Snail must be summoned.
Show Your Max Level Spireshell Snail to Briggul |q 74967/1 |goto 44.25,79.92
|only if petlevel(2653) >= 25 and not completedq(74967)
step
talk Briggul##201752
turnin Snailspiration: Spireshell Snail##74967 |goto 44.25,79.92
|tip This quest will only appear with your level 25 Spireshell Snail summoned.
|only if petlevel(2653) >= 25 and not completedq(74967)
step
Summon Your Level 25 Zoom |complete activepet(1903) |goto 44.25,79.92
|tip You can complete a special quest for having this pet at max level.
|only if petlevel(1903) >= 25 and not completedq(74968)
step
talk Briggul##201752
accept Snailspiration: Zoom##74968 |goto 44.25,79.92
|tip This quest will only appear with your level 25 Zoom summoned.
|only if petlevel(1903) >= 25 and not completedq(74968)
step
talk Briggul##201752
Choose _"<Show Briggul your level 25 Zoom.>"_
|tip Your level 25 Zoom must be summoned.
Show Your Max Level Zoom to Briggul |q 74968/1 |goto 44.25,79.92
|only if petlevel(1903) >= 25 and not completedq(74968)
step
talk Briggul##201752
turnin Snailspiration: Zoom##74968 |goto 44.25,79.92
|tip This quest will only appear with your level 25 Zoom summoned.
|only if petlevel(1903) >= 25 and not completedq(74968)
step
click Glowing Crystal##387725+
|tip They look like small blue crystals on the ground around this area.
collect 5 Glowing Crystal##204067 |q 74518/1 |goto 38.02,70.67
|only if haveq(74518) or completedq(74518)
step
click Magma Crystal##387729+
|tip They look like small orangish crystals on the ground near the lava.
collect 5 Magma Crystal##204070 |q 74518/3 |goto 44.44,52.33
|only if haveq(74518) or completedq(74518)
step
click Sulfuric Crystal##387727
|tip They look like small brown spheres on the ground around this area.
collect 5 Sulfuric Crystal##204069 |q 74518/2 |goto 50.24,59.67
|only if haveq(74518) or completedq(74518)
step
clicknpc Aimless Snail##201875
use the Snailcatcher Net##204178
|tip Use it on Aimless Snails.
Capture #8# Aimless Snails |q 74514/1 |goto 49.10,70.07
|only if haveq(74514) or completedq(74514)
step
use the Conch Whistle##203708
Ride Big Slick |invehicle |q 74516 |goto 44.52,80.22
|only if haveq(74516) or completedq(74516)
step
map Zaralek Cavern
path	44.53,80.23	44.86,80.52	44.96,80.93	44.70,81.20	44.50,81.11
path	44.27,80.79	44.14,80.40	44.27,80.22
Pass #12# Track Markers While Riding Big Slick |q 74516/1
|tip Run through the red markers on the ground.
|only if haveq(74516) or completedq(74516)
step
Kill enemies around this area
Collect Slime |q 74519/1 |goto 39.25,41.54
[40.66,46.74]
[34.72,43.69]
[27.45,46.12]
|only if haveq(74519) or completedq(74519)
step
use the Conch Whistle##203708
Ride Big Slick |invehicle |goto Ohn'ahran Plains/0 78.12,29.75 |q 74517
|only if haveq(74517) or completedq(74517)
step
Place the Snail Marker in the Wanderer's Steppe |q 74517/2 |count 1 |goto 77.00,33.84
|only if haveq(74517) or completedq(74517)
step
Place the Snail Marker in the Wanderer's Steppe |q 74517/2 |count 2 |goto 76.19,31.86
|only if haveq(74517) or completedq(74517)
step
Place the Snail Marker in the Wanderer's Steppe |q 74517/2 |count 3 |goto 78.00,29.66
|only if haveq(74517) or completedq(74517)
step
Place the Snail Marker in the Wanderer's Steppe |q 74517/2 |count 4 |goto 78.51,32.13
|only if haveq(74517) or completedq(74517)
step
Place the Snail Marker in the Wanderer's Steppe |q 74517/2 |count 5 |goto 77.39,32.14
|only if haveq(74517) or completedq(74517)
step
Stop Riding Big Slick |outvehicle |script VehicleExit() |q 74517
|only if haveq(74517) or completedq(74517)
step
use the Conch Whistle##203708
Ride Big Slick |invehicle |goto The Waking Shores/0 77.91,46.70 |q 74517
|only if haveq(74517) or completedq(74517)
step
Place the Snail Marker in the Restless Wetlands |q 74517/1 |count 1 |goto 77.91,46.70
|only if haveq(74517) or completedq(74517)
step
Place the Snail Marker in the Restless Wetlands |q 74517/1 |count 2 |goto 78.22,44.73
|only if haveq(74517) or completedq(74517)
step
Place the Snail Marker in the Restless Wetlands |q 74517/1 |count 3 |goto 79.26,44.59
|only if haveq(74517) or completedq(74517)
step
Place the Snail Marker in the Restless Wetlands |q 74517/1 |count 4 |goto 80.02,44.57
|only if haveq(74517) or completedq(74517)
step
Place the Snail Marker in the Restless Wetlands |q 74517/1 |count 5 |goto 79.09,46.83
|only if haveq(74517) or completedq(74517)
step
Stop Riding Big Slick |outvehicle |script VehicleExit() |q 74517
|only if haveq(74517) or completedq(74517)
step
use the Conch Whistle##203708
Ride Big Slick |invehicle |goto Thaldraszus/0 57.72,81.14 |q 74517
|only if haveq(74517) or completedq(74517)
step
Place the Snail Marker in the Shifting Sands |q 74517/4 |count 1 |goto 57.72,81.14
|only if haveq(74517) or completedq(74517)
step
Place the Snail Marker in the Shifting Sands |q 74517/4 |count 2 |goto 58.43,81.68
|only if haveq(74517) or completedq(74517)
step
Place the Snail Marker in the Shifting Sands |q 74517/4 |count 3 |goto 58.94,82.28
|only if haveq(74517) or completedq(74517)
step
Place the Snail Marker in the Shifting Sands |q 74517/4 |count 4 |goto 58.92,79.61
|only if haveq(74517) or completedq(74517)
step
Place the Snail Marker in the Shifting Sands |q 74517/4 |count 5 |goto 58.15,79.59
|only if haveq(74517) or completedq(74517)
step
Stop Riding Big Slick |outvehicle |script VehicleExit() |q 74517
|only if haveq(74517) or completedq(74517)
step
use the Conch Whistle##203708
Ride Big Slick |invehicle |goto The Azure Span/0 62.77,31.28 |q 74517
|only if haveq(74517) or completedq(74517)
step
Place the Snail Marker in the Upper Frostlands |q 74517/3 |count 1 |goto 62.77,31.28
|only if haveq(74517) or completedq(74517)
step
Place the Snail Marker in the Upper Frostlands |q 74517/3 |count 2 |goto 62.23,32.16
|only if haveq(74517) or completedq(74517)
step
Place the Snail Marker in the Upper Frostlands |q 74517/3 |count 3 |goto 61.43,33.30
|only if haveq(74517) or completedq(74517)
step
Place the Snail Marker in the Upper Frostlands |q 74517/3 |count 4 |goto 60.98,31.59
|only if haveq(74517) or completedq(74517)
step
Place the Snail Marker in the Upper Frostlands |q 74517/3 |count 5 |goto 61.12,30.27
|only if haveq(74517) or completedq(74517)
step
Stop Riding Big Slick |outvehicle |script VehicleExit() |q 74517
|only if haveq(74517) or completedq(74517)
step
talk Briggul##201752
turnin Resistance Training##74518 |goto Zaralek Cavern/0 44.25,79.92 |only if haveq(74518) or completedq(74518)
turnin A Snail's Pace##74516 |goto 44.25,79.92 |only if haveq(74516) or completedq(74516)
turnin The Slowest Fan Club##74514 |goto 44.25,79.92 |only if haveq(74514) or completedq(74514)
turnin Good for Goo##74519 |goto 44.25,79.92 |only if haveq(74519) or completedq(74519)
turnin All Terrain Snail##74517 |goto 44.25,79.92 |only if haveq(74517) or completedq(74517)
step
You have completed the daily quest for the day
|tip You can gain additional Glimmerogg Racer reputation by acquiring certain snail battle pets and leveling them to 25.
You can complete the following snail pet quests:
|tip Amethyst Softshell |only if not completedq(74948)
|tip Blackchasm Crawler |only if not completedq(74950)
|tip Microlicid |only if not completedq(74952)
|tip Mudshell Conch |only if not completedq(74959)
|tip Predatory Helicid |only if not completedq(74960)
|tip Prismatic Softshell |only if not completedq(74961)
|tip Rapana Whelk |only if not completedq(74962)
|tip Rusty Snail |only if not completedq(74963)
|tip Scooter the Snail |only if not completedq(74964)
|tip Shelly |only if not completedq(74965)
|tip Shimmershell Snail |only if not completedq(74786)
|tip Silkbead Snail |only if not completedq(74966)
|tip Spireshell Snail |only if not completedq(74967)
|tip Zoom |only if not completedq(74968)
'|complete not completedq(74518,74516,74514,74519,74517) |next "Begin_Daily_Quests" |or
'|complete petlevel(2697) >= 25 and not completedq(74948) |next "Begin_Daily_Quests" |or
'|complete petlevel(2657) >= 25 and not completedq(74950) |next "Begin_Daily_Quests" |or
'|complete petlevel(3235) >= 25 and not completedq(74952) |next "Begin_Daily_Quests" |or
'|complete petlevel(1776) >= 25 and not completedq(74959) |next "Begin_Daily_Quests" |or
'|complete petlevel(3219) >= 25 and not completedq(74960) |next "Begin_Daily_Quests" |or
'|complete petlevel(2698) >= 25 and not completedq(74961) |next "Begin_Daily_Quests" |or
'|complete petlevel(743) >= 25 and not completedq(74962) |next "Begin_Daily_Quests" |or
'|complete petlevel(496) >= 25 and not completedq(74963) |next "Begin_Daily_Quests" |or
'|complete petlevel(289) >= 25 and not completedq(74964) |next "Begin_Daily_Quests" |or
'|complete petlevel(3222) >= 25 and not completedq(74965) |next "Begin_Daily_Quests" |or
'|complete petlevel(493) >= 25 and not completedq(74786) |next "Begin_Daily_Quests" |or
'|complete petlevel(568) >= 25 and not completedq(74966) |next "Begin_Daily_Quests" |or
'|complete petlevel(2653) >= 25 and not completedq(74967) |next "Begin_Daily_Quests" |or
'|complete petlevel(1903) >= 25 and not completedq(74968) |next "Begin_Daily_Quests" |or
]])
ZGV.BETAEND()
