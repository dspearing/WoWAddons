local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("LevelingADRAGON") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (60-70)\\Stormwind Trading Post Unlock")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (60-70)\\Heritage Armor\\Human Heritage Armor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (60-70)\\Heritage Armor\\Night Elf Heritage Armor")
