local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("GarrisonAWOD") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Leveling Guide")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Small Buildings\\Alchemy Lab")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Small Buildings\\Enchanter's Study")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Small Buildings\\Engineering Works")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Small Buildings\\The Forge")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Small Buildings\\Gem Boutique")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Small Buildings\\Salvage Yard")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Small Buildings\\Scribe's Quarters")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Small Buildings\\Storehouse")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Small Buildings\\Tailoring Emporium")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Small Buildings\\The Tannery")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Medium Buildings\\Barn")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Medium Buildings\\Lunarfall Inn")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Medium Buildings\\Gladiator's Sanctum")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Medium Buildings\\Lumber Mill")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Medium Buildings\\Trading Post")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Large Buildings\\Barracks")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Large Buildings\\Gnomish Gearworks")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Large Buildings\\Mage Tower")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Large Buildings\\Stables")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Large Buildings\\Dwarven Bunker")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Default Buildings\\Fishing Shack")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Default Buildings\\Lunarfall Excavation")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Default Buildings\\Herb Garden")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Default Buildings\\Menagerie")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Buildings\\Default Buildings\\Lunarfall Shipyard")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Quest Guide")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Starter Guide")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Abu'gar")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Admiral Taylor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Ahm")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Aknor Steelbringer")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Apprentice Artificer Andren")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Artificer Romuul")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Blook")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Bruma Swiftstone")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Cleric Maluuf")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Croman")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Dagg")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Daleera Moonfang")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Dawnseeker Rukaryx")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Defender Illona")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Delvar Ironfist")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Fen Tao")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Fiona")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Glirin")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Goldmane the Skinner")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Hulda Shadowblade")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Image of Archmage Vargoth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Kimzee Pinchwhistle")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Lantresor of the Blade")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Leeroy Jenkins")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Leorajh")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Magister Serena")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Meatball")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Miall")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Millhouse Manastorm")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Nat Pagle")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Phylarch the Evergreen")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Pitfighter Vaandaam")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Pleasure-Bot 8000")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Professor Felblast")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Qiana Moonshadow")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Rangari Chel")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Rangari Erdanii")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Rangari Kaalya")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Rulkan")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Shelly Hamby")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Soulbinder Tuulani")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Talon Guard Kurekk")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Talonpriest Ishaal")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Thisalee Crow")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Tormmok")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Vindicator Onaala")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Weldon Barov")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Followers\\Follower Ziri'ak")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Campaign")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Tanaan Jungle (6.2) Garrison Campaign\\Onslaught at Auchindoun")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Tanaan Jungle (6.2) Garrison Campaign\\The Bane of the Bleeding Hollow")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Tanaan Jungle (6.2) Garrison Campaign\\In the Shadows")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Tanaan Jungle (6.2) Garrison Campaign\\The Warlock")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Inn Quest Guide")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Scouting Missives")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Jukebox")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Garrisons\\Mystery Notebook Questline")
