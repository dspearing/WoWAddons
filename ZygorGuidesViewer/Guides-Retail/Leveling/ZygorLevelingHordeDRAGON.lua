local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("LevelingHDRAGON") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (60-70)\\Orgrimmar Trading Post Unlock",{
author="support@zygorguides.com",
description="This guide will walk you through unlocking the Orgrimmar Trading Post.",
startlevel=60,
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
