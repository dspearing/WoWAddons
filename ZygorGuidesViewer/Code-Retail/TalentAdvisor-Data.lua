local name,ZGV = ...

local TA = ZGV.TalentAdvisor

--["display name"] = {spec index, recommended, [[class talents]], [[spec talents]]},

--/run ZGV.Testing.RecordTalents()



TA.Builds = {
	DEATHKNIGHT = {
		["Blood (Tank)"] = {1,false,[[
				Anti-Magic Shell##96199
				Improved Death Strike##96196
				Veteran of the Third War##96197
				Veteran of the Third War##96197
				Chains of Ice##96210
				Mind Freeze##96211
				Blinding Sleet##96172
				Icebound Fortitude##96213
				Merciless Strikes##96214
				Gloom Ward##96180
				Runic Attenuation##96216
				Raise Dead##96201
				Cleaving Strikes##96202
				Enfeeble##96189
				Brittle##96190
				Might of Thassarian##96205
				Grip of the Dead##96185
				Unholy Endurance##96192
				Unholy Ground##96187
				Anti-Magic Barrier##96174
				Will of the Necropolis##96182
				Will of the Necropolis##96182
				Rune Mastery##96209
				Rune Mastery##96209
				Abomination Limb##96177
				Permafrost##96212
				Insidious Chill##96217
				Death Strike##96200
				Icy Talons##96179
				Icy Talons##96179
				Empower Rune Weapon##96178
				Death's Echo##96184
				Death Strike##96200
			]],[[
				Heart Strike##96304
				Marrowrend##96303
				Blood Boil##96305
				Vampiric Blood##96308
				Ossuary##96277
				Crimson Scourge##96306
				Death's Caress##96279
				Improved Heart Strike##96257
				Improved Heart Strike##96257
				Dancing Rune Weapon##96269
				Heartbreaker##96266
				Heartbreaker##96266
				Improved Bone Shield##96170
				Reinforced Bones##96300
				Insatiable Blade##96260
				Everlasting Bond##96261
				Relish in Blood##96280
				Rapid Decomposition##96273
				Voracious##96171
				Coagulopathy##96166
				Sanguine Ground##96169
				Iron Heart##96307
				Bloodshot##96256
				Tombstone##96270
				Shattering Bone##96259
				Shattering Bone##96259
				Heartrend##96262
				Purgatory##96264
				Hemostasis##96268
				Red Thirst##96263
			]]
		},
		["Frost (DPS)"] = {2,false,[[
				Death Strike##96200
				Raise Dead##96201
				Mind Freeze##96211
				Blinding Sleet##96172
				Icebound Fortitude##96213
				Cleaving Strikes##96202
				Enfeeble##96189
				Brittle##96190
				Merciless Strikes##96214
				Might of Thassarian##96205
				Gloom Ward##96180
				Runic Attenuation##96216
				Anti-Magic Shell##96199
				Unholy Endurance##96192
				Unholy Ground##96187
				Permafrost##96212
				Improved Death Strike##96196
				Veteran of the Third War##96197
				Veteran of the Third War##96197
				Anti-Magic Barrier##96174
				Blood Draw##96208
				Blood Draw##96208
				Rune Mastery##96209
				Rune Mastery##96209
				Abomination Limb##96177
				Icy Talons##96179
				Icy Talons##96179
				Empower Rune Weapon##96178
				Death's Echo##96184
				Unholy Bond##96183
				Unholy Bond##96183
				Chains of Ice##96210
			]],[[
				Frost Strike##96245
				Howling Blast##96244
				Obliterate##96246
				Killing Machine##96247
				Rime##96243
				Unleashed Frenzy##96248
				Improved Frost Strike##96233
				Improved Frost Strike##96233
				Pillar of Frost##96234
				Improved Obliterate##96249
				Frigid Executioner##96251
				Murderous Efficiency##96252
				Frostwhelp's Aid##96236
				Frostwhelp's Aid##96236
				Icecap##96162
				Enduring Strength##96230
				Biting Cold##96242
				Fatal Fixation##96218
				Glacial Advance##96221
				Improved Rime##96241
				Bonegrinder##96253
				Bonegrinder##96253
				Cold-Blooded Rage##96254
				Cold-Blooded Rage##96254
				Obliteration##96220
				Avalanche##96235
				Frostwyrm's Fury##96224
				Absolute Zero##96223
				Everfrost##96164
				Gathering Storm##96239
			]]
		},
		["Unholy (DPS)"] = {3,true,[[
				Death Strike##96200
				Chains of Ice##96210
				Mind Freeze##96211
				Cleaving Strikes##96202
				Enfeeble##96189
				Brittle##96190
				Blinding Sleet##96172
				Icebound Fortitude##96213
				Merciless Strikes##96214
				Gloom Ward##96180
				Runic Attenuation##96216
				Might of Thassarian##96205
				Unholy Endurance##96192
				Unholy Ground##96187
				Anti-Magic Shell##96199
				Improved Death Strike##96196
				Veteran of the Third War##96197
				Veteran of the Third War##96197
				Anti-Magic Zone##96194
				Anti-Magic Barrier##96174
				Blood Draw##96208
				Blood Draw##96208
				Rune Mastery##96209
				Rune Mastery##96209
				Abomination Limb##96177
				Icy Talons##96179
				Icy Talons##96179
				Empower Rune Weapon##96178
				Death's Echo##96184
				Unholy Bond##96183
				Unholy Bond##96183
				Raise Dead##96201
			]],[[
				Festering Strike##96326
				Scourge Strike##96327
				Outbreak##96328
				Epidemic##96296
				Raise Dead##96325
				Dark Transformation##96324
				Infected Claws##96318
				Improved Festering Strike##96329
				Unholy Blight##96295
				Defile##96294
				Replenishing Wounds##96297
				Ebon Fever##96298
				Sudden Doom##96314
				Plaguebringer##96319
				Unholy Pact##96316
				Improved Festering Strike##96329
				Apocalypse##96322
				Magus of the Dead##96282
				Unholy Command##96331
				Unholy Command##96331
				Eternal Agony##96332
				Army of the Dead##96333
				Death Rot##96292
				Festermight##96286
				Festermight##96286
				Unholy Assault##96285
				Army of the Damned##96287
				Superstrain##96289
				Morbidity##96334
				Morbidity##96334
			]]
		},
	},
	DEMONHUNTER = {
		["Havoc (DPS)"] = {1,true, [[
				Unrestrained Fury##112852
				Unrestrained Fury##112852
				Blazing Path##112928
				Sigil of Flame##112854
				Improved Disrupt##112849
				Felblade##112842
				Pursuit##112851
				Imprison##112927
				Rush of Chaos##112844
				Soul Rending##112847
				Soul Rending##112847
				Demonic##112923
				Consume Magic##112926
				Charred Warblades##112861
				Precise Sigils##112855
				Sigil of Misery##112859
				Master of the Glaive##112912
				Chaos Nova##112911
				Will of the Illidari##112918
				Will of the Illidari##112918
				Illidari Knowledge##112846
				Darkness##112921
				The Hunt##112837
				Unnatural Malice##112836
				Illidari Knowledge##112846
				Internal Struggle##112845
				Erratic Felheart##112914
				Erratic Felheart##112914
				Collective Anguish##112913
				Bouncing Glaives##112841
				Misery in Defeat##112857
				Vengeful Retreat##112853
			]],[[
				Eye Beam##112939
				Demon Blades##112940
				Felfire Heart##112938
				First Blood##112834
				Critical Chaos##112951
				Critical Chaos##112951
				Dancing with Fate##112936
				Dancing with Fate##112936
				Chaotic Transformation##112831
				Looks Can Kill##112830
				Initiative##112950
				Unbound Chaos##112942
				Unbound Chaos##112942
				Tactical Retreat##112944
				Trail of Ruin##112824
				Growing Inferno##112825
				Growing Inferno##112825
				Burning Wound##112826
				Furious Throws##115244
				Blind Fury##112949
				Momentum##112943
				Know Your Enemy##112957
				Know Your Enemy##112957
				Essence Break##112956
				Accelerating Blade##112932
				Fodder to the Flame##112931
				Ragefire##112827
				Soulrend##112829
				Soulrend##112829
				Any Means Necessary##112828
			]]
		},
		["Vengeance (Tank)"] = {2,false, [[
				Blazing Path##112928
				Vengeful Retreat##112853
				Unrestrained Fury##112852
				Imprison##112927
				Improved Disrupt##112849
				Pursuit##112851
				--Consume Magic##112926
				Aura of Pain##112843
				Shattered Restoration##112863
				Rush of Chaos##112844
				Infernal Armor##112924
				Infernal Armor##112924
				Demonic##112923
				Will of the Illidari##112918
				Will of the Illidari##112918
				Master of the Glaive##112912
				Chaos Nova##112911
				Illidari Knowledge##112846
				Illidari Knowledge##112846
				Soul Rending##112847
				Soul Rending##112847
				Soul Sigils##112839
				The Hunt##112837
				Aldrachi Design##112917
				Internal Struggle##112845
				Erratic Felheart##112914
				Erratic Felheart##112914
				Collective Anguish##112913
				Extended Sigils##112916
				Extended Sigils##112916
				Quickened Sigils##112915
				Shattered Restoration##112863
				Sigil of Flame##112854
			]],[[
				Fel Devastation##112908
				Frailty##112907
				Fiery Brand##112864
				Deflecting Spikes##112906
				Sigil of Silence##112904
				Perfectly Balanced Glaive##112883
				Fracture##112885
				Calcified Spikes##112882
				Spirit Bomb##112894
				Burning Blood##112903
				Burning Blood##112903
				Agonizing Flames##112887
				Agonizing Flames##112887
				Fallout##112888
				Volatile Flameblood##112902
				Darkglare Boon##112901
				Darkglare Boon##112901
				Void Reaver##112893
				Soul Furnace##112890
				Fiery Demise##112872
				Fiery Demise##112872
				Focused Cleave##112891
				Vulnerability##112897
				Vulnerability##112897
				Soul Carver##112898
				Burning Alive##112873
				Charred Flesh##112877
				Charred Flesh##112877
				Elysian Decree##112874
				Soulcrush##112896
				Down in Flames##112876
			]]
		},
	},
	DRUID = {
		["Balance (DPS)"] = {1,false, [[
				Sunfire##103286
				Moonkin Form##103290
				Nurturing Instinct##103292
				Nurturing Instinct##103292
				Frenzied Regeneration##103298
				Improved Barkskin##103297
				Verdant Heart##103296
				Ironfur##103305
				Astral Influence##103288
				Astral Influence##103288
				Rejuvenation##103295
				Wild Charge##103276
				Typhoon##103287
				--Incessant Tempest##114298
				Swiftmend##103294
				Improved Sunfire##103285
				Soothe##103307
				Stampeding Roar##103312
				Thick Hide##103306
				Thick Hide##103306
				Matted Fur##103314
				Ursol's Vortex##103321
				Innervate##103323
				Nature's Vigil##103324
				Lycara's Teachings##103311
				Lycara's Teachings##103311
				Lycara's Teachings##103311
				Renewal##103310
				Mighty Bash##103315
				Well-Honed Instincts##103326
				Well-Honed Instincts##103326
				Improved Stampeding Roar##103308
				Starfire##103279
				Starsurge##103280
			]],[[
				Eclipse##109858
				Solar Beam##109867
				Starfall##109833
				Twin Moons##109842
				Shooting Stars##109861
				Solstice##109835
				Wild Surges##115458
				Aetherial Kindling##109843
				Astral Smolder##109836
				Astral Smolder##109836
				Celestial Alignment##109849
				Primordial Arcanic Pulsar##109855
				Soul of the Forest##109846
				Nature's Grace##109857
				Power of Goldrinn##109840
				Power of Goldrinn##109840
				Cosmic Rapidity##109863
				Cosmic Rapidity##109863
				Waning Twilight##109834
				Waning Twilight##109834
				Starlord##109832
				Starlord##109832
				Incarnation: Chosen of Elune##109839
				Rattle the Stars##109872
				Fury of Elune##109859
				Orbit Breaker##109831
				Denizen of the Dream##109852
				Friend of the Fae##109870
				Radiant Moonlight##109847
				Balance of All Things##109848
			]]
		},
		["Feral (DPS)"] = {2,true, [[
				Thrash##103301
				Improved Swipe##103304
				Killer Instinct##103303
				Killer Instinct##103303
				Ironfur##103305
				Starfire##112967
				Sunfire##103286
				Moonkin Form##112968
				Wild Charge##103276
				Skull Bash##103302
				Primal Fury##103317
				Feline Swiftness##103318
				Feline Swiftness##103318
				Soothe##103307
				Stampeding Roar##103312
				Astral Influence##103288
				Astral Influence##103288
				Typhoon##103287
				Incessant Tempest##114298
				Thick Hide##103306
				Ursol's Vortex##103321
				Innervate##103323
				Nature's Vigil##103324
				Incapacitating Roar##103316
				Lycara's Teachings##103311
				Lycara's Teachings##103311
				Lycara's Teachings##103311
				Renewal##103310
				Ursine Vigor##103313
				Thick Hide##103306
				Well-Honed Instincts##103326
				Rake##103277
				Rip##103300
			]],[[
				Tiger's Fury##103188
				Omen of Clarity##103187
				Primal Wrath##103184
				Predator##103186
				Sabertooth##103163
				Pouncing Strikes##103183
				Tear Open Wounds##103148
				Double-Clawed Rake##103145
				Survival Instincts##103180
				Berserk##103162
				Rampant Ferocity##103160
				Predatory Swiftness##103167
				Raging Fury##103169
				Infected Wounds##103164
				Dreadful Bleeding##103181
				Brutal Slash##103151
				Taste for Blood##103182
				--Relentless Predator##103147
				Berserk: Heart of the Lion##103166
				Berserk: Frenzy##103149
			Moment of Clarity##103161
				Frantic Momentum##103179
				Frantic Momentum##103179
				Incarnation: Avatar of Ashamane##103178
				Rip and Tear##103153
				Apex Predator's Craving##103152
				Bloodtalons##103171
				Soul of the Forest##103157
				Circle of Life and Death##103156
				Carnivorous Instinct##103173
				Carnivorous Instinct##103173
			]]
		},
		["Guardian (Tank)"] = {3,false, [[
				Improved Swipe##103304
				Killer Instinct##103303
				Killer Instinct##103303
				Ironfur##103305
				Improved Barkskin##103297
				Starfire##112964
				Sunfire##103286
				Moonkin Form##112966
				Wild Charge##103276
				Skull Bash##103302
				Matted Fur##103314
				Soothe##103307
				Stampeding Roar##103312
				Astral Influence##103288
				Astral Influence##103288
				Typhoon##103287
				Incessant Tempest##114298
				Nurturing Instinct##103292
				Nurturing Instinct##103292
				Thick Hide##103306
				Ursol's Vortex##103321
				Innervate##103323
				Nature's Vigil##103324
				Lycara's Teachings##103311
				Lycara's Teachings##103311
				Lycara's Teachings##103311
				Renewal##103310
				Heart of the Wild##103309
				Improved Stampeding Roar##103308
				Incapacitating Roar##103316
				Thick Hide##103306
				Frenzied Regeneration##103298
				Thrash##103301
			]],[[
				Maul##103191
				Gore##103190
				Brambles##103231
				Survival Instincts##103193
				Mangle##103195
				Berserk##103216
				Gory Fur##103196
				Innate Resolve##103229
				Vulnerable Flesh##103228
				Vulnerable Flesh##103228
				Tooth and Claw##103197
				Fury of Nature##103203
				Fury of Nature##103203
				Survival of the Fittest##103210
				Survival of the Fittest##103210
				Vicious Cycle##103227
				After the Wildfire##103206
				Berserk##103211
				Soul of the Forest##103208
				Berserk##103224
				Scintillating Moonlight##103213
				Scintillating Moonlight##103213
				Galactic Guardian##103214
				Rage of the Sleeper##103207
				Circle of Life and Death##103202
				Incarnation: Guardian of Ursoc##103201
				Ursoc's Guidance##103199
				Blood Frenzy##103209
				Raze##114701
				Twin Moonfire##103212
			]]
		},
		["Restoration (Healer)"] = {4,false, [[
				Wild Growth##103320
				Nurturing Instinct##103292
				Nurturing Instinct##103292
				Starfire##112963
				Starsurge##103278
				Sunfire##103286
				Moonkin Form##112965
				Rake##103277
				Astral Influence##103288
				Astral Influence##103288
				Natural Recovery##103284
				Natural Recovery##103284
				Improved Rejuvenation##103319
				Wild Charge##103276
				Soothe##103307
				Stampeding Roar##103312
				Rip##103300
				Thrash##103301
				Improved Swipe##103304
				Improved Sunfire##103285
				Ursol's Vortex##103321
				Innervate##103323
				Nature's Vigil##103324
				Lycara's Teachings##103311
				Lycara's Teachings##103311
				Lycara's Teachings##103311
				Renewal##103310
				Heart of the Wild##103309
				Ironfur##103305
				Thick Hide##103306
				Thick Hide##103306
				Rejuvenation##103295
				Swiftmend##103294
			]],[[
				Lifebloom##103100
				Nature's Swiftness##103101
				Omen of Clarity##103143
				Flash of Clarity##103142
				Cenarion Ward##103104
				Ysera's Gift##103099
				Grove Tending##103098
				Improved Regrowth##103109
				Tranquility##103108
				Efflorescence##103111
				Soul of the Forest##103113
				Rampant Growth##103112
				Ironbark##103141
				Improved Ironbark##103139
				Cultivation##103110
				Unstoppable Growth##103138
				Unstoppable Growth##103138
				Harmonious Blooming##103121
				Harmonious Blooming##103121
				Verdancy##103114
				Spring Blossoms##103116
				Deep Focus##114809
				Flourish##103136
				Convoke the Spirits##103119
				Cenarius' Guidance##103118
				Budding Leaves##103128
				Undergrowth##103133
				Photosynthesis##103129
				Adaptive Swarm##103123
				Unbridled Swarm##103122
			]]
		},
	},
	EVOKER = {
		["Devastation (DPS)"] = {1,true, [[
				Natural Convergence##87709
				Quell##87692
				Obsidian Scales##87702
				Permeating Chill##87703
				Enkindled##87704
				Enkindled##87704
				Expunge##87716
				Verdant Embrace##87715
				Tip the Scales##87713
				Instinctive Arcana##87693
				Instinctive Arcana##87693
				Blast Furnace##87694
				Blast Furnace##87694
				Extended Flight##87706
				Extended Flight##87706
				Panacea##87707
				Scarlet Adaptation##87714
				Clobbering Sweep##87585
				Draconic Legacy##87712
				Draconic Legacy##87712
				Inherent Resistance##87697
				Inherent Resistance##87697
				Renewing Blaze##87679
				Fire Within##87680
				Protracted Talons##87688
				Leaping Flames##87689
				Terror of the Skies##87675
				Rescue##87685
				Aerial Mastery##87686
				Obsidian Bulwark##87701
				Cauterizing Flame##87700
				Landslide##87708
			]],[[
				Pyre##87669
				Azure Essence Burst##87668
				Inner Radiance##87666
				Dragonrage##87665
				Eternity Surge##87647
				Arcane Intensity##87646
				Arcane Intensity##87646
				Ruby Essence Burst##87670
				Animosity##87664
				Essence Attunement##87649
				Eye of Infinity##87640
				Shattering Star##87641
				Eternity's Span##87645
				Heat Wave##87661
				Heat Wave##87661
				Tyranny##87662
				Catalyze##87660
				Dense Energy##87671
				Volatility##87672
				Volatility##87672
				Arcane Vigor##87642
				Power Swell##87644
				Iridescence##87638
				Spellweaver's Dominance##87652
				Hoarded Power##87591
				Scintillation##87653
				Titanic Wrath##87663
				Titanic Wrath##87663
				Causality##115682
				Burnout##87657
			]]
		},
		["Preservation (Healer)"] = {2,false, [[
				Verdant Embrace##87715
				Cauterizing Flame##87700
				Enkindled##87704
				Enkindled##87704
				Obsidian Scales##87702
				Permeating Chill##87703
				Landslide##87708
				Natural Convergence##87709
				Attuned to the Dream##87699
				Attuned to the Dream##87699
				Tip the Scales##87713
				Extended Flight##87706
				Extended Flight##87706
				Panacea##87707
				Quell##87692
				Instinctive Arcana##87693
				Instinctive Arcana##87693
				Blast Furnace##87694
				Blast Furnace##87694
				Scarlet Adaptation##87714
				Draconic Legacy##87712
				Lush Growth##87678
				Lush Growth##87678
				Zephyr##87682
				Rescue##87685
				Renewing Blaze##87679
				Aerial Mastery##87686
				Oppressing Roar##87695
				Leaping Flames##87689
				Obsidian Bulwark##87701
				Draconic Legacy##87712
				Expunge##87716
			]],[[
				Echo##87628
				Dream Breath##87627
				Essence Burst##87630
				Essence Attunement##87631
				Temporal Compression##87626
				Spiritbloom##87625
				Reversion##87629
				Rewind##87612
				Life-Giver's Flame##87616
				Life-Giver's Flame##87616
				Emerald Communion##87594
				Dreamwalker##87593
				Call of Ysera##87618
				Time Dilation##87613
				Temporal Anomaly##87611
				Resonating Sphere##87609
				Punctuality##87607
				Golden Hour##87614
				Time Lord##87615
				Time Lord##87615
				Lifebind##87634
				Temporal Artificer##87619
				Timeless Magic##87605
				Timeless Magic##87605
				Stasis##87603
				Lifeforce Mender##87617
				Lifeforce Mender##87617
				Font of Magic##87596
				Grace Period##87621
				Grace Period##87621
			]]
		},
	},
	HUNTER = {
		["Beast Mastery (DPS)"] = {1,true,[[
				Kill Shot##100539
				Posthaste##100634
				Posthaste##100634
				Counter Shot##100624
				Natural Mending##100638
				Natural Mending##100638
				Survival of the Fittest##100523
				Tar Trap##100641
				Nature's Endurance##100521
				Camouflage##100647
				Binding Shot##100650
				Tranquilizing Shot##100617
				Intimidation##100621
				Born To Be Wild##100646
				Born To Be Wild##100646
				Improved Tranquilizing Shot##100632
				Rejuvenating Wind##100619
				Rejuvenating Wind##100619
				Hunter's Avoidance##100536
				Pathfinding##100631
				Master Marksman##100625
				Master Marksman##100625
				Keen Eyesight##100635
				Keen Eyesight##100635
				Death Chakram##100628
				Beast Master##100639
				Beast Master##100639
				Improved Kill Command##100645
				Improved Kill Command##100645
				Alpha Predator##100613
				Serrated Shots##100513
				Kill Command##100648
			]],[[
				Cobra Shot##100663
				Barbed Shot##100683
				Multi-Shot##100630
				Beast Cleave##100670
				Beast Cleave##100670
				Pack Tactics##100672
				Aspect of the Beast##100658
				Animal Companion##100661
				Bestial Wrath##100669
				Barbed Wrath##100524
				Wild Call##100681
				Kill Cleave##100668
				War Orders##100666
				War Orders##100666
				Training Expert##100662
				Training Expert##100662
				Killer Command##100653
				Killer Command##100653
				Thrill of the Hunt##100679
				Thrill of the Hunt##100679
				Scent of Blood##100680
				Scent of Blood##100680
				Piercing Fangs##100675
				Brutal Companion##100515
				Wailing Arrow##100652
				Thrill of the Hunt##100679
				Stomp##100656
				Stomp##100656
				Dire Command##100667
				Dire Command##100667
			]]
		},
		["Marksmanship (DPS)"] = {2,false,[[
				Improved Kill Shot##100643
				Posthaste##100634
				Posthaste##100634
				Counter Shot##100540
				Misdirection##100637
				Survival of the Fittest##100523
				Natural Mending##100638
				Natural Mending##100638
				Nature's Endurance##100521
				Camouflage##100647
				Pathfinding##100631
				Tar Trap##100641
				Improved Traps##100636
				Improved Traps##100636
				Binding Shot##100650
				Hunter's Avoidance##100536
				Born To Be Wild##100646
				Born To Be Wild##100646
				Rejuvenating Wind##100619
				Rejuvenating Wind##100619
				Master Marksman##100625
				Master Marksman##100625
				Arctic Bola##100514
				Arctic Bola##100514
				Explosive Shot##100626
				Keen Eyesight##100635
				Keen Eyesight##100635
				Death Chakram##100628
				Serpent Sting##100615
				Poison Injection##100623
				Serrated Shots##100513
				Kill Shot##100538
			]],[[
				Aimed Shot##100578
				Improved Steady Shot##100604
				Crack Shot##100600
				Rapid Fire##100585
				Precise Shots##100582
				Precise Shots##100582
				Careful Aim##100584
				Careful Aim##100584
				Target Practice##100591
				Tactical Reload##100579
				Serpentstalker's Trickery##100586
				Lone Wolf##100576
				Streamline##100598
				Streamline##100598
				In the Rhythm##100603
				Deathblow##100588
				Multi-Shot##100544
				Volley##100595
				Trick Shots##100580
				Razor Fragments##100535
				Trueshot##100587
				Eagletalon's True Focus##100607
				Eagletalon's True Focus##100607
				Unerring Vision##100608
				Bulletstorm##100517
				Salvo##100534
				Bullseye##100581
				Legacy of the Windrunners##100605
				Legacy of the Windrunners##100605
				Windrunner's Guidance##100599
			]]
		},
		["Survival (DPS)"] = {3,false,[[
				Kill Shot##100537
				Posthaste##100634
				Posthaste##100634
				Muzzle##100543
				Natural Mending##100638
				Natural Mending##100638
				Survival of the Fittest##100523
				Tar Trap##100641
				Nature's Endurance##100521
				Camouflage##100647
				Scatter Shot##100651
				Misdirection##100637
				Born To Be Wild##100646
				Born To Be Wild##100646
				Improved Kill Shot##100643
				Tranquilizing Shot##100617
				--Intimidation##100621
				Hunter's Avoidance##100536
				Rejuvenating Wind##100619
				Rejuvenating Wind##100619
				Pathfinding##100631
				Master Marksman##100625
				Master Marksman##100625
				Keen Eyesight##100635
				Keen Eyesight##100635
				Death Chakram##100628
				Arctic Bola##100514
				Arctic Bola##100514
				Explosive Shot##100626
				Serpent Sting##100615
				Poison Injection##100623
				Serrated Shots##100513
				Kill Command##100542
			]],[[
				Raptor Strike##100551
				Wildfire Bomb##100568
				Ferocity##100549
				Bloodseeker##100564
				Tip of the Spear##100554
				Tip of the Spear##100554
				Harpoon##100546
				Terms of Engagement##100567
				Mongoose Bite##100566
				Butchery##100552
				Lunge##100550
				Guerrilla Tactics##100572
				Improved Wildfire Bomb##100555
				Improved Wildfire Bomb##100555
				Viper's Venom##100530
				Viper's Venom##100530
				Sharp Edges##100547
				Sharp Edges##100547
				Frenzy Strikes##100548
				Sweeping Spear##100561
				Coordinated Assault##100570
				Coordinated Kill##100528
				Coordinated Kill##100528
				Birds of Prey##100569
				Explosives Expert##100563
				Explosives Expert##100563
				Ranger##100529
				Ranger##100529
				Quick Shot##100573
				Wildfire Infusion##100575
			]]
		},
	},
	MAGE = {
		["Arcane (DPS)"] = {1,false, [[
				Overflowing Energy##80179
				Rune of Power##80171
				Invisibility##80177
				Remove Curse##80175
				Alter Time##80174
				Ice Block##80181
				Spellsteal##80140
				Mirror Image##80183
				Master of Time##80159
				Blast Wave##80160
				Tome of Antonidas##80155
				Quick Witted##80161
				Ice Floes##80162
				Ice Nova##80186
				Tome of Rhonin##80187
				Energized Barriers##80157
				Incantation of Swiftness##80170
				Incantation of Swiftness##80170
				Tempest Barrier##80169
				Tempest Barrier##80169
				Flow of Time##80153
				Flow of Time##80153
				Greater Invisibility##80152
				Temporal Warp##80150
				Temporal Velocity##80156
				Temporal Velocity##80156
				Dragon's Breath##80147
				Frigid Winds##80188
				Frigid Winds##80188
				Ice Ward##80142
				Shifting Power##80141
				Prismatic Barrier##80180
			]],[[
				Arcane Barrage##80306
				Arcane Missiles##80307
				Clearcasting##80298
				Arcane Orb##80308
				Arcane Surge##80299
				Arcane Tempo##80205
				Nether Precision##80295
				Crackling Energy##80297
				Arcane Power##80190
				Arcane Familiar##80207
				Presence of Mind##80208
				Resonance##80200
				Nether Tempest##80199
				Touch of the Magi##80302
				Arcing Cleave##80201
				Slipstream##80296
				Amplification##80294
				Improved Clearcasting##80293
				Charged Orb##80310
				Crackling Energy##80297
				Arcane Echo##80191
				Radiant Spark##80304
				Harmonic Echo##80305
				Evocation##80209
				Illuminated Thoughts##80292
				Illuminated Thoughts##80292
				Concentration##80194
				Arcane Harmony##80195
				Arcane Bombardment##80303
				Siphon Storm##80210
			]]
		},
		["Fire (DPS)"] = {2,false, [[
				Overflowing Energy##80179
				Rune of Power##80171
				Invisibility##80177
				Remove Curse##80175
				Alter Time##80174
				Ice Block##80181
				Spellsteal##80140
				Mirror Image##80183
				Master of Time##80159
				Blast Wave##80160
				Tome of Antonidas##80155
				Quick Witted##80161
				Ice Nova##80186
				Tome of Rhonin##80187
				Ring of Frost##80144
				Shimmer##80163
				Tempest Barrier##80169
				Tempest Barrier##80169
				Arcane Warding##80173
				Arcane Warding##80173
				Flow of Time##80153
				Flow of Time##80153
				Greater Invisibility##80152
				Temporal Warp##80150
				Temporal Velocity##80156
				Temporal Velocity##80156
				Dragon's Breath##80147
				Frigid Winds##80188
				Frigid Winds##80188
				Ice Ward##80142
				Shifting Power##80141
				Blazing Barrier##80178
			]],[[
				Pyroblast##80283
				Fire Blast##80282
				Phoenix Flames##80285
				Scorch##80281
				Fervent Flickering##80284
				Flamestrike##80258
				Firestarter##80139
				Searing Touch##80280
				Improved Flamestrike##80257
				Flame On##80256
				Flame On##80256
				Combustion##80275
				Improved Combustion##80269
				Critical Mass##80287
				Critical Mass##80287
				From the Ashes##80289
				Call of the Sun King##80278
				Feel the Burn##80261
				Feel the Burn##80261
				Flame Patch##80259
				Wildfire##80270
				Wildfire##80270
				Fiery Rush##80271
				Master of Flame##80262
				Kindling##80265
				Pyroclasm##80277
				Controlled Destruction##80272
				Controlled Destruction##80272
				Sun King's Blessing##80273
				Firemind##80276
			]]
		},
		["Frost (DPS)"] = {3,true, [[
				Overflowing Energy##80179
				Rune of Power##80171
				Invisibility##80177
				Remove Curse##80175
				Alter Time##80174
				Ice Block##80181
				Spellsteal##80140
				Mirror Image##80183
				Master of Time##80159
				Blast Wave##80160
				Tome of Antonidas##80155
				Quick Witted##80161
				Ice Nova##80186
				Tome of Rhonin##80187
				Shimmer##80163
				Volatile Detonation##80145
				Incantation of Swiftness##80170
				Incantation of Swiftness##80170
				Arcane Warding##80173
				Arcane Warding##80173
				Flow of Time##80153
				Flow of Time##80153
				Greater Invisibility##80152
				Temporal Warp##80150
				Temporal Velocity##80156
				Temporal Velocity##80156
				Dragon's Breath##80147
				Frigid Winds##80188
				Frigid Winds##80188
				Ice Ward##80142
				Shifting Power##80141
				Ice Barrier##80176
			]],[[
				Ice Lance##80241
				Frozen Orb##80242
				Flurry##80243
				Blizzard##80240
				Cold Snap##80239
				Fingers of Frost##80227
				Shatter##80228
				Piercing Cold##80229
				Bone Chilling##80230
				Lonely Winter##80238
				Flash Freeze##80231
				Wintertide##80236
				Wintertide##80236
				Icy Veins##80235
				Everlasting Frost##102429
				Frostbite##102428
				Splintering Cold##80225
				Splintering Cold##80225
				Brain Freeze##80244
				Ice Caller##80233
				Icy Propulsion##80217
				Freezing Rain##80212
				Snap Freeze##80215
				Freezing Winds##80214
				Slick Ice##80216
				Chain Reaction##80218
				Thermal Void##80219
				Splitting Ice##80224
				Hailstones##80221
				Hailstones##80221
			]]
		},
	},
	MONK = {
		["Brewmaster (Tank)"] = {1,false, [[
				Calming Presence##101511
				Rising Sun Kick##101508
				Paralysis##101506
				Ferocity of Xuen##101524
				Ferocity of Xuen##101524
				Improved Paralysis##101505
				Soothing Mist##101509
				Vigorous Expulsion##101530
				Spear Hand Strike##101504
				Fortifying Brew##101496
				Expeditious Fortification##101497
				Celerity##101503
				Transcendence##101512
				Ring of Peace##101516
				Fast Feet##101523
				Fast Feet##101523
				Dampen Harm##101522
				Strength of Spirit##101499
				Grace of the Crane##101529
				Grace of the Crane##101529
				Fatal Touch##101521
				Fatal Touch##101521
				Resonant Fists##101520
				Resonant Fists##101520
				Summon White Tiger Statue##101519
				Chi Wave##101528
				Profound Rebuttal##101526
				Close to Heart##101525
				Close to Heart##101525
				Diffuse Magic##101515
				Bounce Back##101536
				Tiger's Lust##101507
			]],[[
				Keg Smash##101451
				Purifying Brew##101453
				Shuffle##101455
				Spirit of the Ox##114729
				Rushing Jade Wind##101549
				Gift of the Ox##101452
				Hit Scheme##101461
				Quick Sip##101456
				Zen Meditation##101547
				Shadowboxing Treads##101444
				Gai Plin's Imperial Brew##101545
				Light Brewing##101448
				Celestial Brew##101463
				Breath of Fire##101464
				Sal'salabim's Strength##101467
				Invoke Niuzao, the Black Ox##101544
				Improved Purifying Brew##101471
				Bob and Weave##101449
				Improved Celestial Brew##101462
				Pretense of Instability##101445
				Dragonfire Brew##101466
				Bonedust Brew##101552
				Bountiful Brew##101551
				High Tolerance##101469
				High Tolerance##101469
				Elusive Footwork##101412
				Elusive Footwork##101412
				Exploding Keg##101542
				Stormstout's Last Keg##101541
				Weapons of Order##101539
			]]
		},
		["Mistweaver (Healer)"] = {2,false, [[
				Improved Vivify##101510
				Improved Vivify##101510
				Vivacious Vivification##101513
				Calming Presence##101511
				Improved Detox##102627
				Ferocity of Xuen##101524
				Ferocity of Xuen##101524
				Rising Sun Kick##101508
				Tiger's Lust##101507
				Chi Burst##101527
				Transcendence##101512
				Ring of Peace##101516
				Dampen Harm##101522
				Spear Hand Strike##101504
				Celerity##101503
				Profound Rebuttal##101526
				Disable##101495
				Diffuse Magic##101515
				Fast Feet##101523
				Fast Feet##101523
				Close to Heart##101525
				Close to Heart##101525
				Save Them All##101533
				Save Them All##101533
				Fortifying Brew##101496
				Expeditious Fortification##101497
				Strength of Spirit##101499
				Generous Pour##101500
				Generous Pour##101500
				Bounce Back##101536
				Bounce Back##101536
				Soothing Mist##101509
			]],[[
				Enveloping Mist##101370
				Renewing Mist##101394
				Essence Font##101406
				Thunder Focus Tea##101410
				Life Cocoon##101390
				Revival##101378
				Invigorating Mists##101358
				Mastery of Mist##101395
				Healing Elixir##101374
				Mana Tea##101379
				Mists of Life##101369
				Uplifted Spirits##101398
				Invoke Chi-Ji, the Red Crane##101396
				Enveloping Breath##101388
				Mist Wrap##101363
				--Zen Pulse##101368
				--Echoing Reverberation##101365
				Teachings of the Monastery##101403
				Spirit of the Crane##101361
				Burst of Life##114297
				Rapid Diffusion##101385
				Rapid Diffusion##101385
				Sheilun's Gift##101392
				Veil of Pride##101405
				Tear of Morning##101357
				Gift of the Celestials##101381
				Faeline Stomp##101359
				Ancient Concordance##101371
				Ancient Concordance##101371
				Awakened Faeline##101383
				Ancient Teachings##101408
				Legacy of Wisdom##114821
			]]
		},
		["Windwalker (DPS)"] = {3,true,  [[
				Tiger's Lust##101507
				Paralysis##101506
				Ferocity of Xuen##101524
				Ferocity of Xuen##101524
				Soothing Mist##101509
				Vigorous Expulsion##101530
				Grace of the Crane##101529
				Grace of the Crane##101529
				Chi Burst##101527
				Spear Hand Strike##101504
				Celerity##101503
				Improved Touch of Death##101501
				Fast Feet##101523
				Fast Feet##101523
				Transcendence##101512
				Ring of Peace##101516
				Eye of the Tiger##101518
				Dampen Harm##101522
				Profound Rebuttal##101526
				Diffuse Magic##101515
				Fatal Touch##101521
				Fatal Touch##101521
				Resonant Fists##101520
				Resonant Fists##101520
				Summon White Tiger Statue##101519
				Generous Pour##101500
				Generous Pour##101500
				Close to Heart##101525
				Close to Heart##101525
				Escape from Reality##101534
				Calming Presence##101511
				Rising Sun Kick##101508
			]],[[
				Fists of Fury##101423
				Touch of Karma##101420
				Power Strikes##101424
				Ascension##101422
				Flashing Fists##101425
				Flashing Fists##101425
				Flying Serpent Kick##101432
				Glory of the Dawn##101493
				Strike of the Windlord##101491
				Thunderfist##101490
				Serenity##101428
				Drinking Horn Cover##101430
				Invoke Xuen, the White Tiger##101473
				Widening Whirl##101419
				Mark of the Crane##101434
				Shadowboxing Treads##101435
				Dance of Chi-Ji##101437
				Forbidden Technique##101418
				Hit Combo##101492
				Teachings of the Monastery##101426
				Fury of Xuen##101472
				Xuen's Battlegear##101478
				Invoker's Delight##101477
				Empowered Tiger Lightning##101475
				Transfer the Power##101476
				Crane Vortex##101483
				Crane Vortex##101483
				Bonedust Brew##101485
				Fatal Flying Guillotine##101482
				Open Palm Strikes##101494
			]]
		},
	},
	PALADIN = {
		["Holy"] = {1,false, [[
				Hammer of Wrath##102479
				Auras of Swift Vengeance##102588
				Greater Judgment##114292
				Divine Steed##102625
				Improved Cleanse##102477
				Blinding Light##102584
				Rebuke##102591
				Cavalier##102592
				Avenging Wrath##102593
				Holy Aegis##102597
				Holy Aegis##102597
				Blessing of Sacrifice##102602
				Sacrifice of the Just##102595
				Afterimage##102601
				Blessing of Protection##102604
				Unbreakable Spirit##102603
				Crusader's Reprieve##102518
				Sanctified Plates##115034
				Sanctified Plates##115034
				Divine Purpose##115489
				Divine Toll##102465
				Divine Resonance##115466
				Seal of Might##102612
				Seal of Might##102612
				Of Dusk and Dawn##115673
				Fading Light##115169
				Seal of Alacrity##102609
				Seal of Alacrity##102609
				Strength of Conviction##102444
				Strength of Conviction##102444
				Fist of Justice##102589
				Lay on Hands##102583
				Auras of the Resolute##102586
			]],[[
				Holy Shock##102534
				Light of Dawn##102545
				Holy Light##102550
				Divine Protection##102549
				Aura Mastery##102548
				Divine Insight##102554
				Unending Light##102544
				Moment of Compassion##102553
				Imbued Infusions##102536
				Tower of Radiance##102571
				Second Sunrise##102567
				Second Sunrise##102567
				Shining Savior##102559
				Light's Hammer##102561
				Radiant Onslaught##102557
				Commanding Light##102564
				Commanding Light##102564
				Divine Glimpse##102570
				Divine Glimpse##102570
				Echoing Blessings##102535
				Avenging Wrath##102569
				Awakening##102578
				Awakening##102578
				Empyrean Legacy##102576
				Blessing of Summer##102579
				Beacon of Virtue##102532
				Sanctified Wrath##102563
				Glimmer of Light##102581
				Breaking Dawn##102566
				Relentless Inquisitor##102575
			]]
		},
		["Protection (Tank)"] = {2,false, [[
				Blessing of Freedom##102587
				Hammer of Wrath##102479
				Greater Judgment##102590
				Rebuke##102591
				Divine Steed##102625
				Cleanse Toxins##102476
				Cavalier##102592
				Blinding Light##102584
				Avenging Wrath##102593
				Holy Aegis##102597
				Holy Aegis##102597
				Blessing of Sacrifice##102602
				Unbreakable Spirit##102603
				Sacrifice of the Just##102595
				Blessing of Protection##102604
				Crusader's Reprieve##102518
				Sanctified Plates##115034
				Sanctified Plates##115034
				Justification##102478
				Lightforged Blessing##115447
				Seal of Might##102612
				Seal of Might##102612
				Divine Toll##102465
				Divine Resonance##102443
				Of Dusk and Dawn##115672
				Seal of Order##102614
				Seal of Alacrity##102609
				Seal of Alacrity##102609
				Seal of the Crusader##102617
				Seal of the Crusader##102617
				Zealot's Paragon##102616
				Lay on Hands##102583
				Auras of the Resolute##102586
			]],[[
				Avenger's Shield##102471
				Redoubt##102462
				Holy Shield##102455
				Blessed Hammer##102430
				Sanctuary##102451
				Grand Crusader##102453
				Ardent Defender##102445
				Shining Light##102467
				Consecration in Flame##102432
				Bulwark of Order##102468
				Bulwark of Order##102468
				Sentinel##102447
				Guardian of Ancient Kings##102456
				Strength in Adversity##102461
				Crusader's Judgment##102436
				Barricade of Faith##102470
				Tyr's Enforcer##102437
				Tyr's Enforcer##102437
				Bastion of Light##102454
				Relentless Inquisitor##102475
				Soaring Shield##102434
				Avenging Wrath##102611
				Resolute Defender##102433
				Resolute Defender##102433
				Righteous Protector##102440
				Final Stand##102473
				Eye of Tyr##102466
				Inmost Light##115167
				Bulwark of Righteous Fury##102457
				Gift of the Golden Val'kyr##102449
			]]
		},
		["Retribution (DPS)"] = {3,true, [[
				Greater Judgment##102590
				Rebuke##102591
				Divine Steed##102625
				Cavalier##102592
				Lay on Hands##102583
				Cleanse Toxins##102476
				Seasoned Warhorse##102624
				Auras of the Resolute##102586
				Justification##102478
				Unbound Freedom##115454
				Lightforged Blessing##115239
				Crusader's Reprieve##102518
				Avenging Wrath##102593
				Sanctified Plates##115034
				Sanctified Plates##115034
				Unbreakable Spirit##102603
				Holy Aegis##102597
				Holy Aegis##102597
				Blessing of Sacrifice##102602
				Healing Hands##115481
				Seal of Might##102612
				Seal of Might##102612
				Divine Toll##102465
				Divine Resonance##115468
				Of Dusk and Dawn##102615
				Seal of Order##102614
				Seal of Alacrity##102609
				Seal of Alacrity##102609
				Seal of the Crusader##102617
				Seal of the Crusader##102617
				Vengeful Wrath##115457
				Hammer of Wrath##102479
				Blessing of Freedom##102587
				Auras of Swift Vengeance##102588
			]],[[
				Blade of Justice##102498
				Divine Storm##102499
				Swift Justice##102491
				Final Verdict##102504
				Holy Blade##115022
				Art of War##102493
				Expurgation##114830
				Guided Prayer##115020
				Vanguard's Momentum##114826
				Tempest of the Lightbringer##115452
				Jurisdiction##102516
				Boundless Judgment##115021
				Heart of the Crusader##115483
				Vanguard of Justice##115453
				Blade of Vengeance##102521
				Shield of Vengeance##102519
				Templar Strikes##115473
				Avenging Wrath##102497
				Consecrated Blade##102485
				Blessed Champion##102515
				Adjudication##102511
				Aegis of Protection##102526
				Final Reckoning##102513
				Wake of Ashes##115043
				Seething Flames##102525
				Truth's Wake##114824
				Blessed Champion##102515
				Penitence##115024
				Burning Crusade##102510
				Searing Light##102530
			]]
		},
	},
	PRIEST = {
		["Discipline"] = {1,false, [[
				Improved Flash Heal##103866
				Protective Light##103858
				Leap of Faith##103868
				Angelic Feather##103853
				Void Tendrils##103859
				Dispel Magic##103867
				Shadow Word: Death##103864
				Phantasm##103834
				Power Infusion##103844
				Twins of the Sun Priestess##103832
				Twist of Fate##103833
				Twist of Fate##103833
				Mass Dispel##103849
				Inspiration##103846
				Unwavering Will##103847
				Unwavering Will##103847
				Vampiric Embrace##103841
				San'layn##103840
				Throes of Pain##103861
				Throes of Pain##103861
				Mindgames##103837
				Binding Heals##103824
				Halo##103830
				Surge of Light##103823
				Surge of Light##103823
				Power Word: Life##103822
				Crystalline Reflection##103829
				Crystalline Reflection##103829
				Translucent Image##103835
				Death and Madness##103863
				Tithe Evasion##103838
				Renew##103869
				Shadowfiend##103865
			]],[[
				Atonement##103723
				Pain Suppression##103713
				Protector of the Frail##103714
				Power Word: Barrier##103687
				Power Word: Radiance##103722
				Light's Promise##103721
				Bright Pupil##103720
				Power of the Dark Side##103724
				Rapture##103727
				Pain and Suffering##103703
				Pain and Suffering##103703
				Castigation##103702
				Purge the Wicked##103718
				Revel in Purity##103690
				Dark Indulgence##103725
				Schism##103704
				Shadow Covenant##103706
				Embrace Shadow##103708
				Abyssal Reverie##103709
				Abyssal Reverie##103709
				Lenience##103692
				Harsh Discipline##103697
				Harsh Discipline##103697
				Twilight Equilibrium##103696
				Train of Thought##103731
				Blaze of Light##103693
				Blaze of Light##103693
				Weal and Woe##103694
				Expiation##103711
				Expiation##103711
			]]
		},
		["Holy (Healer)"] = {2,false, [[
				Holy Nova##103851
				Rhapsody##103850
				Improved Flash Heal##103866
				Protective Light##103858
				Leap of Faith##103868
				Angelic Feather##103853
				Void Tendrils##103859
				Shadowfiend##103865
				Power Infusion##103844
				Twins of the Sun Priestess##103832
				Twist of Fate##103833
				Twist of Fate##103833
				Mass Dispel##103849
				Inspiration##103846
				Unwavering Will##103847
				Unwavering Will##103847
				Dispel Magic##103867
				Sanguine Teachings##114735
				San'layn##103840
				Spell Warding##103872
				Binding Heals##103824
				Surge of Light##103823
				Surge of Light##103823
				Power Word: Life##103822
				Light's Inspiration##103826
				Light's Inspiration##103826
				Angelic Bulwark##103821
				Divine Star##103831
				Translucent Image##103835
				Improved Fade##103836
				Improved Fade##103836
				Renew##103869
				Prayer of Mending##103870
			]],[[
				Holy Word: Serenity##103775
				Guardian Spirit##103774
				Guardian Angel##103773
				Prayer of Healing##103766
				Holy Word: Sanctify##103767
				Circle of Healing##103758
				Holy Word: Chastise##103776
				Empyreal Blaze##103777
				Cosmic Ripple##103765
				Divine Hymn##103755
				Symbol of Hope##103751
				Renewed Faith##103754
				Trail of Light##103770
				Trail of Light##103770
				Everlasting Light##103756
				Crisis Management##103762
				Crisis Management##103762
				Prayers of the Virtuous##103750
				Prayers of the Virtuous##103750
				Searing Light##103739
				Apotheosis##103743
				Desperate Times##103741
				Desperate Times##103741
				Lightweaver##103734
				Harmonious Apparatus##103744
				Harmonious Apparatus##103744
				Divine Word##103675
				Say Your Prayers##103749
				Burning Vehemence##103738
				Burning Vehemence##103738
			]]
		},
		["Shadow (DPS)"] = {3,true, [[
				Death and Madness##103863
				Dominate Mind##103678
				Psychic Voice##103845
				Dispel Magic##103867
				Improved Flash Heal##103866
				Protective Light##103858
				Leap of Faith##103868
				Angelic Feather##103853
				Power Infusion##103844
				Twins of the Sun Priestess##103832
				Twist of Fate##103833
				Twist of Fate##103833
				Vampiric Embrace##103841
				San'layn##103840
				Throes of Pain##103861
				Throes of Pain##103861
				Tithe Evasion##103838
				Body and Soul##103856
				Mass Dispel##103849
				Improved Mass Dispel##103848
				Halo##103827
				Light's Inspiration##103826
				Light's Inspiration##103826
				Angelic Bulwark##103821
				Mindgames##103837
				Manipulation##103818
				Manipulation##103818
				Shattered Perceptions##103819
				Translucent Image##103835
				Improved Fade##103836
				Improved Fade##103836
				Shadowfiend##103865
				Shadow Word: Death##103864
			]],[[
				Devouring Plague##103808
				Shadowy Apparitions##103809
				Misery##115448
				Thought Harvester##103795
				Surge of Insanity##103812
				Psychic Link##103814
				Dispersion##103806
				Silence##103792
				Void Eruption##103674
				Ancient Madness##103798
				Phantasmal Pathogen##103686
				Phantasmal Pathogen##103686
				Mind Spike##103803
				Mind Melt##115449
				Mind's Eye##103786
				Shadow Crash##103813
				Whispering Shadows##103682
				Maddening Touch##103784
				Maddening Touch##103784
				Shadowy Insight##103805
				Auspicious Spirits##103811
				Void Torrent##103796
				Tormented Spirits##103810
				Tormented Spirits##103810
				Idol of Yogg-Saron##103817
				Malediction##103797
				Idol of C'Thun##103782
				Screams of the Void##103789
				Screams of the Void##103789
				Idol of N'Zoth##103781
			]]
		},
	},
	ROGUE = {
		["Assassination (DPS)"] = {1,false, [[
				Evasion##112657
				Numbing Poison##112656
				Sap##112573
				Cloak of Shadows##112585
				Blind##112572
				Cheat Death##114737
				Gouge##112631
				Tricks of the Trade##112574
				Shadowstep##112583
				Master Poisoner##112521
				Fleet Footed##112654
				Virulent Poisons##112653
				Deadly Precision##112652
				Deadly Precision##112652
				Vigor##112651
				Improved Sprint##112636
				Deadened Nerves##112633
				Thief's Versatility##112645
				Thief's Versatility##112645
				Acrobatic Strikes##112644
				Recuperator##112526
				Echoing Reprimand##112525
				Resounding Clarity##112524
				Alacrity##112643
				Alacrity##112643
				Deeper Stratagem##112642
				Leeching Poison##112650
				Seal Fate##112649
				Seal Fate##112649
				Thistle Tea##112648
				Lethality##112640
				Shiv##112630
			]],[[
				Deadly Poison##112676
				Shadowstep##112675
				Bloody Mess##112510
				Bloody Mess##112510
				Improved Shiv##112513
				Cut to the Chase##112514
				Venomous Wounds##112520
				Elaborate Planning##112512
				Thrown Precision##112515
				Crimson Tempest##112517
				Improved Garrote##112673
				Deathmark##112662
				Amplifying Poison##112505
				Exsanguinate##112672
				Iron Wire##112671
				Lethal Dose##112509
				Lethal Dose##112509
				Elaborate Planning##112512
				Lightweight Shiv##112518
				Improved Poisons##112519
				Poison Bomb##112660
				Poison Bomb##112660
				Dashing Scoundrel##112659
				Dashing Scoundrel##112659
				Dragon-Tempered Blades##112658
				Shrouded Suffocation##112669
				Scent of Blood##112668
				Scent of Blood##112668
				Scent of Blood##112668
				Indiscriminate Carnage##112667
			]]
		},
		["Outlaw (DPS)"] = {2,true, [[
				Sap##112573
				Cloak of Shadows##112585
				Shadowrunner##112575
				Cheat Death##114737
				Tricks of the Trade##112574
				Shiv##112630
				Evasion##112657
				Numbing Poison##112656
				Subterfuge##112576
				Tight Spender##112582
				Nightstalker##112581
				Nightstalker##112581
				Improved Ambush##112580
				Fleet Footed##112654
				Deadened Nerves##112633
				Deadly Precision##112652
				Deadly Precision##112652
				Vigor##112651
				Thief's Versatility##112645
				Thief's Versatility##112645
				Soothing Darkness##112579
				Find Weakness##112578
				Find Weakness##112578
				Shadow Dance##112577
				Alacrity##112643
				Alacrity##112643
				Deeper Stratagem##112642
				Acrobatic Strikes##112644
				Lethality##112640
				Lethality##112640
				Cold Blood##112639
				Blind##112572
			]],[[
				Opportunity##112571
				Blade Flurry##112561
				Combat Potency##112532
				Adrenaline Rush##112545
				Grappling Hook##112570
				Weaponmaster##112533
				Combat Stamina##112534
				Ambidexterity##112546
				Restless Blades##112544
				Roll the Bones##112543
				Ruthlessness##112568
				Devious Stratagem##112567
				Heavy Hitter##112528
				Triple Threat##112566
				Triple Threat##112566
				Fatal Flourish##112548
				Quick Draw##112549
				Dancing Steel##112556
				Improved Main Gauche##112555
				Improved Main Gauche##112555
				Blade Rush##112530
				Take 'em by Surprise##112563
				Take 'em by Surprise##112563
				Hidden Opportunity##112562
				Precise Cuts##112554
				Fan the Hammer##112553
				Fan the Hammer##112553
				Loaded Dice##112542
				Audacity##112527
				Count the Odds##112541
			]]
		},
		["Subtlety (DPS)"] = {3,false, [[
				Cloak of Shadows##112585
				Shiv##112630
				Evasion##112657
				Atrophic Poison##112655
				Blind##112572
				Cheat Death##114737
				Tricks of the Trade##112574
				Gouge##112631
				Shadowstep##112583
				Tight Spender##112582
				Nightstalker##112581
				Nightstalker##112581
				Improved Ambush##112580
				Fleet Footed##112654
				Deadened Nerves##112633
				Deadly Precision##112652
				Deadly Precision##112652
				Vigor##112651
				Thief's Versatility##112645
				Thief's Versatility##112645
				Acrobatic Strikes##112644
				Alacrity##112643
				Alacrity##112643
				Deeper Stratagem##112642
				Leeching Poison##112650
				Seal Fate##112649
				Seal Fate##112649
				Thistle Tea##112648
				Lethality##112640
				Lethality##112640
				Cold Blood##112639
				Sap##112573
			]],[[
				Improved Shuriken Storm##112598
				Relentless Strikes##112597
				Shadow Blades##112614
				Black Powder##112600
				Improved Backstab##112629
				Weaponmaster##112628
				Premeditation##112627
				Silent Storm##112602
				Secret Technique##112603
				Gloomblade##112587
				Replicating Shadows##112605
				Shuriken Tornado##112604
				Veiltouched##112601
				Deepening Shadows##112612
				Improved Shadow Dance##112623
				Improved Shadow Dance##112623
				Without a Trace##112590
				Shadowed Finishers##112611
				Shadowed Finishers##112611
				Secret Stratagem##112610
				Dark Shadow##112620
				Dark Shadow##112620
				Lingering Shadow##112619
				Lingering Shadow##112619
				Danse Macabre##112618
				Deeper Daggers##112609
				Deeper Daggers##112609
				Finality##112608
				Finality##112608
				Dark Brew##112607
			]]
		},
	},
	SHAMAN = {
		["Elemental (DPS)"] = {1,false, [[
				Fire and Ice##101956
				Wind Shear##101957
				Earth Elemental##101952
				Frost Shock##101965
				Brimming with Life##101979
				Capacitor Totem##101961
				Static Charge##101960
				Astral Shift##101945
				Nature's Fury##101980
				Nature's Fury##101980
				Winds of Al'Akir##101981
				Winds of Al'Akir##101981
				Wind Rush Totem##101976
				Elemental Warding##101978
				Elemental Warding##101978
				Spiritwalker's Grace##101955
				Thunderstorm##101995
				Nature's Guardian##101974
				Nature's Guardian##101974
				Thunderous Paws##101962
				Graceful Spirit##101954
				Ancestral Guidance##102000
				Nature's Swiftness##101997
				Gust of Wind##101982
				Go with the Flow##101984
				Go with the Flow##101984
				Totemic Recall##101987
				Call of the Elements##101986
				Hex##101972
				Astral Bulwark##101943
				Ancestral Defense##114819
				Lava Burst##101950
				Chain Lightning##101949
			]],[[
				Earth Shock##101854
				Elemental Fury##101853
				Primordial Fury##101852
				Flow of Power##101871
				Storm Elemental##101849
				Earthquake##101855
				Tumultuous Fissures##101857
				Call of Thunder##101858
				Swelling Maelstrom##101893
				Surge of Power##101873
				Power of the Maelstrom##101892
				Power of the Maelstrom##101892
				Master of the Elements##101879
				Master of the Elements##101879
				Unrelenting Calamity##101859
				Stormkeeper##101860
				Flash of Lightning##101861
				Icefury##101870
				Electrified Shocks##101868
				Eye of the Storm##101867
				Echo Chamber##101890
				Echo Chamber##101890
				Mountains Will Fall##101889
				Liquid Magma Totem##101884
				Echoes of Great Sundering##101862
				Echoes of Great Sundering##101862
				Lightning Rod##101864
				Elemental Blast##101866
				Eye of the Storm##101867
				Elemental Equilibrium##101865
			]]
		},
		["Enhancement (DPS)"] = {2,true, [[
				Flurry##101947
				Lava Burst##101950
				Wind Shear##101957
				Frost Shock##101965
				Earth Elemental##101952
				Fire and Ice##101956
				Ancestral Defense##114819
				Astral Shift##101945
				Nature's Fury##101980
				Nature's Fury##101980
				Winds of Al'Akir##101981
				Winds of Al'Akir##101981
				Spirit Walk##101983
				Capacitor Totem##101961
				Guardian's Cudgel##101959
				Wind Rush Totem##101976
				Nature's Guardian##101974
				Nature's Guardian##101974
				Thunderstorm##101995
				Spirit Wolf##101963
				Totemic Projection##101973
				Thundershock##101994
				Ancestral Guidance##102000
				Mana Spring##102001
				Purge##101968
				Brimming with Life##101979
				Planes Traveler##101944
				Chain Heal##101951
				Earth Shield##102004
				Elemental Warding##101978
				Elemental Warding##101978
				Maelstrom Weapon##101948
				Chain Lightning##101949
			]],[[
				Stormstrike##101804
				Windfury Weapon##101823
				Lava Lash##101805
				Improved Maelstrom Weapon##101822
				Improved Maelstrom Weapon##101822
				Raging Maelstrom##101802
				Ice Strike##101821
				Molten Assault##101806
				Windfury Totem##101803
				Sundering##101841
				Crash Lightning##101840
				Overflowing Maelstrom##101801
				Crashing Storms##101818
				Molten Assault##101806
				Hailstorm##101808
				Hot Hand##101809
				Hot Hand##101809
				Ashen Catalyst##101811
				Lashing Flames##101812
				Swirling Maelstrom##101820
				Feral Spirit##101838
				Witch Doctor's Ancestry##101837
				Witch Doctor's Ancestry##101837
				Elemental Spirits##101836
				Elemental Weapons##101826
				Elemental Weapons##101826
				Primordial Wave##101830
				Primal Maelstrom##101829
				Primal Maelstrom##101829
				Splintered Elements##101828
			]]
		},
		["Restoration (Healer)"] = {3,false, [[
				Wind Shear##101957
				Earth Shield##102004
				Elemental Orbit##102003
				Chain Lightning##101949
				Healing Stream Totem##101998
				Astral Shift##101945
				Brimming with Life##101979
				Spirit Wolf##101963
				Swirling Currents##101999
				Swirling Currents##101999
				Surging Shields##101988
				Surging Shields##101988
				Spiritwalker's Grace##101955
				Nature's Fury##101980
				Nature's Fury##101980
				Earth Elemental##101952
				Fire and Ice##101956
				Ancestral Defense##114819
				Wind Rush Totem##101976
				Nature's Guardian##101974
				Nature's Guardian##101974
				Thunderstorm##101995
				Ancestral Guidance##102000
				Thundershock##101994
				Graceful Spirit##101954
				Nature's Swiftness##101997
				Elemental Warding##101978
				Elemental Warding##101978
				Purge##101968
				Planes Traveler##101944
				Capacitor Totem##101961
				Lava Burst##101950
				Chain Heal##101951
			]],[[
				Riptide##101905
				Healing Stream Totem##101900
				Healing Wave##101904
				Resurgence##101902
				Deluge##101906
				Deluge##101906
				Healing Rain##101923
				Ancestral Vigor##101909
				Ancestral Vigor##101909
				Spirit Link Totem##101913
				Healing Tide Totem##101912
				Ancestral Reach##101911
				Undulation##101919
				Mana Tide Totem##101929
				Spiritwalker's Tidal Totem##114817
				Tidal Waves##101899
				Water Totem Mastery##101895
				Cloudburst Totem##101933
				Master of the Elements##101896
				Lava Surge##101894
				Primordial Wave##101917
				Tidebringer##101924
				Tidebringer##101924
				High Tide##101925
				Earthen Harmony##101941
				Earthen Harmony##101941
				Ascendance##101942
				Acid Rain##101922
				Echo of the Elements##101928
				Stormkeeper##101901
			]]
		},
	},
	WARLOCK = {
		["Affliction (DPS)"] = {1,false, [[
				Fel Domination##91439
				Burning Rush##91460
				Fiendish Stride##91459
				Fiendish Stride##91459
				Mortal Coil##91457
				Wrathful Minion##91456
				Demon Skin##91463
				Demon Skin##91463
				Curses of Enfeeblement##91462
				Demonic Inspiration##91436
				Sweet Souls##91435
				Dark Pact##91444
				Frequent Donor##91445
				Socrethar's Guile##115461
				Socrethar's Guile##115461
				Strength of Will##91468
				Sargerei Technique##115462
				Sargerei Technique##115462
				Demonic Gateway##91466
				Shadowfury##91452
				Soul Link##91433
				Soul Conduit##91431
				Soul Conduit##91431
				Summon Soulkeeper##91448
				Soulburn##91469
				Grimoire of Synergy##91432
				Grimoire of Synergy##91432
				Demonic Fortitude##91430
				Fel Armor##91461
				Fel Armor##91461
				Demonic Embrace##91438
				Demonic Circle##91441
			]],[[
				Malefic Rapture##91570
				Seed of Corruption##91571
				Unstable Affliction##91569
				Writhe in Agony##91572
				Nightfall##91568
				Shadow Embrace##91565
				Shadow Embrace##91565
				Kindled Malice##91561
				Kindled Malice##91561
				Vile Taint##91556
				Siphon Life##91574
				Soul Swap##91558
				Soul Flame##91562
				Withering Bolt##91577
				Withering Bolt##91577
				Grimoire of Sacrifice##91576
				Sow the Seeds##91560
				Drain Soul##91566
				Focused Malignancy##91563
				Focused Malignancy##91563
				Haunt##91552
				Summon Darkglare##91554
				Malevolent Visionary##91504
				Malevolent Visionary##91504
				Grim Reach##91419
				Malefic Affliction##91429
				Malefic Affliction##91429
				Doom Blossom##91503
				Wrath of Consumption##91553
				Creeping Death##91580
			]]
		},
		["Demonology (DPS)"] = {2,true, [[
				Fel Domination##91439
				Burning Rush##91460
				Demon Skin##91463
				Demon Skin##91463
				Curses of Enfeeblement##91462
				Demonic Inspiration##91436
				Fel Armor##91461
				Fel Armor##91461
				Sweet Souls##91435
				Dark Pact##91444
				Frequent Donor##91445
				Socrethar's Guile##115461
				Socrethar's Guile##115461
				Strength of Will##91468
				Mortal Coil##91457
				Wrathful Minion##91456
				Demonic Gateway##91466
				Shadowfury##91452
				Sargerei Technique##115462
				Sargerei Technique##115462
				Soul Link##91433
				Soul Conduit##91431
				Soul Conduit##91431Fel
				Synergy##91425
				Summon Soulkeeper##91448
				Soulburn##91469
				Grimoire of Synergy##91432
				Grimoire of Synergy##91432
				Demonic Fortitude##91430
				Fiendish Stride##91459
				Demonic Embrace##91438
				Demonic Circle##91441
			]],[[
				Call Dreadstalkers##91543
				Demonbolt##91544
				Demonic Knowledge##91546
				Implosion##91520
				Dreadlash##91539
				Demonic Strength##91540
				Annihilan Training##91542
				From the Shadows##91533
				Fel and Steel##91534
				Grimoire: Felguard##91531
				Demonic Meteor##91530
				Power Siphon##91521
				Fel Sunder##91528
				Ripped through the Portal##91527
				Ripped through the Portal##91527
				Carnivorous Stalkers##91536
				Inner Demons##91547
				Inner Demons##91547
				Dread Calling##91517
				Imp Gang Boss##91516
				Summon Demonic Tyrant##91550
				Soulbound Tyrant##91510
				Soulbound Tyrant##91510
				Reign of Tyranny##91509
				Antoran Armaments##91526
				Infernal Command##91524
				Infernal Command##91524
				Guillotine##115460
				Bloodbound Imps##91519
				Imp Gang Boss##91516
			]]
		},
		["Destruction (DPS)"] = {3,false, [[
				Fel Armor##91461
				Fel Armor##91461
				Mortal Coil##91457
				Wrathful Minion##91456
				Burning Rush##91460
				Fel Domination##91439
				Demon Skin##91463
				Demon Skin##91463
				Demonic Gateway##91466
				Shadowfury##91452
				Dark Accord##91467
				Curses of Enfeeblement##91462
				Demonic Inspiration##91436
				Sweet Souls##91435
				Dark Pact##91444
				Frequent Donor##91445
				Socrethar's Guile##115461
				Socrethar's Guile##115461
				Sargerei Technique##115462
				Sargerei Technique##115462
				Demonic Fortitude##91430
				Fiendish Stride##91459
				Soul Link##91433
				Soul Conduit##91431
				Soul Conduit##91431
				Inquisitor's Gaze##91427
				Soulburn##91469
				Grimoire of Synergy##91432
				Grimoire of Synergy##91432
				Demonic Embrace##91438
				Fel Synergy##91425
				Demonic Circle##91441
			]],[[
				Chaos Bolt##91591
				Reverse Entropy##91496
				Havoc##91493
				Conflagrate##91590
				Pandemonium##91498
				Backdraft##91589
				Roaring Blaze##91588
				Rain of Fire##91592
				Pyrogenics##91489
				Inferno##91488
				Channel Demonfire##91586
				Raging Demonfire##91585
				Raging Demonfire##91585
				Backlash##91500
				Flashpoint##91485
				Flashpoint##91485
				Eradication##91501
				Eradication##91501
				Ashen Remains##91482
				Ashen Remains##91482
				Summon Infernal##91502
				Diabolic Embers##91481
				Ritual of Ruin##91483
				Master Ritualist##91475
				Master Ritualist##91475
				Avatar of Destruction##91476
				Madness of the Azj'Aqir##91480
				Madness of the Azj'Aqir##91480
				Chaos Incarnate##91479
				Power Overwhelming##91478
			]]
		},
	},
	WARRIOR = {
		["Arms (DPS)"] = {1,true, [[
				War Machine##112185
				Leeching Strikes##112206
				Furious Blows##112197
				Impending Victory##112183
				Fast Footwork##112238
				Heroic Leap##112208
				Frothing Berserker##112216
				Thunder Clap##114296
				Sidearm##112192
				Overwhelming Rage##112245
				Overwhelming Rage##112245
				Barbaric Training##114293
				Seismic Reverberation##112201
				Blood and Thunder##112204
				Double Time##112249
				Bounding Stride##112219
				Pain and Gain##112217
				Reinforced Plates##112235
				Spell Reflection##112253
				Rallying Cry##112188
				Armored to the Teeth##112233
				Armored to the Teeth##112233
				Avatar##112232
				Blademaster's Torment##112229
				Two-Handed Weapon Specialization##112179
				Wild Strikes##112224
				Wild Strikes##112224
				Thunderous Roar##112223
				Uproar##112221
				Thunderous Words##112222
				Cruel Strikes##112248
				Battle Stance##112184
				Defensive Stance##114643
			]],[[
				Mortal Strike##112122
				Overpower##112123
				Die by the Sword##112128
				Ignore Pain##114738
				Martial Prowess##112130
				Improved Overpower##112131
				Improved Execute##112125
				Sudden Death##112126
				Colossus Smash##112144
				Anger Management##112143
				In For The Kill##112142
				Warbreaker##112139
				Impale##112146
				Tactician##112134
				Rend##112136
				Strength of Arms##114739
				Dreadnaught##112137
				Cleave##112147
				Storm of Swords##112119
				Reaping Swings##112148
				Valor in Victory##112315
				Bladestorm##112314
				Hurricane##112312
				Merciless Bonegrinder##112117
				Deft Experience##112309
				Deft Experience##112309
				Battlelord##114740
				Bloodletting##112310
				Sharpened Blades##112320
				Executioner's Precision##112318
			]]
		},
		["Fury (DPS)"] = {2,false, [[
				War Machine##112254
				Leeching Strikes##112206
				Furious Blows##112197
				Impending Victory##112183
				Fast Footwork##112238
				Frothing Berserker##112213
				Heroic Leap##112208
				Defensive Stance##114644
				Sidearm##112196
				Overwhelming Rage##112245
				Overwhelming Rage##112245
				Storm Bolt##112198
				Barbaric Training##114294
				Bounding Stride##112219
				Double Time##112249
				Honed Reflexes##112234
				Pain and Gain##112217
				Reinforced Plates##112235
				Rallying Cry##112188
				Spell Reflection##112253
				Armored to the Teeth##112108
				Armored to the Teeth##112108
				Avatar##114770
				Berserker's Torment##112227
				Wild Strikes##112224
				Wild Strikes##112224
				Cruel Strikes##112248
				Cruel Strikes##112248
				Spear of Bastion##112247
				Elysian Might##112180
				Dual Wield Specialization##112240
				Berserker Stance##112182
			]],[[
				Bloodthirst##112261
				Raging Blow##112265
				Enraged Regeneration##112264
				Improved Enrage##112267
				Fresh Meat##112268
				Improved Execute##112301
				Sudden Death##112300
				Improved Raging Blow##112259
				Warpaint##112263
				Rampage##112277
				Slaughtering Strikes##112280
				Recklessness##112281
				Frenzy##112275
				Focus in Chaos##112272
				Cruelty##112299
				Ashen Juggernaut##112278
				Massacre##112279
				Wrath and Fury##112255
				Improved Whirlwind##112298
				Meat Cleaver##112260
				Swift Strikes##112286
				Swift Strikes##112286
				Anger Management##112285
				Unbridled Ferocity##112283
				Critical Thinking##112296
				Critical Thinking##112296
				Ravager##112256
				Hurricane##112257
				Onslaught##112295
				Tenderize##112294
			]]
		},
		["Protection (Tank)"] = {3,false, [[
				War Machine##112207
				Rallying Cry##112188
				Leeching Strikes##112206
				Impending Victory##112183
				Fast Footwork##112238
				Heroic Leap##112208
				Thunder Clap##112205
				Frothing Berserker##112237
				Storm Bolt##112198
				Furious Blows##112197
				Sidearm##112194
				Spell Reflection##112253
				Intimidating Shout##112252
				Blood and Thunder##112204
				Double Time##112249
				Pain and Gain##112217
				Reinforced Plates##112235
				Crushing Force##112236
				Crushing Force##112236
				Seismic Reverberation##112201
				Armored to the Teeth##112109
				Armored to the Teeth##112109
				Avatar##114769
				Unstoppable Force##112230
				Endurance Training##112200
				Shockwave##112242
				Wild Strikes##112224
				Wild Strikes##112224
				Thunderous Roar##112223
				Thunderous Words##112222
				One-Handed Weapon Specialization##112181
				Defensive Stance##112187
				Battle Stance##112112
			]],[[
				Ignore Pain##112149
				Revenge##112152
				Devastator##112153
				Strategist##112157
				Last Stand##112151
				Demoralizing Shout##112159
				Best Served Cold##112158
				Brace For Impact##112150
				Rend##112156
				Shield Wall##112167
				Anger Management##112166
				Impenetrable Wall##112164
				Enduring Defenses##112169
				Fueled by Violence##112326
				Challenging Shout##112163
				Show of Force##112177
				Heavy Repercussions##112176
				Bloodsurge##112154
				Tough as Nails##112324
				Punish##112323
				Shield Specialization##112171
				Shield Specialization##112171
				Focused Vigor##112174
				Shield Charge##112173
				Champion's Bulwark##112172
				Booming Voice##112170
				Indomitable##112306
				Violent Outburst##112116
				Ravager##112304
				Battering Ram##112113
			]]
		},
	},
}
