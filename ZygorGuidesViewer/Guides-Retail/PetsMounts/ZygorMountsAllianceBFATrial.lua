local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("PetsMountsABFA") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Achievement Mounts\\Bloodgorged Crawg")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Achievement Mounts\\Dark Iron Core Hound")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Achievement Mounts\\Frenzied Feltalon")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Achievement Mounts\\Ironclad Frostclaw")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Achievement Mounts\\Lightforged Felcrusher")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Achievement Mounts\\Obsidian Krolusk")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Achievement Mounts\\Pureheart Courser")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Achievement Mounts\\Starcursed Voidstrider")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Achievement Mounts\\Stormpike Battle Ram")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Achievement Mounts\\Kul Tiran Charger")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Azshari Bloatray")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Dazar'alor Windreaver")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Wonderwing 2.0")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Class Mounts\\Darkforge Ram")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Class Mounts\\Dawnforge Ram")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Alabaster Stormtalon")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Vulpine Familiar")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Blizzard Store Mounts\\Meat Wagon")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\The Dreadwake")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Aerial Unit R-21/X")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Junkheap Drifter")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Leaping Veinseeker")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Mechagon Peacekeeper")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Royal Snapdragon")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Rusty Mechanocrawler")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Sharkbait")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Silent Glider")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\G.M.O.D.")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Glacial Tidestorm")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Ashenvale Chimaera")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dropped Mounts\\Dune Scavenger")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dropped Mounts\\Goldenmane")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dropped Mounts\\Highland Mustang")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dropped Mounts\\Lil' Donkey")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dropped Mounts\\Skullripper")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dropped Mounts\\Swift Albino Raptor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dropped Mounts\\Terrified Pack Mule")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dropped Mounts\\Tomb Stalker")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dropped Mounts\\Underrot Crawg")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dropped Mounts\\Blackpaw")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dropped Mounts\\Kaldorei Nightsaber")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dropped Mounts\\Umber Nightsaber")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dropped Mounts\\Witherbark Direwing")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dropped Mounts\\Frightened Kodo")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Aquatic Mounts\\Island Expedition Mounts\\Surf Jelly")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Island Expedition Mounts\\Qinsho's Eternal Hound")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Island Expedition Mounts\\Squawks")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Island Expedition Mounts\\Twilight Avenger")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Island Expedition Mounts\\Craghorn Chasm-Leaper")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Island Expedition Mounts\\Bloodgorged Hunter")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Island Expedition Mounts\\Island Thunderscale")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Island Expedition Mounts\\Siltwing Albatross")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Island Expedition Mounts\\Stonehide Elderhorn")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Island Expedition Mounts\\Risen Mare")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Aquatic Mounts\\Island Expedition Mounts\\Saltwater Seahorse")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\The Hivemind")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\X-995 Mechanocat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Teldrassil Hippogryph")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Aquatic Mounts\\Profession Mounts\\Great Sea Ray")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Profession Mounts\\Engineering\\Mecha-Mogul Mk2")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Quest Mounts\\Scrapforged Mechaspider")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Quest Mounts\\Deepcoral Snapdragon")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Order of Embers\\Smoky Charger")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Proudmoore Admiralty\\Admiralty Stallion")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Storm's Wake\\Dapple Gray Horse")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Honeyback Harvester")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Aquatic Mounts\\Vendor Mounts\\Crimson Tidestallion")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Vendor Mounts\\Ankoan Waveray")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Vendor Mounts\\Priestess' Moonsaber")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Vendor Mounts\\Rustbolt Resistor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Vendor Mounts\\Explorer's Dunetrekker")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Vendor Mounts\\Explorer's Jungle Hopper")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Vendor Mounts\\Mighty Caravan Brutosaur")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Vendor Mounts\\Palehide Direhorn")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Vendor Mounts\\Azureshell Krolusk")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Vendor Mounts\\Blue Marsh Hopper")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Vendor Mounts\\Green Marsh Hopper")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Vendor Mounts\\Yellow Marsh Hopper")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Wriggling Parasite")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Quest Mounts\\Shadowbarb Drone (Beta)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Achievement Mounts\\Mechagon Mechanostrider")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Ensorcelled Everwyrm")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Clutch of Ha-Li")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Drake of the Four Winds")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Mail Muncher")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Ny'alotha Allseer")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Uncorrupted Voidwing")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Waste Marauder")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dropped Mounts\\Mollie")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dropped Mounts\\Ren's Stalwart Hound")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dropped Mounts\\Xinlao")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Vendor Mounts\\Wicked Swarmer")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Vendor Mounts\\Wastewander Skyterror")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Obsidian Worldbreaker")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Awakened Mindborer")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Black Serpent of N'Zoth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Ivory Cloud Serpent")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Malevolent Drone")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Quest Mounts\\Springfur Alpaca")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Vendor Mounts\\Rajani Warserpent")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dropped Mounts\\Elusive Quickhoof")