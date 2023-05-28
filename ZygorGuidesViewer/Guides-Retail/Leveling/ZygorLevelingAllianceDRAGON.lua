local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("LevelingADRAGON") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (60-70)\\Stormwind Trading Post Unlock",{
author="support@zygorguides.com",
description="This guide will walk you through unlocking the Stormwind Trading Post.",
patch='100005',
},[[
step
talk Tawny Seabraid##185468
accept Tour the Trading Post##66858 |goto Stormwind City/0 50.97,71.85
step
click Collector's Cache
Collect the Trader's Tender from the Collector's Cache |q 66858/1 |goto 51.31,72.33
step
talk Valarian##198579
Speak to Valarian |q 66858/2 |goto 49.17,71.71
step
talk Dilya##198589
|tip She walks around this area.
Speak to Dilya |q 66858/3 |goto 51.33,70.86
step
click Trading Post Post
Review the Trading Post Post |q 66858/4 |goto 51.04,71.62
step
talk Wilder Seabraid##185467
Tell him _"I'd like to see what you have to offer this month."_
|tip You will need to exit the interface after doing this to continue.
Look at Wilder Seabraid's Inventory |q 66858/5 |goto 51.08,72.08
step
talk Tawny Seabraid##185468
turnin Tour the Trading Post##66858 |goto 50.97,71.85
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (60-70)\\Heritage Armor\\Human Heritage Armor",{
author="support@zygorguides.com",
description = "This guide will assist you in completing the Human heritage armor questline.",
startlevel=50,
patch='100007',
},[[
step
Reach Level 50 an an Human Character |complete Human and level >= 50
|tip You must complete this on a 50+ Human character.
step
Reach Exalted Reputation with Stormwind |complete rep("Stormwind") == Exalted
|tip Equip a tabard and grind dungeons to quickly reach exalted.
step
accept An Urgent Matter##72644 |goto Stormwind City/0 43.84,73.32
|tip You will accept this quest automatically.
|tip If you reached level 50 recently and haven't logged out since, you may need to do so or the quest may not appear.
step
talk Master Mathias Shaw##198884
turnin An Urgent Matter##72644 |goto 87.45,30.80
accept An Unlikely Informant##72405 |goto 87.45,30.80
step
Enter the building |goto Elwynn Forest/0 43.01,65.65 < 7 |walk
talk Master Mathias Shaw##198896
|tip Downstairs inside the building.
Choose _"<Tell Shaw to signal his informant.>"_
Watch the Dialogue
Meet Shaw in the Lion's Pride Inn Basement |q 72405/1 |goto 44.33,66.22
step
talk Master Mathias Shaw##198896
|tip Downstairs inside the building.
turnin An Unlikely Informant##72405 |goto 44.33,66.22
accept A Window to the Past##72408 |goto 44.33,66.22
step
talk Master Mathias Shaw##198896
|tip Downstairs inside the building.
Choose _"<Tell Shaw you are ready to hear about the history of the Drakefire Amulet.>"_
Speak with Shaw |q 72408/1 |goto 44.33,66.22
step
talk Vanessa VanCleef##198883
|tip Downstairs inside the building.
turnin A Window to the Past##72408 |goto 44.34,66.05
accept Rotten Old Memories##72409 |goto 44.34,66.05
step
talk Ragged John##9563
Ask him _"The Drakefire Amulet has been stolen. Did Windsor have any other information on it or Onyxia?"_
Speak to Ragged John |q 72409/1 |goto Burning Steppes/0 72.85,64.78
step
Enter the cave |goto Burning Steppes/0 62.07,64.44 < 10 |walk
click Hoarded Debris##384644
collect 1 Chewed Piece of Journal##202106 |q 72409/2 |goto 61.24,65.27
step
click Hoarded Debris##384644
collect 2 Chewed Piece of Journal##202106 |q 72409/2 |goto 60.25,66.23
step
click Hoarded Debris##384644
collect 3 Chewed Piece of Journal##202106 |q 72409/2 |goto 61.22,67.23
step
click Hoarded Debris##384644
collect 4 Chewed Piece of Journal##202106 |q 72409/2 |goto 61.74,66.73
step
talk Ragged John##9563
turnin Rotten Old Memories##72409 |goto 72.85,64.78
accept Looking for Something Specific##72424 |goto 72.85,64.78
step
Enter the building |goto Elwynn Forest/0 43.01,65.65 < 7 |walk
talk Master Mathias Shaw##198896
|tip Downstairs inside the building.
turnin Looking for Something Specific##72424 |goto 44.33,66.22
accept The New Clessington Estate##72426 |goto 44.33,66.22
step
Enter the building |goto Duskwood/0 18.03,55.23 < 7 |walk
talk Cecilia Clessington##198912
|tip Upstairs inside the building.
Ask her _"What do you know about the Drakefire Amulet?"_
Investigate the Clessington Manor |q 72426/1 |goto 18.07,54.01
step
Escort Cecilia from the building |q 72426/2 |goto 18.35,54.99
|tip Kill the attackers that appear.
step
talk Cecilia Clessington##198912
Choose _"<Tell Cecilia that the Drakefire Amulet has been stolen.>"_
Watch the Dialogue
Explain the Circumstances to Cecilia |q 72426/3 |goto 18.34,55.08
step
talk Cecilia Clessington##198912
turnin The New Clessington Estate##72426 |goto 18.34,55.08
step
talk Vanessa VanCleef##198883
accept Misdeeds in Moonbrook##72430 |goto 18.31,54.97
step
talk Vanessa VanCleef##198923
turnin Misdeeds in Moonbrook##72430 |goto Westfall/0 46.76,66.90
accept A Hungry Heritage##72431 |goto 46.72,66.98
step
talk Cecilia Clessington##198922
accept Supply Only the Finest Goons##72432 |goto 46.73,66.75
stickystart "Kill_16_Clessington_Attendants"
step
Enter the Defias Hideout |q 72431/1 |goto Westfall/0 42.56,71.86
step
Run up the stairs |goto Westfall/0 43.38,71.92 < 7 |walk
Jump down here |goto 43.41,72.88 < 7 |walk
Jump down here |goto 64.72,25.10 < 7 |walk
Follow the path |goto 55.78,39.40 < 10 |walk
Find Count Clessington |q 72431/2 |goto 60.41,60.59
step
Next to You:
talk Vanessa VanCleef##199598
turnin A Hungry Heritage##72431
accept Betrayal of the Brotherhood##72453
step
label "Kill_16_Clessington_Attendants"
Follow the path |goto 47.40,47.24 < 7 |walk			|notinsticky
Continue following the path |goto 57.32,37.63 < 7 |walk		|notinsticky
Run up the ramp |goto 58.62,13.30 < 7 |walk			|notinsticky
Continue up the ramp |goto 43.62,72.89 < 7 |walk		|notinsticky
Leave the building |goto Westfall/0 42.57,71.89 < 7 |walk	|notinsticky
extraaction VanCleef's Elixir of Speed##397607			|notinsticky
|tip It appears as a button on the screen.			|notinsticky
kill 16 Clessington Attendant##198925 |q 72432/1 |goto 43.18,70.55
step
Escape the Defias Hideout |q 72453/1 |goto 46.68,66.82
step
talk Vanessa VanCleef##198923
turnin Betrayal of the Brotherhood##72453 |goto 46.66,66.78
step
talk Cecilia Clessington##198922
turnin Supply Only the Finest Goons##72432 |goto 46.74,66.74
step
talk Master Mathias Shaw##198924
accept To Northshire##72445 |goto 46.70,66.71
step
talk Master Mathias Shaw##198983
turnin To Northshire##72445 |goto Northshire/0 27.93,66.68
accept Knock It Off!##72449 |goto 27.93,66.68
step
talk Marshal McBride##198990
accept What's Their Problem?##72446 |goto 27.67,66.68
stickystart "Defend_Northshire"
step
kill Enforcer Grant##202508
collect 1 Enforcer Grant's Signet##202238 |q 72449/1 |goto 35.70,60.94
step
kill Enforcer Jennive##199003
collect 1 Enforcer Jennive's Signet##204171 |q 72449/2 |goto 49.47,63.13
step
kill Enforcer Tera##202509
collect 1 Enforcer Tera's Signet##204172 |q 72449/3 |goto 35.33,38.85
step
kill Enforcer Horb##202511
collect 1 Enforcer Horb's Signet##204173 |q 72449/4 |goto 31.34,17.75
step
label "Defend_Northshire"
Kill Defias enemies around this area
Defend Northshire |q 72446/1 |goto 31.93,33.46
step
talk Marshal McBride##198990
turnin What's Their Problem?##72446 |goto 27.69,66.64
step
talk Master Mathias Shaw##198983
turnin Knock It Off!##72449 |goto 27.89,66.75
step
talk Cecilia Clessington##198984
accept The Clessington Will##72450 |goto 28.05,67.22
step
click Shadow Barrier
Dispel the Barrier |q 72450/1 |goto 35.49,51.73
step
Watch the Dialogue
Kill enemies that spawn
extraaction Will to Survive##59752
|tip Use the button that appears to resist.
kill Count Clessington##199006 |q 72450/2 |goto 37.66,50.29
step
talk Cecilia Clessington##198984
turnin The Clessington Will##72450 |goto 37.56,50.11
step
talk Master Mathias Shaw##198983
accept Will to Survive##72451 |goto 36.47,51.12
step
click Drakefire Amulet##384651
collect 1 Drakefire Amulet##204214 |q 72451/1 |goto 37.55,50.51
step
talk Master Mathias Shaw##198983
Choose _"<Give Shaw the Drakefire Amulet.>"_
Watch the Dialogue
Give the Amulet to Shaw |q 72451/2 |goto 36.47,51.08
step
extraaction Will to Survive##59752
|tip Use the button that appears to resist.
Resist |q 72451/3 |goto 36.48,51.08
step
kill Shade of Onyxia##199008 |q 72451/4 |goto 36.66,50.79
step
talk Vanessa VanCleef##198988
turnin Will to Survive##72451 |goto 36.58,51.37
step
talk Master Mathias Shaw##198983
accept Go with Honor, Friend##72452 |goto 36.74,51.16
step
talk Master Mathias Shaw##198884
Tell him _"I am ready."_
Meet Shaw Outside of Stormwind |q 72452/1 |goto Stormwind City/0 71.05,85.77
step
Approach General Hammond Clay |q 72452/2 |goto 69.52,83.38
step
extraaction Honor of the Lionguard##398746
|tip It appears as a button on the screen.
Receive the Honor |q 72452/3 |goto 69.39,83.14
step
talk General Hammond Clay##65153
turnin Go with Honor, Friend##72452 |goto 69.20,82.75
]])
