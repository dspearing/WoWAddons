local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("EventsA") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Brawler's Guild\\Battle for Azeroth Brawler's Guild")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Brewfest\\Brewfest Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Brewfest\\Brewfest Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Brewfest\\Brewfest Achievements")
ZygorGuidesViewer:RegisterGuide("Events Guides\\Battle for Azeroth\\The Burning of Teldrassil",{
author="support@zygorguides.com",
description="\nThis guide will help to defend Teldrassil against the incoming Horde attack..",
condition_suggested=function() return level >= 10 and level <= 50 and not completedq(53310) end,
},[[
step
accept A Short-Lived Peace##52058
|tip You will accept this quest automatically.
step
Enter the building |goto Stormwind City/0 80.69,37.80 < 5 |walk
talk Anduin Wrynn##107574
|tip Inside the building.
turnin A Short-Lived Peace##52058 |goto 85.90,31.57
accept The Horde Uprising##52060 |goto 85.90,31.57
step
Watch the dialogue
talk Master Mathias Shaw##139798
|tip Inside the building.
turnin The Horde Uprising##52060 |goto 85.15,32.35
accept A Disturbance in Ashenvale##52062 |goto 85.15,32.35
step
Follow the path |goto 83.88,30.57 < 5 |walk
Run up the stairs |goto 83.48,29.81 < 5 |only if walking
Follow the path |goto 83.34,29.54 < 5 |only if walking
click Portal to Astranaar##297575
Take the Portal to Astranaar |q 52062/1 |goto 82.68,26.84
step
Find Delaryn Summermoon |q 52062/2 |goto Ashenvale/0 35.86,50.43
step
talk Captain Delaryn Summermoon##134578
turnin A Disturbance in Ashenvale##52062 |goto 35.86,50.43
accept The Light of Elune##52072 |goto 35.86,50.43
accept Knives of the Forsaken##53616 |goto 35.86,50.43
stickystart "Kill_Forsaken_Assassins"
step
clicknpc Astranaar Sentinel##144282+
|tip They look like Night Elf corpses on the ground around this area.
Honor #6# Fallen Soldiers |q 52072/1 |goto 35.88,50.20
step
label "Kill_Forsaken_Assassins"
kill 8 Forsaken Assassin##140801 |q 53616/1 |goto 36.06,50.26
|tip They are stealthed around this area.
step
talk Captain Delaryn Summermoon##134578
turnin The Light of Elune##52072 |goto 35.86,50.43
turnin Knives of the Forsaken##53616 |goto 35.86,50.43
accept A Soft Glow##52116 |goto 35.86,50.43
step
Meet Malfurion at the Entrance to Darkshore |q 52116/1 |goto Darkshore/0 43.82,89.82
step
Watch the dialogue
talk Malfurion Stormrage##133693
turnin A Soft Glow##52116 |goto 43.58,89.25
accept Hidden Amongst the Leaves##52234 |goto 43.58,89.25
accept Mercy for the Mad##53617 |goto 43.58,89.25
stickystart "Kill_Frenzied_Blackwood_Furbolgs"
step
talk Druid of the Claw##140633+
|tip They look like friendly NPC's on the ground around this area.
|tip Some are shapeshifted in animal form and some look like night elves.
Tell them _"You must defend the Grove of the Ancients!"_
Dispatch #8# Druids |q 52234/1 |goto 42.07,77.29
step
label "Kill_Frenzied_Blackwood_Furbolgs"
kill 10 Frenzied Blackwood Furbolg##140686 |q 53617/1 |goto 41.72,76.89
step
talk Captain Delaryn Summermoon##134578
turnin Hidden Amongst the Leaves##52234 |goto 43.41,75.56
turnin Mercy for the Mad##53617 |goto 43.41,75.56
accept Garden Grove##52240 |goto 43.41,75.56
step
kill Monstrous Shredder##143562 |q 52240/1 |goto 43.98,75.34
|tip You may need help with this.
step
talk Captain Delaryn Summermoon##134578
turnin Garden Grove##52240 |goto 45.20,74.96
step
talk Onu##33072
accept Enraged Furbolgs##52245 |goto 45.41,74.85
step
talk Elder Brolg##140719
Tell him _"Come with us to safety. We will not harm you."_
Rescue Elder Brolg |q 52245/1 |goto 43.54,81.08
step
_Next to you:_
talk Captain Delaryn Summermoon##140728
accept Elves in the Machine##53551
stickystart "Sabotage_Horde_Demolishers"
step
Enter the cave |goto 46.27,83.60 < 5 |walk
talk Gren Tornfur##140720
|tip Inside the cave.
Tell him _"Come with us to safety. We will not harm you."_
Rescue Gren Tornfur |q 52245/2 |goto 46.63,83.90
step
Leave the cave |goto 46.27,83.60 < 5 |walk
talk Elder Brownpaw##140721
Tell him _"Come with us to safety. We will not harm you."_
Rescue Elder Brownpaw |q 52245/3 |goto 46.47,85.73
step
label "Sabotage_Horde_Demolishers"
clicknpc Horde Demolisher##144103+
|tip They look like large siege vehicles on the ground around this area.
|tip Run away from them after you click them.
|tip Use the "Sleeping Powder" ability to put enemies to sleep.
|tip It appears as a button on the screen.
Sabotage #5# Horde Demolishers |q 53551/1 |goto 45.02,84.22
step
_Next to you:_
talk Captain Delaryn Summermoon##140728
turnin Elves in the Machine##53551
step
talk Onu##33072
turnin Enraged Furbolgs##52245 |goto 45.41,74.85
accept The Wake of Something New##52242 |goto 45.41,74.85
step
click Azerite Deposit##292886
Discover the Source of Onu's Pain |q 52242/1 |goto 34.66,85.17
step
talk Captain Delaryn Summermoon##134578
turnin The Wake of Something New##52242 |goto 34.73,85.11
accept Azerite Denial##53619 |goto 34.73,85.11
accept No Horde Allowed##53621 |goto 34.73,85.11
stickystart "Slay_Horde_Combatants"
step
click Azerite Deposit##292886+
|tip They look like black and silver rock clusters on the ground around this area.
Collect #6# Azerite |q 53619/1 |goto 32.63,84.08
step
label "Slay_Horde_Combatants"
Kill enemies around this area
Slay #10# Horde Combatants |q 53621/1 |goto 32.63,84.08
step
talk Captain Delaryn Summermoon##134578
turnin Azerite Denial##53619 |goto 34.73,85.11
turnin No Horde Allowed##53621 |goto 34.73,85.11
accept Malfurion Returns##52256 |goto 34.73,85.11
step
talk Malfurion Stormrage##133693
turnin Malfurion Returns##52256 |goto 42.30,66.80
accept "Rock" The World##52257 |goto 42.30,66.80
step
clicknpc Tree of Life##143861
Speak with Tree of Life |q 52257/1 |goto 42.09,66.86
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #50# Horde Enemies |q 52257/2 |goto 42.17,69.08
step
Return to Malfurion Stormrage |goto 42.07,66.87 < 7 |noway |c |q 52257
step
talk Malfurion Stormrage##133693
turnin "Rock" The World##52257 |goto 42.30,66.80
accept Long Away##52197 |goto 42.30,66.80
step
talk Captain Delaryn Summermoon##134578
turnin Long Away##52197 |goto Darnassus/0 40.00,50.42
accept A Looming Threat##52279 |goto Darnassus/0 40.00,50.42
step
talk Janthes Shadeleaf##144146
Tell him _"The Horde have halted their advance at the Wildbend River! We must push them back at once!"_
Rally the Druids of the Claw |q 52279/2 |goto 45.61,35.93
step
talk Myara Sunsong##140498
Tell her _"Captain, the Horde have reached the Wildbend River! We cannot hold them for long!"_
Rally the Kaldorei Forces |q 52279/3 |goto 61.00,49.41
step
talk Astarii Starseeker##4090
Tell her _"Priestess, we require your aid to hold the Horde at Wildbend River."_
Rally the Priestesses of the Moon |q 52279/1 |goto 42.99,73.06
step
talk Malfurion Stormrage##140877
turnin A Looming Threat##52279 |goto Teldrassil/0 58.47,89.49
step
talk Captain Delaryn Summermoon##134578
accept A Threat from the North##52973 |goto 58.48,89.41
step
talk Malfurion Stormrage##140877
turnin A Threat from the North##52973 |goto Darkshore/0 50.42,20.01
accept Rescue Effort##52974 |goto 50.42,20.01
accept Defending Lor'danel##53622 |goto 50.42,20.01
step
talk Captain Delaryn Summermoon##134578
|tip She sometimes runs around this area fighting.
|tip You may have to search for her.
accept Action This Day##52975 |goto 50.43,19.68
stickystart "Slay_Horde_Attackers"
step
talk Lor'danel Citizen##142408+
|tip They look like friendly NPCs cowering in fear on the ground around this area.
Tell them _"I have cleared a path - - you must escape now!"_
Rescue #8# Lor'danel Citizens |q 52974/1 |goto 50.80,19.30
step
kill Gormok Axefall##144364 |q 52975/1 |goto 47.67,20.42
step
kill Ragash Bloodwish##144365 |q 52975/2 |goto 46.82,18.82
step
label "Slay_Horde_Attackers"
Kill enemies around this area
Slay #15# Horde Attackers |q 53622/1 |goto 49.00,19.56
step
talk Captain Delaryn Summermoon##134578
|tip She sometimes runs around this area fighting.
|tip You may have to search for her.
turnin Rescue Effort##52974 |goto 50.43,19.68
turnin Defending Lor'danel##53622 |goto 50.43,19.68
turnin Action This Day##52975 |goto 50.43,19.68
accept The Guidance of Our Shan'do##52977 |goto 50.43,19.68
step
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Travel to the Present |complete not ZGV.InPhase('Old Darnassus') or not completedq(53310) |goto 48.86,24.46 |q 52977
step
Find Malfurion in Darkshore |q 52977/1 |goto 46.17,24.42
step
Watch the dialogue
Assist Malfurion |q 52977/2 |goto 45.94,24.47
step
clicknpc Tamed Hippogryph##142110
Use Tyrande's Mount |q 52977/3 |goto 45.96,24.96
step
Return to Darnassus |goto Darnassus/0 43.01,73.09 < 7 |c |q 52977 |notravel
step
Enter the building |goto 43.01,74.83 < 5 |walk
talk Mia Greymane##142978
|tip Inside the building.
turnin The Guidance of Our Shan'do##52977 |goto 43.09,78.62
accept A Flicker of Hope##53095 |goto 43.09,78.62 |only if not completedq(53310)
step
Leave the building |goto 43.01,74.80 < 3 |walk
talk Darnassian Citizen##143409+
Tell them _"The flames are clear! Get to the Temple of the Moon!"_
Evacuate #982# Darnassian Citizens |q 53095/1 |goto 58.76,68.28 |only if not completedq(53310)
|tip Use the "Douse" ability on on fires around this area.
|tip It appears as a button on the screen.
|tip It is impossible to complete this objective, you will fail.
step
Return to the Temple of the Moon |goto 43.37,78.31 < 7 |c |q 53095 |notravel
step
Watch the dialogue
turnin A Flicker of Hope##53095 |goto 43.37,78.31
|tip You will turn in this quest automatically.
accept From the Ashes...##53310 |goto 43.37,78.31
|tip You will accept this quest automatically.
step
click Portal to Stormwind##303144 |goto 43.91,78.68
Teleport to Stormwind City |goto Stormwind City/0 49.59,86.53 < 7 |noway |c |q 53310
step
Enter the building |goto 80.69,37.80 < 5 |walk
talk Anduin Wrynn##107574
|tip Inside the building.
turnin From the Ashes...##53310 |goto 85.90,31.57
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Children's Week Kul Tiras Quests",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the Kul Tiras questline for the Children's Week event.",
condition_suggested=function() return isevent("Children's Week") end,
condition_end=function() return completedq(53865) end,
startlevel=10,
},[[
step
Run up the stairs |goto Boralus/0 44.22,57.84 < 15 |only if walking
Run down the stairs |goto 41.65,44.93 < 15 |only if walking
Enter the building |goto 48.16,39.43 < 10 |walk
talk Orphan Matron Westerson##145291
|tip Inside the building.
accept Children's Week##53811 |goto 48.00,40.26
step
use the Kul Tiran Orphan Whistle##164772
_Next to you:_
talk Liam##145394
turnin Children's Week##53811 |goto 48.00,40.26
accept The Mountain Folk##53859 |goto 48.00,40.26
accept Yo Ho, Yo Ho!##53861 |goto 48.00,40.26
accept The Squid Shrine##53862 |goto 48.00,40.26
step
use the Kul Tiran Orphan Whistle##164772
|tip Ensure that you have your orphan, Liam, summoned.
Visit the Roughnecks |q 53859/1 |goto Tiragarde Sound/0 42.46,22.61
step
use the Kul Tiran Orphan Whistle##164772
|tip Ensure that you have your orphan, Liam, summoned.
Visit Shrine of the Storm |q 53862/1 |goto Stormsong Valley/0 72.59,49.92
step
use the Kul Tiran Orphan Whistle##164772
|tip Ensure that you have your orphan, Liam, summoned.
Visit Freehold |q 53861/1 |goto Tiragarde Sound/0 79.82,82.50
step
use the Kul Tiran Orphan Whistle##164772
_Next to you:_
talk Liam##145394
turnin The Mountain Folk##53859 |goto 79.82,82.50
turnin Yo Ho, Yo Ho!##53861 |goto 79.82,82.50
turnin The Squid Shrine##53862 |goto 79.82,82.50
accept Bird Friends##53863 |goto 79.82,82.50
accept Shapeshifters!##53864 |goto 79.82,82.50
step
Follow the path |goto Drustvar/0 38.93,49.78 < 20 |only if walking
Continue following the path |goto 43.87,41.79 < 20 |only if walking
Continue up the path |goto 46.61,39.29 < 15 |only if walking
use the Kul Tiran Orphan Whistle##164772
|tip Ensure that you have your orphan, Liam, summoned.
Visit Ulfar's Den |q 53864/1 |goto 46.31,44.59
step
use the Kul Tiran Orphan Whistle##164772
|tip Ensure that you have your orphan, Liam, summoned.
Visit Arom's Stand |q 53863/1 |goto Drustvar/0 36.03,51.19
step
use the Kul Tiran Orphan Whistle##164772
_Next to you:_
talk Liam##145394
turnin Bird Friends##53863 |goto 36.03,51.19
turnin Shapeshifters!##53864 |goto 36.03,51.19
accept Return to the Orphanage##53865 |goto 36.03,51.19
step
Run up the stairs |goto Boralus/0 44.22,57.84 < 15 |only if walking
Run down the stairs |goto 41.65,44.93 < 15 |only if walking
Enter the building |goto 48.16,39.43 < 10 |walk
use the Kul Tiran Orphan Whistle##164772
|tip Ensure that you have your orphan, Liam, summoned.
Return to the Orphanage |q 53865/1 |goto 48.00,40.26
step
use the Kul Tiran Orphan Whistle##164772
_Next to you:_
talk Liam##145394
turnin Return to the Orphanage##53865 |goto 48.00,40.26
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Children's Week Stormwind Quests",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the Stormwind questline for the Children's Week event.",
condition_suggested=function() return isevent("Children's Week") end,
condition_end=function() return completedq(171) end,
startlevel=10,
},[[
step
talk Orphan Matron Nightingale##14450
accept Children's Week##1468 |goto Stormwind City/0 56.31,54.00
step
use the Human Orphan Whistle##18598
_Next to you:_
talk Human Orphan##14305
turnin Children's Week##1468 |goto 56.31,54.00
accept Cruisin' the Chasm##29093 |goto 56.31,54.00
accept The Biggest Diamond Ever!##29106 |goto 56.31,54.00
accept Our New Friends##54130 |goto 56.31,54.00
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
Visit the Stormwind Embassy with your Orphan |q 54130/1 |goto 53.35,15.36
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
clicknpc Rental Chopper##52189
Jump in the Chopper |invehicle |q 29093 |goto Westfall/0 57.76,53.04
step
Watch the dialogue
Take a Chopper Tour of the Raging Chasm |q 29093/1
step
Run down the ramp |goto Ironforge/0 44.16,51.94 < 5 |walk
Run up the stairs |goto Ironforge/1 58.29,49.21 < 5 |walk
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
Visit King Magni in Old Ironforge |q 29106/1 |goto 34.40,51.26
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
_Next to you:_
talk Human Orphan##14305
turnin The Biggest Diamond Ever!##29106 |goto 34.40,51.26
turnin Cruisin' the Chasm##29093 |goto 34.40,51.26
turnin Our New Friends##54130 |goto 34.40,51.26
accept Let's Go Fly a Kite##29117 |goto 34.40,51.26
accept You Scream, I Scream...##29119 |goto 34.40,51.26
step
talk Craggle Wobbletop##52358
|tip He walks around the Trade District canal.
buy 1 Dragon Kite 2-Pack##68890 |q 29117 |goto Stormwind City/0 57.33,65.64
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
use the Dragon Kite 2-Pack##68890
Fly Dragon Kites with Your Orphan |q 29117/1
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
_Next to you:_
talk Human Orphan##14305
turnin Let's Go Fly a Kite##29117
step
talk Hans Coldhearth##52421
buy 1 Cone of Cold##69027 |q 29119 |goto 48.97,89.74
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
use Cone of Cold##69027
Take Your Orphan Out for Ice Cream |q 29119/1
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
_Next to you:_
talk Human Orphan##14305
turnin You Scream, I Scream...##29119
accept A Warden of the Alliance##171
step
talk Craggle Wobbletop##52358
|tip He walks around the Trade District canal.
buy 1 Foam Sword Rack##69057 |q 171/1 |goto 57.33,65.64
step
talk Orphan Matron Nightingale##51988
turnin A Warden of the Alliance##171 |goto 56.31,54.00
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Children's Week Shattrath Quests",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the Shattrath questline for the Children's Week event.",
condition_suggested=function() return isevent("Children's Week") end,
condition_end=function() return completedq(10966) end,
startlevel=10,
},[[
step
talk Orphan Matron Mercy##22819
accept Children's Week##10943 |goto Shattrath City/0 75.08,47.90
step
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan.
_Next to you:_
talk Draenei Orphan##22818
turnin Children's Week##10943 |goto 75.08,47.90
accept Auchindoun and the Ring of Observance##10950 |goto 75.08,47.90
accept A Trip to the Dark Portal##10952 |goto 75.08,47.90
accept Jheel is at Aeris Landing!##10954 |goto 75.08,47.90
step
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
Take Dornaa to Aeris Landing |q 10954/1 |goto Nagrand/0 31.47,57.49
step
talk Jheel##22836
turnin Jheel is at Aeris Landing!##10954 |goto 31.49,57.61
step
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
Take Dornaa to the Ring of Observance |q 10950/1 |goto Terokkar Forest/0 39.90,64.69
step
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
_Next to you:_
talk Draenei Orphan##22818
turnin Auchindoun and the Ring of Observance##10950 |goto 39.90,64.69
step
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
Take Dornaa to the Dark Portal |q 10952/1 |goto Hellfire Peninsula/0 88.68,50.22
step
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
_Next to you:_
talk Draenei Orphan##22818
turnin A Trip to the Dark Portal##10952 |goto 88.68,50.22
accept The Seat of the Naaru##10956 |goto 88.68,50.22
accept Time to Visit the Caverns##10962 |goto 88.68,50.22
step
Follow the path down |goto Tanaris/17 63.40,30.36 < 15 |only if walking
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
Take Dornaa to the Caverns of Time |q 10962/2 |goto Tanaris/18 53.14,56.80
step
talk Alurmi##21643
buy 1 Toy Dragon##31951 |q 10962/1 |goto Tanaris/17 39.94,77.30
step
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
_Next to you:_
talk Draenei Orphan##22818
turnin Time to Visit the Caverns##10962 |goto 39.94,77.30
step
Follow the path |goto The Exodar/0 63.31,41.65 < 10 |only if walking
Run down the ramp |goto 59.68,33.99 < 10 |only if walking
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
Take Dornaa to the Seat of the Naaru |q 10956/1 |goto 57.59,41.21
step
talk O'ros##17538
turnin The Seat of the Naaru##10956
accept Call on the Farseer##10968 |goto 57.94,41.42
step
Run up the ramp |goto 54.69,36.29 < 10 |only if walking
Follow the path |goto 42.78,32.19 < 10 |only if walking
Continue following the path |goto 36.91,31.41 < 10 |only if walking
Continue following the path |goto 31.63,36.27 < 10 |only if walking
Run up the ramp |goto 26.97,29.79 < 7 |only if walking
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
Take Dornaa to Farseer Nobundo |q 10968/1 |goto 31.09,28.11
step
talk Farseer Nobundo##17204
|tip He walks around this area.
turnin Call on the Farseer##10968 |goto 30.82,30.80
step
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
_Next to you:_
talk Draenei Orphan##22818
accept Back to the Orphanage##10966
step
talk Orphan Matron Mercy##22819
turnin Back to the Orphanage##10966 |goto Shattrath City/0 75.08,47.90
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Children's Week Dalaran Oracles Quests",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the Dalaran Oracles questline for the Children's Week event.",
condition_suggested=function() return isevent("Children's Week") end,
condition_end=function() return completedq(28880) or completedq(13960) or completedq(13959) or completedq(28879) end,
startlevel=10,
},[[
step
talk Orphan Matron Aria##34365
accept Little Orphan Roo Of The Oracles##13926 |goto Dalaran/1 49.36,63.26
step
talk Orphan Matron Aria##34365
Choose _<Ask about the orphans.>_
Speak to Orphan Matron Aria |q 13926/1 |goto 49.36,63.26
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan.
_Next to you:_
talk Oracle Orphan##33533
turnin Little Orphan Roo Of The Oracles##13926 |goto 49.36,63.26
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan.
_Next to you:_
talk Oracle Orphan##33533
accept The Biggest Tree Ever!##13929 |goto 49.36,63.26
accept The Bronze Dragonshrine##13933 |goto 49.36,63.26
accept Playmates!##13950 |goto 49.36,63.26
step
Follow the path |goto Grizzly Hills/0 50.39,46.40 < 10 |only if walking
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
Take Roo to Visit Grizzlemaw |q 13929/1 |goto 50.68,44.09
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
_Next to you:_
talk Oracle Orphan##33533
turnin The Biggest Tree Ever!##13929 |goto 50.68,44.09
step
Follow the path |goto Dragonblight/0 69.66,46.14 < 10 |only if walking
Follow the path up |goto 69.51,44.06 < 10 |only if walking
Continue up the path |goto 69.77,42.63 < 10 |only if walking
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
Take Roo to Visit the Bronze Dragonshrine |q 13933/1 |goto 71.11,41.10
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
_Next to you:_
talk Oracle Orphan##33533
turnin The Bronze Dragonshrine##13933 |goto 71.11,41.10
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
Take Roo to Visit Winterfin Retreat |q 13950/1 |goto Borean Tundra/0 43.55,13.65
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
_Next to you:_
talk Oracle Orphan##33533
turnin Playmates!##13950 |goto 43.55,13.65
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
_Next to you:_
talk Oracle Orphan##33533
accept The Dragon Queen##13954 |goto 43.55,13.65
accept Meeting a Great One##13956 |goto 43.55,13.65
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
Take Roo to Visit The Etymidian |q 13956/1 |goto Un'Goro Crater/0 47.60,9.17
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
_Next to you:_
talk Oracle Orphan##33533
turnin Meeting a Great One##13956 |goto 47.60,9.17
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
|tip She is at the top of Wyrmrest Temple.
Take Roo to Visit Alexstrasza the Life-Binder |q 13954/1 |goto Dragonblight/0 59.84,54.59
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
_Next to you:_
talk Oracle Orphan##33533
turnin The Dragon Queen##13954 |goto 59.84,54.59
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
_Next to you:_
talk Oracle Orphan##33533
accept A Trip To The Wonderworks##13937 |goto 59.84,54.59
step
Run up the stairs |goto Dalaran/1 41.92,47.99 < 5 |only if walking
Enter the building |goto 43.27,45.30 < 5 |walk
talk Jepetto Joybuzz##29478
|tip Inside the building.
buy 1 Small Paper Zeppelin##46693 |q 13937 |goto 44.82,45.63
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
use the Small Paper Zeppelin##46693
|tip Use it on your Oracle Orphan.
Throw the Small Paper Zeppelin to Roo |q 13937/1 |goto 44.82,45.63
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
_Next to you:_
talk Oracle Orphan##33533
turnin A Trip To The Wonderworks##13937 |goto 44.82,45.63
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
_Next to you:_
talk Oracle Orphan##33533
accept Back To The Orphanage##28879 |goto 44.82,45.63 |or
accept Back To The Orphanage##13959 |goto 44.82,45.63 |or
step
Leave the building |goto 43.17,45.17 < 3 |walk
talk Orphan Matron Aria##34365
turnin Back To The Orphanage##28879 |goto 49.35,63.25 |only if haveq(28879) or completedq(28879)
turnin Back To The Orphanage##13959 |goto 49.35,63.25 |only if haveq(13959) or completedq(13959)
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Children's Week Dalaran Wolvar Quests",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the Dalaran Wolvar questline for the Children's Week event.",
condition_suggested=function() return isevent("Children's Week") end,
condition_end=function() return completedq(28880) or completedq(13960) or completedq(13959) or completedq(28879) end,
startlevel=10,
},[[
step
talk Orphan Matron Aria##34365
accept Little Orphan Kekek Of The Wolvar##13927 |goto Dalaran/1 49.35,63.25
step
talk Orphan Matron Aria##34365
Choose _<Ask about the orphans.>_
Speak to Orphan Matron Aria |q 13927/1 |goto 49.35,63.25
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan.
_Next to you:_
talk Wolvar Orphan##33532
turnin Little Orphan Kekek Of The Wolvar##13927 |goto 49.35,63.25
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan.
_Next to you:_
talk Wolvar Orphan##33532
accept Home Of The Bear-Men##13930 |goto 49.35,63.25
accept The Bronze Dragonshrine##13934 |goto 49.35,63.25
accept Playmates!##13951 |goto 49.35,63.25
step
Follow the path |goto Grizzly Hills/0 50.39,46.40 < 10 |only if walking
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
Take Kekek to Visit Grizzlemaw |q 13930/1 |goto 50.68,44.09
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
_Next to you:_
talk Wolvar Orphan##33532
turnin Home Of The Bear-Men##13930 |goto 50.68,44.09
step
Follow the path |goto Dragonblight/0 69.66,46.14 < 10 |only if walking
Follow the path up |goto 69.51,44.06 < 10 |only if walking
Continue up the path |goto 69.77,42.63 < 10 |only if walking
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
Take Kekek to Visit the Bronze Dragonshrine |q 13934/1 |goto 71.11,41.10
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
_Next to you:_
talk Wolvar Orphan##33532
turnin The Bronze Dragonshrine##13934 |goto 71.11,41.10
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
Take Kekek to Visit Snowfall Glade |q 13951/1 |goto Dragonblight/0 45.28,63.29
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
_Next to you:_
talk Wolvar Orphan##33532
turnin Playmates!##13951 |goto 45.28,63.29
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
_Next to you:_
talk Wolvar Orphan##33532
accept The Dragon Queen##13955 |goto 45.28,63.29
accept The Mighty Hemet Nesingwary##13957 |goto 45.28,63.29
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
|tip She is at the top of Wyrmrest Temple.
Take Kekek to Visit Alexstrasza the Life-Binder |q 13955/1 |goto Dragonblight/0 59.84,54.59
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
_Next to you:_
talk Wolvar Orphan##33532
turnin The Dragon Queen##13955 |goto 59.84,54.59
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
Take Kekek to Visit Hemet Nesingwary |q 13957/1 |goto Sholazar Basin/0 27.13,59.23
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
_Next to you:_
talk Wolvar Orphan##33532
turnin The Mighty Hemet Nesingwary##13957 |goto 27.13,59.23
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
_Next to you:_
talk Wolvar Orphan##33532
accept A Visit To The Wonderworks##13938 |goto 27.13,59.23
step
Run up the stairs |goto Dalaran/1 41.92,47.99 < 5 |only if walking
Enter the building |goto 43.27,45.30 < 5 |walk
talk Jepetto Joybuzz##29478
|tip Inside the building.
buy 1 Small Paper Zeppelin##46693 |q 13938 |goto 44.82,45.63
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
use Small Paper Zeppelin##46693
|tip Use it on your Wolvar Orphan.
Throw the Small Paper Zeppelin to Kekek |q 13938/1 |goto 44.82,45.63
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
_Next to you:_
talk Wolvar Orphan##33532
turnin A Visit To The Wonderworks##13938 |goto 44.82,45.63
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
_Next to you:_
talk Wolvar Orphan##33532
accept Back To The Orphanage##28880 |goto 44.82,45.63 |or
accept Back To The Orphanage##13960 |goto 44.82,45.63 |or
step
Leave the building |goto 43.17,45.17 < 3 |walk
talk Orphan Matron Aria##34365
turnin Back To The Orphanage##28880 |goto 49.35,63.25 |only if haveq(28880) or completedq(28880)
turnin Back To The Orphanage##13960 |goto 49.35,63.25 |only if haveq(13960) or completedq(13960)
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Achievements\\Aw, Isn't It Cute?",{
author="support@zygorguides.com",
description="\nObtain one of the Children's Week reward pets through questing.",
condition_suggested=function() return isevent("Children's Week") end,
achieveid={1792},
patch='30009',
startlevel=10,
},[[
leechsteps "Events Guides\\Children's Week\\Children's Week Shattrath Quests" 1-17
step
_Congratulations!_
You Earned the "Aw, Isn't It Cute?" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Achievements\\Bad Example",{
author="support@zygorguides.com",
description="\nEat the following sweets while your orphan is watching:\n\nTigule's Strawberry Ice Cream\n"..
"Tasty Cupcake\nRed Velvet Cupcake\nDelicious Chocolate Cake\nLovely Cake Slice\nDalaran Brownie\nDalran Doughnut",
condition_suggested=function() return isevent("Children's Week") end,
achieveid={1788},
patch='30002',
startlevel=10,
},[[
step
talk Orphan Matron Nightingale##14450
Tell her _"Children's Week is not yet over...may I have another Orphan Whistle?"_
collect 1 Human Orphan Whistle##18598 |achieve 1793 |goto Stormwind City/0 56.32,53.99
step
talk Emmithue Smails##14481
buy 1 Tigule's Strawberry Ice Cream##7228 |achieve 1788 |goto Stormwind City/0 61.30,75.02
step
talk Auctioneer Fitch##8719
|tip Purchase the follow items from the Auction House, or use your Cooking ability to create them.
collect 1 Tasty Cupcake##43490 |achieve 1788 |goto 61.16,70.78
collect 1 Delicious Chocolate Cake##33924 |achieve 1788 |goto 61.16,70.78
step
talk Aimee##29548
buy 1 Red Velvet Cupcake##42429 |achieve 1788 |goto Dalaran/1 51.17,29.07
buy 1 Lovely Cake##42438 |achieve 1788 |goto 51.17,29.07
buy 1 Dalaran Doughnut##42430 |achieve 1788 |goto 51.17,29.07
buy 1 Dalaran Brownie##42431 |achieve 1788 |goto 51.17,29.07
step
use the Lovely Cake##42438
|tip Use it to place a cake on the ground.
click Lovely Cake
collect 1 Lovely Cake Slice##42434 |achieve 1788
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
use Tigule's Strawberry Ice Cream##7228
Eat Tigule's Strawberry Ice Cream |achieve 1788/1
step
use the Tasty Cupcake##43490
Eat Tasty Cupcake |achieve 1788/2
step
use the Red Velvet Cupcake##42429
Eat Red Velvet Cupcake |achieve 1788/3
step
use the Delicious Chocolate Cake##33924
Eat Delicious Chocolate Cake |achieve 1788/4
step
use the Lovely Cake Slice##42434
Eat Lovely Cake Slice |achieve 1788/5
step
use the Dalaran Brownie##42431
Eat Dalaran Brownie |achieve 1788/6
step
use the Dalaran Doughnut##42430
Eat Dalaran Doughnut |achieve 1788/7
step
|achieve 1788
step
_Congratulations!_
You Earned the "Bad Example" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Achievements\\Daily Chores",{
author="support@zygorguides.com",
description="\nComplete five daily quests with your orphan out.",
condition_suggested=function() return isevent("Children's Week") end,
achieveid={1789},
patch='30003',
startlevel=10,
},[[
step
talk Orphan Matron Nightingale##14450
Tell her _"Children's Week is not yet over...may I have another Orphan Whistle?"_
collect 1 Human Orphan Whistle##18598 |achieve 1793 |goto Stormwind City/0 56.32,53.99
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
Complete any 5 daily quests of your choice:
|tip World Quests do not count for this achievement.
|tip Use the various daily quest guides to complete this.
|tip Make sure your orphan is standing next to you when turning in the daily quests, or you won't get credit for this achievement.
|achieve 1789
step
_Congratulations!_
You Earned the "Daily Chores" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Achievements\\Hail To The King, Baby",{
author="support@zygorguides.com",
description="\nDefeat King Ymiron in Utgarde Pinnacle with your orphan out.",
condition_suggested=function() return isevent("Children's Week") end,
achieveid={1790},
patch='30002',
startlevel=10,
},[[
step
talk Orphan Matron Nightingale##14450
Tell her _"Children's Week is not yet over...may I have another Orphan Whistle?"_
collect 1 Human Orphan Whistle##18598 |achieve 1793 |goto Stormwind City/0 56.32,53.99
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
kill King Ymiron##26861
|tip Inside the Utgarde Pinnacle dungeon.
|tip He's the final boss of the instance.
|achieve 1790 |goto Utgarde Pinnacle/2 42.60,53.50
step
_Congratulations!_
You Earned the "Hail To The King, Baby" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Achievements\\Home Alone",{
author="support@zygorguides.com",
description="\nUse your Hearthstone while your orphan is with you.",
condition_suggested=function() return isevent("Children's Week") end,
achieveid={1791},
patch='30002',
startlevel=10,
},[[
step
talk Orphan Matron Nightingale##14450
Tell her _"Children's Week is not yet over...may I have another Orphan Whistle?"_
collect 1 Human Orphan Whistle##18598 |achieve 1793 |goto Stormwind City/0 56.32,53.99
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
use Hearthstone##6948
|tip Use it while your Orphan is standing next to you.
|achieve 1791
step
_Congratulations!_
You Earned the "Home Alone" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Achievements\\School of Hard Knocks",{
author="support@zygorguides.com",
description="\nTake your orphan into the battlegrounds and complete the feats listed below:\n\nCapture the flag "..
"in Eye of the Storm\nAssault a flag in Arathi Basin\nAssault a tower in Alterac Valley\nReturn a "..
"fallen flag in Warsong Gulch",
condition_suggested=function() return isevent("Children's Week") end,
achieveid={1786},
patch='30002',
startlevel=10,
},[[
step
talk Orphan Matron Nightingale##14450
Tell her _"Children's Week is not yet over...may I have another Orphan Whistle?"_
collect 1 Human Orphan Whistle##18598 |achieve 1793 |goto Stormwind City/0 56.32,53.99
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
|tip Enter the Eye of the Storm battleground and capture the flag.
Capture the flag in Eye of the Storm |achieve 1786/1
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
|tip Enter the Alterac Valley battleground and assault a tower.
Assault a Tower in Alterac Valley |achieve 1786/2
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
|tip Enter the Arathi Basin battleground and assault a flag.
Assault a Flag in Arathi Basin |achieve 1786/3
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
|tip Enter the Warsong Gulch battleground and return a fallen flag.
Return a fallen Flag in Warsong Gulch |achieve 1786/4
step
_Congratulations!_
You Earned the "School of Hard Knocks" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Achievements\\Veteran Nanny",{
author="support@zygorguides.com",
description="\nAcquire Egbert's Egg, Sleepy Willy, and Elekk Training Collar on a single character.",
condition_suggested=function() return isevent("Children's Week") end,
achieveid={275},
patch='30001',
startlevel=10,
},[[
step
This achievement takes three years to complete
|tip You must do the following questline once each year on the same character.
|tip Ensure that you only choose Egbert's Egg, Sleepy Willy, and the Elekk Training Collar as rewards.
|confirm
leechsteps "Events Guides\\Children's Week\\Children's Week Shattrath Quests" 1-17
step
_Congratulations!_
You Earned the "Veteran Nanny" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Achievements\\For the Children",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the Achievements for the Children's Week event.",
condition_suggested=function() return isevent("Children's Week") end,
achieveid={1793},
patch='30002',
startlevel=10,
},[[
step
talk Orphan Matron Nightingale##14450
Tell her _"Children's Week is not yet over...may I have another Orphan Whistle?"_
collect 1 Human Orphan Whistle##18598 |achieve 1793 |goto Stormwind City/0 56.32,53.99
leechsteps "Events Guides\\Children's Week\\Children's Week Shattrath Quests" 1-17
leechsteps "Events Guides\\Children's Week\\Achievements\\Bad Example" 2-12
leechsteps "Events Guides\\Children's Week\\Achievements\\Daily Chores" 2-2
leechsteps "Events Guides\\Children's Week\\Achievements\\Hail To The King, Baby" 2-2
leechsteps "Events Guides\\Children's Week\\Achievements\\Home Alone" 2-2
leechsteps "Events Guides\\Children's Week\\Achievements\\School of Hard Knocks" 2-5
step
|achieve 1793
step
_Congratulations!_
You Earned the "For the Children" Achievement
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Darkmoon Faire Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Darkmoon Faire Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Achievements\\Ace Tonk Commander")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Darkmoon Faire Achievements")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\\Blight Boar Concert")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\Rock n' Roll")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\'Tis the Season")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\A Frosty Shake")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\BB King")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\Holiday Bromance")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\A-Caroling We Will Go")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\Crashin' & Thrashin'")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\The Danger Zone")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\Fa-la-la-la-Ogri'la")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\He Knows If You've Been Naughty")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\Iron Armada")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\Let It Snow")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\Merrymaker")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\On Metzen!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\Scrooge")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\Simply Abominable")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\The Winter Veil Gourmet")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\With a Little Helper from My Friends")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Feast of Winter Veil Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Feast of Winter Veil Daily Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Hallow's End Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Hallow's End Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\Bring Me The Head of... Oh Wait")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\Check Your Head")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\A Frightening Friend")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\G.N.E.R.D. Rage")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\Hallowed Be Thy Name")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\A Mask for All Occasions")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\The Mask Task")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\The Masquerade")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\Out With It")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\Rotten Hallow")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\The Savior of Hallow's End")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\Sinister Calling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\That Sparkling Smile")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\Trick or Treat!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\Tricks and Treats")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Harvest Festival\\Harvest Festival Quest")
ZygorGuidesViewer:RegisterGuide("Events Guides\\Warlords of Draenor\\Iron Horde Invasion",{
description="\nTake part in the opening event of the Warlords of Draenor!",
condition_end=function() return completedq(36941) end,
},[[
step
talk Zidormi##88206
Tell her _"Take me back to the present."_
Travel to the Present |complete not ZGV.InPhase('Old Blasted Lands') |goto Blasted Lands/0 48.16,7.28 |q 36941 |future
step
talk Vindicator Maraad##82270
accept Attack of the Iron Horde##35460 |goto 66.58,28.26
accept Under Siege##35462 |goto 66.58,28.26
step
talk Bodrick Grey##85213
accept Peeking into the Portal##36379 |goto 66.94,27.93
step
talk Araazi##85731
fpath Shattered Beachhead |goto 67.65,27.97
stickystart "Kill_Ironmarch_Grunts"
step
clicknpc Iron Demolisher##82273+
Destroy #3# Iron Demolishers |q 35462/1 |goto 63.95,32.69
step
label "Kill_Ironmarch_Grunts"
kill 8 Ironmarch Grunt##76556 |q 35460/1 |goto 63.95,32.69
step
click Telescope##237144
Use the Telescope |q 36379/1 |goto 61.68,36.68
step
talk Vindicator Maraad##82270
turnin Attack of the Iron Horde##35460 |goto 66.58,28.26
turnin Under Siege##35462 |goto 66.58,28.26
accept Subversive Scouts##35463 |goto 66.58,28.26
step
talk Bodrick Grey##85213
turnin Peeking into the Portal##36379 |goto 66.94,27.93
accept Ending Execution##35464 |goto 66.94,27.93
stickystart "Kill_Ironmarch_Scouts"
step
kill Ironmarch Executioner##82774+
|tip They stand in front of kneeling Nethergarde Prisoners around this area.
Stop #3# Executions |q 35464/1 |goto 59.37,27.80
step
label "Kill_Ironmarch_Scouts"
kill 5 Ironmarch Scout##76886 |q 35463/1 |goto 66.90,28.21
|tip They are stealthed near hills and open areas around this area.
step
talk Bodrick Grey##85213
turnin Ending Execution##35464 |goto 66.94,27.93
step
talk Vindicator Maraad##82270
turnin Subversive Scouts##35463 |goto 66.58,28.26
accept Investigating the Invasion##36307 |goto 66.58,28.26
step
talk Vindicator Maraad##84929
turnin Investigating the Invasion##36307 |goto 51.93,28.65
accept Lunatic Lieutenants##35486 |goto 51.93,28.65
accept For Nethergarde!##35492 |goto 51.93,28.65
step
talk Commander Vines##82447
accept Mementos of the Fallen##35494 |goto 52.01,28.51
step
kill Rukah the Machinist##73458
|tip She walks around this area.
collect Rukah's Battleplan##113400 |q 35486/2 |goto 57.00,17.96
step
click Keri's Mug##232576
|tip On the corner of the table under the tent.
collect Keri's Mug##113397 |q 35494/3 |goto 59.35,17.97
step
click Alliance Flag##232532
Plant the Alliance Flag outside of the Main Keep |q 35492/3 |goto 59.86,15.81
step
kill Gar Steelcrush##73446
|tip Upstairs inside the keep.
collect Gar's Battleplan##113401 |q 35486/3 |goto 60.19,13.81
step
click Strumner's Sword##232573
|tip Inside the building.
collect Strumner's Sword##113395 |q 35494/1 |goto 61.81,14.92
step
kill Mokrik Blackfingers##73459
collect Mokrik's Battleplan##113399 |q 35486/1 |goto 62.86,13.12
step
click Alliance Flag##232532
Plant the Alliance Flag at the Center of Nethergarde |q 35492/2 |goto 61.60,18.49
step
click Krolan's Shield##232575
collect Krolan's Shield##113396 |q 35494/2 |goto 60.60,20.01
step
click Alliance Flag##232532
Plant the Alliance Flag at the Entrance to Nethergarde |q 35492/1 |goto 62.97,22.51
step
talk Commander Vines##82447
turnin Mementos of the Fallen##35494 |goto 52.01,28.51
step
talk Vindicator Maraad##82270
turnin Lunatic Lieutenants##35486 |goto 51.93,28.65
turnin For Nethergarde!##35492 |goto 51.93,28.65
accept Toothsmash the Annihilator##35495 |goto 51.93,28.65
accept Death to the Dreadmaul##35488 |goto 51.93,28.65
step
talk Enohar Thunderbrew##76111
accept Enohar's Revenge##35496 |goto 51.78,28.74
stickystart "Slay_Dreadmaul_Ogres"
step
click Cooking Pot##232625
Poison the Cooking Pot |q 35496/1 |goto 43.89,31.01 |count 1
step
click Cooking Pot##232625
Poison the Cooking Pot |q 35496/1 |goto 44.32,35.60 |count 2
step
kill Toothsmash the Annihilator##82451 |q 35495/1 |goto 43.61,36.32
|tip He walks around this area.
step
click Cooking Pot##232625
Poison the Cooking Pot |q 35496/1 |goto 43.40,36.99 |count 3
step
label "Slay_Dreadmaul_Ogres"
Kill Dreadmaul enemies around this area
Slay #8# Dreadmaul Ogres |q 35488/1 |goto 43.83,36.12
step
talk Enohar Thunderbrew##76111
turnin Enohar's Revenge##35496 |goto 51.78,28.74
step
talk Vindicator Maraad##82270
turnin Toothsmash the Annihilator##35495 |goto 51.93,28.65
turnin Death to the Dreadmaul##35488 |goto 51.93,28.65
accept Gar'mak Bladetwist##35500 |goto 51.93,28.65
step
kill Gar'mak Bladetwist##82918 |q 35500/1 |goto 40.05,11.41
|tip Upstairs inside the tower.
step
talk Vindicator Maraad##82270
turnin Gar'mak Bladetwist##35500 |goto 51.93,28.65
accept Report to the King##36941 |goto 51.93,28.65
step
talk King Varian Wrynn##29611
|tip Inside the keep.
turnin Report to the King##36941 |goto Stormwind City/0 85.92,31.56
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Love is in the Air\\Love is in the Air Main Questline")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Love is in the Air\\Love is in the Air Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Love is in the Air\\Achievements\\Be Mine!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Love is in the Air\\Achievements\\Charming")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Love is in the Air\\Achievements\\Dangerous Love")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Love is in the Air\\Achievements\\Fistful of Love")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Love is in the Air\\Achievements\\Flirt With Disaster")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Love is in the Air\\Achievements\\I Pitied The Fool")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Love is in the Air\\Achievements\\Lonely?")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Love is in the Air\\Achievements\\Lovely Luck Is On Your Side")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Love is in the Air\\Achievements\\My Love is Like a Red, Red Rose")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Love is in the Air\\Achievements\\Nation of Adoration")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Love is in the Air\\Achievements\\Perma-Peddle")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Love is in the Air\\Achievements\\Shafted!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Love is in the Air\\Achievements\\Sweet Tooth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Love is in the Air\\Achievements\\The Rocket's Pink Glare")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Lunar Festival Main Questline")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Lunar Festival Crown Transmog Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Achievements\\A Coin of Ancestry")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Achievements\\5 Coins of Ancestry")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Achievements\\10 Coins of Ancestry")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Achievements\\25 Coins of Ancestry")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Achievements\\50 Coins of Ancestry")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Achievements\\Elders of Cataclysm")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Achievements\\Elders of Eastern Kingdoms")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Achievements\\Elders of Kalimdor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Achievements\\Elders of Northrend")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Achievements\\Elders of the Dungeons")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Achievements\\Elders of the Alliance")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Achievements\\Elders of the Horde")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Achievements\\Elune's Blessing")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Achievements\\Frenzied Firecracker")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Achievements\\The Rocket's Red Glare")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Achievements\\Lunar Festival Finery")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Achievements\\To Honor One's Elders")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Achievements\\Elders of the Dragon Isles")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Bonfires")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\Midsummer Achievement Guide")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Eastern Kingdoms")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Kalimdor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Outland")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Northrend")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing the Cataclysm")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Pandaria")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Draenor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing the Broken Isles")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Zandalar")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Eastern Kingdoms")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Kalimdor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Outland")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Northrend")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Cataclysm")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Pandaria")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Draenor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Broken Isles")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Kul Tiras")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Noblegarden Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Noblegarden Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Achievements\\Blushing Bride")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Achievements\\Chocoholic")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Achievements\\Chocolate Lover")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Achievements\\Desert Rose")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Achievements\\Dressed for the Occasion")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Achievements\\Hard Boiled")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Achievements\\I Found One!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Achievements\\Noble Garden")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Achievements\\Shake Your Bunny-Maker")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Achievements\\Spring Fling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Achievements\\Sunday's Finest")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Pilgrim's Bounty\\Quests\\Pilgrim's Bounty Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Pilgrim's Bounty\\Quests\\Pilgrim's Bounty Daily Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Pilgrim's Bounty\\Achievements\\FOOD FIGHT!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Pilgrim's Bounty\\Achievements\\Now We're Cookin'")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim's Paunch")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim's Peril")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim's Progress")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Pilgrim's Bounty\\Achievements\\Sharing is Caring")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Pilgrim's Bounty\\Achievements\\Terokkar Turkey Time")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Pilgrim's Bounty\\Achievements\\Turkey Lurkey")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Pilgrim's Bounty\\Achievements\\The Turkinator")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Battle for Azeroth\\Incursions")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Battle for Azeroth\\Tyrande's Ascension (Darkshore Warfront Unlock)")
