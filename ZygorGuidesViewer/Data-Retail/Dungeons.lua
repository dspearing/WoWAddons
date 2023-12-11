local name,ZGV = ...

local L = ZGV.L

local Dungeons = ZGV.Dungeons

Dungeons.ExpansionsLimits = {
	[0] = 30, -- vanilla
	[1] = 30, -- tbc
	[2] = 30, -- wotlk
	[3] = 35, -- cata
	[4] = 35, -- mop
	[5] = 40, -- wod
	[6] = 45, -- legion
	[7] = 50, -- bfa
	[8] = 60, -- shadowlands
	[9] = 70, -- dragonflight
}

Dungeons.Phases = {
	["amirdrassil1"] = true,
	["amirdrassil2"] = false,
	["amirdrassil3"] = false,
	["amirdrassil4"] = false,

}

-- Timewalks and legion mythics do not have any lfg entry, so we need to hardcode basic data for them
Dungeons.hardcoded_dungeons = {
	-- timewalk tbc
	["e_249_24"] = {expansionLevel=1, minLevel=11, difficulty=24, name="Magisters' Terrace"},
	["e_250_24"] = {expansionLevel=1, minLevel=11, difficulty=24, name="Mana-Tombs"},
	["e_254_24"] = {expansionLevel=1, minLevel=11, difficulty=24, name="The Arcatraz"},
	["e_255_24"] = {expansionLevel=1, minLevel=11, difficulty=24, name="The Black Morass"},
	["e_259_24"] = {expansionLevel=1, minLevel=11, difficulty=24, name="The Shattered Halls"},
	["e_260_24"] = {expansionLevel=1, minLevel=11, difficulty=24, name="The Slave Pens"},
	-- timewalk wotlk			
	["e_271_24"] = {expansionLevel=2, minLevel=11, difficulty=24, name="Ahn'kahet: The Old Kingdom"},
	["e_274_24"] = {expansionLevel=2, minLevel=11, difficulty=24, name="Gundrak"},
	["e_275_24"] = {expansionLevel=2, minLevel=11, difficulty=24, name="Halls of Lightning"},
	["e_278_24"] = {expansionLevel=2, minLevel=11, difficulty=24, name="Pit of Saron"},
	["e_281_24"] = {expansionLevel=2, minLevel=11, difficulty=24, name="The Nexus"},
	["e_286_24"] = {expansionLevel=2, minLevel=11, difficulty=24, name="Utgarde Pinnacle"},
	-- timewalk cata			
	["e_184_24"] = {expansionLevel=3, minLevel=11, difficulty=24, name="End Time"},
	["e_71_24"]  = {expansionLevel=3, minLevel=11, difficulty=24, name="Grim Batol"},
	["e_69_24"]  = {expansionLevel=3, minLevel=11, difficulty=24, name="Lost City of the Tol'vir"},
	["e_67_24"]  = {expansionLevel=3, minLevel=11, difficulty=24, name="The Stonecore"},
	["e_68_24"]  = {expansionLevel=3, minLevel=11, difficulty=24, name="The Vortex Pinnacle"},
	["e_65_24"]  = {expansionLevel=3, minLevel=11, difficulty=24, name="Throne of the Tides"},
	-- timewalk mop				
	["e_303_24"] = {expansionLevel=4, minLevel=11, difficulty=24, name="Gate of the Setting Sun"},
	["e_321_24"] = {expansionLevel=4, minLevel=11, difficulty=24, name="Mogu'Shan Palace"},
	["e_312_24"] = {expansionLevel=4, minLevel=11, difficulty=24, name="Shado'Pan Monastery"},
	["e_324_24"] = {expansionLevel=4, minLevel=11, difficulty=24, name="Siege of Niuzao Temple"},
	["e_302_24"] = {expansionLevel=4, minLevel=11, difficulty=24, name="Stormstout Brewery"},
	["e_313_24"] = {expansionLevel=4, minLevel=11, difficulty=24, name="Temple of the Jade Dragon"},

	-- mythic mop
	["e_313_23"] = {expansionLevel=4, minLevel=70, difficulty=23, name="Temple of the Jade Dragon"},

	-- mythic legion
	["e_777_23"]  = {expansionLevel=6, minLevel=50, --[[min_ilevel=170,--]] difficulty=23, name="Assault on Violet Hold"},
	["e_740_23"]  = {expansionLevel=6, minLevel=50, --[[min_ilevel=170,--]] difficulty=23, name="Black Rook Hold"},
	["e_800_23"]  = {expansionLevel=6, minLevel=50, --[[min_ilevel=170,--]] difficulty=23, name="Court of Stars"},
	["e_762_23"]  = {expansionLevel=6, minLevel=50, --[[min_ilevel=170,--]] difficulty=23, name="Darkheart Thicket"},
	["e_716_23"]  = {expansionLevel=6, minLevel=50, --[[min_ilevel=170,--]] difficulty=23, name="Eye of Azshara"},
	["e_721_23"]  = {expansionLevel=6, minLevel=50, --[[min_ilevel=170,--]] difficulty=23, name="Halls of Valor"},
	["e_727_23"]  = {expansionLevel=6, minLevel=50, --[[min_ilevel=170,--]] difficulty=23, name="Maw of Souls"},
	["e_767_23"]  = {expansionLevel=6, minLevel=50, --[[min_ilevel=170,--]] difficulty=23, name="Neltharion's Lair"},
	["e_726_23"]  = {expansionLevel=6, minLevel=50, --[[min_ilevel=170,--]] difficulty=23, name="The Arcway"},
	["e_707_23"]  = {expansionLevel=6, minLevel=50, --[[min_ilevel=170,--]] difficulty=23, name="Vault of the Wardens"},
	["e_860_23"]  = {expansionLevel=6, minLevel=50, --[[min_ilevel=170,--]] difficulty=23, name="Return to Karazhan"},
	["e_900_23"]  = {expansionLevel=6, minLevel=50, --[[min_ilevel=170,--]] difficulty=23, name="Cathedral of Eternal Night"},
	["e_945_23"]  = {expansionLevel=6, minLevel=50, --[[min_ilevel=170,--]] difficulty=23, name="Seat of the Triumvirate"},
	-- mythic battle for azeroth
	["e_968_23"]   = {expansionLevel=7, minLevel=50, --[[min_ilevel=310,--]] difficulty=23, name="Atal'Dazar"},
	["e_1001_23"]  = {expansionLevel=7, minLevel=50, --[[min_ilevel=310,--]] difficulty=23, name="Freehold"},
	["e_1041_23"]  = {expansionLevel=7, minLevel=50, --[[min_ilevel=310,--]] difficulty=23, name="Kings' Rest"},
	["e_1036_23"]  = {expansionLevel=7, minLevel=50, --[[min_ilevel=310,--]] difficulty=23, name="Shrine of the Storm"},
	["e_1023_23"]  = {expansionLevel=7, minLevel=50, --[[min_ilevel=310,--]] difficulty=23, name="Siege of Boralus"},
	["e_1030_23"]  = {expansionLevel=7, minLevel=50, --[[min_ilevel=310,--]] difficulty=23, name="Temple of Sethraliss"},
	["e_1012_23"]  = {expansionLevel=7, minLevel=50, --[[min_ilevel=310,--]] difficulty=23, name="The MOTHERLODE!!"},
	["e_1022_23"]  = {expansionLevel=7, minLevel=50, --[[min_ilevel=310,--]] difficulty=23, name="The Underrot"},
	["e_1002_23"]  = {expansionLevel=7, minLevel=50, --[[min_ilevel=310,--]] difficulty=23, name="Tol Dagor"},
	["e_1021_23"]  = {expansionLevel=7, minLevel=50, --[[min_ilevel=310,--]] difficulty=23, name="Waycrest Manor"},
	--["e_1178"]  = {expansionLevel=7, minLevel=120, min_ilevel=310, difficulty=23, name="Operation: Mechagon",  },

	-- world bosses
	["e_322_14"]  = {expansionLevel=4, minLevel=50, --[[min_ilevel=70,--]] difficulty=14, name="World Bosses"},
	["e_557_14"]  = {expansionLevel=5, minLevel=50, --[[min_ilevel=90,--]] difficulty=14, name="World Bosses"},
	["e_833_14"]  = {expansionLevel=6, minLevel=50, --[[min_ilevel=150,--]] difficulty=14, name="World Bosses"},
	["e_1028_14"] = {expansionLevel=7, minLevel=50, --[[min_ilevel=280,--]] difficulty=14, name="World Bosses"}, 

	-- mythic+
	["e_65_8"] =   {expansionLevel=3, minLevel=70, difficulty=8, name="Throne of the Tides"},
	["e_556_8"] =  {expansionLevel=5, minLevel=70, difficulty=8, name="The Everbloom"},
	["e_740_8"] =  {expansionLevel=6, minLevel=70, difficulty=8, name="Black Rook Hold"},
	["e_762_8"] =  {expansionLevel=6, minLevel=70, difficulty=8, name="Darkheart Thicket"},
	["e_968_8"] =  {expansionLevel=7, minLevel=70, difficulty=8, name="Atal'Dazar"},
	["e_1021_8"] = {expansionLevel=7, minLevel=70, difficulty=8, name="Waycrest Manor"},
	["e_1209_8"] = {expansionLevel=9, minLevel=70, difficulty=8, name="Dawn of the Infinite"},
}

Dungeons.max_levels = {
	[2093]=60, -- Castle Nathria (Mythic)
	[2092]=60, -- Castle Nathria, Blood From Stone
	[2091]=60, -- Castle Nathria, Reliquary of Opulence
	[2096]=60, -- Castle Nathria, An Audience with Arrogance
	[2090]=60, -- Castle Nathria, The Leeching Vaults
	[2225]=60, -- Tazavesh (Mythic)
	[2226]=60, -- Sanctum of Domination (Mythic)
	[2037]=50, -- Ny'alotha, the Waking City, Halls of Devotion
	[2038]=50, -- Ny'alotha, the Waking City, Gift of Flesh
	[2036]=50, -- Ny'alotha, the Waking City, Vision of Destiny
	[2039]=50, -- Ny'alotha, the Waking City, The Waking Dream
	[2010]=50, -- Eternal Palace, Depths of the Devoted
	[2011]=50, -- Eternal Palace, The Circle of Stars
	[2009]=50, -- Eternal Palace, The Grand Reception
	[1731]=50, -- Uldir, Halls of Containment
	[1732]=50, -- Uldir, Crimson Descent
	[1733]=50, -- Uldir, Heart of Corruption
	[1947]=50, -- Dazar'alor, Might of the Alliance
	[1945]=50, -- Dazar'alor, Siege of Dazar'alor
	[1949]=50, -- Dazar'alor, Death's Bargain
	[1946]=50, -- Dazar'alor, Empire's Fall
	[1950]=50, -- Dazar'alor, Victory or Death
	[1947]=50, -- Dazar'alor, Might of the Alliance
	[1945]=50, -- Dazar'alor, Siege of Dazar'alor
	[1949]=50, -- Dazar'alor, Death's Bargain
	[1946]=50, -- Dazar'alor, Empire's Fall
	[1950]=50, -- Dazar'alor, Victory or Death
	[1948]=50, -- Dazar'alor, Defense of Dazar'alor
	[1951]=50, -- Crucible of Storms
	[2290]=60, -- Sepulcher of the First Ones (Mythic)
	[2291]=60, -- Sepulcher of the First Ones (LFR)
	[2292]=60, -- Sepulcher of the First Ones (LFR)
	[2293]=60, -- Sepulcher of the First Ones (LFR)
	[2294]=60, -- Sepulcher of the First Ones (LFR)
	[2405]=70, -- Aberrus, the Shadowed Crucible (Mythic)
	[2399]=70, -- Aberrus, the Shadowed Crucible (LFR)
	[2400]=70, -- Aberrus, the Shadowed Crucible (LFR)
	[2401]=70, -- Aberrus, the Shadowed Crucible (LFR)
	[2402]=70, -- Aberrus, the Shadowed Crucible (LFR)
}

Dungeons.add_flags = {
	["e_860"] = { attunement_achieve=11547 }, -- Return to Karazhan M
	["e_900"] = { attunement_queston=46244 }, -- Cathedral of Eternal Night M
	[1115] = { attunement_achieve=11547 }, -- Return to Karazhan HC
	[1488] = { attunement_queston=46244 }, -- Cathedral of Eternal Night HC

	[2466] = { phase="amirdrassil1" },
	[2468] = { phase="amirdrassil2" },
	[2467] = { phase="amirdrassil3" },
	[2469] = { phase="amirdrassil4" },


}