local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("LevelingHDRAGON") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (60-70)\\Orgrimmar Trading Post Unlock")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (60-70)\\Heritage Armor\\Orc Heritage Armor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (60-70)\\Heritage Armor\\Forsaken Heritage Armor")
