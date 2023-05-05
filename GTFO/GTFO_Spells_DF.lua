--------------------------------------------------------------------------
-- GTFO_Spells_DF.lua 
--------------------------------------------------------------------------
--[[
GTFO Spell List - Dragonflight
]]--

if (not (GTFO.ClassicMode or GTFO.BurningCrusadeMode or GTFO.WrathMode)) then

--- ************************
--- * Dragon Isles (World) *
--- ************************

GTFO.SpellID["362970"] = {
	--desc = "Electified Water";
	sound = 2;
};

GTFO.SpellID["376052"] = {
	--desc = "Aura of the Tempest (Avatar of the Storm)";
	sound = 1;
};

GTFO.SpellID["376069"] = {
	--desc = "Smite of the Tempest (Avatar of the Storm)";
	sound = 1;
};

GTFO.SpellID["390326"] = {
  --desc = "Frigid Glaze (Glacial Ice Lord)";
  sound = 1;
};

GTFO.SpellID["372339"] = {
  --desc = "Lava";
  category = "Lava";
  sound = 1;
};

GTFO.SpellID["393577"] = {
  --desc = "Path of Fire (Champion Choruk)";
  sound = 1;
};

GTFO.SpellID["382753"] = {
  --desc = "In Their Sights";
  applicationOnly = true;
  soundFunction = function() 
	local stacks = GTFO_DebuffStackCount("player", 382753);
	if (stacks > 6) then
		return 1;
	else
		return 2;
	end
  end;
};

GTFO.SpellID["393707"] = {
  --desc = "Lava Breath (Rakkesh of the Flow)";
  sound = 1;
};

GTFO.SpellID["374873"] = {
  --desc = "Lightning Rod (Nokhud Marauder)";
  sound = 1;
};

GTFO.SpellID["372839"] = {
  --desc = "Lightning Rod (Nokhud Marauder)";
  sound = 1;
};

GTFO.SpellID["392953"] = {
  --desc = "Reaping Flame (Korthrox the Destroyer)";
  sound = 1;
};

GTFO.SpellID["393043"] = {
  --desc = "Unstable Sands (Colossal Causality)";
  sound = 1;
};

GTFO.SpellID["373643"] = {
  --desc = "Primal Lava Conduit (Primalist Lava Conduit)";
  sound = 2;
};

GTFO.SpellID["393528"] = {
  --desc = "Magma Fist (Ceeqa the Peacetaker)";
  sound = 1;
};

GTFO.SpellID["370042"] = {
  --desc = "Lava Pool (Primal Lava Elemental)";
  sound = 1;
};

GTFO.SpellID["388759"] = {
  --desc = "Blazing Trail (Cobalt Assembly)";
  sound = 1;
};

GTFO.SpellID["393467"] = {
  --desc = "Stormwall (Forbidden Isles)";
  sound = 1;
};

GTFO.SpellID["377853"] = {
  --desc = "Unstable Time (Eon's Fringe)";
  applicationOnly = true;
  soundFunction = function() 
	local stacks = GTFO_DebuffStackCount("player", 377853);
	if (UnitOnTaxi("player")) then
		-- Don't alert when flying through this area on a flight path
		return 0;
	elseif (stacks > 45) then
		-- Get teleported out at 49 stacks (98% movement reduction)
		return 1;
	elseif (stacks == 1 or stacks % 10 == 0 or stacks >= 40) then
		-- Getting close to being teleported out
		return 2;
	end
  end;
};

GTFO.SpellID["385355"] = {
  --desc = "Fracturing Tremor - Pool (Basrikron)";
  sound = 1;
};

GTFO.SpellID["378927"] = {
  --desc = "Blizzard";
  sound = 1;
};

GTFO.SpellID["391190"] = {
  --desc = "Stir (Bisquius)";
  sound = 1;
};

GTFO.SpellID["395561"] = {
  --desc = "Restless Earth (Gravlion)";
  sound = 1;
};

GTFO.SpellID["395562"] = {
  --desc = "Restless Earth (Gravlion)";
  applicationOnly = true;
  sound = 1;
};

GTFO.SpellID["375033"] = {
  --desc = "Quaking Spike";
  sound = 1;
};

GTFO.SpellID["394073"] = {
  --desc = "Furious Flames (Vadne Bleakheart)";
  sound = 1;
};

GTFO.SpellID["369690"] = {
  --desc = "Molten Trail (Cauldronbearer Blakor)";
  sound = 1;
};

GTFO.SpellID["390295"] = {
  --desc = "Arc Expulsion (Strunraan)";
  sound = 1;
};

GTFO.SpellID["388459"] = {
  --desc = "Glaciate (Cobalt Assembly)";
  applicationOnly = true;
  sound = 1;
};

GTFO.SpellID["388379"] = {
  --desc = "Glaciate (Cobalt Assembly)";
  applicationOnly = true;
  sound = 1;
};

GTFO.SpellID["377838"] = {
  --desc = "Slowing Sands";
  sound = 1;
};

GTFO.SpellID["393562"] = {
  --desc = "Lava Pool (Zhurtan the Riverboiler)";
  sound = 1; -- Ground AOE spawned by a mob, not be ignored like other "lava pools"
};

GTFO.SpellID["393753"] = {
  --desc = "Languid Bloom (Taresh)";
  sound = 1;
};

GTFO.SpellID["389287"] = {
  --desc = "Glacial Storm (Liskanoth)";
  applicationOnly = true;
  sound = 1;
};

GTFO.SpellID["396050"] = {
  --desc = "Freezing";
  applicationOnly = true;
  test = true;
  soundFunction = function() 
	local stacks = GTFO_DebuffStackCount("player", 396050);
	if (stacks > 15) then
		return 1;
	elseif (stacks == 1 or stacks % 10 == 0 or stacks >= 40) then
		-- Getting close to being teleported out
		return 2;
	end
  end;
};

GTFO.SpellID["396911"] = {
  --desc = "Fire Patch";
  sound = 1;
};

GTFO.SpellID["406272"] = {
  --desc = "Wild Flames (Bonesifter Marwak)";
  sound = 1;
  test = true;
};

GTFO.SpellID["400606"] = {
  --desc = "Inferno (Nidharr)";
  sound = 1;
};

GTFO.SpellID["400713"] = {
  --desc = "Magma Wake (Nidharr)";
  sound = 1;
  ignoreApplication = true;
};

GTFO.SpellID["400687"] = {
  --desc = "Rain of Devastation (Wyrmslayer Angvardi)";
  sound = 1;
};

GTFO.SpellID["407721"] = {
  --desc = "Dead In The Water (Ookbeard)";
  sound = 1;
};

GTFO.SpellID["407712"] = {
  --desc = "Dead In The Water (Ookbeard)";
  sound = 1;
};

GTFO.SpellID["404653"] = {
  --desc = "Hard to Port (Grugoth the Hullcrusher)";
  sound = 1;
  tankSound = 0;
};

GTFO.SpellID["340409"] = {
  --desc = "Corrupted Residue (Forgotten Research)";
  sound = 1;
};

GTFO.SpellID["374238"] = {
  --desc = "Crushing Earth";
  sound = 1;
};

GTFO.SpellID["373908"] = {
  --desc = "Celestial Sear";
  sound = 1;
};

GTFO.SpellID["401136"] = {
  --desc = "Ancient Ice";
  sound = 2;
};

GTFO.SpellID["401087"] = {
  --desc = "Detected!";
  sound = 1;
  negatingBuffSpellID = 401091; -- Reflective Arcane Ward
};

--- *******************
--- * Ruby Life Pools *
--- *******************

GTFO.SpellID["372697"] = {
  --desc = "Jagged Earth (Primal Juggernaut)";
  sound = 1;
};

GTFO.SpellID["372963"] = {
  --desc = "Chillstorm (Melidrussa Chillworn)";
  applicationOnly = true;
  sound = 1;
};

GTFO.SpellID["397077"] = {
  --desc = "Chillstorm (Melidrussa Chillworn)";
  sound = 1;
  affirmingDebuffSpellID = 372963; -- Chillstorm inner circle
};

GTFO.SpellID["374927"] = {
  --desc = "Wall of Flames (Kokia Blazehoof)";
  sound = 1;
};

GTFO.SpellID["392452"] = {
  --desc = "Flashfire (Flame Channeler)";
  sound = 4;
  negatingDebuffSpellID = 392451; -- Flashfire debuff
  negatingIgnoreTime = 2;
};

GTFO.SpellID["384773"] = {
  --desc = "Flaming Embers (Kyrakka)";
  sound = 1;
};

GTFO.SpellID["381526"] = {
  --desc = "Roaring Firebreath (Kyrakka)";
  sound = 1;
};

GTFO.SpellID["391727"] = {
  --desc = "Storm Breath (Thunderhead)";
  sound = 1;
};

GTFO.SpellID["391724"] = {
  --desc = "Flame Breath (Flamegullet)";
  sound = 1;
};

GTFO.SpellID["373973"] = {
  --desc = "Blaze of Glory (Primalist Flamedancer)";
  sound = 1;
};

GTFO.SpellID["372820"] = {
  --desc = "Scorched Earth (Kokia Blazehoof)";
  sound = 1;
};

GTFO.SpellID["392019"] = {
  --desc = "Magma Eruption (Bazual)";
  applicationOnly = true;
  sound = 1;
};

GTFO.SpellID["389366"] = {
  --desc = "Magma Eruption (Bazual)";
  sound = 1;
};

--- ************************
--- * The Nokhud Offensive *
--- ************************

GTFO.SpellID["386912"] = {
  --desc = "Stormsurge Cloud (Stormsurge Totem)";
  sound = 1;
};

GTFO.SpellID["395680"] = {
  --desc = "Ritual of Desecration (Gravelord Monkh)";
  sound = 1;
};

GTFO.SpellID["388104"] = {
  --desc = "Ritual of Desecration (Gravelord Monkh)";
  sound = 1;
};

GTFO.SpellID["384512"] = {
  --desc = "Cleaving Strikes (Nokhud Defender)";
  sound = 1;
  tankSound = 0;
};

GTFO.SpellID["386916"] = {
  --desc = "The Raging Tempest (The Raging Tempest)";
  sound = 1;
};

GTFO.SpellID["395669"] = {
  --desc = "Aftershock (Maruuk)";
  sound = 1;
};

GTFO.SpellID["376899"] = {
  --desc = "Crackling Cloud (Balakar Khan)";
  sound = 1;
};

--- **********************
--- * Brackenhide Hollow *
--- **********************

GTFO.SpellID["382556"] = {
  --desc = "Ragestorm (Bracken Warscourge)";
  sound = 2;
  soundHeroic = 1;
  soundMythic = 1;
  SoundChallenge = 1;
  tankSound = 2;
  soundHeroic = 2;
  soundMythic = 2;
  tankSoundChallenge = 1; -- Probably hurts a lot on M+, need to confirm next season
};

GTFO.SpellID["368299"] = {
  --desc = "Toxic Trap - Pool (Bonebolt Hunter)";
  sound = 1;
};

GTFO.SpellID["377807"] = {
  --desc = "Cleave (Rira Hackclaw)";
  sound = 1;
  tankSound = 0;
};

GTFO.SpellID["377830"] = {
  --desc = "Bladestorm (Rira Hackclaw)";
  sound = 1;
  test = true; -- Need more info about this one
};

GTFO.SpellID["374245"] = {
  --desc = "Rotting Creek";
  sound = 1;
};

GTFO.SpellID["383399"] = {
  --desc = "Rotting Surge (Treemouth)";
  sound = 1;
};

GTFO.SpellID["379425"] = {
  --desc = "Decaying Fog (Decatriarch Wratheye)";
  sound = 1;
};

GTFO.SpellID["376170"] = {
  --desc = "Choking Rotcloud - Pool (Decatriarch Wratheye)";
  sound = 1;
};

GTFO.SpellID["376149"] = {
  --desc = "Choking Rotcloud - Initial Blast";
  sound = 1;
};

GTFO.SpellID["372141"] = {
  --desc = "Withering Away! (Wilted Oak)";
  sound = 1;
};

GTFO.SpellID["378054"] = {
  --desc = "Withering Away! (Treemouth)";
  sound = 1;
};


--- *********************
--- * Halls of Infusion *
--- *********************

GTFO.SpellID["393444"] = {
  --desc = "Gushing Wound (Refti Defender)";
  applicationOnly = true;
  sound = 1;
  tankSound = 0;
};

GTFO.SpellID["389181"] = {
  --desc = "Power Field (Watcher Irideus)";
  sound = 1;
};

GTFO.SpellID["375080"] = {
  --desc = "Whirling Fury (Squallbringer Cyraz)";
  sound = 1;
};

GTFO.SpellID["375349"] = {
  --desc = "Gusting Breath (Gusting Proto-Dragon)";
  sound = 1;
  tankSound = 0;
};

GTFO.SpellID["375341"] = {
  --desc = "Tectonic Breath (Subterranean Proto-Dragon)";
  sound = 1;
  tankSound = 0;
};

GTFO.SpellID["375353"] = {
  --desc = "Oceanic Breath (Glacial Proto-Dragon)";
  sound = 1;
  tankSound = 0;
};

GTFO.SpellID["385168"] = {
  --desc = "Thunderstorm (Primalist Galesinger)";
  sound = 1;
};

--- *********************
--- * Algeth'ar Academy *
--- *********************

GTFO.SpellID["388957"] = {
  --desc = "Riftbreath (Arcane Ravager)";
  sound = 1;
};

GTFO.SpellID["386201"] = {
  --desc = "Corrupted Mana (Vexamus)";
  sound = 1;
};

GTFO.SpellID["388546"] = {
  --desc = "Arcane Fissure (Vexamus)";
  sound = 1;
  test = true;
};

GTFO.SpellID["387932"] = {
  --desc = "Astral Whirlwind (Algeth'ar Echoknight)";
  applicationOnly = true;
  sound = 1;
};

GTFO.SpellID["389007"] = {
  --desc = "Wild Energy (Echo of Doragosa)";
  applicationOnly = true;
  sound = 1;
};

--- *************
--- * Neltharus *
--- *************

GTFO.SpellID["372372"] = {
	--desc = "Magma Fist (Qalashi Trainee)";
	sound = 1;
};

GTFO.SpellID["372208"] = {
	--desc = "Djaradin Lava";
	sound = 1;
};

GTFO.SpellID["372203"] = {
	--desc = "Scorching Breath (Qalashi Irontorch)";
	sound = 1;
};

GTFO.SpellID["372459"] = {
	--desc = "Burning";
	sound = 1;
};

GTFO.SpellID["375204"] = {
	--desc = "Liquid Hot Magma (Magmatusk)";
	sound = 1;
};

GTFO.SpellID["375535"] = {
  --desc = "Lava Wave (Magmatusk)";
  sound = 1;
};

GTFO.SpellID["377542"] = {
	--desc = "Burning Ground (Warlord Sargha)";
	sound = 1;
};

GTFO.SpellID["373756"] = {
  --desc = "Magma Wave (Chargath, Bane of Scales)";
  sound = 1;
};

GTFO.SpellID["374854"] = {
  --desc = "Erupted Ground (Chargath, Bane of Scales)";
  sound = 1;
};

GTFO.SpellID["381482"] = {
  --desc = "Forgefire (Forgemaster Gorek)";
  sound = 1;
};


--- *******************
--- * The Azure Vault *
--- *******************

GTFO.SpellID["375649"] = {
  --desc = "Infused Ground (Arcane Tender)";
  sound = 1;
};

GTFO.SpellID["371021"] = {
  --desc = "Splintering Shards (Crystal Thrasher)";
  sound = 4;
  negatingDebuffSpellID = 371007; -- Splintering Shards
  test = true; -- Does this work?
};

GTFO.SpellID["374523"] = {
  --desc = "Stinging Sap (Ley-Line Sprout)";
  sound = 1;
};

GTFO.SpellID["391120"] = {
  --desc = "Spellfrost Breath (Scalebane Lieutenant)";
  sound = 1;
  tankSound = 0;
};

GTFO.SpellID["387150"] = {
  --desc = "Frozen Ground (Telash Greywing)";
  sound = 1;
};

GTFO.SpellID["385267"] = {
  --desc = "Crackling Vortex (Umbrelskul)";
  sound = 1;
};

GTFO.SpellID["387152"] = {
  --desc = "Icy Devastator (Telash Greywing)";
  sound = 4;
  negatingDebuffSpellID = 387151; -- Icy Devastator
  negatingIgnoreTime = 4;
};

GTFO.SpellID["387848"] = {
  --desc = "Astral Nova (Spectral Invoker)";
  sound = 4;
  ignoreSelfInflicted = true;
};

--- **************************
--- * Uldaman: Legacy of Tyr *
--- **************************

GTFO.SpellID["377825"] = {
  --desc = "Burning Pitch";
  sound = 1;
};

GTFO.SpellID["369337"] = {
  --desc = "Difficult Terrain (Runic Protector)";
  applicationOnly = true;
  sound = 2;
};

GTFO.SpellID["382576"] = {
  --desc = "Scorn of Tyr (Earthen Guardian)";
  sound = 1;
};

GTFO.SpellID["368996"] = {
  --desc = "Purging Flames (Emberon)";
  sound = 1;
};

GTFO.SpellID["376325"] = {
  --desc = "Eternity Zone (Chrono-Lord Deios)";
  sound = 1;
};

--- ***************************
--- * Vault of the Incarnates *
--- ***************************

GTFO.SpellID["370648"] = {
  --desc = "Lava Flow (Eranog)";
  sound = 1;
};

GTFO.SpellID["392563"] = {
  --desc = "Whirling Destruction (Quarry Stonebreaker)";
  sound = 1;
  tankSound = 0;
};

GTFO.SpellID["393784"] = {
  --desc = "Magma Breath (Iskakx)";
  sound = 1;
  tankSound = 0;
};

GTFO.SpellID["382458"] = {
  --desc = "Resonant Aftermath (Terros)";
  sound = 1;
};

GTFO.SpellID["398200"] = {
  --desc = "Djaradin Lava";
  sound = 1;
};

GTFO.SpellID["396544"] = {
  --desc = "Charred Ground (Magmas)";
  sound = 1;
};

GTFO.SpellID["371514"] = {
  --desc = "Scorched Ground (Embar)";
  soundFunction = function() 
	if (GTFO_HasDebuff("player", 391599) or GTFO_HasDebuff("player", 371836)) then -- Primal Blizzard, two types
		return 0;
	end
	return 1;
  end;
};

GTFO.SpellID["372055"] = {
  --desc = "Icy Ground (Sennarth)";
  sound = 2;
  category = "IcyGround";
};

GTFO.SpellID["371836"] = {
  --desc = "Primal Blizzard (Kadros Icewrath)";
  soundFunction = function() 
	local stacks = GTFO_DebuffStackCount("player", 371836);
	if (stacks == 7 or stacks == 8) then
		return 2;
	elseif (stacks == 9) then
		return 1;
	end
  end;
};

GTFO.SpellID["371624"] = {
  --desc = "Conductive Mark (Dathea Stormlash)";
  spellType = "SPELL_AURA_APPLIED_DOSE"; -- Only alert when passing debuff to another player, refreshing your own
  sound = 4;
};

GTFO.SpellID["372030"] = {
  --desc = "Sticky Webbing (Sennarth)";
  applicationOnly = true;
  soundFunction = function() 
	GTFO_AddEvent("StickyWebbing", 30);
	local stacks = GTFO_DebuffStackCount("player", 372030);
	if (stacks > 6) then
		return 1;
	else
		return 2;
	end
  end;
};

GTFO.SpellID["391686"] = {
  --desc = "Conductive Mark (Dathea)";
  spellType = "SPELL_AURA_APPLIED_DOSE"; -- Only alert when passing debuff to another player, refreshing your own
  sound = 4;
};

GTFO.SpellID["376851"] = {
  --desc = "Aerial Buffet (Dathea)";
  tankSound = 1;
  sound = 0;
};

GTFO.SpellID["374554"] = {
  --desc = "Magma Pool (Kurog Grimtotem)";
  sound = 1;
};

GTFO.SpellID["390747"] = {
  --desc = "Static Field (Broodkeeper Diurna)";
  sound = 1;
  test = true;
};

GTFO.SpellID["377662"] = {
  --desc = "Static Field (Raszageth)";
  sound = 2;
  negatingDebuffSpellID = 377612 -- Hurricane Wing
};

GTFO.SpellID["388115"] = {
  --desc = "Lightning Devastation (Raszageth)";
  applicationOnly = true;
  sound = 1;
};

GTFO.SpellID["395929"] = {
  --desc = "Storm's Spite (Raging Storm)";
  sound = 1;
};

GTFO.SpellID["395278"] = {
  --desc = "Electric Surge (Primal Stormsentry)";
  sound = 4;
  negatingDebuffSpellID = 395273; -- Electric Surge
  ignoreSelfInflicted = true;
};

GTFO.SpellID["391711"] = {
  --desc = "Lethal Current (Thundering Ravager)";
  sound = 4;
  negatingDebuffSpellID = 391696;
};

GTFO.SpellID["373535"] = {
  --desc = "Lightning Crash (Kurog Grimtotem)";
  applicationOnly = true;
  minimumStacks = 2;
  sound = 4;
};

GTFO.SpellID["375883"] = {
  --desc = "Greatstaff's Wrath (Broodkeeper Diurna)";
  sound = 1;
};

GTFO.SpellID["379419"] = {
  --desc = "Empowered Greatstaff's Wrath (Broodkeeper Diurna)";
  sound = 1;
};

GTFO.SpellID["375883"] = {
  --desc = "Greatstaff's Wrath (Broodkeeper Diurna)";
  sound = 1;
};

GTFO.SpellID["396624"] = {
  --desc = "Storm Fissure (Broodkeeper Diurna)";
  sound = 1;
};

GTFO.SpellID["375873"] = {
  --desc = "Wildfire (Broodkeeper Diurna)";
  applicationOnly = true;
  minimumStacks = 1;
  soundFunction = function() 
		local stacks = GTFO_DebuffStackCount("player", 375873);

		-- Alert if hit in Phase 1
		if (not GTFO_HasBuff("boss1", 375879)) then
			if (stacks > 1) then
				return 1;
			else
				return 0;
			end
		end
		
		-- Alert if more than 2 stacks in Phase 2
		local isHeroic, isMythic = select(5, GetDifficultyInfo(select(3, GetInstanceInfo())));
		if (isHeroic or isMythic) then
			if (stacks > 2) then
				return 1;
			end
			return 0;
		elseif (stacks > 1) then
			return 1;
		end
	end;
};

GTFO.SpellID["375578"] = {
  --desc = "Flame Sentry (Dragonspawn Flamebender)";
  sound = 1;
};

GTFO.SpellID["377597"] = {
  --desc = "Lightning Breath (Raszageth)";
  sound = 1;
};

GTFO.SpellID["394583"] = {
  --desc = "Scattered Charge (Raszageth)";
  applicationOnly = true;
  sound = 4;
};

GTFO.SpellID["392196"] = {
  --desc = "Scattered Charge (Raszageth)";
  sound = 4;
};

GTFO.SpellID["388659"] = {
	--desc = "Tempest Wing (Raszageth)";
	test = true;
	soundFunction = function() 
		-- Alert if hit more than 5 times
		if (not GTFO.VariableStore.TempestWing) then
			GTFO.VariableStore.TempestWing = 0;
		end
		if (GTFO.VariableStore.TempestWing == 0) then
			GTFO_AddEvent("ResetTempestWingCounter", 5, function() GTFO.VariableStore.TempestWing = 0; end);
		end
		GTFO.VariableStore.TempestWing = GTFO.VariableStore.TempestWing + 1;
		if (GTFO.VariableStore.TempestWing > 5) then
			return 1;
		end
	end;
};


--- **********************************
--- * Aberrus, the Shadowed Crucible *
--- **********************************

GTFO.SpellID["408976"] = {
  --desc = "Dancing Steel (Sundered Edgelord)";
  sound = 1;
  tankSound = 0;
};

GTFO.SpellID["406530"] = {
  --desc = "Riftburn (Kazzara, the Hellforged)";
  sound = 1;
};

GTFO.SpellID["402420"] = {
  --desc = "Molten Scar (Kazzara, the Hellforged)";
  sound = 1;
};

GTFO.SpellID["400432"] = {
  --desc = "Hellbeam (Kazzara, the Hellforged)";
  sound = 1;
};

GTFO.SpellID["405927"] = {
  --desc = "Chrono Pocket (Sundered Timewalker)";
  applicationOnly = true;
  sound = 2;
};

GTFO.SpellID["411905"] = {
  --desc = "Blaze Boil (Sundered Chemist)";
  sound = 1;
};

GTFO.SpellID["411900"] = {
  --desc = "Gloom Fluid (Sundered Chemist)";
  sound = 1;
};

GTFO.SpellID["412625"] = {
  --desc = "Shadowflame Spill (Sundered Chemist)";
  sound = 1;
};

GTFO.SpellID["405084"] = {
  --desc = "Lingering Umbra (Essence of Shadow)";
  sound = 1;
};

GTFO.SpellID["405645"] = {
  --desc = "Engulfing Heat (Shadowflame Amalgamation)";
  sound = 1;
};

GTFO.SpellID["411892"] = {
  --desc = "Viscous Bile (???)";
  applicationOnly = true;
  sound = 2;
};

GTFO.SpellID["412498"] = {
  --desc = "Stagnating Pool (Oozing Sludge)";
  applicationOnly = true;
  sound = 2;
};

GTFO.SpellID["411799"] = {
  --desc = "Creeping Ooze (Oozing Sludge)";
  applicationOnly = true;
  sound = 2;
  test = true;
};

GTFO.SpellID["406233"] = {
  --desc = "Deep Breath (Rionthus)";
  sound = 1;
};

GTFO.SpellID["405457"] = {
  --desc = "Disintegrate (Rionthus)";
  sound = 4;
};

GTFO.SpellID["406321"] = {
  --desc = "Lava Vortex (Rashok)";
  sound = 1;
};

GTFO.SpellID["405462"] = {
  --desc = "Dragonfire Traps (Zskarn)";
  applicationOnly = true;
  sound = 1;
};

end

