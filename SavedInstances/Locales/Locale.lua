-- my custom locale file - more streamlined than AceLocale and no lib dependency

-- To help with missing translations please go here:
local url = "http://www.wowace.com/addons/saved_instances/localization/"

local SI, L = unpack(select(2, ...))

-- Lua functions
local print, format, rawget = print, format, rawget

local Ld, La = {}, {}
local locale = GAME_LOCALE or GetLocale()
if locale == "enGB" then locale = "enUS" end

local localeWarning
L = setmetatable(L, {
  __index = function(t, s)
    if not localeWarning and url and Ld[s] and not La[s] and locale ~= 'enUS' then
      localeWarning = true
      print(format("*** SavedInstances needs help translating to your language! (%s)", locale))
      print("*** If you speak English, you can contribute by visiting:")
      print("*** " .. url)
    end
    return La[s] or Ld[s] or rawget(t,s) or s
  end
})

Ld["|cffffff00Click|r to open weekly rewards"] = "|cffffff00Click|r to open weekly rewards"
Ld["|cffffff00Left-click|r to detach tooltip"] = "|cffffff00Left-click|r to detach tooltip"
Ld["|cffffff00Middle-click|r to show Blizzard's Raid Information"] = "|cffffff00Middle-click|r to show Blizzard's Raid Information"
Ld["|cffffff00Right-click|r to configure SavedInstances"] = "|cffffff00Right-click|r to configure SavedInstances"
Ld["AA"] = "AA"
Ld["Abbreviate keystones"] = "Abbreviate keystones"
Ld["Abbreviate Mythic keystone dungeon names"] = "Abbreviate Mythic keystone dungeon names"
Ld["Account"] = "Account"
Ld["Account Summary"] = "Account Summary"
Ld["AD"] = "AD"
Ld["Aiding the Accord"] = "Aiding the Accord"
Ld["Air"] = "Air"
Ld["Air Core"] = "Air Core"
Ld["Always show"] = "Always show"
Ld["Amathet Reliquary"] = "Amathet Reliquary"
Ld["Ambered Coffer"] = "Ambered Coffer"
Ld["ARC"] = "ARC"
Ld["Are you sure you want to remove %s from the SavedInstances character database?"] = "Are you sure you want to remove %s from the SavedInstances character database?"
Ld["Are you sure you want to report all your keys to %s?"] = "Are you sure you want to report all your keys to %s?"
Ld["Are you sure you want to reset the SavedInstances character database? Characters will be re-populated as you log into them."] = "Are you sure you want to reset the SavedInstances character database? Characters will be re-populated as you log into them."
Ld["Attempt to recover completed daily quests for this character. Note this may recover some additional, linked daily quests that were not actually completed today."] = "Attempt to recover completed daily quests for this character. Note this may recover some additional, linked daily quests that were not actually completed today."
Ld["Automatically shrink the tooltip to fit on the screen"] = "Automatically shrink the tooltip to fit on the screen"
Ld["Azuregos"] = "Azuregos"
Ld["Battleground Deserter"] = "Battleground Deserter"
Ld["Bind a key to toggle the SavedInstances tooltip"] = "Bind a key to toggle the SavedInstances tooltip"
Ld["Bonus loot frame"] = "Bonus loot frame"
Ld["Bonus rolls"] = "Bonus rolls"
Ld[ [=[Boss kill information is missing for this lockout.
This is a Blizzard bug affecting certain old raids.]=] ] = [=[Boss kill information is missing for this lockout.
This is a Blizzard bug affecting certain old raids.]=]
Ld["Bouldron"] = "Bouldron"
Ld["BRH"] = "BRH"
Ld["Calling Missing"] = "Calling Missing"
Ld["Categories"] = "Categories"
Ld["Characters"] = "Characters"
Ld["COEN"] = "COEN"
Ld["Color currency by cap"] = "Color currency by cap"
Ld["Combine Callings"] = "Combine Callings"
Ld["Combine Emissaries"] = "Combine Emissaries"
Ld["Combine emissaries of same expansion"] = "Combine emissaries of same expansion"
Ld["Combine LFR"] = "Combine LFR"
Ld["Combine World Bosses"] = "Combine World Bosses"
Ld["Community Feast"] = "Community Feast"
Ld["Connected Realms"] = "Connected Realms"
Ld["COS"] = "COS"
Ld["Covenant"] = "Covenant"
Ld["Covenant Assaults"] = "Covenant Assaults"
Ld["Crystalus"] = "Crystalus"
Ld["Currency settings"] = "Currency settings"
Ld["Cursed Coffer"] = "Cursed Coffer"
Ld["Daily Quests"] = "Daily Quests"
Ld["Day"] = "Day"
Ld["Debug Mode"] = "Debug Mode"
Ld["DHT"] = "DHT"
Ld["Disable mouseover"] = "Disable mouseover"
Ld["Disable tooltip display on icon mouseover"] = "Disable tooltip display on icon mouseover"
Ld["Display instances in order of recommended level from lowest to highest"] = "Display instances in order of recommended level from lowest to highest"
Ld["Display instances with space inserted between categories"] = "Display instances with space inserted between categories"
Ld["Disturbed Dirt / Expedition Scout's Pack"] = "Disturbed Dirt / Expedition Scout's Pack"
Ld["Doomwalker"] = "Doomwalker"
Ld["DOS"] = "DOS"
Ld["Dragon of Nightmare"] = "Dragon of Nightmare"
Ld["Dragonflight Experimentation"] = "Dragonflight Experimentation"
Ld["Dragonflight Renown"] = "Dragonflight Renown"
Ld["Dragonflight Transmute"] = "Dragonflight Transmute"
Ld["Dump quest debugging information"] = "Dump quest debugging information"
Ld["Dump time debugging information"] = "Dump time debugging information"
Ld["Earth"] = "Earth"
Ld["Earth Core"] = "Earth Core"
Ld["Emblazion"] = "Emblazion"
Ld["Emissary Missing"] = "Emissary Missing"
Ld["Emissary of War"] = "Emissary of War"
Ld["Emissary Quests"] = "Emissary Quests"
Ld["Emissary quests"] = "Emissary quests"
Ld["EOA"] = "EOA"
Ld["Expansion"] = "Expansion"
Ld["Expired Lockout - Can be extended"] = "Expired Lockout - Can be extended"
Ld["Export"] = "Export"
Ld["Extended Lockout - Not yet saved"] = "Extended Lockout - Not yet saved"
Ld["Facets of Research"] = "Facets of Research"
Ld["FH"] = "FH"
Ld["Fire"] = "Fire"
Ld["Fire Core"] = "Fire Core"
Ld["Fit to screen"] = "Fit to screen"
Ld["Flex"] = "Flex"
Ld["Format large numbers"] = "Format large numbers"
Ld["Frozion"] = "Frozion"
Ld["Full Clear + 1 Mask"] = "Full Clear + 1 Mask"
Ld["Full Clear + 2 Masks"] = "Full Clear + 2 Masks"
Ld["Full Clear + 3 Masks"] = "Full Clear + 3 Masks"
Ld["Full Clear + 4 Masks"] = "Full Clear + 4 Masks"
Ld["Full Clear + 5 Masks"] = "Full Clear + 5 Masks"
Ld["Full Clear No Masks"] = "Full Clear No Masks"
Ld["Gaelzion"] = "Gaelzion"
Ld["GD"] = "GD"
Ld["General settings"] = "General settings"
Ld["GMBT"] = "GMBT"
Ld["Grand Hunt"] = "Grand Hunt"
Ld["Grand Hunts: Mythic Reward"] = "Grand Hunts: Mythic Reward"
Ld["Grand Hunts: Rare Reward"] = "Grand Hunts: Rare Reward"
Ld["Grand Hunts: Uncommon Reward"] = "Grand Hunts: Uncommon Reward"
Ld["Gravlion"] = "Gravlion"
Ld["Grizzlerock"] = "Grizzlerock"
Ld["Group"] = "Group"
Ld["Guild"] = "Guild"
Ld["HOA"] = "HOA"
Ld["Hold Alt to show all data"] = "Hold Alt to show all data"
Ld["HOV"] = "HOV"
Ld["Hover mouse on indicator for details"] = "Hover mouse on indicator for details"
Ld["Hunt: Death Elementals"] = "Hunt: Death Elementals"
Ld["Hunt: Shadehounds"] = "Hunt: Shadehounds"
Ld["Hunt: Soul Eaters"] = "Hunt: Soul Eaters"
Ld["Hunt: Winged Soul Eaters"] = "Hunt: Winged Soul Eaters"
Ld["Iceblade Trio"] = "Iceblade Trio"
Ld["ID"] = "ID"
Ld["Ignore"] = "Ignore"
Ld["Indicators"] = "Indicators"
Ld["Infernum"] = "Infernum"
Ld["Infested Strongbox"] = "Infested Strongbox"
Ld["Instance limit in Broker"] = "Instance limit in Broker"
Ld["Instances"] = "Instances"
Ld["Interleave"] = "Interleave"
Ld["Kain Firebrand"] = "Kain Firebrand"
Ld["Karantun"] = "Karantun"
Ld["Keystone report target"] = "Keystone report target"
Ld["KR"] = "KR"
Ld["Last updated"] = "Last updated"
Ld["Legion Transmute"] = "Legion Transmute"
Ld["Lesser Visions of N'Zoth"] = "Lesser Visions of N'Zoth"
Ld["Level %d Characters"] = "Level %d Characters"
Ld["LFG cooldown"] = "LFG cooldown"
Ld["LFR"] = "LFR"
Ld["List categories from the current expansion pack first"] = "List categories from the current expansion pack first"
Ld["List raid categories before dungeon categories"] = "List raid categories before dungeon categories"
Ld["Lord Kazzak"] = "Lord Kazzak"
Ld["LOWR"] = "LOWR"
Ld["Manage"] = "Manage"
Ld["Mechanized Chest"] = "Mechanized Chest"
Ld["Miscellaneous Tracking"] = "Miscellaneous Tracking"
Ld["MISTS"] = "MISTS"
Ld["ML"] = "ML"
Ld["Mogu Strongbox"] = "Mogu Strongbox"
Ld["MOS"] = "MOS"
Ld["Most recent first"] = "Most recent first"
Ld["Mythic Best"] = "Mythic Best"
Ld["Mythic Key Best"] = "Mythic Key Best"
Ld["Mythic Keystone"] = "Mythic Keystone"
Ld["Nathanos Blightcaller"] = "Nathanos Blightcaller"
Ld["Neela Firebane"] = "Neela Firebane"
Ld["Never show"] = "Never show"
Ld["NL"] = "NL"
Ld["NW"] = "NW"
Ld["Opacity of the tooltip row highlighting"] = "Opacity of the tooltip row highlighting"
Ld["Open config"] = "Open config"
Ld["Order must be a number in [0 - 999]"] = "Order must be a number in [0 - 999]"
Ld["Paragon Chests"] = "Paragon Chests"
Ld["Party"] = "Party"
Ld["Patterns Within Patterns"] = "Patterns Within Patterns"
Ld["PF"] = "PF"
Ld["Pipspark Thundersnap"] = "Pipspark Thundersnap"
Ld["Primal Storms Core"] = "Primal Storms Core"
Ld["Primal Storms Elementals"] = "Primal Storms Elementals"
Ld["Quest progresses"] = "Quest progresses"
Ld["Raids before dungeons"] = "Raids before dungeons"
Ld["Recent Bonus Rolls"] = "Recent Bonus Rolls"
Ld["Recent Instances"] = "Recent Instances"
Ld["Recover Dailies"] = "Recover Dailies"
Ld["Report instance resets to group"] = "Report instance resets to group"
Ld["Reset Characters"] = "Reset Characters"
Ld["Reverse ordering"] = "Reverse ordering"
Ld["RLP"] = "RLP"
Ld["Roll Bonus"] = "Roll Bonus"
Ld["Rouen Icewind"] = "Rouen Icewind"
Ld["Row Highlight"] = "Row Highlight"
Ld["SBG"] = "SBG"
Ld["SD"] = "SD"
Ld["SEAT"] = "SEAT"
Ld["Set All"] = "Set All"
Ld["Show all emissary names"] = "Show all emissary names"
Ld["Show both factions' emissay name"] = "Show both factions' emissay name"
Ld["Show calling line when all quests completed"] = "Show calling line when all quests completed"
Ld["Show category names"] = "Show category names"
Ld["Show category names in the tooltip"] = "Show category names in the tooltip"
Ld["Show cooldown for characters to use battleground system"] = "Show cooldown for characters to use battleground system"
Ld["Show cooldown for characters to use LFG dungeon system"] = "Show cooldown for characters to use LFG dungeon system"
Ld["Show currency earned"] = "Show currency earned"
Ld["Show currency max"] = "Show currency max"
Ld["Show emissary line when all quests completed"] = "Show emissary line when all quests completed"
Ld["Show Expired"] = "Show Expired"
Ld["Show expired instance lockouts"] = "Show expired instance lockouts"
Ld["Show Holiday"] = "Show Holiday"
Ld["Show holiday boss rewards"] = "Show holiday boss rewards"
Ld["Show minimap button"] = "Show minimap button"
Ld["Show name for a category when all displayed instances belong only to that category"] = "Show name for a category when all displayed instances belong only to that category"
Ld["Show only current server"] = "Show only current server"
Ld["Show Random"] = "Show Random"
Ld["Show random dungeon bonus reward"] = "Show random dungeon bonus reward"
Ld["Show self always"] = "Show self always"
Ld["Show self first"] = "Show self first"
Ld["Show server name"] = "Show server name"
Ld["Show the SavedInstances minimap button"] = "Show the SavedInstances minimap button"
Ld["Show tooltip hints"] = "Show tooltip hints"
Ld["Show When"] = "Show When"
Ld["Show when completed"] = "Show when completed"
Ld["Show when saved"] = "Show when saved"
Ld["Show/Hide the SavedInstances tooltip"] = "Show/Hide the SavedInstances tooltip"
Ld["SIEGE"] = "SIEGE"
Ld["Siege on Dragonbane Keep"] = "Siege on Dragonbane Keep"
Ld["Similarly, the words KILLED and TOTAL will be substituted with the number of bosses killed and total in the lockout."] = "Similarly, the words KILLED and TOTAL will be substituted with the number of bosses killed and total in the lockout."
Ld["Single category name"] = "Single category name"
Ld["SOA"] = "SOA"
Ld["Sort by currency name"] = "Sort by currency name"
Ld["Sort by server"] = "Sort by server"
Ld["Sort categories by"] = "Sort categories by"
Ld["Sort Order"] = "Sort Order"
Ld["Sorting"] = "Sorting"
Ld["SOTS"] = "SOTS"
Ld["Space between categories"] = "Space between categories"
Ld["Sparks of Life"] = "Sparks of Life"
Ld["STRT"] = "STRT"
Ld["TAV"] = "TAV"
Ld["TD"] = "TD"
Ld["Text"] = "Text"
Ld["The Four Celestials"] = "The Four Celestials"
Ld["The World Awaits"] = "The World Awaits"
Ld["These are the instances that count towards the %i instances per hour account limit, and the time until they expire."] = "These are the instances that count towards the %i instances per hour account limit, and the time until they expire."
Ld["This should only be used for characters who have been renamed or deleted, as characters will be re-populated when you log into them."] = "This should only be used for characters who have been renamed or deleted, as characters will be re-populated when you log into them."
Ld["Time /played"] = "Time /played"
Ld["Time Left"] = "Time Left"
Ld["Timeworn Mythic Keystone"] = "Timeworn Mythic Keystone"
Ld["TJS"] = "TJS"
Ld["TNO"] = "TNO"
Ld["Tooltip Scale"] = "Tooltip Scale"
Ld["TOP"] = "TOP"
Ld["Torghast"] = "Torghast"
Ld["Tormentors of Torghast"] = "Tormentors of Torghast"
Ld["TOS"] = "TOS"
Ld["Track Mythic keystone acquisition"] = "Track Mythic keystone acquisition"
Ld["Track Mythic keystone best run"] = "Track Mythic keystone best run"
Ld["Track Timeworn Mythic keystone acquisition"] = "Track Timeworn Mythic keystone acquisition"
Ld["Trade Skill Cooldowns"] = "Trade Skill Cooldowns"
Ld["Trade skills"] = "Trade skills"
Ld["Transmute"] = "Transmute"
Ld["Trial of Elements"] = "Trial of Elements"
Ld["Trial of Flood"] = "Trial of Flood"
Ld["Type"] = "Type"
Ld["UNDR"] = "UNDR"
Ld["UPPR"] = "UPPR"
Ld["Use class color"] = "Use class color"
Ld["Vision Boss + 2 Bonus Objectives"] = "Vision Boss + 2 Bonus Objectives"
Ld["Vision Boss Only"] = "Vision Boss Only"
Ld["Voraazka"] = "Voraazka"
Ld["VOTW"] = "VOTW"
Ld["Warfronts"] = "Warfronts"
Ld["Warn about instance limit"] = "Warn about instance limit"
Ld["Warning: You've entered about %i instances recently and are approaching the %i instance per hour limit for your account. More instances should be available in %s."] = "Warning: You've entered about %i instances recently and are approaching the %i instance per hour limit for your account. More instances should be available in %s."
Ld["Water"] = "Water"
Ld["Water Core"] = "Water Core"
Ld["Weekly Quests"] = "Weekly Quests"
Ld["Wild Transmute"] = "Wild Transmute"
Ld["WM"] = "WM"
Ld["WORK"] = "WORK"
Ld["World Boss"] = "World Boss"
Ld["World Bosses"] = "World Bosses"
Ld["Wrath of the Jailer"] = "Wrath of the Jailer"
Ld["YARD"] = "YARD"
Ld["You can combine icons and text in a single indicator if you wish. Simply choose an icon, and insert the word ICON into the text field. Anywhere the word ICON is found, the icon you chose will be substituted in."] = "You can combine icons and text in a single indicator if you wish. Simply choose an icon, and insert the word ICON into the text field. Anywhere the word ICON is found, the icon you chose will be substituted in."
Ld["Zurgaz Corebreaker"] = "Zurgaz Corebreaker"


if locale == "frFR" then
  La["|cffffff00Click|r to open weekly rewards"] = "|cffffff00Cliquez|r pour ouvrir les récompenses hebdomadaires"
La["|cffffff00Left-click|r to detach tooltip"] = "|cffffff00Clic-gauche|r pour détacher l'infobulle."
La["|cffffff00Middle-click|r to show Blizzard's Raid Information"] = "|cffffff00Clic-milieu|r pour afficher les Infos Raid de Blizzard."
La["|cffffff00Right-click|r to configure SavedInstances"] = "|cffffff00Clic-droit|r pour configurer SavedInstances."
--[[Translation missing --]]
La["AA"] = "AA"
La["Abbreviate keystones"] = "Noms de donjons abrégés"
La["Abbreviate Mythic keystone dungeon names"] = "Abréger les noms des donjons de clés mythiques"
La["Account"] = "Compte"
La["Account Summary"] = "Résumé du compte"
--[[Translation missing --]]
La["AD"] = "AD"
--[[Translation missing --]]
La["Aiding the Accord"] = "Aiding the Accord"
--[[Translation missing --]]
La["Air"] = "Air"
--[[Translation missing --]]
La["Air Core"] = "Air Core"
La["Always show"] = "Toujours afficher"
La["Amathet Reliquary"] = "Reliquaire amathet"
La["Ambered Coffer"] = "Coffre ambré"
--[[Translation missing --]]
La["ARC"] = "ARC"
La["Are you sure you want to remove %s from the SavedInstances character database?"] = "Êtes-vous sûr de vouloir supprimer le personnage %s de la base de données SavedInstances ?"
La["Are you sure you want to report all your keys to %s?"] = "Êtes-vous sûr de vouloir communiquer toutes vos clés à %s ?"
La["Are you sure you want to reset the SavedInstances character database? Characters will be re-populated as you log into them."] = "Êtes-vous sûr de vouloir remettre à zéro votre base de données de personnages pour SavedInstances ? Les données des personnages seront re-récupérées au moment où vous les connecterez."
La["Attempt to recover completed daily quests for this character. Note this may recover some additional, linked daily quests that were not actually completed today."] = "Tente de récupérer les quêtes journalières accomplies par ce personnage. Notez que cela peut récupérer certaines quêtes supplémentaires liées qui n'ont pas été accomplies aujourd'hui."
La["Automatically shrink the tooltip to fit on the screen"] = "Réduit automatiquement la taille de l'infobulle pour la faire tenir sur l'écran."
La["Azuregos"] = "Azuregos"
La["Battleground Deserter"] = "Déserteur"
La["Bind a key to toggle the SavedInstances tooltip"] = "Associez une touche à l'affichage de l'infobulle de SavedInstance."
La["Bonus loot frame"] = "Cadre de jet de butin bonus"
La["Bonus rolls"] = "Jets de dé bonus"
La[ [=[Boss kill information is missing for this lockout.
This is a Blizzard bug affecting certain old raids.]=] ] = "Les informations de mort des boss manquent pour ce verrouillage d'instance.\\\\nC'est un bogue de Blizzard qui touche certains vieux raids."
--[[Translation missing --]]
La["Bouldron"] = "Bouldron"
--[[Translation missing --]]
La["BRH"] = "BRH"
La["Calling Missing"] = "Appel manquant"
La["Categories"] = "Catégories"
La["Characters"] = "Personnages"
--[[Translation missing --]]
La["COEN"] = "COEN"
La["Color currency by cap"] = "Colorer les monnaies par cap"
La["Combine Callings"] = "Combiner les appels"
La["Combine Emissaries"] = "Combiner les émissaires"
La["Combine emissaries of same expansion"] = "Combiner les émissaires d'une même extension."
La["Combine LFR"] = "Fusionner les RdR"
La["Combine World Bosses"] = "Fusionner les boss extérieurs"
--[[Translation missing --]]
La["Community Feast"] = "Community Feast"
La["Connected Realms"] = "Royaumes connectés"
--[[Translation missing --]]
La["COS"] = "COS"
La["Covenant"] = "Congrégation"
--[[Translation missing --]]
La["Covenant Assaults"] = "Covenant Assaults"
--[[Translation missing --]]
La["Crystalus"] = "Crystalus"
La["Currency settings"] = "Monnaies"
La["Cursed Coffer"] = "Relique maudite"
La["Daily Quests"] = "Quêtes journalières"
La["Day"] = "Jour"
La["Debug Mode"] = "Mode débogage"
--[[Translation missing --]]
La["DHT"] = "DHT"
La["Disable mouseover"] = "Désactiver le survol avec la souris"
La["Disable tooltip display on icon mouseover"] = "Désactive l'affichage de l'infobulle lors du survol de la souris."
La["Display instances in order of recommended level from lowest to highest"] = "Affiche les instances dans l'ordre du niveau recommandé le plus bas au plus élevé."
La["Display instances with space inserted between categories"] = "Affiche les instances avec un espace entre les catégories."
--[[Translation missing --]]
La["Disturbed Dirt / Expedition Scout's Pack"] = "Disturbed Dirt / Expedition Scout's Pack"
--[[Translation missing --]]
La["Doomwalker"] = "Doomwalker"
La["DOS"] = "DOS"
La["Dragon of Nightmare"] = "Les Dragons du Cauchemar"
--[[Translation missing --]]
La["Dragonflight Experimentation"] = "Dragonflight Experimentation"
--[[Translation missing --]]
La["Dragonflight Renown"] = "Dragonflight Renown"
--[[Translation missing --]]
La["Dragonflight Transmute"] = "Dragonflight Transmute"
La["Dump quest debugging information"] = "lister les informations de débogage des quêtes"
La["Dump time debugging information"] = "lister les informations de débogage du temps"
--[[Translation missing --]]
La["Earth"] = "Earth"
--[[Translation missing --]]
La["Earth Core"] = "Earth Core"
--[[Translation missing --]]
La["Emblazion"] = "Emblazion"
La["Emissary Missing"] = "Émissaire manquant"
--[[Translation missing --]]
La["Emissary of War"] = "Emissary of War"
La["Emissary Quests"] = "Quêtes d'émissaire"
La["Emissary quests"] = "Quêtes d'émissaire"
--[[Translation missing --]]
La["EOA"] = "EOA"
La["Expansion"] = "Extension"
La["Expired Lockout - Can be extended"] = "Verrouillage expiré - Peut être étendu"
La["Export"] = "Exporter"
La["Extended Lockout - Not yet saved"] = "Verrouillage étendu - Pas encore sauvegardé"
La["Facets of Research"] = "Facettes de recherche"
--[[Translation missing --]]
La["FH"] = "FH"
--[[Translation missing --]]
La["Fire"] = "Fire"
--[[Translation missing --]]
La["Fire Core"] = "Fire Core"
La["Fit to screen"] = "Ajuster à la taille de l'écran"
La["Flex"] = "Dynamique"
La["Format large numbers"] = "Formater les grands nombres"
--[[Translation missing --]]
La["Frozion"] = "Frozion"
La["Full Clear + 1 Mask"] = "Full Clear + 1 Masque"
La["Full Clear + 2 Masks"] = "Full Clear + 2 Masque"
La["Full Clear + 3 Masks"] = "Full Clear + 3 Masque"
La["Full Clear + 4 Masks"] = "Full Clear + 4 Masque"
La["Full Clear + 5 Masks"] = "Full Clear + 5 Masque"
La["Full Clear No Masks"] = "Full Clear sans masques"
--[[Translation missing --]]
La["Gaelzion"] = "Gaelzion"
--[[Translation missing --]]
La["GD"] = "GD"
La["General settings"] = "Options générales"
--[[Translation missing --]]
La["GMBT"] = "GMBT"
--[[Translation missing --]]
La["Grand Hunt"] = "Grand Hunt"
--[[Translation missing --]]
La["Grand Hunts: Mythic Reward"] = "Grand Hunts: Mythic Reward"
--[[Translation missing --]]
La["Grand Hunts: Rare Reward"] = "Grand Hunts: Rare Reward"
--[[Translation missing --]]
La["Grand Hunts: Uncommon Reward"] = "Grand Hunts: Uncommon Reward"
--[[Translation missing --]]
La["Gravlion"] = "Gravlion"
--[[Translation missing --]]
La["Grizzlerock"] = "Grizzlerock"
La["Group"] = "Grouper "
La["Guild"] = "Guilde"
La["HOA"] = "HOA"
La["Hold Alt to show all data"] = "Maintenez Alt pour afficher toutes les données."
--[[Translation missing --]]
La["HOV"] = "HOV"
La["Hover mouse on indicator for details"] = "Survolez les indicateurs avec la souris pour plus d'informations."
La["Hunt: Death Elementals"] = "Partie de chasse : élémentaires de mort"
La["Hunt: Shadehounds"] = "Partie de chasse : molosses d’ombre"
La["Hunt: Soul Eaters"] = "Partie de chasse : mangeurs d’âmes"
La["Hunt: Winged Soul Eaters"] = "Partie de chasse :  mangeurs d’âmes ailés"
--[[Translation missing --]]
La["Iceblade Trio"] = "Iceblade Trio"
--[[Translation missing --]]
La["ID"] = "ID"
La["Ignore"] = "Ignorer "
La["Indicators"] = "Indicateurs"
--[[Translation missing --]]
La["Infernum"] = "Infernum"
La["Infested Strongbox"] = "Coffre-fort infesté"
La["Instance limit in Broker"] = "Limite d'instance dans la barre (libBroker)"
La["Instances"] = "Instances"
La["Interleave"] = "Entrelacer "
--[[Translation missing --]]
La["Kain Firebrand"] = "Kain Firebrand"
--[[Translation missing --]]
La["Karantun"] = "Karantun"
La["Keystone report target"] = "Cible du rapport de Clé mythique"
--[[Translation missing --]]
La["KR"] = "KR"
La["Last updated"] = "Dernière mise à jour :"
La["Legion Transmute"] = "Transmutation Légion"
La["Lesser Visions of N'Zoth"] = "Visions inférieures de N'Zoth"
La["Level %d Characters"] = "Personnages de niveau %d"
La["LFG cooldown"] = "Recherche de groupe"
La["LFR"] = "RdR"
La["List categories from the current expansion pack first"] = "Liste les catégories de l'extension actuelle en premier."
La["List raid categories before dungeon categories"] = "Liste les catégories de raids avant celles des donjons."
La["Lord Kazzak"] = "Seigneur Kazzak"
--[[Translation missing --]]
La["LOWR"] = "LOWR"
La["Manage"] = "Gérer "
La["Mechanized Chest"] = "Coffre mécanisé"
La["Miscellaneous Tracking"] = "Suivis divers "
La["MISTS"] = "MISTS"
--[[Translation missing --]]
La["ML"] = "ML"
La["Mogu Strongbox"] = "Coffre mogu"
--[[Translation missing --]]
La["MOS"] = "MOS"
La["Most recent first"] = "Les plus récents en premier"
La["Mythic Best"] = "Meilleur temps mythique"
La["Mythic Key Best"] = "Meilleur niveau de clé de donjon mythique"
La["Mythic Keystone"] = "Clé Mythique"
La["Nathanos Blightcaller"] = "Nathanos le Flétrisseur"
--[[Translation missing --]]
La["Neela Firebane"] = "Neela Firebane"
La["Never show"] = "Ne jamais afficher"
--[[Translation missing --]]
La["NL"] = "NL"
La["NW"] = "NW"
La["Opacity of the tooltip row highlighting"] = "Opacité de la mise en évidence des rangées de l'infobulle."
La["Open config"] = "Ouvrir la configuration"
La["Order must be a number in [0 - 999]"] = "l'ordre doit être un nombre compris entre [0 - 999]"
La["Paragon Chests"] = "Coffre Parangon"
La["Party"] = "Groupe"
--[[Translation missing --]]
La["Patterns Within Patterns"] = "Patterns Within Patterns"
La["PF"] = "PF"
--[[Translation missing --]]
La["Pipspark Thundersnap"] = "Pipspark Thundersnap"
--[[Translation missing --]]
La["Primal Storms Core"] = "Primal Storms Core"
--[[Translation missing --]]
La["Primal Storms Elementals"] = "Primal Storms Elementals"
La["Quest progresses"] = "Progression des quêtes"
La["Raids before dungeons"] = "Raids avant les donjons"
La["Recent Bonus Rolls"] = "Jets de dé bonus récents"
La["Recent Instances"] = "instance(s) récente(s) "
La["Recover Dailies"] = "Récupérer les journalières"
La["Report instance resets to group"] = "Indiquer les réinitialisations d'instances au groupe"
La["Reset Characters"] = "Remise à zéro des personnages"
La["Reverse ordering"] = "Ordre inversé"
--[[Translation missing --]]
La["RLP"] = "RLP"
La["Roll Bonus"] = "Jets de dé bonus"
--[[Translation missing --]]
La["Rouen Icewind"] = "Rouen Icewind"
La["Row Highlight"] = "Surbrillance des rangées"
--[[Translation missing --]]
La["SBG"] = "SBG"
La["SD"] = "SD"
--[[Translation missing --]]
La["SEAT"] = "SEAT"
La["Set All"] = "Tout régler sur :"
La["Show all emissary names"] = "Afficher tous les noms d'émissaires"
La["Show both factions' emissay name"] = "Montrer le nom des émissaires de chaque faction."
La["Show calling line when all quests completed"] = "Afficher la ligne des appels lorsque toutes les quêtes sont terminées"
La["Show category names"] = "Noms des catégories"
La["Show category names in the tooltip"] = "Affiche les noms des catégories dans l'infobulle."
La["Show cooldown for characters to use battleground system"] = "Affiche le temps restant avant que les personnages déserteurs ne puissent rejoindre un champs de bataille à nouveau."
La["Show cooldown for characters to use LFG dungeon system"] = "Affiche le temps restant avant que les personnages ne puissent utiliser l'outil Recherche de groupe à nouveau."
La["Show currency earned"] = "Voir les monnaies gagnées"
La["Show currency max"] = "Voir le total maximum de monnaie"
La["Show emissary line when all quests completed"] = "Afficher la ligne des émissaires lorsque toutes les quêtes sont terminées"
La["Show Expired"] = "Afficher les expirés"
La["Show expired instance lockouts"] = "Affiche les verrouillages d'instances expirés."
La["Show Holiday"] = "Evènements saisonniers"
La["Show holiday boss rewards"] = "Affiche les récompenses des boss d’événements saisonniers."
La["Show minimap button"] = "Bouton sur la mini-carte"
La["Show name for a category when all displayed instances belong only to that category"] = "Affiche le nom d'une catégorie quand toutes les instances affichées appartiennent uniquement à cette catégorie. "
La["Show only current server"] = "Serveur actuel uniquement"
La["Show Random"] = "Sacoches Recherche de groupe"
La["Show random dungeon bonus reward"] = "Affiche les récompenses bonus des donjons aléatoires."
La["Show self always"] = "Toujours afficher soi-même"
La["Show self first"] = "Afficher soi-même en premier"
La["Show server name"] = "Afficher le nom du serveur"
La["Show the SavedInstances minimap button"] = "Affiche le bouton de SavedInstances sur la mini-carte."
La["Show tooltip hints"] = "Astuces sur l'infobulle"
La["Show When"] = "Montrer quand"
La["Show when completed"] = "Montrer quand terminé"
La["Show when saved"] = "Quand inscrit"
La["Show/Hide the SavedInstances tooltip"] = "Afficher/cacher l'infobulle de SavedInstances"
--[[Translation missing --]]
La["SIEGE"] = "SIEGE"
--[[Translation missing --]]
La["Siege on Dragonbane Keep"] = "Siege on Dragonbane Keep"
La["Similarly, the words KILLED and TOTAL will be substituted with the number of bosses killed and total in the lockout."] = "De la même manière, les mots KILLED et TOTAL seront remplacés par le nombre de boss tués et le nombre total de boss du raid pour ce verrouillage."
La["Single category name"] = "Nom de catégorie unique"
La["SOA"] = "SOA"
La["Sort by currency name"] = "Trier par nom de monnaie"
La["Sort by server"] = "Trier par serveur"
La["Sort categories by"] = "Trier les catégories par :"
La["Sort Order"] = "Ordre de tri "
La["Sorting"] = "Trier"
--[[Translation missing --]]
La["SOTS"] = "SOTS"
La["Space between categories"] = "Espacer les catégories"
--[[Translation missing --]]
La["Sparks of Life"] = "Sparks of Life"
--[[Translation missing --]]
La["STRT"] = "STRT"
--[[Translation missing --]]
La["TAV"] = "TAV"
--[[Translation missing --]]
La["TD"] = "TD"
La["Text"] = "Texte"
La["The Four Celestials"] = "Les Quatre Astres"
La["The World Awaits"] = "Le monde vous attend"
La["These are the instances that count towards the %i instances per hour account limit, and the time until they expire."] = "Ces instances comptent dans la limite de %i instances par heure pour le compte, et le temps avant qu'elles n'expirent."
La["This should only be used for characters who have been renamed or deleted, as characters will be re-populated when you log into them."] = "Ceci ne devrait être utilisé que pour les personnages qui ont été renommés ou supprimés car les personnages seront de toutes façons ré-affichés lorsque vous vous connecterez avec."
La["Time /played"] = "Temps /joué"
La["Time Left"] = "Temps restant "
--[[Translation missing --]]
La["Timeworn Mythic Keystone"] = "Timeworn Mythic Keystone"
--[[Translation missing --]]
La["TJS"] = "TJS"
--[[Translation missing --]]
La["TNO"] = "TNO"
La["Tooltip Scale"] = "Taille de l'infobulle"
La["TOP"] = "TOP"
La["Torghast"] = "Tourment"
La["Tormentors of Torghast"] = "Tourmenteurs de Tourment"
--[[Translation missing --]]
La["TOS"] = "TOS"
La["Track Mythic keystone acquisition"] = "Suivre l'acquisition de clé de donjon mythique"
La["Track Mythic keystone best run"] = "Suivre le meilleur temps pour la clé de donjon mythique"
--[[Translation missing --]]
La["Track Timeworn Mythic keystone acquisition"] = "Track Timeworn Mythic keystone acquisition"
La["Trade Skill Cooldowns"] = "Échéances des métiers"
La["Trade skills"] = "Échéances des métiers"
La["Transmute"] = "Transmutation"
--[[Translation missing --]]
La["Trial of Elements"] = "Trial of Elements"
--[[Translation missing --]]
La["Trial of Flood"] = "Trial of Flood"
La["Type"] = "Type"
--[[Translation missing --]]
La["UNDR"] = "UNDR"
--[[Translation missing --]]
La["UPPR"] = "UPPR"
La["Use class color"] = "Colorer par classe"
La["Vision Boss + 2 Bonus Objectives"] = "Boss de la vision + 2 objectifs bonus"
La["Vision Boss Only"] = "Boss de la vision uniquement"
--[[Translation missing --]]
La["Voraazka"] = "Voraazka"
--[[Translation missing --]]
La["VOTW"] = "VOTW"
La["Warfronts"] = "Fronts de guerre"
La["Warn about instance limit"] = "Alerte sur la limite d'instance"
La["Warning: You've entered about %i instances recently and are approaching the %i instance per hour limit for your account. More instances should be available in %s."] = "Attention : vous êtes entré dans %i instances récemment et approchez la limite de %i instances par heure pour ce compte. Plus d'instances seront disponibles dans environ %s."
--[[Translation missing --]]
La["Water"] = "Water"
--[[Translation missing --]]
La["Water Core"] = "Water Core"
La["Weekly Quests"] = "Quêtes hebdomadaires"
La["Wild Transmute"] = "Transmutation sauvage"
--[[Translation missing --]]
La["WM"] = "WM"
--[[Translation missing --]]
La["WORK"] = "WORK"
La["World Boss"] = "Boss extérieur"
La["World Bosses"] = "Boss extérieurs"
La["Wrath of the Jailer"] = "Courroux du Geôlier"
--[[Translation missing --]]
La["YARD"] = "YARD"
La["You can combine icons and text in a single indicator if you wish. Simply choose an icon, and insert the word ICON into the text field. Anywhere the word ICON is found, the icon you chose will be substituted in."] = "Si vous le souhaitez, vous pouvez combiner les icônes et le texte en un seul indicateur. Il vous suffit de choisir une icône et d'insérer le mot ICON dans la zone de texte. Partout où le mot ICON sera trouvé, l'icône que vous avez choisi sera mise à la place."
--[[Translation missing --]]
La["Zurgaz Corebreaker"] = "Zurgaz Corebreaker"

elseif locale == "deDE" then
  La["|cffffff00Click|r to open weekly rewards"] = "|cffffff00Klicke|r um wöchentliche Belohnungen anzuzeigen"
La["|cffffff00Left-click|r to detach tooltip"] = "|cffffff00Linksklick|r, um den Tooltip zu lösen"
La["|cffffff00Middle-click|r to show Blizzard's Raid Information"] = "|cffffff00Mittelklick|r , um die Blizzard-Schlachtszugsinfo anzuzeigen"
La["|cffffff00Right-click|r to configure SavedInstances"] = "|cffffff00Rechtsklick|r, um SavedInstances zu konfigurieren"
--[[Translation missing --]]
La["AA"] = "AA"
La["Abbreviate keystones"] = "Schlüsselsteine abkürzen"
La["Abbreviate Mythic keystone dungeon names"] = "Namen mythischer Schlüsselsteindungeons abkürzen"
La["Account"] = "Account"
La["Account Summary"] = "Accountübersicht"
--[[Translation missing --]]
La["AD"] = "AD"
--[[Translation missing --]]
La["Aiding the Accord"] = "Aiding the Accord"
--[[Translation missing --]]
La["Air"] = "Air"
--[[Translation missing --]]
La["Air Core"] = "Air Core"
La["Always show"] = "Immer anzeigen"
La["Amathet Reliquary"] = "Reliquiar der Amathet"
La["Ambered Coffer"] = "Bernbesetzte Kiste"
--[[Translation missing --]]
La["ARC"] = "ARC"
La["Are you sure you want to remove %s from the SavedInstances character database?"] = "Bist du sicher, dass du %s aus der SavedInstances-Charakterdatenbank löschen möchtest?"
La["Are you sure you want to report all your keys to %s?"] = "Bist du dir sicher alle deine Schlüssel an %s zu senden? "
La["Are you sure you want to reset the SavedInstances character database? Characters will be re-populated as you log into them."] = "Bist du sicher, dass du die SavedInstances-Charakterdatenbank zurücksetzen willst? Die Charaktere werden neu angelegt, wenn du sie einloggst."
La["Attempt to recover completed daily quests for this character. Note this may recover some additional, linked daily quests that were not actually completed today."] = "Versucht die täglichen Quests für diesen Charakter wiederherzustellen. Dies könnte einige weitere, verbundene tägliche Quests wiederherstellen, die nicht wirklich abgeschlossen wurden."
La["Automatically shrink the tooltip to fit on the screen"] = "Den Tooltip automatisch verkleinern, damit dieser auf den Bildschirm passt"
La["Azuregos"] = "Azuregos"
La["Battleground Deserter"] = "Schlachtfelddeserteur-Abklingzeit"
La["Bind a key to toggle the SavedInstances tooltip"] = "Wähle Tastenkombination zum Umschalten des SavedInstances-Tooltip"
La["Bonus loot frame"] = "Bonusbeutefenster"
La["Bonus rolls"] = "Bonuswürfe"
La[ [=[Boss kill information is missing for this lockout.
This is a Blizzard bug affecting certain old raids.]=] ] = [=[Informationen über getötete Bosse fehlen für diese Instanzsperre.
Dies ist ein Fehler von Blizzard, der einige ältere Schlachtzüge betrifft.]=]
--[[Translation missing --]]
La["Bouldron"] = "Bouldron"
--[[Translation missing --]]
La["BRH"] = "BRH"
La["Calling Missing"] = "Berufung fehlt"
La["Categories"] = "Kategorien"
La["Characters"] = "Charaktere"
--[[Translation missing --]]
La["COEN"] = "COEN"
La["Color currency by cap"] = "Währung nach Limit einfärben"
La["Combine Callings"] = "Kombiniere Berufungen"
La["Combine Emissaries"] = "Kombiniere Abgesandte"
La["Combine emissaries of same expansion"] = "Kombiniert die Abgesandten der selben Erweiterung"
La["Combine LFR"] = "LFR/Flex zusammenfassen"
La["Combine World Bosses"] = "Weltbosse zusammenfassen"
--[[Translation missing --]]
La["Community Feast"] = "Community Feast"
La["Connected Realms"] = "Verknüpfte Realms"
--[[Translation missing --]]
La["COS"] = "COS"
La["Covenant"] = "Pakt"
La["Covenant Assaults"] = "Paktangriffe"
--[[Translation missing --]]
La["Crystalus"] = "Crystalus"
La["Currency settings"] = "Abzeicheneinstellungen"
La["Cursed Coffer"] = "Kiste des Schwarzen Imperiums"
La["Daily Quests"] = "Tägliche Quests"
La["Day"] = "Tag"
La["Debug Mode"] = "Debugmodus"
--[[Translation missing --]]
La["DHT"] = "DHT"
La["Disable mouseover"] = "Mouseover deaktivieren"
La["Disable tooltip display on icon mouseover"] = "Deaktiviert die Anzeige des Tooltips bei Zeigen auf Icons mit der Maus"
La["Display instances in order of recommended level from lowest to highest"] = "Instanzen nach vorgeschlagenem Level anzeigen, beginnend mit der niedrigsten zur höchsten Instanz"
La["Display instances with space inserted between categories"] = "Instanzen mit einem Freiraum zwischen den verschiedenen Kategorien anzeigen"
--[[Translation missing --]]
La["Disturbed Dirt / Expedition Scout's Pack"] = "Disturbed Dirt / Expedition Scout's Pack"
La["Doomwalker"] = "Verdammniswandler"
La["DOS"] = "DOS"
La["Dragon of Nightmare"] = "Drache des Albtraums"
--[[Translation missing --]]
La["Dragonflight Experimentation"] = "Dragonflight Experimentation"
--[[Translation missing --]]
La["Dragonflight Renown"] = "Dragonflight Renown"
--[[Translation missing --]]
La["Dragonflight Transmute"] = "Dragonflight Transmute"
La["Dump quest debugging information"] = "Quest Debugging Information"
La["Dump time debugging information"] = "Zeit Debugging Informationen"
--[[Translation missing --]]
La["Earth"] = "Earth"
--[[Translation missing --]]
La["Earth Core"] = "Earth Core"
--[[Translation missing --]]
La["Emblazion"] = "Emblazion"
La["Emissary Missing"] = "Abgesandte Truhe fehlt"
La["Emissary of War"] = "Abgesandter des Krieges"
La["Emissary Quests"] = "Abgesandtenquests"
La["Emissary quests"] = "Abgesandtenquests"
--[[Translation missing --]]
La["EOA"] = "EOA"
La["Expansion"] = "Erweiterung"
La["Expired Lockout - Can be extended"] = "Abgelaufene ID – Kann fortgesetzt werden"
La["Export"] = "exportieren"
La["Extended Lockout - Not yet saved"] = "Verlängerte IDs – noch nicht gesichert"
La["Facets of Research"] = "Forschungsfacetten"
--[[Translation missing --]]
La["FH"] = "FH"
--[[Translation missing --]]
La["Fire"] = "Fire"
--[[Translation missing --]]
La["Fire Core"] = "Fire Core"
La["Fit to screen"] = "An Bildschirm anpassen"
La["Flex"] = "Flex"
La["Format large numbers"] = "Große Zahlen formatieren"
--[[Translation missing --]]
La["Frozion"] = "Frozion"
La["Full Clear + 1 Mask"] = "Full Clear + 1 Maske"
La["Full Clear + 2 Masks"] = "Full Clear + 2 Masken"
La["Full Clear + 3 Masks"] = "Full Clear + 3 Masken"
La["Full Clear + 4 Masks"] = "Full Clear + 4 Masken"
La["Full Clear + 5 Masks"] = "Full Clear + 5 Masken"
La["Full Clear No Masks"] = "Full Clear, keine Masken"
--[[Translation missing --]]
La["Gaelzion"] = "Gaelzion"
--[[Translation missing --]]
La["GD"] = "GD"
La["General settings"] = "Allgemeine Einstellungen"
--[[Translation missing --]]
La["GMBT"] = "GMBT"
--[[Translation missing --]]
La["Grand Hunt"] = "Grand Hunt"
--[[Translation missing --]]
La["Grand Hunts: Mythic Reward"] = "Grand Hunts: Mythic Reward"
--[[Translation missing --]]
La["Grand Hunts: Rare Reward"] = "Grand Hunts: Rare Reward"
--[[Translation missing --]]
La["Grand Hunts: Uncommon Reward"] = "Grand Hunts: Uncommon Reward"
--[[Translation missing --]]
La["Gravlion"] = "Gravlion"
--[[Translation missing --]]
La["Grizzlerock"] = "Grizzlerock"
La["Group"] = "Gruppieren"
La["Guild"] = "Gilde"
La["HOA"] = "HOA"
La["Hold Alt to show all data"] = "Halte Alt gedrückt, um alle Daten anzuzeigen"
--[[Translation missing --]]
La["HOV"] = "HOV"
La["Hover mouse on indicator for details"] = "Für Details den Mauszeiger über den Indikator setzen"
La["Hunt: Death Elementals"] = "Jagd: Todeselementare"
La["Hunt: Shadehounds"] = "Jagd: Schemenhunde"
La["Hunt: Soul Eaters"] = "Jagd: Seelenfresser"
La["Hunt: Winged Soul Eaters"] = "Jagd: Geflügelte Seelenfresser"
--[[Translation missing --]]
La["Iceblade Trio"] = "Iceblade Trio"
--[[Translation missing --]]
La["ID"] = "ID"
La["Ignore"] = "Ignorieren"
La["Indicators"] = "Indikatoren"
--[[Translation missing --]]
La["Infernum"] = "Infernum"
La["Infested Strongbox"] = "Befallene Schließkassette"
La["Instance limit in Broker"] = "Instanzlimit im Broker"
La["Instances"] = "Instanzen"
La["Interleave"] = "Verschachteln"
--[[Translation missing --]]
La["Kain Firebrand"] = "Kain Firebrand"
--[[Translation missing --]]
La["Karantun"] = "Karantun"
La["Keystone report target"] = "Sende Schlüsselstein an Ziel"
--[[Translation missing --]]
La["KR"] = "KR"
La["Last updated"] = "Zuletzt aktualisiert"
La["Legion Transmute"] = "Legion Transmutation"
La["Lesser Visions of N'Zoth"] = "Geringe Vision von N'Zoth"
La["Level %d Characters"] = "Stufe-%d-Charaktere"
La["LFG cooldown"] = "Dungeonbrowser-Abklingzeit"
La["LFR"] = "LFR"
La["List categories from the current expansion pack first"] = "Kategorien der aktuellen Erweiterung zuerst auflisten"
La["List raid categories before dungeon categories"] = "Schlachtzugskategorien vor Dungeonkategorien auflisten"
La["Lord Kazzak"] = "Lord Kazzak"
--[[Translation missing --]]
La["LOWR"] = "LOWR"
La["Manage"] = "Verwalten"
La["Mechanized Chest"] = "Mechanisierte Truhe"
La["Miscellaneous Tracking"] = "Sonstige Verfolgung"
La["MISTS"] = "MISTS"
--[[Translation missing --]]
La["ML"] = "ML"
La["Mogu Strongbox"] = "Schließkassette der Mogu"
--[[Translation missing --]]
La["MOS"] = "MOS"
La["Most recent first"] = "Aktuellste zuerst"
La["Mythic Best"] = "Beste mythische"
La["Mythic Key Best"] = "Bester mythischer Schlüssel"
La["Mythic Keystone"] = "Mythischer Schlüsselstein"
La["Nathanos Blightcaller"] = "Nathanos Pestrufer"
--[[Translation missing --]]
La["Neela Firebane"] = "Neela Firebane"
La["Never show"] = "Nie anzeigen"
--[[Translation missing --]]
La["NL"] = "NL"
La["NW"] = "NW"
La["Opacity of the tooltip row highlighting"] = "Transparenz der Zeilenhervorhebung im Tooltip"
La["Open config"] = "Konfiguration öffnen"
La["Order must be a number in [0 - 999]"] = "Auftrag muss eine Zahl mit [0 - 999] sein"
La["Paragon Chests"] = "Paragonkiste"
La["Party"] = "Gruppe"
La["Patterns Within Patterns"] = "Verschachtelte Muster"
La["PF"] = "PF"
--[[Translation missing --]]
La["Pipspark Thundersnap"] = "Pipspark Thundersnap"
--[[Translation missing --]]
La["Primal Storms Core"] = "Primal Storms Core"
--[[Translation missing --]]
La["Primal Storms Elementals"] = "Primal Storms Elementals"
La["Quest progresses"] = "Questfortschritte"
La["Raids before dungeons"] = "Schlachtzüge vor Dungeons"
La["Recent Bonus Rolls"] = "Letzte Bonuswürfe"
La["Recent Instances"] = "Kürzliche Instanzen"
La["Recover Dailies"] = "Dailies wiederherstellen"
La["Report instance resets to group"] = "Instanzzurücksetzungen an die Gruppe berichten"
La["Reset Characters"] = "Charaktere zurücksetzen"
La["Reverse ordering"] = "Umgekehrte Anordung"
--[[Translation missing --]]
La["RLP"] = "RLP"
La["Roll Bonus"] = "Bonuswürfe"
--[[Translation missing --]]
La["Rouen Icewind"] = "Rouen Icewind"
La["Row Highlight"] = "Zeilenhervorhebung"
--[[Translation missing --]]
La["SBG"] = "SBG"
La["SD"] = "SD"
--[[Translation missing --]]
La["SEAT"] = "SEAT"
La["Set All"] = "Alle festlegen"
La["Show all emissary names"] = "Zeige alle Namen der Abgesandten"
La["Show both factions' emissay name"] = "Zeige den Namen beider Fraktionen der Abgesandten"
La["Show calling line when all quests completed"] = "Zeige Berufungenzeile wenn alle Quests abgeschlossen sind"
La["Show category names"] = "Kategorienamen anzeigen"
La["Show category names in the tooltip"] = "Kategorienamen im Tooltip anzeigen"
La["Show cooldown for characters to use battleground system"] = "Zeigt Abklingzeiten für Charaktere, um das Schlachtfeldsystem zu benutzen, an."
La["Show cooldown for characters to use LFG dungeon system"] = "Zeigt Abklingzeiten für Charaktere, um den Dungeonbrowser zu benutzen, an"
La["Show currency earned"] = "Erhaltene Abzeichen anzeigen"
La["Show currency max"] = "Maximale Abzeichen anzeigen"
La["Show emissary line when all quests completed"] = "Zeigt die Abgesandten weiterhin an, wenn alle Quests abgeschlossen wurden"
La["Show Expired"] = "Abgelaufene anzeigen"
La["Show expired instance lockouts"] = "Abgelaufene Instanz-IDs anzeigen"
La["Show Holiday"] = "Festtagsinformationen anzeigen"
La["Show holiday boss rewards"] = "Belohnungen der Festtagsbosse anzeigen"
La["Show minimap button"] = "Minikartenbutton anzeigen"
La["Show name for a category when all displayed instances belong only to that category"] = "Zeige den Namen der Kategorie, wenn alle angezeigten Instanzen zu dieser Kategorie gehören"
La["Show only current server"] = "Nur diesen Server anzeigen"
La["Show Random"] = "Zufällige anzeigen"
La["Show random dungeon bonus reward"] = "Bonusbelohnung für Zufallsdungeon anzeigen"
La["Show self always"] = "Sich selbst immer anzeigen"
La["Show self first"] = "Sich selbst zuerst anzeigen"
La["Show server name"] = "Realmname anzeigen"
La["Show the SavedInstances minimap button"] = "Den SavedInstances-Minikartenbutton anzeigen"
La["Show tooltip hints"] = "Tooltip-Hinweise anzeigen"
La["Show When"] = "Zeigen, wenn"
La["Show when completed"] = "Zeigen, wenn abgeschlossen"
La["Show when saved"] = "Anzeigen, wenn gespeichert"
La["Show/Hide the SavedInstances tooltip"] = "Zeige/Verstecke den SavedInstances-Tooltip"
--[[Translation missing --]]
La["SIEGE"] = "SIEGE"
--[[Translation missing --]]
La["Siege on Dragonbane Keep"] = "Siege on Dragonbane Keep"
La["Similarly, the words KILLED and TOTAL will be substituted with the number of bosses killed and total in the lockout."] = "Ebenso werden die Wörter GETÖTET und GESAMT durch die Anzahl der getöteten und gesamten Bosse der ID ersetzt."
La["Single category name"] = "Einzelner Kategoriename"
La["SOA"] = "SOA"
La["Sort by currency name"] = "Sortiere nach Währungsnamen"
La["Sort by server"] = "Nach Server sortieren"
La["Sort categories by"] = "Kategorien sortieren nach"
La["Sort Order"] = "Sortierung"
La["Sorting"] = "Sortierung"
--[[Translation missing --]]
La["SOTS"] = "SOTS"
La["Space between categories"] = "Freiraum zwischen Kategorien"
--[[Translation missing --]]
La["Sparks of Life"] = "Sparks of Life"
--[[Translation missing --]]
La["STRT"] = "STRT"
--[[Translation missing --]]
La["TAV"] = "TAV"
--[[Translation missing --]]
La["TD"] = "TD"
La["Text"] = "Text"
La["The Four Celestials"] = "Die Vier Erhabenen"
La["The World Awaits"] = "Die Welt wartet"
La["These are the instances that count towards the %i instances per hour account limit, and the time until they expire."] = "Diese Instanzen zählen zum %i-Instanzen-pro-Stunde-pro-Account-Limit, gefolgt von der Zeit, bis sie ablaufen."
La["This should only be used for characters who have been renamed or deleted, as characters will be re-populated when you log into them."] = "Dies sollte nur für Charaktere, die umbenannt oder gelöscht wurden, verwendet werden, da Charaktere erneut in die Datenbank eingetragen werden, wenn du dich mit ihnen einloggst."
La["Time /played"] = "Zeit /gespielt"
La["Time Left"] = "Verbleibende Zeit"
La["Timeworn Mythic Keystone"] = "Anachronistischer Mythischer Schlüsselstein"
--[[Translation missing --]]
La["TJS"] = "TJS"
--[[Translation missing --]]
La["TNO"] = "TNO"
La["Tooltip Scale"] = "Tooltip-Skalierung"
La["TOP"] = "TOP"
La["Torghast"] = "Torghast"
La["Tormentors of Torghast"] = "Peiniger von Torghast"
--[[Translation missing --]]
La["TOS"] = "TOS"
La["Track Mythic keystone acquisition"] = "Verfolge die erhaltenen Schlüsselsteine"
La["Track Mythic keystone best run"] = "Verfolge den besten mythischen Durchlauf"
--[[Translation missing --]]
La["Track Timeworn Mythic keystone acquisition"] = "Track Timeworn Mythic keystone acquisition"
La["Trade Skill Cooldowns"] = "Abklingzeiten der Berufsfertigkeiten"
La["Trade skills"] = "Berufsfertigkeiten"
La["Transmute"] = "Transmutieren"
--[[Translation missing --]]
La["Trial of Elements"] = "Trial of Elements"
--[[Translation missing --]]
La["Trial of Flood"] = "Trial of Flood"
La["Type"] = "Wert"
--[[Translation missing --]]
La["UNDR"] = "UNDR"
--[[Translation missing --]]
La["UPPR"] = "UPPR"
La["Use class color"] = "Klassenfarbe verwenden"
La["Vision Boss + 2 Bonus Objectives"] = "Visions Boss + 2 Bonus Ziele"
La["Vision Boss Only"] = "nur der Visions Boss"
--[[Translation missing --]]
La["Voraazka"] = "Voraazka"
--[[Translation missing --]]
La["VOTW"] = "VOTW"
La["Warfronts"] = "Kriegsfronten"
La["Warn about instance limit"] = "Vor Instanzlimit warnen"
La["Warning: You've entered about %i instances recently and are approaching the %i instance per hour limit for your account. More instances should be available in %s."] = "Achtung: Du hast kürzlich %i Instanzen betreten und näherst Dich dem Limit von %i Instanzen pro Stunde für Deinen Account. Weitere Instanzen sollten in %s verfügbar sein."
--[[Translation missing --]]
La["Water"] = "Water"
--[[Translation missing --]]
La["Water Core"] = "Water Core"
La["Weekly Quests"] = "Wöchentliche Quests"
La["Wild Transmute"] = "Wilde Transmutation"
--[[Translation missing --]]
La["WM"] = "WM"
--[[Translation missing --]]
La["WORK"] = "WORK"
La["World Boss"] = "Weltboss"
La["World Bosses"] = "Weltbosse"
La["Wrath of the Jailer"] = "Zorn des Kerkermeisters"
--[[Translation missing --]]
La["YARD"] = "YARD"
La["You can combine icons and text in a single indicator if you wish. Simply choose an icon, and insert the word ICON into the text field. Anywhere the word ICON is found, the icon you chose will be substituted in."] = "Nach Wunsch können Icons und Text in einem einzelnen Indikator kombiniert werden. Wähle ein Icon und gebe das Wort ICON in das Textfeld ein. Wo auch immer das Wort ICON gefunden wird, wird das gewählte Icon angefügt."
--[[Translation missing --]]
La["Zurgaz Corebreaker"] = "Zurgaz Corebreaker"

elseif locale == "koKR" then
  La["|cffffff00Click|r to open weekly rewards"] = "|cffffff00클릭|r 위대한 금고 보기"
La["|cffffff00Left-click|r to detach tooltip"] = "|cffffff00좌-클릭|r으로 툴팁 떼어내기"
La["|cffffff00Middle-click|r to show Blizzard's Raid Information"] = "|cffffff00가운데-클릭|r 블리자드 공격대 정보 보기"
La["|cffffff00Right-click|r to configure SavedInstances"] = "|cffffff00우-클릭|r으로 SavedInstances 설정"
La["AA"] = "대학"
La["Abbreviate keystones"] = "쐐기명 축약"
La["Abbreviate Mythic keystone dungeon names"] = "신화 쐐기돌 던전 이름을 짧게 표시하기"
La["Account"] = "계정"
La["Account Summary"] = "계정 요약"
La["AD"] = "아탈"
La["Aiding the Accord"] = "협의회 지원"
La["Air"] = "폭풍"
La["Air Core"] = "바람의 핵"
La["Always show"] = "항상 표시"
La["Amathet Reliquary"] = "아마셋 성물함"
La["Ambered Coffer"] = "호박석 박힌 함"
La["ARC"] = "비전로"
La["Are you sure you want to remove %s from the SavedInstances character database?"] = "SavedInstances 캐릭터 데이터베이스에서 %s를(을) 제거하시겠습니까?"
La["Are you sure you want to report all your keys to %s?"] = "%s 에게 쐐기돌을 알려주시겠습니까?"
La["Are you sure you want to reset the SavedInstances character database? Characters will be re-populated as you log into them."] = "당신의 SavedInstances의 캐릭터 데이터베이스를 초기화 하시겠습니까? 재로그인시 캐릭터의 정보가 다시 채워집니다."
La["Attempt to recover completed daily quests for this character. Note this may recover some additional, linked daily quests that were not actually completed today."] = "이 캐릭터의 '완료된 일일퀘스트'의 복구를 시도합니다. 실제로 오늘 완료되지 않은 일부 추가/연속 일일 퀘스트를 복구 할 수 있습니다."
La["Automatically shrink the tooltip to fit on the screen"] = "화면에 맞게 자동으로  툴팁을 축소합니다"
La["Azuregos"] = "아주어고스"
La["Battleground Deserter"] = "전장 탈영 대기시간 추적"
La["Bind a key to toggle the SavedInstances tooltip"] = "SavedInstances 툴팁을 보거나 숨기는 키 설정"
La["Bonus loot frame"] = "추가 전리품 창"
La["Bonus rolls"] = "추가 전리품 주사위 추적"
La[ [=[Boss kill information is missing for this lockout.
This is a Blizzard bug affecting certain old raids.]=] ] = "보스 처지 정보가 누락되어 잠겨 있습니다.\\n 이것은 특정 낭만 공격대에 영향을 미치는 블리자드 버그입니다."
La["Bouldron"] = "볼드론"
La["BRH"] = "검떼"
--[[Translation missing --]]
La["Calling Missing"] = "Calling Missing"
La["Categories"] = "카테고리"
La["Characters"] = "캐릭터"
La["COEN"] = "대성당"
La["Color currency by cap"] = "화폐 한도에 채색"
La["Combine Callings"] = "부름퀘 모음"
La["Combine Emissaries"] = "사절퀘 모음"
La["Combine emissaries of same expansion"] = "확팩별 사절퀘 모음"
La["Combine LFR"] = "공찾/탄공 합침"
La["Combine World Bosses"] = "야외 보스 합침"
La["Community Feast"] = "공동체 잔치"
La["Connected Realms"] = "연동 서버"
La["COS"] = "별궁"
La["Covenant"] = "성약의 단"
La["Covenant Assaults"] = "성약의 단 습격"
La["Crystalus"] = "크리스탈루스"
La["Currency settings"] = "화폐 설정"
La["Cursed Coffer"] = "저주받은 함"
La["Daily Quests"] = "일일 퀘스트"
La["Day"] = "일"
La["Debug Mode"] = "디버그 모드"
La["DHT"] = "어심"
La["Disable mouseover"] = "마우스오버 사용안함"
La["Disable tooltip display on icon mouseover"] = "아이콘 마우스 오버시 툴팁 표시 안함"
La["Display instances in order of recommended level from lowest to highest"] = "권장 레벨이 낮은 것부터 높은 순으로 인던을 표시합니다."
La["Display instances with space inserted between categories"] = "카테고리 사이에 공백을 삽입하여 인스턴스를 표시합니다."
La["Disturbed Dirt / Expedition Scout's Pack"] = "흙 / 정찰병 짐"
La["Doomwalker"] = "파멸의 절단기"
La["DOS"] = "저편"
La["Dragon of Nightmare"] = "악몽의 용"
La["Dragonflight Experimentation"] = "용군단: 연금 실험"
La["Dragonflight Renown"] = "용군단 영예"
La["Dragonflight Transmute"] = "용군단 변환식"
La["Dump quest debugging information"] = "퀘스트 디버그 정보 덤프하기"
La["Dump time debugging information"] = "시간 디버깅 정보 덤프하기"
La["Earth"] = "대지"
La["Earth Core"] = "대지 핵"
La["Emblazion"] = "엠블라지온"
La["Emissary Missing"] = "사절 없음"
La["Emissary of War"] = "전쟁의 사절"
La["Emissary Quests"] = "사절 퀘스트"
La["Emissary quests"] = "사절 퀘스트"
La["EOA"] = "아즈눈"
La["Expansion"] = "확장"
La["Expired Lockout - Can be extended"] = "만료된 귀속 - 연장 가능"
La["Export"] = "내보내기"
La["Extended Lockout - Not yet saved"] = "연장된 귀속 - 아직 저장 안됨"
La["Facets of Research"] = "연구용 다면체"
La["FH"] = "자유지대"
La["Fire"] = "불"
La["Fire Core"] = "화염의 핵"
La["Fit to screen"] = "화면에 맞춤"
La["Flex"] = "탄력적 공격대"
La["Format large numbers"] = "천 단위 구분자(,) 사용 여부"
La["Frozion"] = "프로지온"
La["Full Clear + 1 Mask"] = "1가면 5상"
La["Full Clear + 2 Masks"] = "2가면 5상"
La["Full Clear + 3 Masks"] = "3가면 5상"
La["Full Clear + 4 Masks"] = "4가면 5상"
La["Full Clear + 5 Masks"] = "5가면 5상"
La["Full Clear No Masks"] = "0가면 5상"
La["Gaelzion"] = "게일지온"
La["GD"] = "정비소"
La["General settings"] = "일반 설정"
La["GMBT"] = "타자:소레아"
La["Grand Hunt"] = "사냥의 제전"
La["Grand Hunts: Mythic Reward"] = "사냥의 제전: 보라상자"
La["Grand Hunts: Rare Reward"] = "사냥의 제전: 파란상자"
La["Grand Hunts: Uncommon Reward"] = "사냥의 제전: 흰색상자"
La["Gravlion"] = "그래블리온"
La["Grizzlerock"] = "그리즐록"
La["Group"] = "그룹"
La["Guild"] = "길드"
La["HOA"] = "속죄"
La["Hold Alt to show all data"] = "알트키를 누르고 있으면 모든 정보 표시"
La["HOV"] = "용전"
La["Hover mouse on indicator for details"] = "마우스를 올리면 세부 내용 표시"
La["Hunt: Death Elementals"] = "사냥: 죽음의 정령"
La["Hunt: Shadehounds"] = "사냥: 그늘사냥개"
La["Hunt: Soul Eaters"] = "사냥: 영혼탐식자"
La["Hunt: Winged Soul Eaters"] = "사냥: 날개 달린 영혼탐식자"
La["Iceblade Trio"] = "얼음칼날 3인조"
La["ID"] = "선착장"
La["Ignore"] = "무시"
La["Indicators"] = "표시기"
La["Infernum"] = "인페르눔"
La["Infested Strongbox"] = "감염된 금고"
La["Instance limit in Broker"] = "Broker에 인스턴스 제한 표시"
La["Instances"] = "인스턴스"
La["Interleave"] = "끼워넣기"
La["Kain Firebrand"] = "케인 파이어브랜드"
La["Karantun"] = "카란툰"
La["Keystone report target"] = "쐐기돌 보고 대상"
La["KR"] = "왕안"
La["Last updated"] = "마지막 갱신"
La["Legion Transmute"] = "군단 변환식"
La["Lesser Visions of N'Zoth"] = "미니 환영"
La["Level %d Characters"] = "레벨 %d 캐릭터"
La["LFG cooldown"] = "무작위 던전 대기시간 추적"
La["LFR"] = "공찾"
La["List categories from the current expansion pack first"] = "현재 확장팩을 첫번째로 목록에 나열"
La["List raid categories before dungeon categories"] = "던전 카테고리 앞에 공격대 카테고리 나열"
La["Lord Kazzak"] = "군주 카자크"
La["LOWR"] = "카라잔:하층"
La["Manage"] = "관리"
La["Mechanized Chest"] = "기계 상자"
La["Miscellaneous Tracking"] = "기타"
La["MISTS"] = "티르너"
La["ML"] = "왕노다지"
La["Mogu Strongbox"] = "모구 금고"
La["MOS"] = "어귀"
La["Most recent first"] = "최근 것을 첫번째로"
La["Mythic Best"] = "쐐기 최고 기록"
La["Mythic Key Best"] = "주차 단수"
La["Mythic Keystone"] = "쐐기"
La["Nathanos Blightcaller"] = "나타노스 브라이트콜러"
La["Neela Firebane"] = "닐라 파이어베인"
La["Never show"] = "표시하지 않음"
La["NL"] = "넬둥"
La["NW"] = "죽상"
La["Opacity of the tooltip row highlighting"] = "툴팁 열 강조에 대한 불투명도"
La["Open config"] = "설정 열기"
La["Order must be a number in [0 - 999]"] = "순서는 숫자 0에서 999사이의 값을 입력하셔야 합니다."
La["Paragon Chests"] = "평판 보상"
La["Party"] = "파티"
La["Patterns Within Patterns"] = "양식 속의 양식"
La["PF"] = "역병"
La["Pipspark Thundersnap"] = "핍스파크 썬더스냅"
La["Primal Storms Core"] = "원시 폭풍 핵"
La["Primal Storms Elementals"] = "원시 폭풍 정령"
La["Quest progresses"] = "퀘스트 진행도"
La["Raids before dungeons"] = "던전 앞에 공격대"
La["Recent Bonus Rolls"] = "최근 추가 보상"
La["Recent Instances"] = "최근 인던"
La["Recover Dailies"] = "일일퀘스트 복구"
La["Report instance resets to group"] = "던전 초기화를 파티에 알림"
La["Reset Characters"] = "캐릭터 초기화"
La["Reverse ordering"] = "순서를 거꾸로"
La["RLP"] = "루비"
La["Roll Bonus"] = "추가 보상"
La["Rouen Icewind"] = "루엔 아이스윈드"
La["Row Highlight"] = "열 강조"
La["SBG"] = "어둠달"
La["SD"] = "심연"
La["SEAT"] = "삼두정"
La["Set All"] = "모든 설정"
La["Show all emissary names"] = "모든 사절 이름 표시"
La["Show both factions' emissay name"] = "양쪽 진영의 사절퀘 모두 보기"
La["Show calling line when all quests completed"] = "부름퀘스트 완료시에만 보이기"
La["Show category names"] = "카테고리 이름 표시"
La["Show category names in the tooltip"] = "툴팁에 카테고리 이름을 표시합니다"
La["Show cooldown for characters to use battleground system"] = "캐릭터가 전장 시스템을 사용하기 위해 남은 대기시간을 표시합니다."
La["Show cooldown for characters to use LFG dungeon system"] = "캐릭터가 무작위 던전 시스템을 사용하기 위해 남은 대기시간을 표시합니다."
La["Show currency earned"] = "화폐 수입 보이기"
La["Show currency max"] = "화폐 최대치 보이기"
La["Show emissary line when all quests completed"] = "사절퀘스트 완료시에만 보이기"
La["Show Expired"] = "만료 표시"
La["Show expired instance lockouts"] = "만료된 인스턴스 귀속 표시"
La["Show Holiday"] = "축제일 보기"
La["Show holiday boss rewards"] = "축제일 보스 보상 보기"
La["Show minimap button"] = "미니맵 버튼 표시"
La["Show name for a category when all displayed instances belong only to that category"] = "표시된 모든 인던이 해당 카테고리에만 속하는 경우 인던 이름을 표시합니다."
La["Show only current server"] = "현재 서버만 표시"
La["Show Random"] = "무작위 던전 표시"
La["Show random dungeon bonus reward"] = "무작위 던전의 보너스 보상을 보여줍니다."
La["Show self always"] = "자신은 항상 표시"
La["Show self first"] = "자신을 첫 번째로 표시"
La["Show server name"] = "서버이름 보이기"
La["Show the SavedInstances minimap button"] = "SavedInstances 미니맵 버튼을 표시합니다"
La["Show tooltip hints"] = "툴팁 도움말 표시"
La["Show When"] = "표시 시기"
La["Show when completed"] = "완료되면 표시"
La["Show when saved"] = "저장할 때 표시"
La["Show/Hide the SavedInstances tooltip"] = "SavedInstances 툴팁 보기/숨김"
La["SIEGE"] = "보랄러스"
La["Siege on Dragonbane Keep"] = "용의 파멸 성채 공성전"
La["Similarly, the words KILLED and TOTAL will be substituted with the number of bosses killed and total in the lockout."] = "마찬가지로, KILLED와 TOTAL의 단어가 귀속된 공격대의 '처치한 보스 숫자'와 '전체 보스'로 대체됩니다."
La["Single category name"] = "단일 카테고리 이름"
La["SOA"] = "승천"
La["Sort by currency name"] = "화폐 이름으로 정렬"
La["Sort by server"] = "서버 별 정렬"
La["Sort categories by"] = "카테고리 정렬"
La["Sort Order"] = "정렬 순서"
La["Sorting"] = "정렬"
La["SOTS"] = "폭사"
La["Space between categories"] = "카테고리 사이에 공백"
La["Sparks of Life"] = "생명의 불꽃"
La["STRT"] = "타자:경이"
La["TAV"] = "하늘빛"
La["TD"] = "톨다고르"
La["Text"] = "글자"
La["The Four Celestials"] = "네 천신"
La["The World Awaits"] = "세상이 기다린다"
La["These are the instances that count towards the %i instances per hour account limit, and the time until they expire."] = "계정당 1시간 내에 입장이 제한된 %i 개의 인스턴스에 포함된 인스턴스와 만료 될 때까지 남은 시간입니다"
La["This should only be used for characters who have been renamed or deleted, as characters will be re-populated when you log into them."] = "이름이 변경되거나 삭제된 캐릭터만 사용해야 하며 재로그인시 캐릭터의 정보가 다시 채워집니다."
La["Time /played"] = "플레이 시간 표시"
La["Time Left"] = "남은 시간"
La["Timeworn Mythic Keystone"] = "시간에 바랜 쐐기돌"
La["TJS"] = "옥룡사"
La["TNO"] = "노쿠드"
La["Tooltip Scale"] = "툴팁 크기"
La["TOP"] = "투기장"
La["Torghast"] = "토르가스트"
La["Tormentors of Torghast"] = "토르가스트의 고문관"
La["TOS"] = "세스.사원"
La["Track Mythic keystone acquisition"] = "쐐기돌 추적"
La["Track Mythic keystone best run"] = "쐐기 단수 기록"
La["Track Timeworn Mythic keystone acquisition"] = "시간에 바랜 쐐기돌 추적"
La["Trade Skill Cooldowns"] = "전문 기술 재사용 대기시간"
La["Trade skills"] = "전문 기술"
La["Transmute"] = "변환"
La["Trial of Elements"] = "정령의 시험"
La["Trial of Flood"] = "홍수의 시험"
La["Type"] = "유형"
La["UNDR"] = "썩굴"
La["UPPR"] = "카라잔:상층"
La["Use class color"] = "직업 색상 사용"
La["Vision Boss + 2 Bonus Objectives"] = "주 목표+추가 목표 2"
La["Vision Boss Only"] = "주 목표만 달성"
La["Voraazka"] = "보라즈카"
La["VOTW"] = "금고"
La["Warfronts"] = "격전지"
La["Warn about instance limit"] = "인스턴스 제한 경고"
La["Warning: You've entered about %i instances recently and are approaching the %i instance per hour limit for your account. More instances should be available in %s."] = "경고 : 최근 %i 개의 인스턴스에 입장하였고, 귀하의 계정에 대해 시간 당 제한된 %i 개의 인스턴스에 근접하고 있습니다. 더 많은 인스턴스는 %s 후에 이용가능합니다."
La["Water"] = "물"
La["Water Core"] = "물의 핵"
La["Weekly Quests"] = "주간 퀘스트"
La["Wild Transmute"] = "거친 변환"
La["WM"] = "웨이.저택"
La["WORK"] = "메카곤:작업장"
La["World Boss"] = "월드보스"
La["World Bosses"] = "야외 우두머리"
La["Wrath of the Jailer"] = "간수의 분노"
La["YARD"] = "메카곤:고철장"
La["You can combine icons and text in a single indicator if you wish. Simply choose an icon, and insert the word ICON into the text field. Anywhere the word ICON is found, the icon you chose will be substituted in."] = "원할 경우 단일 표시기에 아이콘과 문자를 조합하여 사용이 가능합니다. 단순히 아이콘을 선택하면 문자 영역에 문자열 아이콘을 삽입합니다. 어디에서든 문자열 아이콘을 찾을 수 있으며, 선택한 아이콘으로 대체됩니다."
La["Zurgaz Corebreaker"] = "주르가즈 코어브레이커"

elseif locale == "esMX" then
  --[[Translation missing --]]
La["|cffffff00Click|r to open weekly rewards"] = "|cffffff00Click|r to open weekly rewards"
La["|cffffff00Left-click|r to detach tooltip"] = "|cffffff00Click-Izquierdo|r para separar la descripción"
La["|cffffff00Middle-click|r to show Blizzard's Raid Information"] = "|cffffff00Click-Medio|r para mostrar Información de banda de Blizzard"
La["|cffffff00Right-click|r to configure SavedInstances"] = "|cffffff00Click-Derecho|r para configurar SavedInstances"
--[[Translation missing --]]
La["AA"] = "AA"
--[[Translation missing --]]
La["Abbreviate keystones"] = "Abbreviate keystones"
--[[Translation missing --]]
La["Abbreviate Mythic keystone dungeon names"] = "Abbreviate Mythic keystone dungeon names"
La["Account"] = "Cuenta"
La["Account Summary"] = "Resumen de Cuenta"
--[[Translation missing --]]
La["AD"] = "AD"
--[[Translation missing --]]
La["Aiding the Accord"] = "Aiding the Accord"
--[[Translation missing --]]
La["Air"] = "Air"
--[[Translation missing --]]
La["Air Core"] = "Air Core"
La["Always show"] = "Mostrar siempre"
--[[Translation missing --]]
La["Amathet Reliquary"] = "Amathet Reliquary"
--[[Translation missing --]]
La["Ambered Coffer"] = "Ambered Coffer"
--[[Translation missing --]]
La["ARC"] = "ARC"
La["Are you sure you want to remove %s from the SavedInstances character database?"] = "¿Está seguro de que desea remover %s de la base de datos de SavedInstances del personaje? "
--[[Translation missing --]]
La["Are you sure you want to report all your keys to %s?"] = "Are you sure you want to report all your keys to %s?"
La["Are you sure you want to reset the SavedInstances character database? Characters will be re-populated as you log into them."] = "¿Seguro que quieres reiniciar la base de datos de personajes de SavedInstances? Los personajes se registraran de nuevo cuando los conectes en el juego."
La["Attempt to recover completed daily quests for this character. Note this may recover some additional, linked daily quests that were not actually completed today."] = "Tratar a recuperar las misiones diarias ya completados hoy por este personaje. Cuenta que esto podría recuperar algunas otras misiones relacionadas que no fueron realmente completaron hoy."
La["Automatically shrink the tooltip to fit on the screen"] = "Comprimir automáticamente la ventana para que quepa en la pantalla."
--[[Translation missing --]]
La["Azuregos"] = "Azuregos"
La["Battleground Deserter"] = "Sigue la duración del perjuicio Desertor"
La["Bind a key to toggle the SavedInstances tooltip"] = "Asignar una tecla para mostrar/ocultar la descripción SavedInstances"
--[[Translation missing --]]
La["Bonus loot frame"] = "Bonus loot frame"
La["Bonus rolls"] = "Tiradas extras"
--[[Translation missing --]]
La[ [=[Boss kill information is missing for this lockout.
This is a Blizzard bug affecting certain old raids.]=] ] = [=[Boss kill information is missing for this lockout.
This is a Blizzard bug affecting certain old raids.]=]
--[[Translation missing --]]
La["Bouldron"] = "Bouldron"
--[[Translation missing --]]
La["BRH"] = "BRH"
--[[Translation missing --]]
La["Calling Missing"] = "Calling Missing"
La["Categories"] = "Categorías"
La["Characters"] = "Personajes"
--[[Translation missing --]]
La["COEN"] = "COEN"
La["Color currency by cap"] = "Colorea moneda por límite"
--[[Translation missing --]]
La["Combine Callings"] = "Combine Callings"
--[[Translation missing --]]
La["Combine Emissaries"] = "Combine Emissaries"
--[[Translation missing --]]
La["Combine emissaries of same expansion"] = "Combine emissaries of same expansion"
La["Combine LFR"] = "Combinar BDB"
La["Combine World Bosses"] = "Combinar Jefes del Mundo"
--[[Translation missing --]]
La["Community Feast"] = "Community Feast"
La["Connected Realms"] = "Reinos Conectados"
--[[Translation missing --]]
La["COS"] = "COS"
--[[Translation missing --]]
La["Covenant"] = "Covenant"
--[[Translation missing --]]
La["Covenant Assaults"] = "Covenant Assaults"
--[[Translation missing --]]
La["Crystalus"] = "Crystalus"
La["Currency settings"] = "Opciones de Monedas"
--[[Translation missing --]]
La["Cursed Coffer"] = "Cursed Coffer"
La["Daily Quests"] = "Misiones diarias"
--[[Translation missing --]]
La["Day"] = "Day"
--[[Translation missing --]]
La["Debug Mode"] = "Debug Mode"
--[[Translation missing --]]
La["DHT"] = "DHT"
La["Disable mouseover"] = "Deshabilitar tooltip"
La["Disable tooltip display on icon mouseover"] = "Deshabilita el marco al pasar el ratón sobre el ícono"
La["Display instances in order of recommended level from lowest to highest"] = "Mostrar instancias en orden de nivel recomendado de menor a mayor"
La["Display instances with space inserted between categories"] = "Mostrar instancias con espacio entre categorías"
--[[Translation missing --]]
La["Disturbed Dirt / Expedition Scout's Pack"] = "Disturbed Dirt / Expedition Scout's Pack"
--[[Translation missing --]]
La["Doomwalker"] = "Doomwalker"
--[[Translation missing --]]
La["DOS"] = "DOS"
--[[Translation missing --]]
La["Dragon of Nightmare"] = "Dragon of Nightmare"
--[[Translation missing --]]
La["Dragonflight Experimentation"] = "Dragonflight Experimentation"
--[[Translation missing --]]
La["Dragonflight Renown"] = "Dragonflight Renown"
--[[Translation missing --]]
La["Dragonflight Transmute"] = "Dragonflight Transmute"
La["Dump quest debugging information"] = "Deshacerse de la información de depuración de misiones"
La["Dump time debugging information"] = "Deshacerse de la información de depuración de tiempo"
--[[Translation missing --]]
La["Earth"] = "Earth"
--[[Translation missing --]]
La["Earth Core"] = "Earth Core"
--[[Translation missing --]]
La["Emblazion"] = "Emblazion"
--[[Translation missing --]]
La["Emissary Missing"] = "Emissary Missing"
--[[Translation missing --]]
La["Emissary of War"] = "Emissary of War"
--[[Translation missing --]]
La["Emissary Quests"] = "Emissary Quests"
--[[Translation missing --]]
La["Emissary quests"] = "Emissary quests"
--[[Translation missing --]]
La["EOA"] = "EOA"
La["Expansion"] = "Expansión"
La["Expired Lockout - Can be extended"] = "Registro expirado - puede extenderse"
--[[Translation missing --]]
La["Export"] = "Export"
La["Extended Lockout - Not yet saved"] = "Registro extendido - no se ha guardado"
La["Facets of Research"] = "Facetas de investigación"
--[[Translation missing --]]
La["FH"] = "FH"
--[[Translation missing --]]
La["Fire"] = "Fire"
--[[Translation missing --]]
La["Fire Core"] = "Fire Core"
La["Fit to screen"] = "Ajustar a Pantalla"
La["Flex"] = "Flexible"
La["Format large numbers"] = "Formatear números extensos"
--[[Translation missing --]]
La["Frozion"] = "Frozion"
--[[Translation missing --]]
La["Full Clear + 1 Mask"] = "Full Clear + 1 Mask"
--[[Translation missing --]]
La["Full Clear + 2 Masks"] = "Full Clear + 2 Masks"
--[[Translation missing --]]
La["Full Clear + 3 Masks"] = "Full Clear + 3 Masks"
--[[Translation missing --]]
La["Full Clear + 4 Masks"] = "Full Clear + 4 Masks"
--[[Translation missing --]]
La["Full Clear + 5 Masks"] = "Full Clear + 5 Masks"
--[[Translation missing --]]
La["Full Clear No Masks"] = "Full Clear No Masks"
--[[Translation missing --]]
La["Gaelzion"] = "Gaelzion"
--[[Translation missing --]]
La["GD"] = "GD"
La["General settings"] = "Opciones generales"
--[[Translation missing --]]
La["GMBT"] = "GMBT"
--[[Translation missing --]]
La["Grand Hunt"] = "Grand Hunt"
--[[Translation missing --]]
La["Grand Hunts: Mythic Reward"] = "Grand Hunts: Mythic Reward"
--[[Translation missing --]]
La["Grand Hunts: Rare Reward"] = "Grand Hunts: Rare Reward"
--[[Translation missing --]]
La["Grand Hunts: Uncommon Reward"] = "Grand Hunts: Uncommon Reward"
--[[Translation missing --]]
La["Gravlion"] = "Gravlion"
--[[Translation missing --]]
La["Grizzlerock"] = "Grizzlerock"
La["Group"] = "Grupo"
--[[Translation missing --]]
La["Guild"] = "Guild"
--[[Translation missing --]]
La["HOA"] = "HOA"
La["Hold Alt to show all data"] = "Pulse la tecla Alt para mostrar toda la información"
--[[Translation missing --]]
La["HOV"] = "HOV"
La["Hover mouse on indicator for details"] = "Coloca el cursor sobre el indicador para más detalles"
--[[Translation missing --]]
La["Hunt: Death Elementals"] = "Hunt: Death Elementals"
--[[Translation missing --]]
La["Hunt: Shadehounds"] = "Hunt: Shadehounds"
--[[Translation missing --]]
La["Hunt: Soul Eaters"] = "Hunt: Soul Eaters"
--[[Translation missing --]]
La["Hunt: Winged Soul Eaters"] = "Hunt: Winged Soul Eaters"
--[[Translation missing --]]
La["Iceblade Trio"] = "Iceblade Trio"
--[[Translation missing --]]
La["ID"] = "ID"
La["Ignore"] = "Ignorar"
La["Indicators"] = "Indicadores"
--[[Translation missing --]]
La["Infernum"] = "Infernum"
--[[Translation missing --]]
La["Infested Strongbox"] = "Infested Strongbox"
--[[Translation missing --]]
La["Instance limit in Broker"] = "Instance limit in Broker"
La["Instances"] = "Instancias"
La["Interleave"] = "Entrelazado"
--[[Translation missing --]]
La["Kain Firebrand"] = "Kain Firebrand"
--[[Translation missing --]]
La["Karantun"] = "Karantun"
--[[Translation missing --]]
La["Keystone report target"] = "Keystone report target"
--[[Translation missing --]]
La["KR"] = "KR"
La["Last updated"] = "Última Actualización"
La["Legion Transmute"] = "Transmutación de Legión"
--[[Translation missing --]]
La["Lesser Visions of N'Zoth"] = "Lesser Visions of N'Zoth"
La["Level %d Characters"] = "Leveleá %d Personajes"
La["LFG cooldown"] = "Seguir el cooldown de LFG"
La["LFR"] = "BdB"
La["List categories from the current expansion pack first"] = "Mostrar primero las categorías de la expansión actual"
La["List raid categories before dungeon categories"] = "Mostrar categorías de bandas antes que categorías de mazmorras"
--[[Translation missing --]]
La["Lord Kazzak"] = "Lord Kazzak"
--[[Translation missing --]]
La["LOWR"] = "LOWR"
La["Manage"] = "gestionar"
--[[Translation missing --]]
La["Mechanized Chest"] = "Mechanized Chest"
La["Miscellaneous Tracking"] = "Seguimiento Misceláneo"
--[[Translation missing --]]
La["MISTS"] = "MISTS"
--[[Translation missing --]]
La["ML"] = "ML"
--[[Translation missing --]]
La["Mogu Strongbox"] = "Mogu Strongbox"
--[[Translation missing --]]
La["MOS"] = "MOS"
La["Most recent first"] = "Más reciente primero"
--[[Translation missing --]]
La["Mythic Best"] = "Mythic Best"
--[[Translation missing --]]
La["Mythic Key Best"] = "Mythic Key Best"
--[[Translation missing --]]
La["Mythic Keystone"] = "Mythic Keystone"
--[[Translation missing --]]
La["Nathanos Blightcaller"] = "Nathanos Blightcaller"
--[[Translation missing --]]
La["Neela Firebane"] = "Neela Firebane"
La["Never show"] = "Nunca mostrar"
--[[Translation missing --]]
La["NL"] = "NL"
--[[Translation missing --]]
La["NW"] = "NW"
La["Opacity of the tooltip row highlighting"] = "Opacidad de la resalta de filas en la descripción"
La["Open config"] = "Abrir los opciones"
--[[Translation missing --]]
La["Order must be a number in [0 - 999]"] = "Order must be a number in [0 - 999]"
--[[Translation missing --]]
La["Paragon Chests"] = "Paragon Chests"
--[[Translation missing --]]
La["Party"] = "Party"
--[[Translation missing --]]
La["Patterns Within Patterns"] = "Patterns Within Patterns"
--[[Translation missing --]]
La["PF"] = "PF"
--[[Translation missing --]]
La["Pipspark Thundersnap"] = "Pipspark Thundersnap"
--[[Translation missing --]]
La["Primal Storms Core"] = "Primal Storms Core"
--[[Translation missing --]]
La["Primal Storms Elementals"] = "Primal Storms Elementals"
--[[Translation missing --]]
La["Quest progresses"] = "Quest progresses"
La["Raids before dungeons"] = "Bandas antes que mazmorras"
La["Recent Bonus Rolls"] = "Tiradas Extra Recientes"
La["Recent Instances"] = "Instancias recientes"
La["Recover Dailies"] = "Recuperar diarias"
La["Report instance resets to group"] = "Informar de reinicializaciones de instancias al grupo"
La["Reset Characters"] = "Reinicializar personajes"
La["Reverse ordering"] = "Invertir orden"
--[[Translation missing --]]
La["RLP"] = "RLP"
La["Roll Bonus"] = "Bonos de tirada"
--[[Translation missing --]]
La["Rouen Icewind"] = "Rouen Icewind"
La["Row Highlight"] = "Resalta de fila"
--[[Translation missing --]]
La["SBG"] = "SBG"
--[[Translation missing --]]
La["SD"] = "SD"
--[[Translation missing --]]
La["SEAT"] = "SEAT"
La["Set All"] = "Ajustar todos"
--[[Translation missing --]]
La["Show all emissary names"] = "Show all emissary names"
--[[Translation missing --]]
La["Show both factions' emissay name"] = "Show both factions' emissay name"
--[[Translation missing --]]
La["Show calling line when all quests completed"] = "Show calling line when all quests completed"
La["Show category names"] = "Mostrar nombres de categorías"
La["Show category names in the tooltip"] = "Mostrar los nombres de categorías en la descripción"
La["Show cooldown for characters to use battleground system"] = "Muestra el cooldown de personajes para entrar en un campo de batalla."
La["Show cooldown for characters to use LFG dungeon system"] = "Muestra el cooldown de personajes para utilizar el sistema BdG."
--[[Translation missing --]]
La["Show currency earned"] = "Show currency earned"
--[[Translation missing --]]
La["Show currency max"] = "Show currency max"
--[[Translation missing --]]
La["Show emissary line when all quests completed"] = "Show emissary line when all quests completed"
La["Show Expired"] = "Muestra expirados"
La["Show expired instance lockouts"] = "Registros expirados de instanias"
La["Show Holiday"] = "Mostrar fiestas"
La["Show holiday boss rewards"] = "Mostrar las recompensas de los jefes festivos"
La["Show minimap button"] = "Mostrar botón del minimapa"
La["Show name for a category when all displayed instances belong only to that category"] = "Muestra el nombre de la categoría cuando todas las instancias que se muestran son de la misma categoría"
La["Show only current server"] = "Mostrar sólo el reino actual"
La["Show Random"] = "Mostrar aleatoria"
La["Show random dungeon bonus reward"] = "Mostrar recompensa de mazmorra aleatoria"
La["Show self always"] = "Siempre mostrar sí mismo"
La["Show self first"] = "Mostrar sí mismo primero"
--[[Translation missing --]]
La["Show server name"] = "Show server name"
La["Show the SavedInstances minimap button"] = "Mostrar el botón del minimapa de SavedInstances"
La["Show tooltip hints"] = "Mostrar consejos en descripciones"
La["Show When"] = "Mostrar cuando"
--[[Translation missing --]]
La["Show when completed"] = "Show when completed"
La["Show when saved"] = "Mostrar cuando guardado"
La["Show/Hide the SavedInstances tooltip"] = "Mostrar/ocultar la descripción"
--[[Translation missing --]]
La["SIEGE"] = "SIEGE"
--[[Translation missing --]]
La["Siege on Dragonbane Keep"] = "Siege on Dragonbane Keep"
La["Similarly, the words KILLED and TOTAL will be substituted with the number of bosses killed and total in the lockout."] = "Las palabras \"KILLED\" y \"TOTAL\" se reemplazará por el número de jefes derrotados, y el número total de jefes de la instancia, respectivamente."
La["Single category name"] = "Nombre de la categoría individual"
--[[Translation missing --]]
La["SOA"] = "SOA"
--[[Translation missing --]]
La["Sort by currency name"] = "Sort by currency name"
La["Sort by server"] = "Ordenar por reino"
La["Sort categories by"] = "Ordenar categorías por"
La["Sort Order"] = "Establecer Orden"
--[[Translation missing --]]
La["Sorting"] = "Sorting"
--[[Translation missing --]]
La["SOTS"] = "SOTS"
La["Space between categories"] = "Espacio entre categorías"
--[[Translation missing --]]
La["Sparks of Life"] = "Sparks of Life"
--[[Translation missing --]]
La["STRT"] = "STRT"
--[[Translation missing --]]
La["TAV"] = "TAV"
--[[Translation missing --]]
La["TD"] = "TD"
La["Text"] = "Texto"
La["The Four Celestials"] = "Los Cuatro Celestiales"
--[[Translation missing --]]
La["The World Awaits"] = "The World Awaits"
La["These are the instances that count towards the %i instances per hour account limit, and the time until they expire."] = "Estas instancias cuentan para el límite de %i por hora por cuenta, y expirará a la hora indicada."
La["This should only be used for characters who have been renamed or deleted, as characters will be re-populated when you log into them."] = "Esto sólo debe ser usado para personajes que han sido renombrados o borrados, ya que los personajes serán cargados de nuevo cuando te conectes con ellos."
La["Time /played"] = "Tiempo /jugado"
La["Time Left"] = "Tiempo Restante"
--[[Translation missing --]]
La["Timeworn Mythic Keystone"] = "Timeworn Mythic Keystone"
--[[Translation missing --]]
La["TJS"] = "TJS"
--[[Translation missing --]]
La["TNO"] = "TNO"
La["Tooltip Scale"] = "Tamaño de Marco"
--[[Translation missing --]]
La["TOP"] = "TOP"
--[[Translation missing --]]
La["Torghast"] = "Torghast"
--[[Translation missing --]]
La["Tormentors of Torghast"] = "Tormentors of Torghast"
--[[Translation missing --]]
La["TOS"] = "TOS"
--[[Translation missing --]]
La["Track Mythic keystone acquisition"] = "Track Mythic keystone acquisition"
--[[Translation missing --]]
La["Track Mythic keystone best run"] = "Track Mythic keystone best run"
--[[Translation missing --]]
La["Track Timeworn Mythic keystone acquisition"] = "Track Timeworn Mythic keystone acquisition"
La["Trade Skill Cooldowns"] = "Cooldowns de profesiones"
La["Trade skills"] = "Seguir cooldowns de profesiones"
La["Transmute"] = "Transmutar"
--[[Translation missing --]]
La["Trial of Elements"] = "Trial of Elements"
--[[Translation missing --]]
La["Trial of Flood"] = "Trial of Flood"
La["Type"] = "Tipo"
--[[Translation missing --]]
La["UNDR"] = "UNDR"
--[[Translation missing --]]
La["UPPR"] = "UPPR"
La["Use class color"] = "Usar color de clase"
--[[Translation missing --]]
La["Vision Boss + 2 Bonus Objectives"] = "Vision Boss + 2 Bonus Objectives"
--[[Translation missing --]]
La["Vision Boss Only"] = "Vision Boss Only"
--[[Translation missing --]]
La["Voraazka"] = "Voraazka"
--[[Translation missing --]]
La["VOTW"] = "VOTW"
--[[Translation missing --]]
La["Warfronts"] = "Warfronts"
--[[Translation missing --]]
La["Warn about instance limit"] = "Warn about instance limit"
La["Warning: You've entered about %i instances recently and are approaching the %i instance per hour limit for your account. More instances should be available in %s."] = "Advertencia: Has entrado en %i instancias recientemente, y estás acercando al límite de %i instancias por hora para tu cuenta. Más instancias estarán disponibles después de %s."
--[[Translation missing --]]
La["Water"] = "Water"
--[[Translation missing --]]
La["Water Core"] = "Water Core"
La["Weekly Quests"] = "Misiones semanales"
La["Wild Transmute"] = "Transmutación Salvaje"
--[[Translation missing --]]
La["WM"] = "WM"
--[[Translation missing --]]
La["WORK"] = "WORK"
La["World Boss"] = "Jefe del mundo"
La["World Bosses"] = "Jefes de Mundo"
--[[Translation missing --]]
La["Wrath of the Jailer"] = "Wrath of the Jailer"
--[[Translation missing --]]
La["YARD"] = "YARD"
La["You can combine icons and text in a single indicator if you wish. Simply choose an icon, and insert the word ICON into the text field. Anywhere the word ICON is found, the icon you chose will be substituted in."] = "Puedes unirse a los iconos y texto en un solo indicador. Seleccione un icono y escribe \"ICON\" en el cuadro de texto para indicar dónde deseas que aparezca el icono."
--[[Translation missing --]]
La["Zurgaz Corebreaker"] = "Zurgaz Corebreaker"

elseif locale == "ruRU" then
  La["|cffffff00Click|r to open weekly rewards"] = "|cffffff00ЛКМ|r, чтобы открыть еженедельные награды"
La["|cffffff00Left-click|r to detach tooltip"] = "|cffffff00ЛКМ|r, чтобы показать информацию в отдельном окне"
La["|cffffff00Middle-click|r to show Blizzard's Raid Information"] = "Нажмите на колёсико мышки, чтобы показать информацию о рейдах от Blizzard"
La["|cffffff00Right-click|r to configure SavedInstances"] = "|cffffff00ПКМ|r, чтобы настроить SavedInstances"
La["AA"] = "АА"
La["Abbreviate keystones"] = "Сокращение названия ключей"
La["Abbreviate Mythic keystone dungeon names"] = "Сократить названия эпохальных подземелий"
La["Account"] = "Аккаунт"
La["Account Summary"] = "Общая сводка по аккаунту"
La["AD"] = "АТАЛ"
La["Aiding the Accord"] = "Помощь союзу"
La["Air"] = "Воздух"
La["Air Core"] = "Воздушное ядро"
La["Always show"] = "Всегда отображать"
La["Amathet Reliquary"] = "Реликварий аматетов"
La["Ambered Coffer"] = "Покрытый янтарем сундук"
La["ARC"] = "КС"
La["Are you sure you want to remove %s from the SavedInstances character database?"] = "Вы уверены, что хотите удалить %s из базы данных персонажей SavedInstances?"
La["Are you sure you want to report all your keys to %s?"] = "Вы уверены, что хотите сообщить обо всех своих ключах %s?"
La["Are you sure you want to reset the SavedInstances character database? Characters will be re-populated as you log into them."] = "Вы уверены, что хотите сбросить базу данных персонажей SavedInstances? Персонажи будут повторно заполнены, как только Вы зайдёте ими в игру."
La["Attempt to recover completed daily quests for this character. Note this may recover some additional, linked daily quests that were not actually completed today."] = "Попытка восстановить завершённые ежедневные задания для этого персонажа. Обратите внимание, что это может восстановить некоторые дополнительные, связанные ежедневные задания, которые не были фактически сегодня завершены."
La["Automatically shrink the tooltip to fit on the screen"] = "Автоматически уменьшать размер подсказки, чтобы вместить на экран"
La["Azuregos"] = "Азурегос"
La["Battleground Deserter"] = "Дезертир с Поля Боя"
La["Bind a key to toggle the SavedInstances tooltip"] = "Клавиша для вкл./выкл. подсказок SavedInstances"
La["Bonus loot frame"] = "Окно дополнительной добычи"
La["Bonus rolls"] = "Отслеживать бонусные броски"
La[ [=[Boss kill information is missing for this lockout.
This is a Blizzard bug affecting certain old raids.]=] ] = [=[Отсутствует информация об убийстве босса для этого сохранения рейда.
Это является ошибкой компании Blizzard, затрагивающей некоторые старые рейды.]=]
La["Bouldron"] = "Валурон"
La["BRH"] = "КЧЛ"
La["Calling Missing"] = "Призыв отсутствует"
La["Categories"] = "Категории"
La["Characters"] = "Персонажи"
La["COEN"] = "СОБОР"
La["Color currency by cap"] = "Расцвечивать валюту в зависимости от достижения максимума"
La["Combine Callings"] = "Совмещать призывы"
La["Combine Emissaries"] = "Объединить эмиссаров"
La["Combine emissaries of same expansion"] = "Объединить эмиссаров одного и того же дополнения"
La["Combine LFR"] = "Объединять СПР (LFR)"
La["Combine World Bosses"] = "Объединять мировых босcов"
La["Community Feast"] = "Большое пиршество"
La["Connected Realms"] = "Соединенные сервера"
La["COS"] = "КЗ"
La["Covenant"] = "Ковенант"
La["Covenant Assaults"] = "Атаки ковенантов"
La["Crystalus"] = "Кристалий"
La["Currency settings"] = "Настройки валюты"
La["Cursed Coffer"] = "Проклятый сундук"
La["Daily Quests"] = "Ежедневные задания"
La["Day"] = "День"
La["Debug Mode"] = "Режим отладки"
La["DHT"] = "ЧАЩА"
La["Disable mouseover"] = "Откл. отобр. по наведению"
La["Disable tooltip display on icon mouseover"] = "Отключить отображение подсказки по наведению на иконку"
La["Display instances in order of recommended level from lowest to highest"] = "Отображать подземелья в порядке рекомендуемого уровня от самого низкого до самого высокого"
La["Display instances with space inserted between categories"] = "Показывать подземелья с промежутком между категориями"
La["Disturbed Dirt / Expedition Scout's Pack"] = "Потревоженная почва / Сумка разведчика экспедиции"
La["Doomwalker"] = "Судьболом"
La["DOS"] = "ТС"
La["Dragon of Nightmare"] = "Драконы Кошмара"
La["Dragonflight Experimentation"] = "Эксперименты Драконьих островов"
La["Dragonflight Renown"] = "Известность Драконьих островов"
La["Dragonflight Transmute"] = "Трансмутация Драконьих островов"
La["Dump quest debugging information"] = "Сохранить отладочную информацию квеста в файле"
La["Dump time debugging information"] = "Вывести информацию о времени для отладки"
La["Earth"] = "Земля"
La["Earth Core"] = "Земляное ядро"
La["Emblazion"] = "Пламенион"
La["Emissary Missing"] = "Посланники отсутствуют"
La["Emissary of War"] = "Посланник войны"
La["Emissary Quests"] = "Задания Посланников"
La["Emissary quests"] = "Задания Посланников"
La["EOA"] = "ОКО"
La["Expansion"] = "Сохранение подземелий"
La["Expired Lockout - Can be extended"] = "Сохранение с истекшим сроком - можно продлить"
La["Export"] = "Экспорт"
La["Extended Lockout - Not yet saved"] = "Продление сохранения - ещё не сохранено"
La["Facets of Research"] = "Грань исследования (ювелирное дело)"
La["FH"] = "ГАВАНЬ"
La["Fire"] = "Огонь"
La["Fire Core"] = "Огненное ядро"
La["Fit to screen"] = "Подогнать под размер экрана"
La["Flex"] = "Гибкий"
La["Format large numbers"] = "Формат больших чисел"
La["Frozion"] = "Ледозион"
La["Full Clear + 1 Mask"] = "Полный проход + 1 Маска"
La["Full Clear + 2 Masks"] = "Полный проход + 2 Маски"
La["Full Clear + 3 Masks"] = "Полный проход + 3 Маски"
La["Full Clear + 4 Masks"] = "Полный проход + 4 Маски"
La["Full Clear + 5 Masks"] = "Полный проход + 5 Масок"
La["Full Clear No Masks"] = "Полный проход без масок"
La["Gaelzion"] = "Шторморон"
La["GD"] = "ДЕПО"
La["General settings"] = "Общие настройки"
La["GMBT"] = "ГАМБИТ"
La["Grand Hunt"] = "Великая охота"
La["Grand Hunts: Mythic Reward"] = "Великая охота: эпохальная награда"
La["Grand Hunts: Rare Reward"] = "Великая охота: редкая награда"
La["Grand Hunts: Uncommon Reward"] = "Великая охота: необычная награда"
La["Gravlion"] = "Гравлион"
La["Grizzlerock"] = "Седокамень"
La["Group"] = "Группировать"
La["Guild"] = "Гильдия"
La["HOA"] = "ЧП"
La["Hold Alt to show all data"] = "Удерживайте Alt для просмотра всей информации"
La["HOV"] = "ЧД"
La["Hover mouse on indicator for details"] = "Наведите мышкой на индикатор для детальной информации"
La["Hunt: Death Elementals"] = "Охота: элементали смерти"
La["Hunt: Shadehounds"] = "Охота: Темные Гончие"
La["Hunt: Soul Eaters"] = "Охота: Пожиратели Душ"
La["Hunt: Winged Soul Eaters"] = "Охота: Крылатые пожиратели душ"
La["Iceblade Trio"] = "Трио ледяных клинков"
La["ID"] = "ДОКИ"
La["Ignore"] = "Игнорировать"
La["Indicators"] = "Индикаторы"
La["Infernum"] = "Инферн"
La["Infested Strongbox"] = "Зараженный сундучок"
La["Instance limit in Broker"] = "Предел подземелий на Расколотых Островах"
La["Instances"] = "Подземелья"
La["Interleave"] = "Смешивать в пределах соединенного сервера"
La["Kain Firebrand"] = "Кайн Жгучее Клеймо"
La["Karantun"] = "Карантун"
La["Keystone report target"] = "Цель отчета по ключам"
La["KR"] = "ГК"
La["Last updated"] = "Последнее обновление"
La["Legion Transmute"] = "Трансмутация Легиона"
La["Lesser Visions of N'Zoth"] = "Малое Видение Н'Зота"
La["Level %d Characters"] = "Персонажи уровня %d"
La["LFG cooldown"] = "Отслеживать время задержки Поиска группы для подземелий"
La["LFR"] = "СПР (LFR)"
La["List categories from the current expansion pack first"] = "Сортировать список категорий по сохраненным подземельям"
La["List raid categories before dungeon categories"] = "Список категорий рейда до категорий подземелий"
La["Lord Kazzak"] = "Владыка Каззак"
La["LOWR"] = "НИЗ"
La["Manage"] = "Управление"
La["Mechanized Chest"] = "Механизированный сундук"
La["Miscellaneous Tracking"] = "Разнообразное отслеживание"
La["MISTS"] = "ТТС"
La["ML"] = "ЖИЛА"
La["Mogu Strongbox"] = "Сундучок могу"
La["MOS"] = "УТРОБА"
La["Most recent first"] = "Сначала новые"
La["Mythic Best"] = "Лучший Эпохальный"
La["Mythic Key Best"] = "Лучший эпохальный ключ"
La["Mythic Keystone"] = "Эпохальный ключ"
La["Nathanos Blightcaller"] = "Натанос Гнилостень"
La["Neela Firebane"] = "Нила Гнев Пламени"
La["Never show"] = "Никогда не отображать"
La["NL"] = "ЛН"
La["NW"] = "СТ"
La["Opacity of the tooltip row highlighting"] = "Прозрачность подсказки подсвеченной строки"
La["Open config"] = "Открыть настройки"
La["Order must be a number in [0 - 999]"] = "Заказ должен быть числом в диапазоне [0 - 999]"
La["Paragon Chests"] = "Сундуки за Репутацию"
La["Party"] = "Группа"
La["Patterns Within Patterns"] = "Закономерности в закономерностях"
La["PF"] = "ЧК"
La["Pipspark Thundersnap"] = "Искрописк Громошлепс"
--[[Translation missing --]]
La["Primal Storms Core"] = "Primal Storms Core"
--[[Translation missing --]]
La["Primal Storms Elementals"] = "Primal Storms Elementals"
La["Quest progresses"] = "Прогресс квеста"
La["Raids before dungeons"] = "Рейды перед подземельями"
La["Recent Bonus Rolls"] = "Недавние бонусные броски"
La["Recent Instances"] = "Недавние подземелья"
La["Recover Dailies"] = "Восстановление Ежедневных заданий"
La["Report instance resets to group"] = "Сообщать группе об обновлении подземелья"
La["Reset Characters"] = "Сброс персонажей"
La["Reverse ordering"] = "Обратный порядок"
La["RLP"] = "РОЖ"
La["Roll Bonus"] = "Бонусный бросок"
La["Rouen Icewind"] = "Руан Ледяной Ветер"
La["Row Highlight"] = "Подсветка строки"
La["SBG"] = "НпЛ"
La["SD"] = "КК"
La["SEAT"] = "ПТ"
La["Set All"] = "Установить значение для всех"
La["Show all emissary names"] = "Показать все имена эмиссаров"
La["Show both factions' emissay name"] = "Показать название эмиссаров обеих фракций"
La["Show calling line when all quests completed"] = "Показывать строку завершенного призыва"
La["Show category names"] = "Показывать названия категорий"
La["Show category names in the tooltip"] = "Отображать названия категорий в подсказках"
La["Show cooldown for characters to use battleground system"] = "Показывать время задержки системы Полей битв"
La["Show cooldown for characters to use LFG dungeon system"] = "Показывать время задержки системы Поиска группы для подземелий"
La["Show currency earned"] = "Показывать полученную валюту"
La["Show currency max"] = "Показать максимальную валюту"
La["Show emissary line when all quests completed"] = "Показать линию эмиссара, когда все задания завершены"
La["Show Expired"] = "Показывать истекшие"
La["Show expired instance lockouts"] = "Показывать истекшие сохранённые подземелья"
La["Show Holiday"] = "Показывать События"
La["Show holiday boss rewards"] = "Показывать награду с праздничных боссов"
La["Show minimap button"] = "Показать кнопку миникарты"
La["Show name for a category when all displayed instances belong only to that category"] = "Показать имя для категории для всех отображаемых подземелий, принадлежащих только этой категории"
La["Show only current server"] = "Показывать только текущий сервер"
La["Show Random"] = "Показывать случайный выбор"
La["Show random dungeon bonus reward"] = "Показывать бонусную награду за случайное подземелье"
La["Show self always"] = "Показывать себя всегда"
La["Show self first"] = "Вначале показывать себя"
La["Show server name"] = "Показать название сервера"
La["Show the SavedInstances minimap button"] = "Отображать кнопку SavedInstances у миникарты"
La["Show tooltip hints"] = "Показывать подсказки"
La["Show When"] = "Показывать, если"
La["Show when completed"] = "Показать, когда завершено"
La["Show when saved"] = "Отображать при сохранении"
La["Show/Hide the SavedInstances tooltip"] = "Показать/спрятать подсказку SavedInstances"
La["SIEGE"] = "ОСАДА"
La["Siege on Dragonbane Keep"] = "Осада Драконьей Погибели"
La["Similarly, the words KILLED and TOTAL will be substituted with the number of bosses killed and total in the lockout."] = "Аналогично, слова KILLED и TOTAL будут заменены числом убитых и всего боссов в сохранении."
La["Single category name"] = "Одиночное название категории"
La["SOA"] = "ШП"
La["Sort by currency name"] = "Сортировка по названию валюты"
La["Sort by server"] = "Сорт. по серверам"
La["Sort categories by"] = "Сорт. категории по"
La["Sort Order"] = "Порядок сортировки"
La["Sorting"] = "Сортировка"
La["SOTS"] = "СШ"
La["Space between categories"] = "Промежуток между категориями"
La["Sparks of Life"] = "Искры жизни"
La["STRT"] = "УЛИЦЫ"
La["TAV"] = "ЛХ"
La["TD"] = "ТД"
La["Text"] = "Текст"
La["The Four Celestials"] = "Четыре небожителя"
La["The World Awaits"] = "Мир ждет"
La["These are the instances that count towards the %i instances per hour account limit, and the time until they expire."] = "Это те подземелья, на которые существуют ограничения в %i подземелий в час."
La["This should only be used for characters who have been renamed or deleted, as characters will be re-populated when you log into them."] = "Используйте только для переименованных или удаленных персонажей, так как данные все равно будут заполнены заново при входе на персонажа."
La["Time /played"] = "Общее время игры"
La["Time Left"] = "Обновится через"
La["Timeworn Mythic Keystone"] = "Старый ключ"
La["TJS"] = "ХНЗ"
La["TNO"] = "НкН"
La["Tooltip Scale"] = "Масштаб подсказки"
La["TOP"] = "Театр"
La["Torghast"] = "Торгаст"
La["Tormentors of Torghast"] = "Мучители из Торгаста"
La["TOS"] = "ХС"
La["Track Mythic keystone acquisition"] = "Отслеживать полученные эпохальные ключи"
La["Track Mythic keystone best run"] = "Отслеживать лучший заход на эпохальный ключ"
La["Track Timeworn Mythic keystone acquisition"] = "Отслеживать полученные старые ключи"
La["Trade Skill Cooldowns"] = "Восстановление способностей профессий."
La["Trade skills"] = "Отслеживать восстановление способностей профессий"
La["Transmute"] = "Трансмутация (алхимия)"
La["Trial of Elements"] = "Испытание стихий"
La["Trial of Flood"] = "Испытание наводнения"
La["Type"] = "Тип"
La["UNDR"] = "ПОДГН"
La["UPPR"] = "ВЕРХ"
La["Use class color"] = "Цвет класса"
La["Vision Boss + 2 Bonus Objectives"] = "Босс Видения + 2 Бонусных цели"
La["Vision Boss Only"] = "Только Босс Видения"
La["Voraazka"] = "Вораазка"
La["VOTW"] = "КС"
La["Warfronts"] = "Фронты"
La["Warn about instance limit"] = "Предупреждать о пределе подземелий"
La["Warning: You've entered about %i instances recently and are approaching the %i instance per hour limit for your account. More instances should be available in %s."] = "Внимание! За последнее время Вы вошли в %i подземелий и приближаетесь к ограничению в \"%i подземелий в час\" для Вашего аккаунта. Новые подземелья будут доступны через %s."
La["Water"] = "Вода"
La["Water Core"] = "Водяное ядро"
La["Weekly Quests"] = "Еженедельные задания"
La["Wild Transmute"] = "Дикая трансмутация"
La["WM"] = "УУ"
La["WORK"] = "МАСТЕР"
La["World Boss"] = "Мировой босс"
La["World Bosses"] = "Мировые боcсы"
La["Wrath of the Jailer"] = "Гнев Тюремщика"
La["YARD"] = "СВАЛКА"
La["You can combine icons and text in a single indicator if you wish. Simply choose an icon, and insert the word ICON into the text field. Anywhere the word ICON is found, the icon you chose will be substituted in."] = "Вы можете комбинировать иконки и текст в одном индикаторе. Выберите иконку и вставьте слово ICON в текстовое поле. Слово ICON будет автоматически заменено на выбранную иконку."
La["Zurgaz Corebreaker"] = "Зургаз Разрушительница Недр"

elseif locale == "zhCN" then
  La["|cffffff00Click|r to open weekly rewards"] = "|cffffff00点击|r 显示每周奖励"
La["|cffffff00Left-click|r to detach tooltip"] = "|cffffff00左键点击|r 显示独立窗口"
La["|cffffff00Middle-click|r to show Blizzard's Raid Information"] = "|cffffff00中键点击|r 显示游戏内建的团队信息"
La["|cffffff00Right-click|r to configure SavedInstances"] = "|cffffff00右键点击|r 设置SavedInstances"
La["AA"] = "学院"
La["Abbreviate keystones"] = "史诗钥石简称"
La["Abbreviate Mythic keystone dungeon names"] = "显示史诗钥石的简称"
La["Account"] = "账号"
La["Account Summary"] = "账号总览"
La["AD"] = "阿塔"
La["Aiding the Accord"] = "援助联军"
La["Air"] = "空气"
La["Air Core"] = "原始空气核心"
La["Always show"] = "总是显示"
La["Amathet Reliquary"] = "阿玛赛特圣箱"
La["Ambered Coffer"] = "琥珀制成的箱子"
La["ARC"] = "回廊"
La["Are you sure you want to remove %s from the SavedInstances character database?"] = "你确实想要从人物数据库中移除 %s 吗？"
La["Are you sure you want to report all your keys to %s?"] = "确认向%s报告你的所有史诗钥石？"
La["Are you sure you want to reset the SavedInstances character database? Characters will be re-populated as you log into them."] = "你确定要重置SavedInstances的角色数据库吗？被删除的角色在再次登录时会被重新添加。"
La["Attempt to recover completed daily quests for this character. Note this may recover some additional, linked daily quests that were not actually completed today."] = "尝试提取当前角色已完成的日常任务。注意，这可能会提取到实际上并没有完成的日常任务。"
La["Automatically shrink the tooltip to fit on the screen"] = "根据屏幕大小缩放界面"
La["Azuregos"] = "艾索雷苟斯"
La["Battleground Deserter"] = "追踪战场逃亡者冷却"
La["Bind a key to toggle the SavedInstances tooltip"] = "为显示/隐藏SavedInstances界面绑定一个按键"
La["Bonus loot frame"] = "额外拾取提示框架"
La["Bonus rolls"] = "额外拾取情况"
La[ [=[Boss kill information is missing for this lockout.
This is a Blizzard bug affecting certain old raids.]=] ] = [=[首领击杀信息遗失
这是一个会影响特定旧副本的暴雪BUG]=]
La["Bouldron"] = "波德隆"
La["BRH"] = "黑鸦"
La["Calling Missing"] = "使命任务缺失"
La["Categories"] = "分类"
La["Characters"] = "角色"
La["COEN"] = "大教堂"
La["Color currency by cap"] = "根据上限显示颜色"
La["Combine Callings"] = "合并使命任务"
La["Combine Emissaries"] = "合并大使任务"
La["Combine emissaries of same expansion"] = "合并同一个资料片的大使任务"
La["Combine LFR"] = "合并显示随机团本"
La["Combine World Bosses"] = "合并世界首领"
La["Community Feast"] = "社区盛宴"
La["Connected Realms"] = "已合并服务器"
La["COS"] = "群星"
La["Covenant"] = "盟约"
La["Covenant Assaults"] = "盟约突袭"
La["Crystalus"] = "克里斯塔路斯"
La["Currency settings"] = "货币设置"
La["Cursed Coffer"] = "被诅咒的箱子"
La["Daily Quests"] = "日常任务"
La["Day"] = "天"
La["Debug Mode"] = "调试模式"
La["DHT"] = "黑心"
La["Disable mouseover"] = "禁用鼠标提示"
La["Disable tooltip display on icon mouseover"] = "禁止当鼠标移动到插件图标上时显示提示信息"
La["Display instances in order of recommended level from lowest to highest"] = "依照建议的等级从低到高显示副本"
La["Display instances with space inserted between categories"] = "在分类之间显示间距"
La["Disturbed Dirt / Expedition Scout's Pack"] = "翻动过的泥土 / 探险队斥候的背包"
La["Doomwalker"] = "末日行者"
La["DOS"] = "彼界"
La["Dragon of Nightmare"] = "梦魇之龙"
La["Dragonflight Experimentation"] = "巨龙实验"
La["Dragonflight Renown"] = "巨龙时代名望"
La["Dragonflight Transmute"] = "巨龙转化"
La["Dump quest debugging information"] = "打印任务调试信息"
La["Dump time debugging information"] = "打印时间调试信息"
La["Earth"] = "大地"
La["Earth Core"] = "原始大地核心"
La["Emblazion"] = "恩布拉基昂"
La["Emissary Missing"] = "大使任务缺失"
La["Emissary of War"] = "战争的使者"
La["Emissary Quests"] = "大使任务"
La["Emissary quests"] = "大使任务"
La["EOA"] = "艾萨拉"
La["Expansion"] = "资料片"
La["Expired Lockout - Can be extended"] = "到期锁定 - 可以延长"
La["Export"] = "导出"
La["Extended Lockout - Not yet saved"] = "已延长锁定 - 还未被储存"
La["Facets of Research"] = "探索棱镜"
La["FH"] = "自由镇"
La["Fire"] = "火焰"
La["Fire Core"] = "原始火焰核心"
La["Fit to screen"] = "适应屏幕大小"
La["Flex"] = "弹性"
La["Format large numbers"] = "格式化大数字"
La["Frozion"] = "弗洛基昂"
La["Full Clear + 1 Mask"] = "五箱一面具"
La["Full Clear + 2 Masks"] = "五箱二面具"
La["Full Clear + 3 Masks"] = "五箱三面具"
La["Full Clear + 4 Masks"] = "五箱四面具"
La["Full Clear + 5 Masks"] = "五箱五面具"
La["Full Clear No Masks"] = "五箱"
La["Gaelzion"] = "盖尔基昂"
La["GD"] = "车站"
La["General settings"] = "综合"
La["GMBT"] = "宏图"
La["Grand Hunt"] = "洪荒狩猎"
La["Grand Hunts: Mythic Reward"] = "洪荒狩猎：史诗奖励"
La["Grand Hunts: Rare Reward"] = "洪荒狩猎：精良奖励"
La["Grand Hunts: Uncommon Reward"] = "洪荒狩猎：优秀奖励"
La["Gravlion"] = "格拉弗里昂"
La["Grizzlerock"] = "灰石"
La["Group"] = "组合"
La["Guild"] = "公会"
La["HOA"] = "赎罪"
La["Hold Alt to show all data"] = "按住Alt来显示所有信息"
La["HOV"] = "英灵殿"
La["Hover mouse on indicator for details"] = "鼠标悬停到指示器以显示细节"
La["Hunt: Death Elementals"] = "狩猎：死亡元素"
La["Hunt: Shadehounds"] = "狩猎：影犬"
La["Hunt: Soul Eaters"] = "狩猎：噬魂者"
La["Hunt: Winged Soul Eaters"] = "狩猎：飞翼噬魂者"
La["Iceblade Trio"] = "梅莉拉"
La["ID"] = "码头"
La["Ignore"] = "忽略"
La["Indicators"] = "指示器"
La["Infernum"] = "因菲纳姆"
La["Infested Strongbox"] = "感染的保险箱"
La["Instance limit in Broker"] = "信息文字显示副本情况"
La["Instances"] = "副本"
La["Interleave"] = "交错"
La["Kain Firebrand"] = "凯恩·火印"
La["Karantun"] = "卡兰土恩"
La["Keystone report target"] = "史诗钥石导出目标"
La["KR"] = "诸王"
La["Last updated"] = "最后更新"
La["Legion Transmute"] = "军团转化"
La["Lesser Visions of N'Zoth"] = "恩佐斯的小型幻象"
La["Level %d Characters"] = "等级 %d 人物"
La["LFG cooldown"] = "随机地下城冷却"
La["LFR"] = "团队搜寻器"
La["List categories from the current expansion pack first"] = "从目前的资料片开始依次向后显示"
La["List raid categories before dungeon categories"] = "先显示团队副本，再显示地下城"
La["Lord Kazzak"] = "卡扎克"
La["LOWR"] = "卡下"
La["Manage"] = "管理"
La["Mechanized Chest"] = "机械化的宝箱"
La["Miscellaneous Tracking"] = "杂项"
La["MISTS"] = "仙林"
La["ML"] = "暴富"
La["Mogu Strongbox"] = "魔古保险箱"
La["MOS"] = "噬魂"
La["Most recent first"] = "当前的资料片优先"
La["Mythic Best"] = "史诗钥石每周最佳记录"
La["Mythic Key Best"] = "每周最佳纪录"
La["Mythic Keystone"] = "史诗钥石"
La["Nathanos Blightcaller"] = "纳萨诺斯·凋零者"
La["Neela Firebane"] = "妮拉·火祸"
La["Never show"] = "从不显示"
La["NL"] = "巢穴"
La["NW"] = "通灵"
La["Opacity of the tooltip row highlighting"] = "高亮提示行的透明度"
La["Open config"] = "开启设置"
La["Order must be a number in [0 - 999]"] = "序号必须为0到999的数"
La["Paragon Chests"] = "巅峰声望宝箱"
La["Party"] = "小队"
La["Patterns Within Patterns"] = "法则中的法则"
La["PF"] = "凋魂"
La["Pipspark Thundersnap"] = "皮普斯巴克·雷裂"
La["Primal Storms Core"] = "原始元素核心"
La["Primal Storms Elementals"] = "原始元素"
La["Quest progresses"] = "任务进度"
La["Raids before dungeons"] = "团队副本于地下城前"
La["Recent Bonus Rolls"] = "近期额外拾取情况"
La["Recent Instances"] = "近期副本"
La["Recover Dailies"] = "提取日常任务"
La["Report instance resets to group"] = "报告副本重置"
La["Reset Characters"] = "重置角色"
La["Reverse ordering"] = "反转排序"
La["RLP"] = "红玉"
La["Roll Bonus"] = "额外拾取情况"
La["Rouen Icewind"] = "鲁恩·冰风"
La["Row Highlight"] = "透明度"
La["SBG"] = "墓地"
La["SD"] = "赤红"
La["SEAT"] = "执政团"
La["Set All"] = "设置所有"
La["Show all emissary names"] = "显示所有大使名称"
La["Show both factions' emissay name"] = "同时显示两个阵营不同的大使任务名称"
La["Show calling line when all quests completed"] = "全部角色的使命任务完成后仍显示该行"
La["Show category names"] = "显示分类名字"
La["Show category names in the tooltip"] = "在界面中显示分类名字"
La["Show cooldown for characters to use battleground system"] = "随机战场冷却"
La["Show cooldown for characters to use LFG dungeon system"] = "随机地下城冷却"
La["Show currency earned"] = "显示拥有数量"
La["Show currency max"] = "显示拥有上限"
La["Show emissary line when all quests completed"] = "全部角色的大使任务完成后仍显示该行"
La["Show Expired"] = "显示已过期副本"
La["Show expired instance lockouts"] = "显示已过期的副本锁定"
La["Show Holiday"] = "显示节日地下城"
La["Show holiday boss rewards"] = "显示节日地下城奖励"
La["Show minimap button"] = "显示小地图按钮"
La["Show name for a category when all displayed instances belong only to that category"] = "当所有已显示副本都归属该分类时，仍显示该分类名字"
La["Show only current server"] = "仅显示当前服务器"
La["Show Random"] = "显示随机地下城"
La["Show random dungeon bonus reward"] = "显示随机地下城额外奖励"
La["Show self always"] = "总是显示自己"
La["Show self first"] = "优先显示自己"
La["Show server name"] = "显示服务器名称"
La["Show the SavedInstances minimap button"] = "显示SavedInstances小地图按钮"
La["Show tooltip hints"] = "显示提示信息"
La["Show When"] = "显示配置"
La["Show when completed"] = "完成后仍显示"
La["Show when saved"] = "保存后显示"
La["Show/Hide the SavedInstances tooltip"] = "显示/隐藏 SavedInstances 界面"
La["SIEGE"] = "围攻"
La["Siege on Dragonbane Keep"] = "围攻灭龙要塞"
La["Similarly, the words KILLED and TOTAL will be substituted with the number of bosses killed and total in the lockout."] = "类似的，“KILLED”和“TOTAL”将被替换为首领的击杀数量和总数。"
La["Single category name"] = "显示唯一分类名字"
La["SOA"] = "高塔"
La["Sort by currency name"] = "按货币名称排序"
La["Sort by server"] = "按服务器排序"
La["Sort categories by"] = "排序分类按"
La["Sort Order"] = "序号"
La["Sorting"] = "排序"
La["SOTS"] = "风暴"
La["Space between categories"] = "显示分类间距"
La["Sparks of Life"] = "生命火花"
La["STRT"] = "天街"
La["TAV"] = "魔馆"
La["TD"] = "托尔"
La["Text"] = "文本"
La["The Four Celestials"] = "四大天神"
La["The World Awaits"] = "世界在等待"
La["These are the instances that count towards the %i instances per hour account limit, and the time until they expire."] = "这些是角色每个小时进入 %i 次副本限制的记录，以及其过期时间。"
La["This should only be used for characters who have been renamed or deleted, as characters will be re-populated when you log into them."] = "此项仅可在人物重命名或者删除后使用，当你重新登入时原人物会被转移到新人物"
La["Time /played"] = "已游戏时间"
La["Time Left"] = "剩余时间"
La["Timeworn Mythic Keystone"] = "时空漫游史诗钥石"
La["TJS"] = "青龙寺"
La["TNO"] = "阻击战"
La["Tooltip Scale"] = "提示框缩放"
La["TOP"] = "剧场"
La["Torghast"] = "托加斯特"
La["Tormentors of Torghast"] = "托加斯特的折磨者"
La["TOS"] = "神庙"
La["Track Mythic keystone acquisition"] = "追踪史诗钥石"
La["Track Mythic keystone best run"] = "追踪史诗钥石每周最佳记录"
La["Track Timeworn Mythic keystone acquisition"] = "追踪时空漫游史诗钥石"
La["Trade Skill Cooldowns"] = "商业技能冷却"
La["Trade skills"] = "商业技能"
La["Transmute"] = "转化"
La["Trial of Elements"] = "元素试炼"
La["Trial of Flood"] = "洪水试炼"
La["Type"] = "类型"
La["UNDR"] = "孢林"
La["UPPR"] = "卡上"
La["Use class color"] = "使用职业颜色"
La["Vision Boss + 2 Bonus Objectives"] = "三箱"
La["Vision Boss Only"] = "一箱"
La["Voraazka"] = "沃拉兹卡"
La["VOTW"] = "地窟"
La["Warfronts"] = "战争前线"
La["Warn about instance limit"] = "达到副本进入限制时警告"
La["Warning: You've entered about %i instances recently and are approaching the %i instance per hour limit for your account. More instances should be available in %s."] = "警告：你最近已经进入 %i 次副本，并且已经接近账号每小时 %i 次的进入限制，更多的副本可以在 %s 后允许进入。"
La["Water"] = "流水"
La["Water Core"] = "原始流水核心"
La["Weekly Quests"] = "周常任务"
La["Wild Transmute"] = "狂野转化"
La["WM"] = "庄园"
La["WORK"] = "车间"
La["World Boss"] = "世界首领"
La["World Bosses"] = "世界首领"
La["Wrath of the Jailer"] = "典狱长之怒"
La["YARD"] = "垃圾场"
La["You can combine icons and text in a single indicator if you wish. Simply choose an icon, and insert the word ICON into the text field. Anywhere the word ICON is found, the icon you chose will be substituted in."] = "你可以在指示器上同时显示图标和文字。先选择一个图标，然后在文本中插入“ICON”到想要图标被展示的位置，显示时将被替换为指定图标。"
La["Zurgaz Corebreaker"] = "祖加兹·破核"

elseif locale == "esES" then
  La["|cffffff00Click|r to open weekly rewards"] = [=[|cffffff00Click|r para abrir recompensas semanales
]=]
La["|cffffff00Left-click|r to detach tooltip"] = "|cffffff00Clic|r para separar la ventana de información"
La["|cffffff00Middle-click|r to show Blizzard's Raid Information"] = "|cffffff00Clic medio|r para mostrar la Información de banda"
La["|cffffff00Right-click|r to configure SavedInstances"] = "|cffffff00Click-Derecho|r para configurar SavedInstances"
--[[Translation missing --]]
La["AA"] = "AA"
La["Abbreviate keystones"] = "Abreviar piedras angulares"
La["Abbreviate Mythic keystone dungeon names"] = "Abreviar nombres de mazmorras de piedra angular"
La["Account"] = "Cuenta"
La["Account Summary"] = "Resumen de la cuenta"
--[[Translation missing --]]
La["AD"] = "AD"
--[[Translation missing --]]
La["Aiding the Accord"] = "Aiding the Accord"
--[[Translation missing --]]
La["Air"] = "Air"
--[[Translation missing --]]
La["Air Core"] = "Air Core"
La["Always show"] = "Mostrar siempre"
--[[Translation missing --]]
La["Amathet Reliquary"] = "Amathet Reliquary"
--[[Translation missing --]]
La["Ambered Coffer"] = "Ambered Coffer"
--[[Translation missing --]]
La["ARC"] = "ARC"
La["Are you sure you want to remove %s from the SavedInstances character database?"] = "¿Estás seguro de que quieres borrar a %s de la base de datos de personajes de SavedInstances?"
La["Are you sure you want to report all your keys to %s?"] = "¿Estás seguro de que quieres informar a %s sobre todas tus piedras angulares?"
La["Are you sure you want to reset the SavedInstances character database? Characters will be re-populated as you log into them."] = "¿Seguro que quieres reiniciar la base de datos de personajes de SavedInstances? Los personajes se añadirán de nuevo cuando entres con ellos."
La["Attempt to recover completed daily quests for this character. Note this may recover some additional, linked daily quests that were not actually completed today."] = "Tratar de recuperar las misiones diarias ya completadas hoy por este personaje. Esto podría recuperar algunas otras misiones relacionadas que no fueron completadas hoy."
La["Automatically shrink the tooltip to fit on the screen"] = "Encoger automáticamente la descripción para ajustarla a la pantalla"
La["Azuregos"] = "Azuregos"
La["Battleground Deserter"] = "Desertor del Campo de Batalla"
La["Bind a key to toggle the SavedInstances tooltip"] = "Asignar una tecla para mostrar/ocultar la ventana de información de SavedInstances"
--[[Translation missing --]]
La["Bonus loot frame"] = "Bonus loot frame"
La["Bonus rolls"] = "Tiradas extra"
La[ [=[Boss kill information is missing for this lockout.
This is a Blizzard bug affecting certain old raids.]=] ] = "Informacion de jefes muertos faltante para este registro de banda. Esto es una falla que afecta ciertas bandas antigüas."
--[[Translation missing --]]
La["Bouldron"] = "Bouldron"
--[[Translation missing --]]
La["BRH"] = "BRH"
--[[Translation missing --]]
La["Calling Missing"] = "Calling Missing"
La["Categories"] = "Categorías"
La["Characters"] = "Personajes"
--[[Translation missing --]]
La["COEN"] = "COEN"
La["Color currency by cap"] = "---- \"Show currency max\" is \"Mostrar máximos de monedas\""
--[[Translation missing --]]
La["Combine Callings"] = "Combine Callings"
La["Combine Emissaries"] = "Combinar emisarios"
La["Combine emissaries of same expansion"] = "Combinar emisarios de la misma expansión"
La["Combine LFR"] = "Combinar BdG"
La["Combine World Bosses"] = "Combinar jefes del mundo"
--[[Translation missing --]]
La["Community Feast"] = "Community Feast"
La["Connected Realms"] = "Reinos conectados"
--[[Translation missing --]]
La["COS"] = "COS"
La["Covenant"] = "Curia"
La["Covenant Assaults"] = "Asaltos de Curias"
--[[Translation missing --]]
La["Crystalus"] = "Crystalus"
La["Currency settings"] = "Ajustes de moneda"
--[[Translation missing --]]
La["Cursed Coffer"] = "Cursed Coffer"
La["Daily Quests"] = "Misiones diarias"
La["Day"] = "Día"
La["Debug Mode"] = "Modo de depuración"
--[[Translation missing --]]
La["DHT"] = "DHT"
La["Disable mouseover"] = "Deshabilitar tooltip"
La["Disable tooltip display on icon mouseover"] = "Deshabilita el tooltip al pasar el ratón por encima del icono"
La["Display instances in order of recommended level from lowest to highest"] = "Mostrar instancias en orden de nivel recomendado de menor a mayor"
La["Display instances with space inserted between categories"] = "Mostrar instancias con espacio entre categorías"
--[[Translation missing --]]
La["Disturbed Dirt / Expedition Scout's Pack"] = "Disturbed Dirt / Expedition Scout's Pack"
--[[Translation missing --]]
La["Doomwalker"] = "Doomwalker"
La["DOS"] = "EOL (DOS)"
--[[Translation missing --]]
La["Dragon of Nightmare"] = "Dragon of Nightmare"
--[[Translation missing --]]
La["Dragonflight Experimentation"] = "Dragonflight Experimentation"
--[[Translation missing --]]
La["Dragonflight Renown"] = "Dragonflight Renown"
--[[Translation missing --]]
La["Dragonflight Transmute"] = "Dragonflight Transmute"
La["Dump quest debugging information"] = "Volcar información de depuración de misión"
La["Dump time debugging information"] = "Volcar información de depuración de tiempo"
--[[Translation missing --]]
La["Earth"] = "Earth"
--[[Translation missing --]]
La["Earth Core"] = "Earth Core"
--[[Translation missing --]]
La["Emblazion"] = "Emblazion"
--[[Translation missing --]]
La["Emissary Missing"] = "Emissary Missing"
--[[Translation missing --]]
La["Emissary of War"] = "Emissary of War"
--[[Translation missing --]]
La["Emissary Quests"] = "Emissary Quests"
--[[Translation missing --]]
La["Emissary quests"] = "Emissary quests"
--[[Translation missing --]]
La["EOA"] = "EOA"
La["Expansion"] = "Expansión"
La["Expired Lockout - Can be extended"] = "Registro expirado - puede extenderse"
La["Export"] = "Exportar"
La["Extended Lockout - Not yet saved"] = "Registro extendido - no se ha guardado"
La["Facets of Research"] = "Facetas de investigación"
--[[Translation missing --]]
La["FH"] = "FH"
--[[Translation missing --]]
La["Fire"] = "Fire"
--[[Translation missing --]]
La["Fire Core"] = "Fire Core"
La["Fit to screen"] = "Ajustar a pantalla"
La["Flex"] = "Flexible"
La["Format large numbers"] = "Dar formato a números grandes"
--[[Translation missing --]]
La["Frozion"] = "Frozion"
La["Full Clear + 1 Mask"] = "Limpieza completa + 1 Máscara"
La["Full Clear + 2 Masks"] = "Limpieza completa + 2 Máscaras"
La["Full Clear + 3 Masks"] = "Limpieza completa + 3 Máscaras"
La["Full Clear + 4 Masks"] = "Limpieza completa + 4 Máscaras"
La["Full Clear + 5 Masks"] = "Limpieza completa + 5 Máscaras"
La["Full Clear No Masks"] = "Limpieza completa sin Máscaras"
--[[Translation missing --]]
La["Gaelzion"] = "Gaelzion"
--[[Translation missing --]]
La["GD"] = "GD"
La["General settings"] = "Opciones generales"
--[[Translation missing --]]
La["GMBT"] = "GMBT"
--[[Translation missing --]]
La["Grand Hunt"] = "Grand Hunt"
--[[Translation missing --]]
La["Grand Hunts: Mythic Reward"] = "Grand Hunts: Mythic Reward"
--[[Translation missing --]]
La["Grand Hunts: Rare Reward"] = "Grand Hunts: Rare Reward"
--[[Translation missing --]]
La["Grand Hunts: Uncommon Reward"] = "Grand Hunts: Uncommon Reward"
--[[Translation missing --]]
La["Gravlion"] = "Gravlion"
--[[Translation missing --]]
La["Grizzlerock"] = "Grizzlerock"
La["Group"] = "Grupo"
La["Guild"] = "Hermandad"
La["HOA"] = "SdE (HOA)"
La["Hold Alt to show all data"] = "Pulsa Alt para mostrar toda la información"
--[[Translation missing --]]
La["HOV"] = "HOV"
La["Hover mouse on indicator for details"] = "Coloca el cursor sobre el indicador para más detalles"
La["Hunt: Death Elementals"] = "Caza: Elementales de muerte"
La["Hunt: Shadehounds"] = "Caza: Canes de sombras"
La["Hunt: Soul Eaters"] = "Caza: Comealmas"
La["Hunt: Winged Soul Eaters"] = "Caza: Comealmas alados"
--[[Translation missing --]]
La["Iceblade Trio"] = "Iceblade Trio"
--[[Translation missing --]]
La["ID"] = "ID"
La["Ignore"] = "Ignorar"
La["Indicators"] = "Indicadores"
--[[Translation missing --]]
La["Infernum"] = "Infernum"
--[[Translation missing --]]
La["Infested Strongbox"] = "Infested Strongbox"
--[[Translation missing --]]
La["Instance limit in Broker"] = "Instance limit in Broker"
La["Instances"] = "Estancias"
La["Interleave"] = "Entrelazado"
--[[Translation missing --]]
La["Kain Firebrand"] = "Kain Firebrand"
--[[Translation missing --]]
La["Karantun"] = "Karantun"
--[[Translation missing --]]
La["Keystone report target"] = "Keystone report target"
--[[Translation missing --]]
La["KR"] = "KR"
La["Last updated"] = "Última actualización"
La["Legion Transmute"] = "Transmutación de Legión"
La["Lesser Visions of N'Zoth"] = "Vision de N'zoth menor"
La["Level %d Characters"] = "Personajes de nivel %d"
La["LFG cooldown"] = "Tiempo de reutilización del Buscador de Grupo."
La["LFR"] = "BdB"
La["List categories from the current expansion pack first"] = "Mostrar primero las categorías de la expansión actual"
La["List raid categories before dungeon categories"] = "Mostrar categorías de bandas antes que de mazmorras"
--[[Translation missing --]]
La["Lord Kazzak"] = "Lord Kazzak"
--[[Translation missing --]]
La["LOWR"] = "LOWR"
La["Manage"] = "Gestionar"
--[[Translation missing --]]
La["Mechanized Chest"] = "Mechanized Chest"
La["Miscellaneous Tracking"] = "Otros seguimientos"
La["MISTS"] = "NTS (MISTS)"
--[[Translation missing --]]
La["ML"] = "ML"
--[[Translation missing --]]
La["Mogu Strongbox"] = "Mogu Strongbox"
--[[Translation missing --]]
La["MOS"] = "MOS"
La["Most recent first"] = "Más reciente primero"
La["Mythic Best"] = "Mejor mítica"
La["Mythic Key Best"] = "Mejor piedra angular mítica"
La["Mythic Keystone"] = "Piedra angular mítica"
--[[Translation missing --]]
La["Nathanos Blightcaller"] = "Nathanos Blightcaller"
--[[Translation missing --]]
La["Neela Firebane"] = "Neela Firebane"
La["Never show"] = "No mostrar nunca"
--[[Translation missing --]]
La["NL"] = "NL"
La["NW"] = "EN (NW)"
La["Opacity of the tooltip row highlighting"] = "Opacidad de los resaltados en las filas de la ventana de información"
La["Open config"] = "Abrir la configuración"
La["Order must be a number in [0 - 999]"] = "Orden debe ser un número en [0 - 999]"
--[[Translation missing --]]
La["Paragon Chests"] = "Paragon Chests"
La["Party"] = "Grupo"
--[[Translation missing --]]
La["Patterns Within Patterns"] = "Patterns Within Patterns"
La["PF"] = "BP (PF)"
--[[Translation missing --]]
La["Pipspark Thundersnap"] = "Pipspark Thundersnap"
--[[Translation missing --]]
La["Primal Storms Core"] = "Primal Storms Core"
--[[Translation missing --]]
La["Primal Storms Elementals"] = "Primal Storms Elementals"
La["Quest progresses"] = "Progreso de misiones"
La["Raids before dungeons"] = "Bandas antes que mazmorras"
La["Recent Bonus Rolls"] = "Tiradas extra recientes"
La["Recent Instances"] = "Instancias recientes"
La["Recover Dailies"] = "Recuperar diarias"
La["Report instance resets to group"] = "Informar de reinicios de estancia al grupo"
La["Reset Characters"] = "Reiniciar personajes"
La["Reverse ordering"] = "Invertir orden"
--[[Translation missing --]]
La["RLP"] = "RLP"
La["Roll Bonus"] = "Bonos de tirada"
--[[Translation missing --]]
La["Rouen Icewind"] = "Rouen Icewind"
La["Row Highlight"] = "Resalta de fila"
--[[Translation missing --]]
La["SBG"] = "SBG"
La["SD"] = "CS (SD)"
--[[Translation missing --]]
La["SEAT"] = "SEAT"
La["Set All"] = "Establecer todos"
La["Show all emissary names"] = "Mostrar todos los nombres de emisarios"
La["Show both factions' emissay name"] = "Mostrar ambos nombres de emisario de facciones"
--[[Translation missing --]]
La["Show calling line when all quests completed"] = "Show calling line when all quests completed"
La["Show category names"] = "Mostrar nombres de categorías"
La["Show category names in the tooltip"] = "Mostrar los nombres de categorías en la descripción"
La["Show cooldown for characters to use battleground system"] = "Muestra el tiempo de reutilización de personajes para entrar en un campo de batalla."
La["Show cooldown for characters to use LFG dungeon system"] = "Muestra el tiempo de reutilización de personajes para utilizar el sistema BdG."
La["Show currency earned"] = "Mostrar cantidad ganada"
La["Show currency max"] = "Mostrar cantidad máxima de moneda"
--[[Translation missing --]]
La["Show emissary line when all quests completed"] = "Show emissary line when all quests completed"
La["Show Expired"] = "Mostrar acabados"
La["Show expired instance lockouts"] = "Mostrar registros acabados de estancias"
La["Show Holiday"] = "Mostrar fiestas"
La["Show holiday boss rewards"] = "Mostrar recompensas de los Jefes festivos"
La["Show minimap button"] = "Mostrar botón del minimapa"
La["Show name for a category when all displayed instances belong only to that category"] = "Muestra el nombre de la categoría cuando todas las instancias que se muestran son de la misma categoría"
La["Show only current server"] = "Mostrar sólo el reino actual"
La["Show Random"] = "Muestra aleatoria"
La["Show random dungeon bonus reward"] = "Mostrar recompensa extra de mazmorra aleatoria"
La["Show self always"] = "Mostrar siempre a si mismo"
La["Show self first"] = "Mostrarse a uno mismo primero"
La["Show server name"] = "Mostrar nombre del servidor"
La["Show the SavedInstances minimap button"] = "Mostrar el botón del minimapa de SavedInstances"
La["Show tooltip hints"] = "Mostrar consejos en descripciones"
La["Show When"] = "Mostrar cuando"
La["Show when completed"] = "Mostrar completadas"
La["Show when saved"] = "Mostrar si hay registro guardado"
La["Show/Hide the SavedInstances tooltip"] = "Mostrar/ocultar la ventana de información de SavedInstances"
--[[Translation missing --]]
La["SIEGE"] = "SIEGE"
--[[Translation missing --]]
La["Siege on Dragonbane Keep"] = "Siege on Dragonbane Keep"
La["Similarly, the words KILLED and TOTAL will be substituted with the number of bosses killed and total in the lockout."] = "Las palabras \"KILLED\" y \"TOTAL\" se reemplazarán por el número de jefes derrotados y el total del registro."
La["Single category name"] = "Nombre de la categoría individual"
La["SOA"] = "AdA (SOA)"
La["Sort by currency name"] = "Ordenar por nombre de moneda"
La["Sort by server"] = "Ordenar por reino"
La["Sort categories by"] = "Ordenar categorías por"
La["Sort Order"] = "Establecer orden"
La["Sorting"] = "Ordenar"
--[[Translation missing --]]
La["SOTS"] = "SOTS"
La["Space between categories"] = "Espacio entre categorías"
--[[Translation missing --]]
La["Sparks of Life"] = "Sparks of Life"
--[[Translation missing --]]
La["STRT"] = "STRT"
--[[Translation missing --]]
La["TAV"] = "TAV"
--[[Translation missing --]]
La["TD"] = "TD"
La["Text"] = "Texto"
La["The Four Celestials"] = "Los Cuatro Celestiales"
La["The World Awaits"] = "El mundo aguarda"
La["These are the instances that count towards the %i instances per hour account limit, and the time until they expire."] = "Estas instancias cuentan para el límite de %i por hora por cuenta, y expirará a la hora indicada."
La["This should only be used for characters who have been renamed or deleted, as characters will be re-populated when you log into them."] = "Esto sólo debe ser usado para personajes que han sido renombrados o borrados, ya que los personajes serán cargados de nuevo cuando te conectes con los mismos."
La["Time /played"] = "Tiempo jugado (/played)"
La["Time Left"] = "Tiempo restante"
--[[Translation missing --]]
La["Timeworn Mythic Keystone"] = "Timeworn Mythic Keystone"
--[[Translation missing --]]
La["TJS"] = "TJS"
--[[Translation missing --]]
La["TNO"] = "TNO"
La["Tooltip Scale"] = "Tamaño de la ventana de información"
La["TOP"] = "TdD (TOP)"
La["Torghast"] = "Torghast"
La["Tormentors of Torghast"] = "Tormentos de Torghast"
--[[Translation missing --]]
La["TOS"] = "TOS"
La["Track Mythic keystone acquisition"] = "Rastrear adquisicion de piedra angular mítica"
La["Track Mythic keystone best run"] = "Rastrear mejor incursión de piedra angular mítica"
--[[Translation missing --]]
La["Track Timeworn Mythic keystone acquisition"] = "Track Timeworn Mythic keystone acquisition"
La["Trade Skill Cooldowns"] = "Tiempos de reutilización de Profesiones"
La["Trade skills"] = "Profesiones"
La["Transmute"] = "Transmutar"
--[[Translation missing --]]
La["Trial of Elements"] = "Trial of Elements"
--[[Translation missing --]]
La["Trial of Flood"] = "Trial of Flood"
La["Type"] = "Tipo"
--[[Translation missing --]]
La["UNDR"] = "UNDR"
--[[Translation missing --]]
La["UPPR"] = "UPPR"
La["Use class color"] = "Usar color de clase"
La["Vision Boss + 2 Bonus Objectives"] = "Jefe de Vision + 2 objetivos extras"
La["Vision Boss Only"] = "Solo jefe de Vision"
--[[Translation missing --]]
La["Voraazka"] = "Voraazka"
--[[Translation missing --]]
La["VOTW"] = "VOTW"
La["Warfronts"] = "Frentes de guerra"
La["Warn about instance limit"] = "Advertencia sobre límite de instancias"
La["Warning: You've entered about %i instances recently and are approaching the %i instance per hour limit for your account. More instances should be available in %s."] = "Advertencia: Has entrado en %i estancias recientemente, y te estás acercando al límite de %i estancias por hora para tu cuenta. Tendrás más disponibles después de %s."
--[[Translation missing --]]
La["Water"] = "Water"
--[[Translation missing --]]
La["Water Core"] = "Water Core"
La["Weekly Quests"] = "Misiones semanales"
La["Wild Transmute"] = "Transmutación Salvaje"
--[[Translation missing --]]
La["WM"] = "WM"
--[[Translation missing --]]
La["WORK"] = "WORK"
La["World Boss"] = "Jefe del mundo"
La["World Bosses"] = "Jefes del mundo"
--[[Translation missing --]]
La["Wrath of the Jailer"] = "Wrath of the Jailer"
--[[Translation missing --]]
La["YARD"] = "YARD"
La["You can combine icons and text in a single indicator if you wish. Simply choose an icon, and insert the word ICON into the text field. Anywhere the word ICON is found, the icon you chose will be substituted in."] = "Puedes combinar iconos y texto en un mismo indicador. Selecciona un icono y escribe \"ICON\" en el cuadro de texto para indicar dónde deseas que aparezca el icono."
--[[Translation missing --]]
La["Zurgaz Corebreaker"] = "Zurgaz Corebreaker"

elseif locale == "zhTW" then
  La["|cffffff00Click|r to open weekly rewards"] = "|cffffff00點擊|r來開啟每週獎勵"
La["|cffffff00Left-click|r to detach tooltip"] = "|cffffff00左鍵|r 分離滑鼠提示"
La["|cffffff00Middle-click|r to show Blizzard's Raid Information"] = "|cffffff00中鍵|r 顯示暴雪的團隊資訊"
La["|cffffff00Right-click|r to configure SavedInstances"] = "|cffffff00右鍵|r 設定 SavedInstances"
La["AA"] = "學院"
La["Abbreviate keystones"] = "簡短鑰石名稱"
La["Abbreviate Mythic keystone dungeon names"] = "傳奇鑰石的地城名稱使用簡稱"
La["Account"] = "帳號"
La["Account Summary"] = "帳號統計"
--[[Translation missing --]]
La["AD"] = "AD"
La["Aiding the Accord"] = "支援協調者"
La["Air"] = "風"
La["Air Core"] = "風核心"
La["Always show"] = "永遠顯示"
La["Amathet Reliquary"] = "阿瑪賽特聖匣"
--[[Translation missing --]]
La["Ambered Coffer"] = "Ambered Coffer"
--[[Translation missing --]]
La["ARC"] = "ARC"
La["Are you sure you want to remove %s from the SavedInstances character database?"] = "是否確定要從 SavedInstances 的角色資料庫中移除 %s?"
La["Are you sure you want to report all your keys to %s?"] = "你確定想報告所有你的鑰石給%s嗎？"
La["Are you sure you want to reset the SavedInstances character database? Characters will be re-populated as you log into them."] = "是否確定要重置 SavedInstances 的角色資料庫? 登入角色時將會重新擷取資料。"
La["Attempt to recover completed daily quests for this character. Note this may recover some additional, linked daily quests that were not actually completed today."] = "嘗試恢復這個角色已完成的每日任務。請注意，可能會恢復到一些其他的、今日實際上並沒有完成的相關每日任務。"
La["Automatically shrink the tooltip to fit on the screen"] = "自動縮小滑鼠提示以符合畫面"
La["Azuregos"] = "艾索雷苟斯"
La["Battleground Deserter"] = "戰場逃亡者冷卻"
La["Bind a key to toggle the SavedInstances tooltip"] = "綁定按鍵來切換顯示 SavedInstances 滑鼠提示"
La["Bonus loot frame"] = "額外戰利品框架"
La["Bonus rolls"] = "額外骰子"
La[ [=[Boss kill information is missing for this lockout.
This is a Blizzard bug affecting certain old raids.]=] ] = [=[缺少這個進度的首領擊殺資訊。
這是暴雪的 BUG，會影響舊團隊。]=]
--[[Translation missing --]]
La["Bouldron"] = "Bouldron"
La["BRH"] = "玄鴉"
La["Calling Missing"] = "沒有使命"
La["Categories"] = "分類"
La["Characters"] = "角色"
--[[Translation missing --]]
La["COEN"] = "COEN"
La["Color currency by cap"] = "依據數量上限顯示兌換通貨顏色"
La["Combine Callings"] = "合併使命"
La["Combine Emissaries"] = "合併特使"
La["Combine emissaries of same expansion"] = "合併同資料片的特使"
La["Combine LFR"] = "合併隨機團隊"
La["Combine World Bosses"] = "合併世界首領"
La["Community Feast"] = "集體盛宴"
La["Connected Realms"] = "連結伺服器"
La["COS"] = "眾星"
La["Covenant"] = "誓盟"
La["Covenant Assaults"] = "誓盟進攻戰"
La["Crystalus"] = "晶體"
La["Currency settings"] = "兌換通貨設定"
La["Cursed Coffer"] = "黑暗帝國大寶箱"
La["Daily Quests"] = "每日任務"
La["Day"] = "日"
La["Debug Mode"] = "偵錯模式"
La["DHT"] = "暗心"
La["Disable mouseover"] = "停用滑鼠提示"
La["Disable tooltip display on icon mouseover"] = "滑鼠指向圖示時不要顯示滑鼠提示"
La["Display instances in order of recommended level from lowest to highest"] = "依照建議的等級從低到高顯示副本"
La["Display instances with space inserted between categories"] = "顯示副本並在分類之間加上間距"
La["Disturbed Dirt / Expedition Scout's Pack"] = "挖過的土 / 遠征隊斥侯背包"
La["Doomwalker"] = "末日行者"
La["DOS"] = "彼界"
La["Dragon of Nightmare"] = "夢魘之龍"
La["Dragonflight Experimentation"] = "巨龍崛起實驗性"
La["Dragonflight Renown"] = "巨龍崛起名望"
La["Dragonflight Transmute"] = "巨龍崛起變化"
La["Dump quest debugging information"] = "傾印任務偵錯資訊"
La["Dump time debugging information"] = "傾印時間偵錯資訊"
La["Earth"] = "地"
La["Earth Core"] = "地核心"
La["Emblazion"] = "紋章"
La["Emissary Missing"] = "沒有特使"
La["Emissary of War"] = "戰爭使者"
La["Emissary Quests"] = "特使任務"
La["Emissary quests"] = "特使任務"
La["EOA"] = "艾眼"
La["Expansion"] = "資料片"
La["Expired Lockout - Can be extended"] = "進度已過期 - 可以延展"
La["Export"] = "輸出"
La["Extended Lockout - Not yet saved"] = "進度即將到期 - 尚未儲存"
La["Facets of Research"] = "研究切面"
--[[Translation missing --]]
La["FH"] = "FH"
La["Fire"] = "火"
La["Fire Core"] = "火核心"
La["Fit to screen"] = "不超出畫面"
La["Flex"] = "彈性"
La["Format large numbers"] = "格式化大數目"
--[[Translation missing --]]
La["Frozion"] = "Frozion"
La["Full Clear + 1 Mask"] = "全清 + 1面具"
La["Full Clear + 2 Masks"] = "全清 + 2面具"
La["Full Clear + 3 Masks"] = "全清 + 3面具"
La["Full Clear + 4 Masks"] = "全清 + 4面具"
La["Full Clear + 5 Masks"] = "全清 + 5面具"
La["Full Clear No Masks"] = "全清 無面具"
--[[Translation missing --]]
La["Gaelzion"] = "Gaelzion"
La["GD"] = "車站"
La["General settings"] = "一般設定"
La["GMBT"] = "險招"
La["Grand Hunt"] = "大狩獵"
La["Grand Hunts: Mythic Reward"] = "大狩獵：傳奇獎勵"
La["Grand Hunts: Rare Reward"] = "大狩獵：稀有獎勵"
La["Grand Hunts: Uncommon Reward"] = "大狩獵：精良獎勵"
--[[Translation missing --]]
La["Gravlion"] = "Gravlion"
--[[Translation missing --]]
La["Grizzlerock"] = "Grizzlerock"
La["Group"] = "群組"
La["Guild"] = "公會"
La["HOA"] = "贖罪"
La["Hold Alt to show all data"] = "按住 Alt 顯示所有資料"
La["HOV"] = "英靈殿"
La["Hover mouse on indicator for details"] = "滑鼠指向顯示詳細內容"
La["Hunt: Death Elementals"] = "獵殺：死亡元素"
La["Hunt: Shadehounds"] = "獵殺：暗影獵犬"
La["Hunt: Soul Eaters"] = "獵殺：靈魂吞噬者"
La["Hunt: Winged Soul Eaters"] = "獵殺：飛翼靈魂噬者"
--[[Translation missing --]]
La["Iceblade Trio"] = "Iceblade Trio"
La["ID"] = "碼頭"
La["Ignore"] = "忽略"
La["Indicators"] = "指示器"
--[[Translation missing --]]
La["Infernum"] = "Infernum"
--[[Translation missing --]]
La["Infested Strongbox"] = "Infested Strongbox"
La["Instance limit in Broker"] = "顯示副本限制 (Broker 資訊列)"
La["Instances"] = "副本"
La["Interleave"] = "交錯"
--[[Translation missing --]]
La["Kain Firebrand"] = "Kain Firebrand"
--[[Translation missing --]]
La["Karantun"] = "Karantun"
La["Keystone report target"] = "報告目標鑰石"
--[[Translation missing --]]
La["KR"] = "KR"
La["Last updated"] = "最近更新"
La["Legion Transmute"] = "軍臨天下塑形"
La["Lesser Visions of N'Zoth"] = "恩若司的小幻象"
La["Level %d Characters"] = "等級 %d 角色"
La["LFG cooldown"] = "隨機隊伍冷卻"
La["LFR"] = "隨機團隊"
La["List categories from the current expansion pack first"] = "優先列出目前資料片中的分類"
La["List raid categories before dungeon categories"] = "在地城分類之前列出團隊分類"
La["Lord Kazzak"] = "卡扎克領主"
La["LOWR"] = "卡拉下"
La["Manage"] = "管理"
La["Mechanized Chest"] = "機械箱"
La["Miscellaneous Tracking"] = "其他追蹤"
La["MISTS"] = "迷霧"
--[[Translation missing --]]
La["ML"] = "ML"
--[[Translation missing --]]
La["Mogu Strongbox"] = "Mogu Strongbox"
--[[Translation missing --]]
La["MOS"] = "MOS"
La["Most recent first"] = "最近的優先"
La["Mythic Best"] = "最佳傳奇"
La["Mythic Key Best"] = "最佳傳奇鑰石"
La["Mythic Keystone"] = "傳奇鑰石"
La["Nathanos Blightcaller"] = "納撒諾斯·凋零者"
--[[Translation missing --]]
La["Neela Firebane"] = "Neela Firebane"
La["Never show"] = "永不顯示"
La["NL"] = "巢穴"
La["NW"] = "死靈"
La["Opacity of the tooltip row highlighting"] = "顯著標示滑鼠提示列的透明度"
La["Open config"] = "開啟設定選項"
La["Order must be a number in [0 - 999]"] = "順序必須是 [0-999] 的數字"
La["Paragon Chests"] = "巔峰獎勵箱"
La["Party"] = "隊伍"
La["Patterns Within Patterns"] = "計畫中的計畫"
La["PF"] = "瘟疫"
--[[Translation missing --]]
La["Pipspark Thundersnap"] = "Pipspark Thundersnap"
La["Primal Storms Core"] = "元素風暴核心"
--[[Translation missing --]]
La["Primal Storms Elementals"] = "Primal Storms Elementals"
La["Quest progresses"] = "任務進度"
La["Raids before dungeons"] = "團隊在地城之前"
La["Recent Bonus Rolls"] = "最近的額外骰子"
La["Recent Instances"] = "最近的副本"
La["Recover Dailies"] = "恢復每日"
La["Report instance resets to group"] = "重置副本時通報團隊"
La["Reset Characters"] = "重置角色"
La["Reverse ordering"] = "反向排序"
La["RLP"] = "晶紅"
La["Roll Bonus"] = "使用額外骰子"
--[[Translation missing --]]
La["Rouen Icewind"] = "Rouen Icewind"
La["Row Highlight"] = "顯著標示橫列"
La["SBG"] = "影月"
La["SD"] = "血紅"
--[[Translation missing --]]
La["SEAT"] = "SEAT"
La["Set All"] = "設定全部"
La["Show all emissary names"] = "顯示所有特使名稱"
La["Show both factions' emissay name"] = "顯示雙方陣營特使名稱"
La["Show calling line when all quests completed"] = "完成所有任務後顯示召喚線"
La["Show category names"] = "顯示分類名稱"
La["Show category names in the tooltip"] = "在滑鼠提示中顯示分類名稱"
La["Show cooldown for characters to use battleground system"] = "顯示角色可以使用戰場系統的冷卻時間"
La["Show cooldown for characters to use LFG dungeon system"] = "顯示角色可以使用隨機地城系統的冷卻時間"
La["Show currency earned"] = "顯示獲得的兌換通貨"
La["Show currency max"] = "顯示兌換通貨數量上限"
La["Show emissary line when all quests completed"] = "當所有任務完成時顯示特使線"
La["Show Expired"] = "顯示過期的"
La["Show expired instance lockouts"] = "顯示已過期的副本進度"
La["Show Holiday"] = "顯示節日"
La["Show holiday boss rewards"] = "顯示節日首領獎勵"
La["Show minimap button"] = "顯示小地圖按鈕"
La["Show name for a category when all displayed instances belong only to that category"] = "當所有顯示的副本都屬於同一個分類時，顯示該分類的名稱"
La["Show only current server"] = "只顯示目前伺服器"
La["Show Random"] = "顯示隨機"
La["Show random dungeon bonus reward"] = "顯示隨機地城額外獎勵"
La["Show self always"] = "永遠顯示自己"
La["Show self first"] = "優先顯示自己"
La["Show server name"] = "顯示伺服器名稱"
La["Show the SavedInstances minimap button"] = "顯示 SavedInstances 小地圖按鈕"
La["Show tooltip hints"] = "顯示工具列提示"
La["Show When"] = "何時顯示"
La["Show when completed"] = "當完成時顯示"
La["Show when saved"] = "已保存時顯示"
La["Show/Hide the SavedInstances tooltip"] = "顯示/隱藏 SavedInstances 滑鼠提示"
La["SIEGE"] = "攻打龍禍要塞"
La["Siege on Dragonbane Keep"] = "攻打龍禍要塞"
La["Similarly, the words KILLED and TOTAL will be substituted with the number of bosses killed and total in the lockout."] = "同樣的，「KILLED」和「TOTAL」字樣也會被替換為首領已擊殺與總數的數字。"
La["Single category name"] = "單一分類名稱"
La["SOA"] = "晉升"
La["Sort by currency name"] = "排序根據通貨名稱"
La["Sort by server"] = "按伺服器排序"
La["Sort categories by"] = "排序分類按"
La["Sort Order"] = "排列順序"
La["Sorting"] = "排序"
--[[Translation missing --]]
La["SOTS"] = "SOTS"
La["Space between categories"] = "分類間距"
--[[Translation missing --]]
La["Sparks of Life"] = "Sparks of Life"
La["STRT"] = "街道"
--[[Translation missing --]]
La["TAV"] = "TAV"
--[[Translation missing --]]
La["TD"] = "TD"
La["Text"] = "文字"
La["The Four Celestials"] = "四大天尊"
La["The World Awaits"] = "世界在等著"
La["These are the instances that count towards the %i instances per hour account limit, and the time until they expire."] = "有些副本有每個帳號每小時可進入 %i 個副本和時間的限制，直到時間過為止。"
La["This should only be used for characters who have been renamed or deleted, as characters will be re-populated when you log into them."] = "這個功能只適用於已經更名或刪除的角色，登入這些角色時會重新擷取資料。"
La["Time /played"] = "已遊玩時間"
La["Time Left"] = "剩餘時間"
La["Timeworn Mythic Keystone"] = "時光漫遊傳奇鑰石"
La["TJS"] = "玉蛟"
La["TNO"] = "諾庫德"
La["Tooltip Scale"] = "滑鼠提示縮放大小"
La["TOP"] = "劇場"
La["Torghast"] = "托迦司"
La["Tormentors of Torghast"] = "托迦司的折磨者"
--[[Translation missing --]]
La["TOS"] = "TOS"
La["Track Mythic keystone acquisition"] = "追蹤獲得的傳奇鑰石"
La["Track Mythic keystone best run"] = "追蹤傳奇鑰石最佳紀錄"
La["Track Timeworn Mythic keystone acquisition"] = "追蹤時光漫遊傳奇鑰石獲取"
La["Trade Skill Cooldowns"] = "專業技能冷卻時間"
La["Trade skills"] = "專業技能"
La["Transmute"] = "轉化"
La["Trial of Elements"] = "元素的試煉"
La["Trial of Flood"] = "洪流的試煉"
La["Type"] = "類型"
--[[Translation missing --]]
La["UNDR"] = "UNDR"
La["UPPR"] = "卡拉上"
La["Use class color"] = "使用職業顏色"
La["Vision Boss + 2 Bonus Objectives"] = "幻象首領 + 2個獎勵目標"
La["Vision Boss Only"] = "只有幻象首領"
--[[Translation missing --]]
La["Voraazka"] = "Voraazka"
La["VOTW"] = "看守"
La["Warfronts"] = "戰爭前線"
La["Warn about instance limit"] = "警告副本限制"
La["Warning: You've entered about %i instances recently and are approaching the %i instance per hour limit for your account. More instances should be available in %s."] = "警告：你最近已經進入副本 %i 次，並且已經接近每小時 %i 次的帳號進入限制。 %s 後允許進入更多副本。"
La["Water"] = "水"
La["Water Core"] = "水核心"
La["Weekly Quests"] = "每週任務"
La["Wild Transmute"] = "狂野塑形"
--[[Translation missing --]]
La["WM"] = "WM"
La["WORK"] = "工坊"
La["World Boss"] = "世界首領"
La["World Bosses"] = "世界首領"
La["Wrath of the Jailer"] = "典獄長之怒"
La["YARD"] = "廢料場"
La["You can combine icons and text in a single indicator if you wish. Simply choose an icon, and insert the word ICON into the text field. Anywhere the word ICON is found, the icon you chose will be substituted in."] = "如果想要的話，可以在同個指標上顯示圖示與文字。首先選擇一個圖示，並在文字框中插入「ICON」到想要出現圖示的位置，就會自動替換成你選擇的圖示。"
--[[Translation missing --]]
La["Zurgaz Corebreaker"] = "Zurgaz Corebreaker"

elseif locale == "ptBR" then
  La["|cffffff00Click|r to open weekly rewards"] = "|cffffff00Click|r para abrir recompensas semanais"
La["|cffffff00Left-click|r to detach tooltip"] = "|cffffff00Botão Esquerdo | Para destacar as Dicas"
La["|cffffff00Middle-click|r to show Blizzard's Raid Information"] = "|cffffff00Botão do Meio|r para mostrar informações da Raid dadas pela Blizzard"
La["|cffffff00Right-click|r to configure SavedInstances"] = "|cffffff00Botão Direito|r Para configurar o SavedInstances"
--[[Translation missing --]]
La["AA"] = "AA"
La["Abbreviate keystones"] = "Abreviar pedras-chave"
La["Abbreviate Mythic keystone dungeon names"] = "Abreviar nomes de masmorras de pedra-chave Mítica"
La["Account"] = "Conta"
La["Account Summary"] = "Sumário da conta"
--[[Translation missing --]]
La["AD"] = "AD"
--[[Translation missing --]]
La["Aiding the Accord"] = "Aiding the Accord"
--[[Translation missing --]]
La["Air"] = "Air"
--[[Translation missing --]]
La["Air Core"] = "Air Core"
La["Always show"] = "Mostrar sempre"
--[[Translation missing --]]
La["Amathet Reliquary"] = "Amathet Reliquary"
--[[Translation missing --]]
La["Ambered Coffer"] = "Ambered Coffer"
--[[Translation missing --]]
La["ARC"] = "ARC"
La["Are you sure you want to remove %s from the SavedInstances character database?"] = "Você tem certeza de que deseja remover %s do banco de dados do SavedInstances?"
--[[Translation missing --]]
La["Are you sure you want to report all your keys to %s?"] = "Are you sure you want to report all your keys to %s?"
La["Are you sure you want to reset the SavedInstances character database? Characters will be re-populated as you log into them."] = "Você tem certeza de que desejar reiniciar a base de dados de personagens do SavedInstances? Personagens serão contabilizados quando você se conectar com eles."
La["Attempt to recover completed daily quests for this character. Note this may recover some additional, linked daily quests that were not actually completed today."] = "Tentar buscar missões diárias completadas por este personagem. Isto pode buscar algumas missões adicionais relacionadas que na verdade não foram completadas hoje."
La["Automatically shrink the tooltip to fit on the screen"] = "Encolher ajuda automaticamente para caber na tela"
--[[Translation missing --]]
La["Azuregos"] = "Azuregos"
La["Battleground Deserter"] = "Acompanhar tempo de espera de Desertor para campo de batalha"
La["Bind a key to toggle the SavedInstances tooltip"] = "Vincule uma tecla para as dicas do SavedInstances"
--[[Translation missing --]]
La["Bonus loot frame"] = "Bonus loot frame"
La["Bonus rolls"] = "Saque de bônus"
--[[Translation missing --]]
La[ [=[Boss kill information is missing for this lockout.
This is a Blizzard bug affecting certain old raids.]=] ] = [=[Boss kill information is missing for this lockout.
This is a Blizzard bug affecting certain old raids.]=]
--[[Translation missing --]]
La["Bouldron"] = "Bouldron"
--[[Translation missing --]]
La["BRH"] = "BRH"
--[[Translation missing --]]
La["Calling Missing"] = "Calling Missing"
La["Categories"] = "Categorias"
La["Characters"] = "Personagens"
--[[Translation missing --]]
La["COEN"] = "COEN"
La["Color currency by cap"] = "Colorir moedas por limite"
--[[Translation missing --]]
La["Combine Callings"] = "Combine Callings"
--[[Translation missing --]]
La["Combine Emissaries"] = "Combine Emissaries"
--[[Translation missing --]]
La["Combine emissaries of same expansion"] = "Combine emissaries of same expansion"
La["Combine LFR"] = "Combinar LdR"
La["Combine World Bosses"] = "Agrupar chefes mundiais"
--[[Translation missing --]]
La["Community Feast"] = "Community Feast"
La["Connected Realms"] = "Reinos conectados"
--[[Translation missing --]]
La["COS"] = "COS"
--[[Translation missing --]]
La["Covenant"] = "Covenant"
--[[Translation missing --]]
La["Covenant Assaults"] = "Covenant Assaults"
--[[Translation missing --]]
La["Crystalus"] = "Crystalus"
La["Currency settings"] = "Configuração de moedas"
--[[Translation missing --]]
La["Cursed Coffer"] = "Cursed Coffer"
La["Daily Quests"] = "Missões Diárias"
La["Day"] = "Dia"
La["Debug Mode"] = "Mode de Debug"
--[[Translation missing --]]
La["DHT"] = "DHT"
La["Disable mouseover"] = "Desativar mouseover"
La["Disable tooltip display on icon mouseover"] = "Desabilitar exibição de ajuda ao passar o mouse no ícone"
La["Display instances in order of recommended level from lowest to highest"] = "Exibir instâncias em ordem de nível recomendado menor para o maior"
La["Display instances with space inserted between categories"] = "Exibir instâncias com espaço inserido entre as categorias"
--[[Translation missing --]]
La["Disturbed Dirt / Expedition Scout's Pack"] = "Disturbed Dirt / Expedition Scout's Pack"
--[[Translation missing --]]
La["Doomwalker"] = "Doomwalker"
--[[Translation missing --]]
La["DOS"] = "DOS"
--[[Translation missing --]]
La["Dragon of Nightmare"] = "Dragon of Nightmare"
--[[Translation missing --]]
La["Dragonflight Experimentation"] = "Dragonflight Experimentation"
--[[Translation missing --]]
La["Dragonflight Renown"] = "Dragonflight Renown"
--[[Translation missing --]]
La["Dragonflight Transmute"] = "Dragonflight Transmute"
--[[Translation missing --]]
La["Dump quest debugging information"] = "Dump quest debugging information"
La["Dump time debugging information"] = "Gerar informações de tempo de depuração"
--[[Translation missing --]]
La["Earth"] = "Earth"
--[[Translation missing --]]
La["Earth Core"] = "Earth Core"
--[[Translation missing --]]
La["Emblazion"] = "Emblazion"
La["Emissary Missing"] = "Emissários Faltando"
La["Emissary of War"] = "Emissário de Guerra"
La["Emissary Quests"] = "Missões de emissário"
La["Emissary quests"] = "Missões de emissário"
--[[Translation missing --]]
La["EOA"] = "EOA"
La["Expansion"] = "Expansão"
La["Expired Lockout - Can be extended"] = "Bloqueio de expirado - Pode ser estendida"
La["Export"] = "Exportar"
La["Extended Lockout - Not yet saved"] = "Bloqueiar de Extensão - Ainda não salva"
La["Facets of Research"] = "Facetas da Pesquisa"
--[[Translation missing --]]
La["FH"] = "FH"
--[[Translation missing --]]
La["Fire"] = "Fire"
--[[Translation missing --]]
La["Fire Core"] = "Fire Core"
La["Fit to screen"] = "Ajustar à tela"
La["Flex"] = "Flexível"
La["Format large numbers"] = "Formatar números grandes"
--[[Translation missing --]]
La["Frozion"] = "Frozion"
La["Full Clear + 1 Mask"] = "Completo +1 Máscara"
La["Full Clear + 2 Masks"] = "Completo +2 Máscaras"
La["Full Clear + 3 Masks"] = "Completo +3 Máscaras"
La["Full Clear + 4 Masks"] = "Completo +4 Máscaras"
La["Full Clear + 5 Masks"] = "Completo +5 Máscaras"
La["Full Clear No Masks"] = "Completo Sem Máscara"
--[[Translation missing --]]
La["Gaelzion"] = "Gaelzion"
--[[Translation missing --]]
La["GD"] = "GD"
La["General settings"] = "Configurações Gerais"
--[[Translation missing --]]
La["GMBT"] = "GMBT"
--[[Translation missing --]]
La["Grand Hunt"] = "Grand Hunt"
--[[Translation missing --]]
La["Grand Hunts: Mythic Reward"] = "Grand Hunts: Mythic Reward"
--[[Translation missing --]]
La["Grand Hunts: Rare Reward"] = "Grand Hunts: Rare Reward"
--[[Translation missing --]]
La["Grand Hunts: Uncommon Reward"] = "Grand Hunts: Uncommon Reward"
--[[Translation missing --]]
La["Gravlion"] = "Gravlion"
--[[Translation missing --]]
La["Grizzlerock"] = "Grizzlerock"
La["Group"] = "Grupo"
La["Guild"] = "Guilda"
--[[Translation missing --]]
La["HOA"] = "HOA"
La["Hold Alt to show all data"] = "Segure a tecla Alt para mostrar todos os dados"
--[[Translation missing --]]
La["HOV"] = "HOV"
La["Hover mouse on indicator for details"] = "Passe o mouse sobre o indicador para obter detalhes"
--[[Translation missing --]]
La["Hunt: Death Elementals"] = "Hunt: Death Elementals"
--[[Translation missing --]]
La["Hunt: Shadehounds"] = "Hunt: Shadehounds"
--[[Translation missing --]]
La["Hunt: Soul Eaters"] = "Hunt: Soul Eaters"
--[[Translation missing --]]
La["Hunt: Winged Soul Eaters"] = "Hunt: Winged Soul Eaters"
--[[Translation missing --]]
La["Iceblade Trio"] = "Iceblade Trio"
--[[Translation missing --]]
La["ID"] = "ID"
La["Ignore"] = "Ignorar"
La["Indicators"] = "Indicadores"
--[[Translation missing --]]
La["Infernum"] = "Infernum"
--[[Translation missing --]]
La["Infested Strongbox"] = "Infested Strongbox"
--[[Translation missing --]]
La["Instance limit in Broker"] = "Instance limit in Broker"
La["Instances"] = "Instância"
--[[Translation missing --]]
La["Interleave"] = "Interleave"
--[[Translation missing --]]
La["Kain Firebrand"] = "Kain Firebrand"
--[[Translation missing --]]
La["Karantun"] = "Karantun"
--[[Translation missing --]]
La["Keystone report target"] = "Keystone report target"
--[[Translation missing --]]
La["KR"] = "KR"
La["Last updated"] = "Ultima atualização"
La["Legion Transmute"] = "Transmutação de Legion"
--[[Translation missing --]]
La["Lesser Visions of N'Zoth"] = "Lesser Visions of N'Zoth"
La["Level %d Characters"] = "Personagens nível %d"
La["LFG cooldown"] = "Recarga do Localizador de Masmorras"
La["LFR"] = "LdR"
La["List categories from the current expansion pack first"] = "Listar primeiro o pacote de expansão atual"
La["List raid categories before dungeon categories"] = "Categorias de raide antes de categorias de masmorras"
--[[Translation missing --]]
La["Lord Kazzak"] = "Lord Kazzak"
--[[Translation missing --]]
La["LOWR"] = "LOWR"
La["Manage"] = "Gerenciar"
--[[Translation missing --]]
La["Mechanized Chest"] = "Mechanized Chest"
La["Miscellaneous Tracking"] = "Diversos"
--[[Translation missing --]]
La["MISTS"] = "MISTS"
--[[Translation missing --]]
La["ML"] = "ML"
--[[Translation missing --]]
La["Mogu Strongbox"] = "Mogu Strongbox"
--[[Translation missing --]]
La["MOS"] = "MOS"
La["Most recent first"] = "Mais recente primeiro"
--[[Translation missing --]]
La["Mythic Best"] = "Mythic Best"
--[[Translation missing --]]
La["Mythic Key Best"] = "Mythic Key Best"
--[[Translation missing --]]
La["Mythic Keystone"] = "Mythic Keystone"
--[[Translation missing --]]
La["Nathanos Blightcaller"] = "Nathanos Blightcaller"
--[[Translation missing --]]
La["Neela Firebane"] = "Neela Firebane"
La["Never show"] = "Nunca mostrar"
--[[Translation missing --]]
La["NL"] = "NL"
--[[Translation missing --]]
La["NW"] = "NW"
La["Opacity of the tooltip row highlighting"] = "Opacidade do destaque da linha de ajuda "
La["Open config"] = "Abrir configuração"
--[[Translation missing --]]
La["Order must be a number in [0 - 999]"] = "Order must be a number in [0 - 999]"
--[[Translation missing --]]
La["Paragon Chests"] = "Paragon Chests"
--[[Translation missing --]]
La["Party"] = "Party"
--[[Translation missing --]]
La["Patterns Within Patterns"] = "Patterns Within Patterns"
--[[Translation missing --]]
La["PF"] = "PF"
--[[Translation missing --]]
La["Pipspark Thundersnap"] = "Pipspark Thundersnap"
--[[Translation missing --]]
La["Primal Storms Core"] = "Primal Storms Core"
--[[Translation missing --]]
La["Primal Storms Elementals"] = "Primal Storms Elementals"
--[[Translation missing --]]
La["Quest progresses"] = "Quest progresses"
La["Raids before dungeons"] = "Reide antes de masmorras"
La["Recent Bonus Rolls"] = "Saque de bônus recentes"
La["Recent Instances"] = "Instâncias recentes"
La["Recover Dailies"] = "Recuperar missões diárias"
La["Report instance resets to group"] = "Redefinir relatório da Instância para o grupo"
La["Reset Characters"] = "Reiniciar personagens"
La["Reverse ordering"] = "Ordem inversa"
--[[Translation missing --]]
La["RLP"] = "RLP"
La["Roll Bonus"] = "Rolar saque de bônus"
--[[Translation missing --]]
La["Rouen Icewind"] = "Rouen Icewind"
La["Row Highlight"] = "Realçar fileira"
--[[Translation missing --]]
La["SBG"] = "SBG"
--[[Translation missing --]]
La["SD"] = "SD"
--[[Translation missing --]]
La["SEAT"] = "SEAT"
La["Set All"] = "Ajustar todos"
--[[Translation missing --]]
La["Show all emissary names"] = "Show all emissary names"
--[[Translation missing --]]
La["Show both factions' emissay name"] = "Show both factions' emissay name"
--[[Translation missing --]]
La["Show calling line when all quests completed"] = "Show calling line when all quests completed"
La["Show category names"] = "Mostrar nome das categorias"
La["Show category names in the tooltip"] = "Mostrar nome das categorias nas Dicas"
La["Show cooldown for characters to use battleground system"] = "Mostrar tempo de espera para personagens poderem usar o sistema de campo de batalha"
La["Show cooldown for characters to use LFG dungeon system"] = "Mostrar tempo de espera do personagens para usr o Localizador Masmorra LFG"
--[[Translation missing --]]
La["Show currency earned"] = "Show currency earned"
--[[Translation missing --]]
La["Show currency max"] = "Show currency max"
--[[Translation missing --]]
La["Show emissary line when all quests completed"] = "Show emissary line when all quests completed"
La["Show Expired"] = "Mostrar expirados"
La["Show expired instance lockouts"] = "Mostrar bloqueios expirados de instância"
La["Show Holiday"] = "Mostrar Feriados"
La["Show holiday boss rewards"] = "Mostrar Chefes de Eventos"
La["Show minimap button"] = "Mostrar botão do minimapa"
La["Show name for a category when all displayed instances belong only to that category"] = "Mostrar o nome de uma categoria, quando todas as instâncias exibidas pertencerem a essa categoria"
La["Show only current server"] = "Mostrar apenas o servidor atual"
La["Show Random"] = "Mostrar Aleatório"
La["Show random dungeon bonus reward"] = "Mostrar recompensa bônus de masmorra aleatóra"
La["Show self always"] = "Sempre mostrar-se"
La["Show self first"] = "Mostrar-se primeiro"
La["Show server name"] = "Mostrar nome do servidor"
La["Show the SavedInstances minimap button"] = "Mostrar o botão do SavedInstances no minimapa"
La["Show tooltip hints"] = "Mostrar Dicas"
La["Show When"] = "Mostrar quando"
--[[Translation missing --]]
La["Show when completed"] = "Show when completed"
La["Show when saved"] = "Mostrar Quando salvo"
La["Show/Hide the SavedInstances tooltip"] = "Mostrar/Ocultar as dicas do SavedInstances"
--[[Translation missing --]]
La["SIEGE"] = "SIEGE"
--[[Translation missing --]]
La["Siege on Dragonbane Keep"] = "Siege on Dragonbane Keep"
La["Similarly, the words KILLED and TOTAL will be substituted with the number of bosses killed and total in the lockout."] = "Da mesma forma, as palavras mortas e TOTAL será substituído com o número de chefes mortos e total do bloqueio."
La["Single category name"] = "Nome da categoria única"
--[[Translation missing --]]
La["SOA"] = "SOA"
--[[Translation missing --]]
La["Sort by currency name"] = "Sort by currency name"
La["Sort by server"] = "Organizar por servidor"
La["Sort categories by"] = "Ordenar categorias por"
La["Sort Order"] = "Organizar por"
--[[Translation missing --]]
La["Sorting"] = "Sorting"
--[[Translation missing --]]
La["SOTS"] = "SOTS"
La["Space between categories"] = "Espaço entre as categorias"
--[[Translation missing --]]
La["Sparks of Life"] = "Sparks of Life"
--[[Translation missing --]]
La["STRT"] = "STRT"
--[[Translation missing --]]
La["TAV"] = "TAV"
--[[Translation missing --]]
La["TD"] = "TD"
La["Text"] = "Texto"
La["The Four Celestials"] = "Os Quatro Celestiais"
--[[Translation missing --]]
La["The World Awaits"] = "The World Awaits"
La["These are the instances that count towards the %i instances per hour account limit, and the time until they expire."] = "Estas são as instâncias que contam para %i instâncias por hora em cada conta, e o tempo até que expirem."
La["This should only be used for characters who have been renamed or deleted, as characters will be re-populated when you log into them."] = "Isto deve ser usado apenas para personagens que foram removidos ou deletados, ou para personagens que serão contabilizados quando você se conectar neles."
La["Time /played"] = "Tempo /played"
La["Time Left"] = "Tempo restante"
--[[Translation missing --]]
La["Timeworn Mythic Keystone"] = "Timeworn Mythic Keystone"
--[[Translation missing --]]
La["TJS"] = "TJS"
--[[Translation missing --]]
La["TNO"] = "TNO"
La["Tooltip Scale"] = "Escala da janela"
--[[Translation missing --]]
La["TOP"] = "TOP"
--[[Translation missing --]]
La["Torghast"] = "Torghast"
--[[Translation missing --]]
La["Tormentors of Torghast"] = "Tormentors of Torghast"
--[[Translation missing --]]
La["TOS"] = "TOS"
--[[Translation missing --]]
La["Track Mythic keystone acquisition"] = "Track Mythic keystone acquisition"
--[[Translation missing --]]
La["Track Mythic keystone best run"] = "Track Mythic keystone best run"
--[[Translation missing --]]
La["Track Timeworn Mythic keystone acquisition"] = "Track Timeworn Mythic keystone acquisition"
La["Trade Skill Cooldowns"] = "Recarga de Habilidades"
La["Trade skills"] = "Habilidades de profissão"
La["Transmute"] = "Transmutação"
--[[Translation missing --]]
La["Trial of Elements"] = "Trial of Elements"
--[[Translation missing --]]
La["Trial of Flood"] = "Trial of Flood"
La["Type"] = "Tipo"
--[[Translation missing --]]
La["UNDR"] = "UNDR"
--[[Translation missing --]]
La["UPPR"] = "UPPR"
La["Use class color"] = "Usar cor das classes"
--[[Translation missing --]]
La["Vision Boss + 2 Bonus Objectives"] = "Vision Boss + 2 Bonus Objectives"
--[[Translation missing --]]
La["Vision Boss Only"] = "Vision Boss Only"
--[[Translation missing --]]
La["Voraazka"] = "Voraazka"
--[[Translation missing --]]
La["VOTW"] = "VOTW"
La["Warfronts"] = "Fronts de Guerra"
--[[Translation missing --]]
La["Warn about instance limit"] = "Warn about instance limit"
La["Warning: You've entered about %i instances recently and are approaching the %i instance per hour limit for your account. More instances should be available in %s."] = "Atenção: Você entrou em cerca de%i Instância e esta se aproximando de %i , limite por hora para a sua conta. Mais instâncias devem estar disponíveis em %s."
--[[Translation missing --]]
La["Water"] = "Water"
--[[Translation missing --]]
La["Water Core"] = "Water Core"
La["Weekly Quests"] = "Missões Semanais"
--[[Translation missing --]]
La["Wild Transmute"] = "Wild Transmute"
--[[Translation missing --]]
La["WM"] = "WM"
--[[Translation missing --]]
La["WORK"] = "WORK"
La["World Boss"] = "Chefes de Mundo"
La["World Bosses"] = "Chefes de Mundo"
--[[Translation missing --]]
La["Wrath of the Jailer"] = "Wrath of the Jailer"
--[[Translation missing --]]
La["YARD"] = "YARD"
La["You can combine icons and text in a single indicator if you wish. Simply choose an icon, and insert the word ICON into the text field. Anywhere the word ICON is found, the icon you chose will be substituted in."] = "Você pode combinar os ícones e texto em um único indicador, se desejar. Basta escolher um ícone, e inserir o ícone no campo de texto. Em qualquer lugar do ícone for encontrado, o ícone que você escolheu será substituída dentro"
--[[Translation missing --]]
La["Zurgaz Corebreaker"] = "Zurgaz Corebreaker"

elseif locale == "itIT" then
  --[[Translation missing --]]
La["|cffffff00Click|r to open weekly rewards"] = "|cffffff00Click|r to open weekly rewards"
La["|cffffff00Left-click|r to detach tooltip"] = " |cffffff00Click sinistro|r per sganciare la finestra"
La["|cffffff00Middle-click|r to show Blizzard's Raid Information"] = "|cffffff00Click-centrale|r permostrare le informazioni Blizzard sul raid"
La["|cffffff00Right-click|r to configure SavedInstances"] = "|cffffff00Click destro|r per configurare SavedInstances"
--[[Translation missing --]]
La["AA"] = "AA"
--[[Translation missing --]]
La["Abbreviate keystones"] = "Abbreviate keystones"
--[[Translation missing --]]
La["Abbreviate Mythic keystone dungeon names"] = "Abbreviate Mythic keystone dungeon names"
La["Account"] = "Account"
La["Account Summary"] = "Riepilogo dell'account"
--[[Translation missing --]]
La["AD"] = "AD"
--[[Translation missing --]]
La["Aiding the Accord"] = "Aiding the Accord"
--[[Translation missing --]]
La["Air"] = "Air"
--[[Translation missing --]]
La["Air Core"] = "Air Core"
La["Always show"] = "Mostra sempre"
--[[Translation missing --]]
La["Amathet Reliquary"] = "Amathet Reliquary"
--[[Translation missing --]]
La["Ambered Coffer"] = "Ambered Coffer"
--[[Translation missing --]]
La["ARC"] = "ARC"
La["Are you sure you want to remove %s from the SavedInstances character database?"] = "Sei sicuro di voler rimuovere %s dal database dei personaggi ?"
--[[Translation missing --]]
La["Are you sure you want to report all your keys to %s?"] = "Are you sure you want to report all your keys to %s?"
La["Are you sure you want to reset the SavedInstances character database? Characters will be re-populated as you log into them."] = "Sei sicuro di voler azzerae il database personaggi di SavedInstances? I personaggi saranno ricalcolati non appena ci entri"
La["Attempt to recover completed daily quests for this character. Note this may recover some additional, linked daily quests that were not actually completed today."] = "Cerca di ripristinare le missioni giornaliere completate per questo personaggio. Nota che questo puo' recuperare alcune missioni aggiuntive, collegate alle giornaliere, che non sono ancora state completate oggi"
La["Automatically shrink the tooltip to fit on the screen"] = "Adatta automaticamente la finestra per adeguarsi allo schermo"
La["Azuregos"] = "Azuregos"
La["Battleground Deserter"] = "Disertore di campi di battaglia"
La["Bind a key to toggle the SavedInstances tooltip"] = "Abbina un tasto per mostrare la finestra di SavedInstances "
--[[Translation missing --]]
La["Bonus loot frame"] = "Bonus loot frame"
La["Bonus rolls"] = "Tiri bonus"
--[[Translation missing --]]
La[ [=[Boss kill information is missing for this lockout.
This is a Blizzard bug affecting certain old raids.]=] ] = [=[Boss kill information is missing for this lockout.
This is a Blizzard bug affecting certain old raids.]=]
--[[Translation missing --]]
La["Bouldron"] = "Bouldron"
--[[Translation missing --]]
La["BRH"] = "BRH"
--[[Translation missing --]]
La["Calling Missing"] = "Calling Missing"
La["Categories"] = "Categorie"
La["Characters"] = "Personaggi"
--[[Translation missing --]]
La["COEN"] = "COEN"
La["Color currency by cap"] = "Colora valute in base al limite"
--[[Translation missing --]]
La["Combine Callings"] = "Combine Callings"
--[[Translation missing --]]
La["Combine Emissaries"] = "Combine Emissaries"
--[[Translation missing --]]
La["Combine emissaries of same expansion"] = "Combine emissaries of same expansion"
La["Combine LFR"] = "Unisci le riceche spedizioni"
La["Combine World Bosses"] = "Unisci i boss mondiali"
--[[Translation missing --]]
La["Community Feast"] = "Community Feast"
La["Connected Realms"] = "Reami connessi"
--[[Translation missing --]]
La["COS"] = "COS"
--[[Translation missing --]]
La["Covenant"] = "Covenant"
--[[Translation missing --]]
La["Covenant Assaults"] = "Covenant Assaults"
--[[Translation missing --]]
La["Crystalus"] = "Crystalus"
La["Currency settings"] = "Impostazioni delle valute"
--[[Translation missing --]]
La["Cursed Coffer"] = "Cursed Coffer"
La["Daily Quests"] = "Missioni giornaliere"
La["Day"] = "Giorno"
--[[Translation missing --]]
La["Debug Mode"] = "Debug Mode"
--[[Translation missing --]]
La["DHT"] = "DHT"
La["Disable mouseover"] = "Disabilita movimento del mouse"
La["Disable tooltip display on icon mouseover"] = "Disattiva i tooltip quando vai sull'icona"
La["Display instances in order of recommended level from lowest to highest"] = "Mostra istanze in ordine del livello raccomandato dal piu' basso al piu' alto"
La["Display instances with space inserted between categories"] = "Mostra le istanze con uno spazio tra le varie categorie"
--[[Translation missing --]]
La["Disturbed Dirt / Expedition Scout's Pack"] = "Disturbed Dirt / Expedition Scout's Pack"
--[[Translation missing --]]
La["Doomwalker"] = "Doomwalker"
--[[Translation missing --]]
La["DOS"] = "DOS"
La["Dragon of Nightmare"] = "Drago dell'Incubo"
--[[Translation missing --]]
La["Dragonflight Experimentation"] = "Dragonflight Experimentation"
--[[Translation missing --]]
La["Dragonflight Renown"] = "Dragonflight Renown"
--[[Translation missing --]]
La["Dragonflight Transmute"] = "Dragonflight Transmute"
--[[Translation missing --]]
La["Dump quest debugging information"] = "Dump quest debugging information"
La["Dump time debugging information"] = "Inserisci l'orario nelle informazioni di debug"
--[[Translation missing --]]
La["Earth"] = "Earth"
--[[Translation missing --]]
La["Earth Core"] = "Earth Core"
--[[Translation missing --]]
La["Emblazion"] = "Emblazion"
--[[Translation missing --]]
La["Emissary Missing"] = "Emissary Missing"
--[[Translation missing --]]
La["Emissary of War"] = "Emissary of War"
--[[Translation missing --]]
La["Emissary Quests"] = "Emissary Quests"
--[[Translation missing --]]
La["Emissary quests"] = "Emissary quests"
--[[Translation missing --]]
La["EOA"] = "EOA"
La["Expansion"] = "Espansione"
La["Expired Lockout - Can be extended"] = "Salvataggio scaduto - puo' essere esteso"
--[[Translation missing --]]
La["Export"] = "Export"
La["Extended Lockout - Not yet saved"] = "Salvataggio esteso - non ancora salvato"
La["Facets of Research"] = "Preziosi da Ricerca"
--[[Translation missing --]]
La["FH"] = "FH"
--[[Translation missing --]]
La["Fire"] = "Fire"
--[[Translation missing --]]
La["Fire Core"] = "Fire Core"
La["Fit to screen"] = "Adatta allo schermo"
La["Flex"] = "Flex"
La["Format large numbers"] = "Adatta i numeri grandi"
--[[Translation missing --]]
La["Frozion"] = "Frozion"
--[[Translation missing --]]
La["Full Clear + 1 Mask"] = "Full Clear + 1 Mask"
--[[Translation missing --]]
La["Full Clear + 2 Masks"] = "Full Clear + 2 Masks"
--[[Translation missing --]]
La["Full Clear + 3 Masks"] = "Full Clear + 3 Masks"
--[[Translation missing --]]
La["Full Clear + 4 Masks"] = "Full Clear + 4 Masks"
--[[Translation missing --]]
La["Full Clear + 5 Masks"] = "Full Clear + 5 Masks"
--[[Translation missing --]]
La["Full Clear No Masks"] = "Full Clear No Masks"
--[[Translation missing --]]
La["Gaelzion"] = "Gaelzion"
--[[Translation missing --]]
La["GD"] = "GD"
La["General settings"] = "Opzioni generali"
--[[Translation missing --]]
La["GMBT"] = "GMBT"
--[[Translation missing --]]
La["Grand Hunt"] = "Grand Hunt"
--[[Translation missing --]]
La["Grand Hunts: Mythic Reward"] = "Grand Hunts: Mythic Reward"
--[[Translation missing --]]
La["Grand Hunts: Rare Reward"] = "Grand Hunts: Rare Reward"
--[[Translation missing --]]
La["Grand Hunts: Uncommon Reward"] = "Grand Hunts: Uncommon Reward"
--[[Translation missing --]]
La["Gravlion"] = "Gravlion"
--[[Translation missing --]]
La["Grizzlerock"] = "Grizzlerock"
La["Group"] = "Gruppo"
--[[Translation missing --]]
La["Guild"] = "Guild"
--[[Translation missing --]]
La["HOA"] = "HOA"
La["Hold Alt to show all data"] = "Tieni premuto Alt per mostrare tutti i dati"
--[[Translation missing --]]
La["HOV"] = "HOV"
La["Hover mouse on indicator for details"] = "Muovi il mouse sugli indicatori per i dettagli"
--[[Translation missing --]]
La["Hunt: Death Elementals"] = "Hunt: Death Elementals"
--[[Translation missing --]]
La["Hunt: Shadehounds"] = "Hunt: Shadehounds"
--[[Translation missing --]]
La["Hunt: Soul Eaters"] = "Hunt: Soul Eaters"
--[[Translation missing --]]
La["Hunt: Winged Soul Eaters"] = "Hunt: Winged Soul Eaters"
--[[Translation missing --]]
La["Iceblade Trio"] = "Iceblade Trio"
--[[Translation missing --]]
La["ID"] = "ID"
La["Ignore"] = "Ignora"
La["Indicators"] = "Indicatori"
--[[Translation missing --]]
La["Infernum"] = "Infernum"
--[[Translation missing --]]
La["Infested Strongbox"] = "Infested Strongbox"
--[[Translation missing --]]
La["Instance limit in Broker"] = "Instance limit in Broker"
La["Instances"] = "Istanze"
La["Interleave"] = "Interlinea"
--[[Translation missing --]]
La["Kain Firebrand"] = "Kain Firebrand"
--[[Translation missing --]]
La["Karantun"] = "Karantun"
--[[Translation missing --]]
La["Keystone report target"] = "Keystone report target"
--[[Translation missing --]]
La["KR"] = "KR"
La["Last updated"] = "Ultimo aggiornamento"
La["Legion Transmute"] = "Trasmutazione di Legion"
--[[Translation missing --]]
La["Lesser Visions of N'Zoth"] = "Lesser Visions of N'Zoth"
La["Level %d Characters"] = "Personaggio di livello %d "
La["LFG cooldown"] = "Tempo rimanente ricerca delle spedizioni"
La["LFR"] = "Ricerca spedizioni"
La["List categories from the current expansion pack first"] = "Elenca categorie partendo dall'espansione attuale"
La["List raid categories before dungeon categories"] = "Elenca le incursioni prima delle spedizioni"
La["Lord Kazzak"] = "Sire Kazzak"
--[[Translation missing --]]
La["LOWR"] = "LOWR"
La["Manage"] = "Gestisci"
--[[Translation missing --]]
La["Mechanized Chest"] = "Mechanized Chest"
La["Miscellaneous Tracking"] = "Tracciature varie"
--[[Translation missing --]]
La["MISTS"] = "MISTS"
--[[Translation missing --]]
La["ML"] = "ML"
--[[Translation missing --]]
La["Mogu Strongbox"] = "Mogu Strongbox"
--[[Translation missing --]]
La["MOS"] = "MOS"
La["Most recent first"] = "Prima i piu' recenti"
--[[Translation missing --]]
La["Mythic Best"] = "Mythic Best"
--[[Translation missing --]]
La["Mythic Key Best"] = "Mythic Key Best"
--[[Translation missing --]]
La["Mythic Keystone"] = "Mythic Keystone"
--[[Translation missing --]]
La["Nathanos Blightcaller"] = "Nathanos Blightcaller"
--[[Translation missing --]]
La["Neela Firebane"] = "Neela Firebane"
La["Never show"] = "Non mostrare mai"
--[[Translation missing --]]
La["NL"] = "NL"
--[[Translation missing --]]
La["NW"] = "NW"
La["Opacity of the tooltip row highlighting"] = "Opacita' dell'evidenziazione delle riga"
La["Open config"] = "Apri opzioni"
--[[Translation missing --]]
La["Order must be a number in [0 - 999]"] = "Order must be a number in [0 - 999]"
--[[Translation missing --]]
La["Paragon Chests"] = "Paragon Chests"
--[[Translation missing --]]
La["Party"] = "Party"
--[[Translation missing --]]
La["Patterns Within Patterns"] = "Patterns Within Patterns"
--[[Translation missing --]]
La["PF"] = "PF"
--[[Translation missing --]]
La["Pipspark Thundersnap"] = "Pipspark Thundersnap"
--[[Translation missing --]]
La["Primal Storms Core"] = "Primal Storms Core"
--[[Translation missing --]]
La["Primal Storms Elementals"] = "Primal Storms Elementals"
--[[Translation missing --]]
La["Quest progresses"] = "Quest progresses"
La["Raids before dungeons"] = "Incursioni prima delle spedizioni"
La["Recent Bonus Rolls"] = "Tiri bonus recenti"
La["Recent Instances"] = "Istanze recenti"
La["Recover Dailies"] = "Ripristina missioni giornaliere"
La["Report instance resets to group"] = "Informa il gruppo del ripristino dell'istanza"
La["Reset Characters"] = "Azzera personaggi"
La["Reverse ordering"] = "Ordinamento inverso"
--[[Translation missing --]]
La["RLP"] = "RLP"
La["Roll Bonus"] = "Tiro bonus"
--[[Translation missing --]]
La["Rouen Icewind"] = "Rouen Icewind"
La["Row Highlight"] = "Evidenzia riga"
--[[Translation missing --]]
La["SBG"] = "SBG"
--[[Translation missing --]]
La["SD"] = "SD"
--[[Translation missing --]]
La["SEAT"] = "SEAT"
La["Set All"] = "Imposta tutto"
--[[Translation missing --]]
La["Show all emissary names"] = "Show all emissary names"
--[[Translation missing --]]
La["Show both factions' emissay name"] = "Show both factions' emissay name"
--[[Translation missing --]]
La["Show calling line when all quests completed"] = "Show calling line when all quests completed"
La["Show category names"] = "Mostra i nomi delle categorie"
La["Show category names in the tooltip"] = "Mostra il nome della categoria nel tooltip"
La["Show cooldown for characters to use battleground system"] = "Mostra il tempo rimanente prima che i personaggi possano usare il sistema di campi di battaglia"
La["Show cooldown for characters to use LFG dungeon system"] = "Mostra il tempo rimanente prima che i personagg possano usare la riceca delle spedizioni"
--[[Translation missing --]]
La["Show currency earned"] = "Show currency earned"
--[[Translation missing --]]
La["Show currency max"] = "Show currency max"
--[[Translation missing --]]
La["Show emissary line when all quests completed"] = "Show emissary line when all quests completed"
La["Show Expired"] = "Mostra scaduti"
La["Show expired instance lockouts"] = "Mostra scadenza salvataggi istanze"
La["Show Holiday"] = "Mostra le feste"
La["Show holiday boss rewards"] = "Mostra ricompense dei boss delle feste"
La["Show minimap button"] = "Mostra bottone minimappa"
La["Show name for a category when all displayed instances belong only to that category"] = "Mostra il nome per una categoria quando tutte le istanze mostrare appartengono solo a quella categoria"
La["Show only current server"] = "Mostra solo server attuale"
La["Show Random"] = "Mostra causale"
La["Show random dungeon bonus reward"] = "Mostra ricompensa bonus per spedizione casuale"
La["Show self always"] = "Mostra sempre questo pg"
La["Show self first"] = "Mostra questo pg per primo"
La["Show server name"] = "Mostra il nome del server"
La["Show the SavedInstances minimap button"] = "Mostra il bottone di SavedInstances nella minimappa"
La["Show tooltip hints"] = "Mostra suggerimenti"
La["Show When"] = "Mostra quando"
La["Show when completed"] = "Mostra quando completato"
La["Show when saved"] = "Mostra quando e' salvato"
La["Show/Hide the SavedInstances tooltip"] = "Mostra/nascondi la finestra di SavedInstances"
--[[Translation missing --]]
La["SIEGE"] = "SIEGE"
--[[Translation missing --]]
La["Siege on Dragonbane Keep"] = "Siege on Dragonbane Keep"
La["Similarly, the words KILLED and TOTAL will be substituted with the number of bosses killed and total in the lockout."] = "Analogamente, le parole UCCISI e TOTALE saranno sostituite dal numero di boss uccisi e totali nel salvataggio"
La["Single category name"] = "Nome categoria singolo"
--[[Translation missing --]]
La["SOA"] = "SOA"
--[[Translation missing --]]
La["Sort by currency name"] = "Sort by currency name"
La["Sort by server"] = "Ordina per server"
La["Sort categories by"] = "Ordina categorie per"
La["Sort Order"] = "Ordinamento"
--[[Translation missing --]]
La["Sorting"] = "Sorting"
--[[Translation missing --]]
La["SOTS"] = "SOTS"
La["Space between categories"] = "Spazio tra le categorie"
--[[Translation missing --]]
La["Sparks of Life"] = "Sparks of Life"
--[[Translation missing --]]
La["STRT"] = "STRT"
--[[Translation missing --]]
La["TAV"] = "TAV"
--[[Translation missing --]]
La["TD"] = "TD"
La["Text"] = "Testo"
La["The Four Celestials"] = "I quattro Celestiali"
--[[Translation missing --]]
La["The World Awaits"] = "The World Awaits"
La["These are the instances that count towards the %i instances per hour account limit, and the time until they expire."] = "Queste sono le istanze conteggiate per il limite orario per account di %i, e il tempo prima che scadano"
La["This should only be used for characters who have been renamed or deleted, as characters will be re-populated when you log into them."] = "Questo dovrebbe essere usato solo per personaggi che sono stati rinominati o cancellati, poiche' i personaggi saranno riesaminati quando ci accedi nuovamente"
La["Time /played"] = "Tempo /giocato"
La["Time Left"] = "Tempo rimanente"
--[[Translation missing --]]
La["Timeworn Mythic Keystone"] = "Timeworn Mythic Keystone"
--[[Translation missing --]]
La["TJS"] = "TJS"
--[[Translation missing --]]
La["TNO"] = "TNO"
La["Tooltip Scale"] = "Zoom del tooltip"
--[[Translation missing --]]
La["TOP"] = "TOP"
--[[Translation missing --]]
La["Torghast"] = "Torghast"
--[[Translation missing --]]
La["Tormentors of Torghast"] = "Tormentors of Torghast"
--[[Translation missing --]]
La["TOS"] = "TOS"
--[[Translation missing --]]
La["Track Mythic keystone acquisition"] = "Track Mythic keystone acquisition"
--[[Translation missing --]]
La["Track Mythic keystone best run"] = "Track Mythic keystone best run"
--[[Translation missing --]]
La["Track Timeworn Mythic keystone acquisition"] = "Track Timeworn Mythic keystone acquisition"
La["Trade Skill Cooldowns"] = "Tempo di scadenza professioni"
La["Trade skills"] = "Professioni"
La["Transmute"] = "Trasmutazioni"
--[[Translation missing --]]
La["Trial of Elements"] = "Trial of Elements"
--[[Translation missing --]]
La["Trial of Flood"] = "Trial of Flood"
La["Type"] = "Tipo"
--[[Translation missing --]]
La["UNDR"] = "UNDR"
--[[Translation missing --]]
La["UPPR"] = "UPPR"
La["Use class color"] = "Usa colori delle classi"
--[[Translation missing --]]
La["Vision Boss + 2 Bonus Objectives"] = "Vision Boss + 2 Bonus Objectives"
--[[Translation missing --]]
La["Vision Boss Only"] = "Vision Boss Only"
--[[Translation missing --]]
La["Voraazka"] = "Voraazka"
--[[Translation missing --]]
La["VOTW"] = "VOTW"
La["Warfronts"] = "Fronti di Guerra"
--[[Translation missing --]]
La["Warn about instance limit"] = "Warn about instance limit"
La["Warning: You've entered about %i instances recently and are approaching the %i instance per hour limit for your account. More instances should be available in %s."] = "Attenzione: Sei entrato in circa %i istanze, recentemente e ti stai avvicinando al limite orario di %i istanze per account. Altre istanze saranno disponibili in %s."
--[[Translation missing --]]
La["Water"] = "Water"
--[[Translation missing --]]
La["Water Core"] = "Water Core"
La["Weekly Quests"] = "Missioni settimanali"
La["Wild Transmute"] = "Trasmutazione selvaggia"
--[[Translation missing --]]
La["WM"] = "WM"
--[[Translation missing --]]
La["WORK"] = "WORK"
La["World Boss"] = "Boss mondiale"
La["World Bosses"] = "Boss mondiali"
--[[Translation missing --]]
La["Wrath of the Jailer"] = "Wrath of the Jailer"
--[[Translation missing --]]
La["YARD"] = "YARD"
La["You can combine icons and text in a single indicator if you wish. Simply choose an icon, and insert the word ICON into the text field. Anywhere the word ICON is found, the icon you chose will be substituted in."] = "Puoi unire icone e testo in un unico indicatore se vuoi. Basta scegliere una icona, e inserire la parola ICON nel campo testo. Ovunque viene trovata la parola ICON, l'icona che hai scelto la sostituira'."
--[[Translation missing --]]
La["Zurgaz Corebreaker"] = "Zurgaz Corebreaker"

end
