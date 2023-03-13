local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("LevelingADRAGON") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (60-70)\\Stormwind Trading Post Unlock",{
author="support@zygorguides.com",
description="This guide will walk you through unlocking the Stormwind Trading Post.",
startlevel=60,
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
