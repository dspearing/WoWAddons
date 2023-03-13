local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("EventsH") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Brawler's Guild\\Battle for Azeroth Brawler's Guild")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Brewfest\\Brewfest Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Brewfest\\Brewfest Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Brewfest\\Brewfest Achievements")
ZygorGuidesViewer:RegisterGuide("Events Guides\\Battle for Azeroth\\The Burning of Teldrassil",{
author="support@zygorguides.com",
description="\nThis guide will help you assault Teldrassil on behalf of the Horde.",
condition_suggested=function() return level >= 10 and level <= 50 and not completedq(52981) end,
},[[
step
accept The Warchief Awaits##50476
|tip You will automatically accept this quest.
step
Follow the path |goto Undercity/0 52.05,64.52 < 5 |walk
Continue following the path |goto Undercity/0 46.32,72.88 < 5 |walk
Continue following the path |goto Undercity/0 45.29,78.11 < 5 |walk
Continue following the path |goto Undercity/0 46.20,83.81 < 5 |walk
Continue following the path |goto Undercity/0 48.81,87.79 < 5 |walk
Continue following the path |goto Undercity/0 52.44,89.43 < 5 |walk
Run up the stairs |goto 53.97,90.40 |goto Undercity/0 53.97,90.40 |only if walking
Follow the path |goto Undercity/0 54.76,94.39 < 5 |only if walking
Run up the stairs |goto Undercity/0 56.19,95.51 < 5 |only if walking
Run up the stairs |goto Undercity/0 57.19,93.29 < 5 |only if walking
talk Lady Sylvanas Windrunner##134554
turnin The Warchief Awaits##50476 |goto Undercity/0 58.14,91.88
accept The Warchief Commands##50642 |goto Undercity/0 58.10,91.88
step
talk High Overlord Saurfang##134574
turnin The Warchief Commands##50642 |goto Northern Barrens/0 50.88,46.00
accept A Quick Diversion##50646 |goto Northern Barrens/0 50.88,46.00
step
talk Lorash##134573
turnin A Quick Diversion##50646 |goto Ashenvale/0 38.91,55.30
accept Everybody Has a Price##50647 |goto Ashenvale/0 38.91,55.30
step
Eliminate #10# Guards |q 50647/1 |goto 36.15,50.64
|tip Use the "Marked!" ability on guards around this area.
|tip It appears as a button on the screen.
|tip You will be stealthed, so enemies won't attack you.
|tip You must not be mounted to do this.
step
Watch the dialogue
Return to the Outskirts of Astranaar |goto 38.92,55.35 < 7 |noway |c |q 50647
step
talk Lorash##134573
turnin Everybody Has a Price##50647 |goto 38.91,55.29
accept A Timely Arrival##50738 |goto 38.91,55.29
step
talk Lady Sylvanas Windrunner##135003
|tip She walks to this location.
turnin A Timely Arrival##50738 |goto 37.83,56.30
accept Zoram'gar Outpost##50740 |goto 37.83,56.30
step
Enter the building |goto 11.67,35.00 < 5 |walk
talk Dagrun Ragehammer##34303
|tip He walks around this area inside the building.
Tell him _"Warchief Sylvanas Windrunner requires your aid repairing her soldiers' weapons."_
Speak with the Weaponsmith |q 50740/3 |goto 11.56,35.36
step
Leave the building |goto 11.67,35.00 < 5 |walk
talk Commander Grimfang##34122
Tell him _"Commander, the warchief asks that you prepare your outpost for an incoming army."_
Speak with Commander Grimfang |q 50740/1 |goto 12.11,33.86
step
Enter the building |goto 12.86,34.12 < 3 |walk
talk Innkeeper Duras##43606
|tip Inside the building.
Tell her _"The warchief needs rations and lodging for an incoming army."_
Speak with the Innkeeper |q 50740/2 |goto 12.99,34.16
step
talk High Overlord Saurfang##134574
turnin Zoram'gar Outpost##50740 |goto 35.17,49.44
accept On The Prowl##50772 |goto 35.17,49.44
step
Meet Sylvanas Near the Entrance to Darkshore |q 50772/1 |goto Darkshore/0 44.07,90.46
step
Watch the dialogue
talk Lady Sylvanas Windrunner##134554
turnin On The Prowl##50772 |goto 44.08,90.50
accept Into the Woods##50800 |goto 44.08,90.50
step
Kill the enemies that attack in waves
Defeat #6# Ashenvale Huntresses |q 50800/1 |goto 44.08,90.50
step
talk Lady Sylvanas Windrunner##134554
turnin Into the Woods##50800 |goto 44.07,90.49
accept Ripe for the Picking##50823 |goto 44.07,90.49
step
talk High Overlord Saurfang##135443
turnin Ripe for the Picking##50823 |goto Ashenvale/0 12.13,33.75
step
talk Lady Sylvanas Windrunner##134554
accept A Quick Flyover##50837 |goto 12.02,33.77
step
talk Zarvik Blastwix##135501
Speak with Zarvik Blastwix |q 50837/1 |goto 11.82,33.26
step
talk Zarvik Blastwix##135501
Tell him _"Let's Fly."_
Board the Bombardier |invehicle |goto 11.82,33.26 |q 50837
stickystart "Destroy_Wisps"
step
kill Marked Tree##140924+
|tip Use the ability on your action bar.
|tip Aim near the bottom of them.
Fell #3# Marked Trees |q 50837/2 |goto Darkshore/0 41.60,90.63
step
label "Destroy_Wisps"
kill Wisp##141268+
|tip Use the ability on your action bar.
Destroy #30# Wisps |q 50837/3 |goto 41.60,90.63
step
Return to Zoram'gar Outpost |goto Ashenvale/0  12.23,33.21 < 7 |c |q 50837 |notravel
step
talk Lady Sylvanas Windrunner##134554
turnin A Quick Flyover##50837 |goto 12.02,33.78
accept An Unstoppable Force##50880 |goto 12.02,33.78
step
Meet Sylvanas at the Wall |q 50880/1 |goto Darkshore/0 44.00,90.18
step
Pass Through the Wall |q 50880/2 |goto 43.81,89.77
step
Watch the dialogue
talk Lady Sylvanas Windrunner##134554
turnin An Unstoppable Force##50880 |goto 42.84,87.43
accept Clearing Them Out##53604 |goto 42.84,87.43
accept A Glaive Misunderstanding##53605 |goto 42.84,87.43
stickystart "Kill_Darnassian_Archers"
step
use the Everburning Torch##158937
|tip Use it on Glaive Throwers around this area.
|tip They look like wooden artillery machines with purple wings on the ground around this area.
Burn #4# Glaive Throwers |q 53605/1 |goto 40.40,83.39
step
label "Kill_Darnassian_Archers"
Kill enemies around this area
Defeat #7# Night Elf Forces |q 53604/1 |goto 40.40,83.39
step
talk Lady Sylvanas Windrunner##134554
turnin Clearing Them Out##53604 |goto 42.43,82.06
turnin A Glaive Misunderstanding##53605 |goto 42.43,82.06
accept Blurred Vision##50878 |goto 42.43,82.06
stickystart "Kill_Frenzied_Blackwood_Furbolgs"
step
kill 8 Sentry Owl##141359 |q 50878/1 |goto 42.36,78.18
step
label "Kill_Frenzied_Blackwood_Furbolgs"
kill 10 Frenzied Blackwood Furbolg##140686 |q 50878/2 |goto 42.36,78.18
step
talk Lady Sylvanas Windrunner##135003
turnin Blurred Vision##50878 |goto 43.30,75.67
accept The Trees Have Ears##50879 |goto 43.30,75.67
step
kill Burning Ancient##141365 |q 50879/1 |goto 44.40,75.11
|tip You may need help with this.
step
talk Lady Sylvanas Windrunner##135003
turnin The Trees Have Ears##50879 |goto 43.30,75.67
step
Watch the dialogue
talk Lady Sylvanas Windrunner##135003
accept The Blackwood Den##52436 |goto 43.30,75.67
accept Aggressive Inspiration##53606 |goto 43.30,75.67
stickystart "Slay_Blackwood_Furbolgs"
step
click Horde Banner##289540
Plant the Northern Banner |q 53606/1 |goto 45.10,83.68
step
click Horde Banner##289540
Plant the Center Banner |q 53606/2 |goto 44.61,85.10
step
click Horde Banner##289540
Plant the Southern Banner |q 53606/3 |goto 44.39,86.53
step
label "Slay_Blackwood_Furbolgs"
Kill enemies around this area
Slay #10# Blackwood Furbolgs |q 52436/1 |goto 44.74,84.01
step
talk Lady Sylvanas Windrunner##134554
turnin The Blackwood Den##52436 |goto 43.32,84.71
turnin Aggressive Inspiration##53606 |goto 43.32,84.71
accept The Start of Something Good##52437 |goto 43.32,84.71
step
Meet Sylvanas at Nazj'vel |q 52437/1 |goto 35.78,84.79
step
talk Jux Burstkix##144346
turnin The Start of Something Good##52437 |goto 35.82,84.84
accept Fueling the Horde War Machine##53608 |goto 35.82,84.84
accept A Very Clear Message##53609 |goto 35.82,84.84
stickystart "Slay_Night_Elves"
step
click Azerite Deposit##297790+
|tip They look like black and silver rock clusters on the ground around this area.
Collect #6# Azerite |q 53608/1 |goto 32.63,84.08
step
label "Slay_Night_Elves"
Kill enemies around this area
Slay #10# Night Elves |q 53609/1 |goto 32.63,84.08
step
talk Jux Burstkix##144346
turnin Fueling the Horde War Machine##53608 |goto 35.82,84.84
turnin A Very Clear Message##53609 |goto 35.82,84.84
accept A Gift of Azerite##53627 |goto 35.82,84.84
step
talk Zarvik Blastwix##135501
|tip He walks around this area.
turnin A Gift of Azerite##53627 |goto 44.60,86.54
accept A Wild Ride##52438 |goto 44.60,86.54
step
clicknpc Goblin Hellion##141847
Use the Goblin Hellion |q 52438/1 |goto 44.76,86.42
step
Ride the Goblin Hellion to Wildbend River |q 52438/2 |goto 41.15,69.32 |notravel
stickystart "Slay_Kaldorei_Forces"
step
kill 5 Awakened Ancient##140741 |q 52438/3 |goto 41.86,66.77
|tip Use the abilities on your action bar.
step
label "Slay_Kaldorei_Forces"
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #20# Kaldorei Forces |q 52438/4 |goto 41.86,66.77
step
Return to Lady Sylvanas Windrunner |goto 42.74,67.95 < 7 |c |q 52438 |notravel
step
talk Lady Sylvanas Windrunner##134554
turnin A Wild Ride##52438 |goto 42.70,67.75
accept A Looming Threat##52806 |goto 42.70,67.75
step
talk Lady Sylvanas Windrunner##134554
Ask her _"Where do we go from here, Warchief?"_
Speak with Sylvanas at the Blackwood Den |q 52806/1 |goto 44.70,86.78
step
talk Lady Sylvanas Windrunner##134554
turnin A Looming Threat##52806 |goto 44.70,86.78
step
talk Lady Sylvanas Windrunner##134554
accept Saurfang Returns##52967 |goto 44.70,86.78
step
talk High Overlord Saurfang##142310
turnin Saurfang Returns##52967 |goto 52.16,22.46
accept No Small Mercy##52970 |goto 52.16,22.46
accept Driving Them Out##53610 |goto 52.16,22.46
accept Seaside Rendezvous##52971 |goto 52.16,22.46
stickystart "Secure_Civilians"
stickystart "Slay_Lordanel_Defenders"
step
kill Ariel Stagguard##144345 |q 52971/2 |goto 51.73,17.76
|tip She walks around this area.
step
kill Caranne Briarbow##142749 |q 52971/1 |goto 46.73,18.79
step
label "Secure_Civilians"
talk Lor'danel Citizen##142408+
|tip They look like neutral NPCs cowering in fear on the ground around this area.
Tell them _"Come with us to safety. We will not harm you."_
Secure #8# Civilians |q 52970/1 |goto 50.80,19.30
step
label "Slay_Lordanel_Defenders"
Kill enemies around this area
Slay #15# Lor'danel Defenders |q 53610/1 |goto 49.00,19.56
step
talk High Overlord Saurfang##142310
turnin No Small Mercy##52970 |goto 52.16,22.45
turnin Driving Them Out##53610 |goto 52.16,22.45
turnin Seaside Rendezvous##52971 |goto 52.16,22.45
accept Killer Queen##52981 |goto 52.16,22.45
step
Find Saurfang in Northern Darkshore |q 52981/1 |goto 45.93,23.55
step
Watch the dialogue
Assist the Warchief |q 52981/2 |goto 46.07,24.31
step
Watch the dialogue
Follow Saurfang |q 52981/3 |goto 46.07,24.31
step
talk Lady Sylvanas Windrunner##144466
Tell her _"I am ready."_
Watch the dialogue
Speak with Sylvanas |q 52981/4 |goto 45.52,18.25
step
talk Lady Sylvanas Windrunner##144466
turnin Killer Queen##52981 |goto 45.51,18.24
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Children's Week Orgrimmar Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Children's Week Shattrath Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Children's Week Zandalar Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Children's Week Dalaran Oracles Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Children's Week Dalaran Wolvar Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Achievements\\Aw, Isn't It Cute?")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Achievements\\Bad Example")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Achievements\\Daily Chores")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Achievements\\Hail To The King, Baby")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Achievements\\Home Alone")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Achievements\\School of Hard Knocks")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Achievements\\Veteran Nanny")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Achievements\\For the Children")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Darkmoon Faire Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Darkmoon Faire Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Achievements\\Ace Tonk Commander")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Darkmoon Faire Achievements")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Blight Boar Concert")
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
condition_end=function() return completedq(36940) end,
},[[
step
talk Zidormi##88206
Tell her _"Take me back to the present."_
Travel to the Present |complete not ZGV.InPhase('Old Blasted Lands') |goto Blasted Lands/0 48.16,7.28 |q 36940 |future
step
talk Ameri Windblade##85734
fpath Shattered Landing |goto 72.96,48.64
step
talk Thrall##82851
accept Attack of the Iron Horde##35745 |goto 71.81,47.72
accept Under Siege##35746 |goto 71.81,47.72
step
talk Rokhan##85247
accept Peeking Into the Portal##36382 |goto 71.88,48.99
stickystart "Kill_Ironmarch_Grunts"
step
clicknpc Iron Demolisher##86091
Destroy #3# Iron Demolishers |q 35746/1 |goto 64.33,35.18
step
label "Kill_Ironmarch_Grunts"
kill 8 Ironmarch Grunt##76189 |q 35745/1 |goto 64.33,35.18
step
click Telescope##237144
Use the Telescope |q 36382/1 |goto 61.68,36.68
step
talk Rokhan##85247
turnin Peeking Into the Portal##36382 |goto 71.88,48.99
step
talk Thrall##82851
turnin Attack of the Iron Horde##35745 |goto 71.81,47.72
turnin Under Siege##35746
step
talk Thrall##82851
accept Subversive Scouts##35748 |goto 71.81,47.72
step
talk Rokhan##85247
accept Ending Executions##35744 |goto 71.88,48.99
step
kill Ironmarch Executioner##82774+
|tip They stand in front of kneeling Horde Prisoners around this area.
Stop #3# Executions |q 35744/1 |goto 59.37,27.80
step
kill 5 Ironmarch Scout##76886 |q 35748/1 |goto 71.78,48.53
|tip They are stealthed near hills and open areas around this area.
step
talk Rokhan##85247
turnin Ending Executions##35744 |goto 71.88,48.99
step
talk Thrall##82851
turnin Subversive Scouts##35748 |goto 71.81,47.72
accept Investigating the Invasion##36292 |goto 71.81,47.72
step
talk Thrall##84928
turnin Investigating the Invasion##36292 |goto 48.73,31.78
accept Attack on Nethergarde##35751 |goto 48.73,31.78
accept Lunatic Lieutenants##35750 |goto 48.73,31.78
step
talk Okrilla##76609
accept Ransacking Nethergarde##35761 |goto 48.74,31.89
step
kill Rukah the Machinist##73458
|tip She walks around this area.
collect Rukah's Battleplan##113400 |q 35750/2 |goto 57.00,17.96
step
click Neka's Poison Flask##233224
|tip On the corner of the table under the tent.
collect Neka's Poison Flask##113436 |q 35761/3 |goto 59.35,17.97
step
click Horde Flag
Plant the Horde Flag outside of the Main Keep |q 35751/3 |goto 59.86,15.81
step
kill Gar Steelcrush##73446
|tip Upstairs inside the keep.
collect Gar's Battleplan##113401 |q 35750/3 |goto 60.19,13.81
step
click Aitokk's Axe##233228
|tip Stuck in the wall inside the building.
collect Aitokk's Axe##113439 |q 35761/1 |goto 61.87,14.73
step
kill Mokrik Blackfingers##73459
collect Mokrik's Battleplan##113399 |q 35750/1 |goto 62.86,13.12
step
click Horde Flag
Plant the Horde Flag at the Center of Nethergarde |q 35751/2 |goto 61.60,18.49
step
click Overseer Struk's Shield##233227
collect Overseer Struk's Shield##113437 |q 35761/2 |goto 60.60,20.01
step
click Horde Flag
Plant the Horde Flag at the Entrance to Nethergarde |q 35751/1 |goto 62.97,22.51
step
talk Okrilla##76609
turnin Ransacking Nethergarde##35761 |goto 48.74,31.89
step
talk Thrall##84928
turnin Attack on Nethergarde##35751 |goto 48.73,31.78
turnin Lunatic Lieutenants##35750 |goto 48.73,31.78
step
talk Thrall##84928
accept Toothsmash the Annihilator##35760 |goto 48.73,31.78
accept Death to the Dreadmaul##35762 |goto 48.73,31.78
step
talk Okrilla##76609
accept Okrilla's Revenge##35764 |goto 48.74,31.89
stickystart "Slay_Dreadmaul_Ogres"
step
click Cooking Pot##232625
Poison the Cooking Pot |q 35764/1 |goto 43.89,31.01 |count 1
step
click Cooking Pot##232625
Poison the Cooking Pot |q 35764/1 |goto 44.32,35.60 |count 2
step
kill Toothsmash the Annihilator##82451 |q 35760/1 |goto 43.61,36.32
|tip He walks around this area.
step
click Cooking Pot##232625
Poison the Cooking Pot |q 35764/1 |goto 43.40,36.99 |count 3
step
label "Slay_Dreadmaul_Ogres"
Kill Dreadmaul enemies around this area
Slay #8# Dreadmaul Ogres |q 35762/1 |goto 43.83,36.12
step
talk Okrilla##76609
turnin Okrilla's Revenge##35764 |goto 48.74,31.89
step
talk Thrall##84928
turnin Toothsmash the Annihilator##35760 |goto 48.73,31.78
turnin Death to the Dreadmaul##35762 |goto 48.73,31.78
accept Gar'mak Bladetwist##35763 |goto 48.73,31.78
step
kill Gar'mak Bladetwist##82918 |q 35763/1 |goto 40.05,11.41
|tip Upstairs inside the tower.
step
talk Thrall##84928
turnin Gar'mak Bladetwist##35763 |goto 48.73,31.78
accept Warning the Warchief##36940 |goto 48.73,31.78
step
talk High Overlord Saurfang##14720
|tip Inside the building.
turnin Warning Orgrimmar##36940 |goto Orgrimmar/1 48.53,70.73
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Love is in the Air Main Questline",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Love is in the Air') and not completedq(24576) end,
description="\nThis guide will walk you through completing the main questline for the Love is in the Air event.",
},[[
step
talk Detective Snap Snagglebolt##37172
accept Something Stinks##24536 |goto Orgrimmar/1 50.80,75.26
step
clicknpc Orgrimmar Grunt##3296+
|tip Look for Orgrimmar Grunts that have the Heavily Perfumed buff.
|tip They look like Orgrimmar Grunts with a glowing purple aura around them all over Orgrimmar.
use Snagglebolt's Air Analyzer##50131
|tip Use it on Orgrimmar Grunts around this area.
Analyze #6# Perfumed Guards |q 24536/1 |goto 50.77,77.98
step
talk Detective Snap Snagglebolt##37172
turnin Something Stinks##24536 |goto 50.80,75.26
accept Pilfering Perfume##24541 |goto 50.80,75.26
step
label "Gain_Crown_Parcel_Service_Uniform_Buff"
talk Detective Snap Snagglebolt##37172
Tell him  _"I need another disguise."_
Gain the "Crown Parcel Service Uniform" Buff |havebuff spell:71450 |goto 50.80,75.26 |or
'|complete completedq(24541) |or
step
Leave Orgrimmar |goto Durotar/0 45.53,12.00 < 30 |only if walking
Get the Crown Chemical Co. Package |complete hasbuff("spell:71459") |q 24541 |goto Durotar/0 47.70,11.81 |or
|tip Quickly run by the boxes to get the package.
'|complete not hasbuff("spell:71450") and not readyq(24541) and not completedq(24541) |next "Gain_Crown_Parcel_Service_Uniform_Buff" |or
step
Ener Orgrimmar |goto Durotar/0 45.53,12.00 < 30 |only if walking
Return the Crown Chemical Co. Package |complete readyq(24541) or completedq(24541) |goto Orgrimmar/1 50.80,75.26 |or
|tip You have to move quickly before your disguise wears off or you drop the package.
|tip Simply walk next to Detective Snap Snagglebolt to return the package to him.
'|complete (not hasbuff("spell:71450") or not hasbuff("spell:71459")) and not readyq(24541) and not completedq(24541) |next "Gain_Crown_Parcel_Service_Uniform_Buff" |or
step
talk Detective Snap Snagglebolt##37172
turnin Pilfering Perfume##24541 |goto 50.80,75.26
accept Snivel's Sweetheart##24850 |goto 50.80,75.26
step
talk Roka##38328
|tip Inside the building.
turnin Snivel's Sweetheart##24850 |goto 57.60,60.79
accept Hot On The Trail##24851 |goto 57.60,60.79
step
Watch the dialogue
|tip Inside the building.
Search the Orgrimmar Auction House |q 24851/2 |goto 52.93,74.72
step
Watch the dialogue
|tip Inside the building.
Search the Orgrimmar Bank |q 24851/1 |goto 49.23,82.12
step
Watch the dialogue
|tip Inside the building.
Search the Orgrimmar Barber Shop |q 24851/3 |goto 40.53,60.70
step
talk Roka##38328
|tip Inside the building.
turnin Hot On The Trail##24851 |goto 57.58,60.81
accept A Friendly Chat...##24576 |goto 57.58,60.81
step
talk Snivel Rustrocket##37715
Tell him _"I have a rocket here with your mark on it, Snivel."_
collect 1 Snivel's Ledger##49915 |q 24576/1 |goto 51.65,56.72
step
talk Detective Snap Snagglebolt##37172
turnin A Friendly Chat...##24576 |goto 50.81,75.23
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Love is in the Air Dailies",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Love is in the Air') and completedq(24576) and not completedq(44546,24629,24635,24636,24612,44559,24614,24613,24615) end,
description="\nThis guide will walk you through completing the Love is in the Air event daily quests.",
},[[
step
label "Complete_Leveling_Guide"
Complete the "Love is in the Air Main Questline" guide before using this guide |complete completedq(24576)
step
talk Detective Snap Snagglebolt##37172
accept Crushing the Crown##44546 |goto Orgrimmar/1 50.79,75.23
step
talk Public Relations Agent##37675
accept A Perfect Puff of Perfume##24629 |goto 53.07,77.14 |or
accept A Cloudlet of Classy Cologne##24635 |goto 53.07,77.14 |or
accept Bonbon Blitz##24636 |goto 53.07,77.14 |or
|tip You will only be able to accept one of these quests.
step
talk Kwee Q. Peddlefeet##38042
accept A Gift for the Emissary of Orgrimmar##24612 |goto 53.01,76.81
step
use the Crown Cologne Sprayer##49669
|tip Use it on NPCs and other players without a red heart over their head.
|tip You can do this anywhere in Orgrimmar.
Give #10# Cologne Samples |q 24635/1 |goto 51.64,77.81
|only if haveq(24635)
step
use the Crown Perfume Sprayer##49668
|tip Use it on NPCs and other players without a red heart over their head.
|tip You can do this anywhere in Orgrimmar.
Give #10# Perfume Samples |q 24629/1 |goto 51.64,77.81
|only if haveq(24629)
step
use the Crown Chocolate Sampler##49670
|tip Use it on NPCs and other players without a red heart over their head.
|tip You can do this anywhere in Orgrimmar.
Give #10# Chocolate Samples |q 24636/1 |goto 51.64,77.81
|only if haveq(24636)
stickystart "Slay_Crown_Chemical_Co_Employees"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 44546/1 |goto Silverpine Forest/0 45.74,73.39
|only if haveq(44546)
step
click Love Potion Recipe
accept Follow the Recipe##44559 |goto 45.25,73.85
|only if haveq(44546)
step
Enter the building |goto 46.23,73.45 < 10 |walk
click Recipe Fragment##6478
|tip Upstairs inside the building.
Collect the 1st Fragment |q 44559/1 |goto 46.28,73.51
|only if haveq(44559)
step
Enter the building |goto 44.98,71.64 < 10 |walk
click Recipe Fragment##6478
|tip Inside the building.
Collect the 2nd Fragment |q 44559/2 |goto 45.14,71.52
|only if haveq(44559)
step
click Recipe Fragment##6478
Collect the 3rd Fragment |q 44559/3 |goto 42.70,71.16
|only if haveq(44559)
step
label "Slay_Crown_Chemical_Co_Employees"
Kill enemies around this area
Slay #12# Crown Chemical Co. Employees |q 44546/2 |goto 45.78,73.39
|only if haveq(44546)
step
Kill enemies that yield experience
|tip Any enemy that is green, yellow, or red difficulty will drop charms.
|tip You can kill enemies in dungeons or the open-world zone of your choice.
|tip You must get the killing blow for a chance at a charm.
collect 40 Lovely Charm##49655 |goto Silverpine Forest/0 45.74,73.39 |q 24615 |future
step
use the Lovely Charm##49655
collect 4 Lovely Charm Bracelet##49916 |q 24615 |future
step
talk Detective Snap Snagglebolt##37172
turnin Crushing the Crown##44546 |goto Orgrimmar/1 50.79,75.23 |only if haveq(44546) or completedq(44546)
turnin Follow the Recipe##44559 |goto 50.79,75.23 |only if haveq(44559) or completedq(44559)
|only if haveq(44546,44559) or completedq(44546,44559)
step
talk Public Relations Agent##37675
turnin A Perfect Puff of Perfume##24629 |goto 53.07,77.17 |only if haveq(24629) or completedq(24629)
turnin A Cloudlet of Classy Cologne##24635 |goto 53.07,77.17 |only if haveq(24635) or completedq(24635)
turnin Bonbon Blitz##24636 |goto 53.07,77.17 |only if haveq(24636) or completedq(24636)
|only if haveq(24629,24635,24636) or completedq(24629,24635,24636)
step
talk Drunzek Skullband##200333
turnin A Gift for the Emissary of Orgrimmar##24612 |goto Orgrimmar/1 41.02,78.55
step
talk Kwee Q. Peddlefeet##38042
accept A Gift for the High Chieftain##24614 |goto Thunder Bluff/0 44.02,52.61
step
talk Baine Bloodhoof##36648
|tip If Baine is not available, relogging will usually make him appear.
turnin A Gift for the High Chieftain##24614 |goto 60.25,51.68
step
talk Zidormi##141488
Tell her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.45,62.80 |q 24613 |future
step
talk Kwee Q. Peddlefeet##38042
|tip He is in the Ruins of Lordaeron.
accept A Gift for the Banshee Queen##24613 |goto Undercity/0 66.55,38.60
step
Enter the tunnel |goto 52.36,64.21 < 10 |walk
talk Lady Sylvanas Windrunner##10181
turnin A Gift for the Banshee Queen##24613 |goto 58.05,91.77
step
talk Kwee Q. Peddlefeet##38042
accept A Gift for the Regent Lord of Quel'Thalas##24615 |goto Silvermoon City/0 64.45,66.52
step
talk Lor'themar Theron##16802
turnin A Gift for the Regent Lord of Quel'Thalas##24615 |goto 53.81,20.27
step
You have completed all available daily quests
|tip This guide will reset when more become available.
'|complete not completedq(44546,24629,24635,24636,24612,44559,24614,24613,24615) |next "Complete_Leveling_Guide"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Be Mine!",{
author="support@zygorguides.com",
description="\nEat the eight \"Bag of Candies\" heart candies listed below:\n\nBe Mine!\nAll yours.\nHot Lips.\n"..
"You're the best!\nI'll follow you all around Azeroth.\nI'm all yours!\nYou're Mine!\nI LOVE YOU",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1701) end,
achieveid={1701},
patch='30002',
},[[
step
talk Lovely Merchant##37674
buy Bag of Heart Candies##21813 |n |goto Orgrimmar/1 53.05,77.00
use the Bag of Heart Candies##21813
|tip Collect the 8 different types of Heart Candy from the Bag of Heart Candies.
Collect "Be Mine" |collect 1 Heart Candy##21816 |only if not achieved(1701,1)
Collect "I'll Follow You All Around Azeroth" |collect 1 Heart Candy##21818 |only if not achieved(1701,2)
Collect "All Yours" |collect 1 Heart Candy##21819 |only if not achieved(1701,3)
Collect "I'm All Yours" |collect 1 Heart Candy##21821 |only if not achieved(1701,4)
Collect "Hot Lips" |collect 1 Heart Candy##21823 |only if not achieved(1701,5)
Collect "You're Mine" |collect 1 Heart Candy##21822 |only if not achieved(1701,6)
Collect "You're the Best" |collect 1 Heart Candy##21820 |only if not achieved(1701,7)
Collect "I LOVE YOU" |collect 1 Heart Candy##21817 |only if not achieved(1701,8)
step
use Heart Candy##21816
Eat the "Be Mine!" Heart Candy |achieve 1701/1
step
use Heart Candy##21818
Eat the "I'll follow you all around Azeroth." Heart Candy |achieve 1701/2
step
use Heart Candy##21819
Eat the "All yours." Heart Candy |achieve 1701/3
step
use Heart Candy##21821
Eat the "I'm all yours!" Heart Candy |achieve 1701/4
step
use Heart Candy##21823
Eat the "Hot lips." Heart Candy |achieve 1701/5
step
use Heart Candy##21822
Eat the "You're mine!" Heart Candy |achieve 1701/6
step
use Heart Candy##21820
Eat the "You're the best!" Heart Candy |achieve 1701/7
step
use Heart Candy##21817
Eat the "I LOVE YOU" Heart Candy |achieve 1701/8
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Charming",{
author="support@zygorguides.com",
description="\nCreate 12 Lovely Charm Bracelets.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(260) end,
achieveid={260},
patch='30001',
},[[
step
talk Kwee Q. Peddlefeet##38042
collect 1 Lovely Charm Collector's Kit##49661 |goto Orgrimmar/1 52.8,76.8 |or
'|complete achieved(260) |or
'|accept A Gift for the Emissary of Orgrimmar##24612 |n
step
collect 120 Lovely Charm##49655 |goto Silverpine Forest/0 45.74,73.39
|tip They come from killing enemies that are at least green difficulty to you.
|tip They will not drop if they are grey difficulty.
|tip You can run dungeons or pick a zone of your choice and kill anything.
|tip You must get the killing blow for a chance at a charm.
step
use the Lovely Charm##49655
collect 12 Lovely Charm Bracelet##49916 |or
'|complete achieved(260) |or
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Dangerous Love",{
author="support@zygorguides.com",
description="\nAssist the Steamwheedle Cartel in stopping the sinister Crown Chemical Co. plot.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1695) end,
achieveid={1695},
patch='30003',
},[[
leechsteps "Events Guides\\Love is in the Air\\Love is in the Air Main Questline"
step
Reach Level 7 |ding 7 |or
'|complete achieved(1695) |or
step
talk Detective Snap Snagglebolt##37172
accept Crushing the Crown##44546 |goto Orgrimmar/1 50.79,75.23 |or
'|complete achieved(1695) |or
stickystart "Slay_Crown_Chemical_Co_Employees"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 44546/1 |goto Silverpine Forest/0 45.74,73.39 |or
'|complete achieved(1695) |or
step
label "Slay_Crown_Chemical_Co_Employees"
Kill enemies around this area
Slay #12# Crown Chemical Co. Employees |q 44546/2 |goto 45.78,73.39 |or
'|complete achieved(1695) |or
step
talk Detective Snap Snagglebolt##37172
turnin Crushing the Crown##44546 |goto Orgrimmar/1 50.79,75.23 |or
'|complete achieved(1695) |or
step
Earn the "Dangerous Love" Achievement |achieve 1695
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Fistful of Love",{
author="support@zygorguides.com",
description="\nUse a Handful of Rose Petals on each of the race/class combinations listed below:\n\nGnome Warlock\n"..
"Human Death Knight\nOrc Shaman\nUndead Warrior\nBlood Elf Mage\nDwarf Hunter\nOrc Death Knight\nNight Elf Priest"..
"\nTauren Druid\nTroll Rogue\nDraenei Paladin",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1699) end,
achieveid={1699},
patch='30003',
},[[
step
collect 6 Love Token##49927 |or
|tip Earn these by completing daily quests.
|tip You can also kill mobs to assemble Lovely Charm Bracelets and trade them to the Lovely Merchant.
'|complete achieved(1699) |or
step
talk Lovely Merchant##37674
buy 15 Handful of Rose Petals##22218 |goto Orgrimmar/1 53.04,77.04 |or
'|complete achieved(1699) |or
stickystart "Use_Petals_on_Gnome_Warlock"
stickystart "Use_Petals_on_Orc_Death_Knight"
stickystart "Use_Petals_on_Human_Death_Knight"
stickystart "Use_Petals_on_Night_Elf_Priest"
stickystart "Use_Petals_on_Orc_Shaman"
stickystart "Use_Petals_on_Tauren_Druid"
stickystart "Use_Petals_on_Undead_Warrior"
stickystart "Use_Petals_on_Troll_Rogue"
stickystart "Use_Petals_on_Blood_Elf_Mage"
stickystart "Use_Petals_on_Draenei_Paladin"
stickystart "Use_Petals_on_Dwarf_Hunter"
step
use the Handful of Rose Petals##22218
|tip Battlegrounds and capital cities are good locations.
Use them once on each of the following classes:
'|complete achieved(1699)
step
label "Use_Petals_on_Gnome_Warlock"
Use Rose Petals on a "Gnome Warlock" |achieve 1699/1
step
label "Use_Petals_on_Orc_Death_Knight"
Use Rose Petals on a "Orc Death Knight" |achieve 1699/2
step
label "Use_Petals_on_Human_Death_Knight"
Use Rose Petals on a "Human Death Knight" |achieve 1699/3
step
label "Use_Petals_on_Night_Elf_Priest"
Use Rose Petals on a "Night Elf Priest" |achieve 1699/4
step
label "Use_Petals_on_Orc_Shaman"
Use Rose Petals on a "Orc Shaman" |achieve 1699/5
step
label "Use_Petals_on_Tauren_Druid"
Use Rose Petals on a "Tauren Druid" |achieve 1699/6
step
label "Use_Petals_on_Undead_Warrior"
Use Rose Petals on a "Undead Warrior" |achieve 1699/7
step
label "Use_Petals_on_Troll_Rogue"
Use Rose Petals on a "Troll Rogue" |achieve 1699/8
step
label "Use_Petals_on_Blood_Elf_Mage"
Use Rose Petals on a "Blood Elf Mage" |achieve 1699/9
step
label "Use_Petals_on_Draenei_Paladin"
Use Rose Petals on a "Draenei Paladin" |achieve 1699/10
step
label "Use_Petals_on_Dwarf_Hunter"
Use Rose Petals on a "Dwarf Hunter" |achieve 1699/11
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Flirt With Disaster",{
author="support@zygorguides.com",
description="\nGet completely smashed, put on your best perfume, throw a handful of rose petals "..
"on Jeremiah Payson and then kiss him. You'll regret it in the morning.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1280) end,
achieveid={1280},
patch='30001',
},[[
step
collect 3 Love Token##49927 |or
|tip Earn these by completing daily quests.
|tip You can also kill mobs to assemble Lovely Charm Bracelets and trade them to the Lovely Merchant.
'|complete achieved(1280) |or
step
talk Lovely Merchant##37674
buy 1 "VICTORY" Perfume##49856 |goto Orgrimmar/1 53.04,77.04 |or
'|complete achieved(1280) |or
step
talk Barkeep Morag##5611
|tip Inside the building.
buy 6 Cup of Frog Venom Brew##44573 |goto 55.06,77.96 |or
'|complete achieved(1280) |or
step
talk Zidormi##141488
Ask her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.46,62.80 |or
'|complete achieved(1280) |or
step
use the "VICTORY" Perfume##49856
Gain the "'VICTORY' Perfume" Buff |havebuff spell:70233 |or
'|complete achieved(1280) |or
step
clicknpc Jeremiah Payson##8403
|tip He's under the stairs surrounded by cockroaches.
use the Cup of Frog Venom Brew##44573
|tip Use all 6 of your Cups of Frog Venom Brew to get Completely Smashed.
use the Handful of Rose Petals##22218
|tip Use them on Jeremiah Payson.
Use a Handful of Rose Petals on Jeremiah Payson |achieve 1280/1 |goto Undercity/0 67.59,44.13
step
clicknpc Jeremiah Payson##8403
"Kiss" Jeremiah Payson |script DoEmote("KISS")
Kiss Jeremiah Payson While Completely Smashed |achieve 1280/2 |goto 67.59,44.13
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\I Pitied The Fool",{
author="support@zygorguides.com",
description="\nPity the Love Fool in the locations specified below:\n\nWintergrasp\nNaxxramas\n"..
"Arathi Basin Blacksmith\nBattle Ring of Gurubashi Arena\nThe Culling of Stratholme",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1704) end,
achieveid={1704},
patch='30002',
},[[
step
collect 50 Love Token##49927 |or
|tip Earn these by completing daily quests.
|tip You can also kill mobs to assemble Lovely Charm Bracelets and trade them to the Lovely Merchant.
'|complete achieved(1704) |or
step
talk Lovely Merchant##37674
buy 5 Love Fool##22261 |goto Orgrimmar/1 53.04,77.04 |or
'|complete achieved(1704) |or
step
use the Love Fool##22261
|tip You can use your Love Fool anywhere inside Wintergrasp.
clicknpc Love Fool##16111
"Pity" the Love Fool |script DoEmote("PITY")
Target and Pity the Love Fool in Wintergrasp |achieve 1704/1 |goto Wintergrasp/0 70.30,32.28
step
use the Love Fool##22261
|tip You can use your Love Fool anywhere inside the Gurubashi Arena.
clicknpc Love Fool##16111
"Pity" the Love Fool |script DoEmote("PITY")
Target and Pity the Love Fool in the Gurubashi Arena |achieve 1704/2 |goto The Cape of Stranglethorn/0 46.41,26.05
step
use the Love Fool##22261
|tip Use your Love Fool near the Blacksmith node inside of the Arathi Basin Battleground.
clicknpc Love Fool##16111
"Pity" the Love Fool |script DoEmote("PITY")
Target and Pity the Love Fool in the Arathi Basin Battleground |achieve 1704/3
step
use Love Fool##22261
|tip You can use your Love Fool anywhere inside the Culling of Stratholme Dungeon.
clicknpc Love Fool##16111
"Pity" the Love Fool |script DoEmote("PITY")
Target and Pity the Love Fool in The Culling of Stratholme Dungeon |achieve 1704/4 |goto The Culling of Stratholme/1 86.80,58.97
step
use Love Fool##22261
|tip You can use your Love Fool anywhere inside the Naxxramas Raid.
clicknpc Love Fool##16111
"Pity" the Love Fool |script DoEmote("PITY")
Target and Pity the Love Fool in the Naxxramas Raid |achieve 1704/5 |goto Naxxramas/5 51.79,51.58
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Lonely?",{
author="support@zygorguides.com",
description="\nEnjoy a Buttermilk Delight with someone in Dalaran at a Romantic Picnic during the Love is in the Air celebration.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1291) end,
achieveid={1291},
patch='30100',
},[[
step
collect 10 Love Token##49927 |or
|tip Earn these by completing daily quests.
|tip You can also kill mobs to assemble Lovely Charm Bracelets and trade them to the Lovely Merchant.
'|complete achieved(1291) |or
step
talk Lovely Merchant##37674
buy 1 Romantic Picnic Basket##34480 |goto Orgrimmar/1 53.04,77.04 |or
'|complete achieved(1291) |or
step
talk Lovely Merchant##37674
buy 1 Box of Chocolates##49909 |goto 53.06,77.02 |n
|tip These cost 10 Love Tokens each.
|tip You can acquire Love Tokens by completing Love is in the Air daily quests.
|tip Use the "Love is in the Air Dailies" event guide to accomplish this.
use the Box of Chocolates##49909
collect 1 Buttermilk Delight##22236 |or
'|complete achieved(1291) |or
step
use the Romantic Picnic Basket##34480
|tip Find a player to have a picnic with you.
|tip It can be anywhere in Dalaran.
use the Buttermilk Delight##22236
|tip While having a picnic, use your Buttermilk Delight.
Enjoy a Buttermilk Delight with Someone in Dalaran at a Romantic Picnic |achieve 1291 |goto Dalaran L/10 53.61,39.65
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Lovely Luck Is On Your Side",{
author="support@zygorguides.com",
description="\nOpen a Lovely Dress Box and receive a Lovely Black Dress.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1694) end,
achieveid={1694},
patch='30002',
},[[
step
collect 20 Love Token##49927 |or
|tip Earn these by completing daily quests.
|tip You can also kill mobs to assemble Lovely Charm Bracelets and trade them to the Lovely Merchant.
'|complete achieved(1694) |or
step
talk Lovely Merchant##37674
buy 1 Lovely Dress Box##50160 |n
|tip These cost 20 Love Tokens each.
|tip You can acquire Love Tokens by completing Love is in the Air daily quests.
|tip Use the "Love is in the Air Dailies" event guide to accomplish this.
use the Lovely Dress Box##50160
collect 1 Lovely Black Dress##22279 |goto Orgrimmar/1 53.04,77.04
'|complete achieved(1694) |or
step
Earn the "Lovely Luck Is On Your Side" Achievement |achieve 1694
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\My Love is Like a Red, Red Rose",{
author="support@zygorguides.com",
description="\nObtain a Bouquet of Red or Ebon Roses during the Love is in the Air celebration.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1703) end,
achieveid={1703},
patch='30002',
},[[
step
collect 1 Bouquet of Red Roses##22206 |n
collect 1 Bouquet of Ebon Roses##44731 |n
|tip These come from specific bosses in dungeons.
|tip Corla, Herald of Twilight in Blackrock Caverns
|tip High Priestess Azil in Stonecore
|tip Admiral Ripsnarl in Deadmines
|tip Lord Godfrey in Shadowfang Keep
|tip You will need one or the other, not both.
Earn the "My Love is Like a Red, Red Rose" Achievement |achieve 1703
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Nation of Adoration",{
author="support@zygorguides.com",
description="\nComplete the Lovely Charm Bracelet daily quest for each Horde capital.",
condition_suggested=function() return isevent('Love is in the Air') and completedq(24576) and not achieved(1698) end,
achieveid={1698},
patch='30100',
},[[
leechsteps "Events Guides\\Love is in the Air\\Love is in the Air Main Questline"
step
talk Kwee Q. Peddlefeet##38042
accept A Gift for the Emissary of Orgrimmar##24612 |goto Orgrimmar/1 53.01,76.81 |or
'|complete achieved(1698,1) |or
step
Kill enemies that yield experience
|tip Any enemy that is green, yellow, or red difficulty will drop charms.
|tip You can kill enemies in dungeons or the open-world zone of your choice.
|tip You must get the killing blow for a chance at a charm.
collect 40 Lovely Charm##49655 |goto Silverpine Forest/0 45.74,73.39 |or
'|complete achieved(1698) |or
step
use the Lovely Charm##49655
collect 4 Lovely Charm Bracelet##49916 |or
'|complete achieved(1698) |or
step
talk Drunzek Skullband##200333
turnin A Gift for the Emissary of Orgrimmar##24612 |goto Orgrimmar/1 41.02,78.55 |or
'|complete achieved(1698,1) |or
step
talk Kwee Q. Peddlefeet##38042
accept A Gift for the High Chieftain##24614 |goto Thunder Bluff/0 44.02,52.61 |or
'|complete achieved(1698,2) |or
step
talk Baine Bloodhoof##36648
|tip If he isn't there, try to log out then back in.
turnin A Gift for the High Chieftain##24614 |goto 60.25,51.68 |or
'|complete achieved(1698,2) |or
step
talk Zidormi##141488
Tell her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.45,62.80 |or
'|complete achieved(1698,4) |or
step
talk Kwee Q. Peddlefeet##38042
|tip He is in the Ruins of Lordaeron.
accept A Gift for the Banshee Queen##24613 |goto Undercity/0 66.55,38.60 |or
'|complete achieved(1698,4) |or
step
Enter the tunnel |goto 52.36,64.21 < 10 |walk
talk Lady Sylvanas Windrunner##10181
turnin A Gift for the Banshee Queen##24613 |goto 58.05,91.77 |or
'|complete achieved(1698,4) |or
step
talk Kwee Q. Peddlefeet##38042
accept A Gift for the Regent Lord of Quel'Thalas##24615 |goto Silvermoon City/0 64.45,66.52 |or
'|complete achieved(1698,3) |or
step
talk Lor'themar Theron##16802
turnin A Gift for the Regent Lord of Quel'Thalas##24615 |goto 53.81,20.27 |or
'|complete achieved(1698,3) |or
step
Earn the "Nation of Adoration" Achievement |achieve 1698
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Perma-Peddle",{
author="support@zygorguides.com",
description="\nObtain a permanent Peddlefeet pet by procuring a Truesilver Shafted Arrow.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1700) end,
achieveid={1700},
patch='30003',
},[[
step
collect 40 Love Token##49927 |or
|tip You can acquire these by completing Love is in the Air daily quests.
|tip Use the "Love is in the Air Dailies" event guide to accomplish this.
'|complete achieved(1700) |or
step
talk Lovely Merchant##37674
buy 1 Truesilver Shafted Arrow##22235 |goto Orgrimmar/1 53.04,77.04
'|complete achieved(1700) |or
step
Earn the "Perma-Peddle" Achievement |achieve 1700
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Shafted!",{
author="support@zygorguides.com",
description="\nShoot 10 players with a Silver Shafted Arrow.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1188) end,
achieveid={1188},
patch='30003',
},[[
step
collect 10 Love Token##49927 |or
|tip You can acquire these by completing Love is in the Air daily quests.
|tip Use the "Love is in the Air Dailies" event guide to accomplish this.
'|complete achieved(1188) |or
step
talk Lovely Merchant##37674
buy 10 Silver Shafted Arrow##22200 |goto Orgrimmar/1 53.05,77.03 |or
'|complete achieved(1188) |or
step
use the Silver Shafted Arrow##22200
|tip Use your Silver Shafted Arrows on 10 players inside Orgrimmar.
Shoot #10# Players with the Silver Shafted Arrow |achieve 1188 |goto 53.05,77.03
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Sweet Tooth",{
author="support@zygorguides.com",
description="\nSample the following holiday candy:\n\nButtermilk Delight\nDark Desire\n"..
"Sweet Surprise\nVery Berry Cream",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1702) end,
achieveid={1702},
patch='30008',
},[[
step
talk Lovely Merchant##37674
buy 1 Box of Chocolates##49909 |goto Orgrimmar/1 53.06,77.02 |n
|tip These cost 10 Love Tokens each.
|tip You can acquire Love Tokens by completing Love is in the Air daily quests.
|tip Use the "Love is in the Air Dailies" event guide to accomplish this.
use Box of Chocolates##49909
collect 1 Buttermilk Delight##22236 |only if not achieved(1702,1)
collect 1 Dark Desire##22237 |only if not achieved(1702,2)
collect 1 Sweet Surprise##22239 |only if not achieved(1702,3)
collect 1 Very Berry Cream##22238 |only if not achieved(1702,4)
step
use the Buttermilk Delight##22236
Sample the "Buttermilk Delight" Candy |achieve 1702/1
|tip Save the remaining Buttermilk Delights for a later achievement.
step
use the Dark Desire##22237
Sample the "Dark Desire" Candy |achieve 1702/2
step
use the Sweet Surprise##22239
Sample the "Sweet Surprise" Candy |achieve 1702/3
step
use the Very Berry Cream##22238
Sample the "Very Berry Cream" Candy |achieve 1702/4
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\The Rocket's Pink Glare",{
author="support@zygorguides.com",
description="\nShoot off 10 Love Rockets in 20 seconds or less.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1696) end,
achieveid={1696},
patch='30002',
},[[
step
collect 10 Love Token##49927 |or
|tip You can acquire these by completing Love is in the Air daily quests.
|tip Use the "Love is in the Air Dailies" event guide to accomplish this.
'|complete achieved(1696) |or
step
talk Lovely Merchant##37674
buy 10 Love Rocket##34258 |goto Orgrimmar/1 53.04,77.04 |or
'|complete achieved(1696) |or
step
use the Love Rocket##34258
|tip Use them quickly to set off all 10 in 20 seconds or less.
Shoot Off #10# Love Rockets in 20 Seconds or Less |achieve 1696
]])
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Kul Tiras")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Keeper of Eastern Kingdoms")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Keeper of Kalimdor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Keeper of Outland")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Keeper of Northrend")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Keeper of Cataclysm")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Keeper of Pandaria")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Keeper of Draenor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Keeper of the Broken Isles")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Keeper of Zandalar")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Battle for Azeroth\\The Fate of Saurfang")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Battle for Azeroth\\Trouble in Darkshore (Darkshore Warfront Unlock)")
