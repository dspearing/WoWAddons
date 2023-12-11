local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("EventsC") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Dragonflight\\Emerald Dreamsurge (Thaldraszus)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Dragonflight\\Emerald Dreamsurge (The Waking Shores)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Dragonflight\\Emerald Dreamsurge (Ohn'ahran Plains)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Dragonflight\\Emerald Dreamsurge (The Azure Span)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Secrets of Azeroth\\Secrets of Azeroth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Secrets of Azeroth\\Community Rumors")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Secrets of Azeroth\\Secrets of Azeroth Mimiron's Jumpjets Mount")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Dragonflight\\The Emerald Dream Superbloom")
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
