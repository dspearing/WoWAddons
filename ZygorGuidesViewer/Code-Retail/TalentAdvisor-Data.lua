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
				Blazing Path##112928
				Shattered Restoration##112863
				Charred Warblades##112861
				Consume Magic##112926
				Bouncing Glaives##112841
				Improved Disrupt##112849
				Chaos Nova##112911
				Aura of Pain##112844
				Infernal Armor##112924
				Infernal Armor##112924
				Demonic##112923
				Felblade##117759
				Soul Rending##112847
				Soul Rending##112847
				Champion of the Glaive##117768
				Pursuit##112851
				Will of the Illidari##112918
				Illidari Knowledge##112846
				Sigil of Misery##112859
				Darkness##112921
				Rush of Chaos##117757
				Rush of Chaos##117757
				The Hunt##112837
				Internal Struggle##112845
				Erratic Felheart##112914
				Erratic Felheart##112914
				Collective Anguish##117762
				Quickened Sigils##117758
				Flames of Fury##112862
				Flames of Fury##112862
				Vengeful Retreat##112853
			]],[[
				Eye Beam##112939
				Demon Blades##112940
				Burning Hatred##112832
				First Blood##112834
				Deflecting Dance##115246
				Critical Chaos##112951
				Netherwalk##115247
				Demon Hide##112938
				Trail of Ruin##112824
				Growing Inferno##112825
				Burning Wound##112826
				Serrated Glaive##112934
				Dancing with Fate##112936
				Dancing with Fate##112936
				Furious Gaze##112948
				Chaotic Transformation##112831
				Initiative##112950
				Tactical Retreat##112944
				Unbound Chaos##112942
				Scars of Suffering##112823
				Inner Demon##112947
				Know Your Enemy##112957
				Know Your Enemy##112957
				Inertia##117744
				Essence Break##112956
				A Fire Inside##117741
				Ragefire##112827
				Chaotic Disposition##117754
				Chaotic Disposition##117754
				Any Means Necessary##112828
			]]
		},
		["Vengeance (Tank)"] = {2,false, [[
				Blazing Path##112928
				Unrestrained Fury##112852
				Shattered Restoration##112863
				Charred Warblades##112861
				Aldrachi Design##112917
				Bouncing Glaives##112841
				Chaos Nova##112911
				Improved Disrupt##112849
				Felblade##117759
				Infernal Armor##112924
				Infernal Armor##112924
				Demonic##112923
				Will of the Illidari##112918
				Aura of Pain##112844
				Soul Rending##112847
				Soul Rending##112847
				Champion of the Glaive##117768
				Illidari Knowledge##112846
				Vengeful Retreat##112853
				Imprison##112927
				Darkness##112921
				Rush of Chaos##117757
				Rush of Chaos##117757
				The Hunt##112837
				Pitch Black##112919
				Internal Struggle##112845
				Soul Sigils##112839
				Quickened Sigils##117758
				Flames of Fury##112862
				Flames of Fury##112862
				Elysian Decree##117755
				Sigil of Misery##112859
			]],[[
				Fel Devastation##112908
				Fiery Brand##112864
				Deflecting Spikes##112906
				Sigil of Silence##112904
				Frailty##112907
				Fracture##112885
				Calcified Spikes##112882
				Perfectly Balanced Glaive##112883
				Spirit Bomb##112894
				Extended Spikes##112881
				Burning Blood##112903
				Fel Flame Fortification##112868
				Fiery Demise##112872
				Fiery Demise##112872
				Agonizing Flames##112887
				Fallout##112888
				Void Reaver##112893
				Painbringer##112892
				Painbringer##112892
				Chains of Anger##112879
				Burning Alive##112873
				Charred Flesh##112877
				Charred Flesh##112877
				Illuminated Sigils##117760
				Darkglare Boon##112901
				Focused Cleave##112891
				Vulnerability##112897
				Vulnerability##112897
				Soulcrush##112896
				Cycle of Binding##112878
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
				Rising Light, Falling Night##103285
				Nurturing Instinct##103292
				Nurturing Instinct##103292
				Thick Hide##103306
				Ursol's Vortex##103321
				Lycara's Teachings##103311
				Lycara's Teachings##103311
				Lycara's Teachings##103311
				Renewal##103310
				Heart of the Wild##103309
				Improved Stampeding Roar##103308
				Incapacitating Roar##103316
				Well-Honed Instincts##103326
				Thick Hide##103306
				Verdant Heart##103296
				Frenzied Regeneration##103298
				Thrash##103301
			]],[[
				Maul##103191
				Survival Instincts##103193
				Mangle##103195
				Berserk##103216
				Gore##103190
				Dream of Cenarius##103218
				Innate Resolve##103229
				Gory Fur##103196
				Survival of the Fittest##103210
				Survival of the Fittest##103210
				After the Wildfire##103206
				Berserk##103211
				Thorns of Iron##114698
				Vulnerable Flesh##103228
				Vulnerable Flesh##103228
				Soul of the Forest##103208
				Vicious Cycle##103227
				Berserk##103224
				Tooth and Claw##103197
				Layered Mane##103215
				Rend and Tear##103221
				Ursoc's Fury##103219
				Circle of Life and Death##103202
				Incarnation: Guardian of Ursoc##103201
				Rage of the Sleeper##103207
				Raze##114701
				Ursoc's Guidance##103199
				Blood Frenzy##103209
				Flashing Claws##103223
				Flashing Claws##103223
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
				Improved Sunfire##116102
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
				Improved Nature's Cure##103281
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
				Quell##115620
				Innate Magic##115611
				Innate Magic##115611
				Expunge##115615
				Verdant Embrace##115655
				Enkindled##115603
				Enkindled##115603
				Obsidian Scales##115613
				Tip the Scales##115665
				Permeating Chill##115612
				Instinctive Arcana##115619
				Instinctive Arcana##115619
				Regenerative Magic##115668
				Blast Furnace##115618
				Extended Flight##115664
				Extended Flight##115664
				Panacea##115663
				Draconic Legacy##115609
				Source of Magic##115669
				Inherent Resistance##115670
				Protracted Talons##115616
				Leaping Flames##115657
				Terror of the Skies##115656
				Renewing Blaze##115658
				Fire Within##115659
				Zephyr##115661
				Rescue##115596
				Potent Mana##116103
				Aerial Mastery##115667
				Inherent Resistance##115670
				Obsidian Bulwark##115597
				Landslide##115614
				Natural Convergence##115621
			]],[[
				Pyre##115647
				Ruby Essence Burst##115593
				Azure Essence Burst##115646
				Imposing Presence##115645
				Dragonrage##115643
				Dense Energy##115592
				Eternity Surge##115581
				Arcane Intensity##115580
				Arcane Intensity##115580
				Animosity##115642
				Heat Wave##115588
				Heat Wave##115588
				Catalyze##115587
				Tyranny##115640
				Essence Attunement##115631
				Eye of Infinity##115630
				Eternity's Span##115632
				Shattering Star##115627
				Volatility##115591
				Volatility##115591
				Arcane Vigor##115625
				Power Swell##115634
				Iridescence##115633
				Spellweaver's Dominance##115635
				Titanic Wrath##115578
				Titanic Wrath##115578
				Causality##115683
				Hoarded Power##115637
				Scintillation##115636
				Burnout##115624
			]]
		},
		["Preservation (Healer)"] = {2,false, [[
				Scarlet Adaptation##115654
				Enkindled##115603
				Enkindled##115603
				Obsidian Scales##115613
				Permeating Chill##115612
				Innate Magic##115611
				Innate Magic##115611
				Quell##115620
				Tip the Scales##115665
				Cauterizing Flame##115602
				Attuned to the Dream##115600
				Attuned to the Dream##115600
				Bountiful Bloom##115599
				Panacea##115663
				Instinctive Arcana##115619
				Instinctive Arcana##115619
				Regenerative Magic##115668
				Draconic Legacy##115609
				Source of Magic##115669
				Obsidian Bulwark##115597
				Potent Mana##116103
				Aerial Mastery##115667
				Time Spiral##115666
				Lush Growth##115662
				Lush Growth##115662
				Zephyr##115661
				Renewing Blaze##115658
				Fire Within##115659
				Rescue##115596
				Oppressing Roar##115607
				Leaping Flames##115657
				Expunge##115615
				Verdant Embrace##115655
			]],[[
				Echo##115653
				Dream Breath##115542
				Temporal Compression##115543
				Spiritbloom##115546
				Reversion##115652
				Rewind##115651
				Time Dilation##115650
				Essence Burst##115541
				Spiritual Clarity##115544
				Emerald Communion##115549
				Rush of Vitality##115547
				Call of Ysera##115554
				Golden Hour##115559
				Temporal Anomaly##115561
				Resonating Sphere##115563
				Essence Attunement##115540
				Time Lord##115558
				Time Lord##115558
				Exhilarating Burst##115550
				Exhilarating Burst##115550
				Spark of Insight##115575
				Renewing Breath##115574
				Renewing Breath##115574
				Dream Flight##115573
				Lifebind##115557
				Temporal Artificer##115569
				Timeless Magic##115568
				Timeless Magic##115568
				Stasis##115567
				Ouroboros##115555
			]]
		},
		["Augmentation (DPS)"] = {3,false, [[
				Natural Convergence##115621
				Permeating Chill##115612
				Quell##115620
				Enkindled##115603
				Enkindled##115603
				Innate Magic##115611
				Innate Magic##115611
				Expunge##115615
				Tip the Scales##115665
				Inherent Resistance##115670
				Inherent Resistance##115670
				Blast Furnace##115618
				Instinctive Arcana##115619
				Instinctive Arcana##115619
				Extended Flight##115664
				Extended Flight##115664
				Panacea##115663
				Draconic Legacy##115609
				Source of Magic##115669
				Verdant Embrace##115655
				Potent Mana##116103
				Aerial Mastery##115667
				Time Spiral##115666
				Renewing Blaze##115658
				Fire Within##115659
				Zephyr##115661
				Oppressing Roar##115607
				Leaping Flames##115657
				Rescue##115596
				Twin Guardian##115595
				Obsidian Bulwark##115597
				Landslide##115614
				Obsidian Scales##115613
			]],[[
				Ebon Might##115496
				Eruption##115498
				Essence Burst##115520
				Ricocheting Pyroclast##115507
				Upheaval##115502
				Breath of Eons##115536
				Pupil of Alexstrasza##115521
				Essence Attunement##115519
				Chrono Ward##115706
				Draconic Attunements##115518
				Volcanism##115505
				Blistering Scales##115508
				Tectonic Locus##115500
				Font of Magic##115506
				Stretch Time##115534
				Spatial Paradox##115526
				Power Nexus##115499
				Defy Fate##115522
				Aspects' Favor##115517
				Aspects' Favor##115517
				Ignition Rush##115531
				Time Skip##115533
				Interwoven Threads##115686
				Prescience##115675
				Anachronism##115523
				Fate Mirror##115685
				Hoarded Power##115512
				Inferno's Blessing##115495
				Momentum Shift##115532
				Accretion##115530
			]]
		},
	},
	HUNTER = {
		["Beast Mastery (DPS)"] = {1,true,[[
				Kill Shot##100539
				Posthaste##100634
				Posthaste##100634
				Counter Shot##100624
				Survival of the Fittest##100523
				Natural Mending##100638
				Natural Mending##100638
				Tar Trap##100641
				Tranquilizing Shot##100617
				Intimidation##100621
				Nature's Endurance##100521
				Camouflage##100647
				Binding Shot##100650
				Rejuvenating Wind##100619
				Rejuvenating Wind##100619
				Born To Be Wild##100646
				Born To Be Wild##100646
				Improved Tranquilizing Shot##100632
				Hunter's Avoidance##100536
				Pathfinding##100631
				Keen Eyesight##100635
				Keen Eyesight##100635
				Death Chakram##100628
				Beast Master##100639
				Beast Master##100639
				Improved Kill Command##100645
				Improved Kill Command##100645
				Alpha Predator##100613
				Master Marksman##100625
				Master Marksman##100625
				Serrated Shots##100513
				Kill Command##100648
			]],[[
				Cobra Shot##100663
				Multi-Shot##100630
				Barbed Shot##100683
				Pack Tactics##100672
				Aspect of the Beast##100658
				Animal Companion##100661
				Beast Cleave##100670
				Beast Cleave##100670
				Bestial Wrath##100669
				Barbed Wrath##100524
				Wild Call##100681
				Kill Cleave##100668
				War Orders##100666
				War Orders##100666
				Savagery##100664
				Thrill of the Hunt##100679
				Thrill of the Hunt##100679
				Stomp##100656
				Stomp##100656
				Training Expert##100662
				Scent of Blood##100680
				Scent of Blood##100680
				Piercing Fangs##100675
				Master Handler##100677
				Call of the Wild##100682
				Bloody Frenzy##100612
				Dire Command##100667
				Dire Command##100667
				Dire Frenzy##100527
				Dire Frenzy##100527
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
				Shifting Power##80171
				Incanter's Flow##80177
				Remove Curse##80175
				Alter Time##80174
				Ice Block##80181
				Spellsteal##80140
				Mirror Image##80183
				Master of Time##80159
				Blast Wave##80160
				Tome of Antonidas##80155
				Quick Witted##80161
				Shimmer##80163
				Ice Nova##80186
				Tome of Rhonin##80187
				Energized Barriers##80157
				Winter's Protection##80182
				Winter's Protection##80182
				Cryo-Freeze##80165
				Cryo-Freeze##80165
				Temporal Velocity##80156
				Temporal Velocity##80156
				Dragon's Breath##80147
				Mass Barrier##80148
				Accumulative Shielding##80149
				Temporal Warp##80150
				Greater Invisibility##115877
				Frigid Winds##80188
				Frigid Winds##80188
				Freezing Cold##80143
				Ice Cold##80141
				Prismatic Barrier##80180
			]],[[
				Arcane Missiles##80307
				Reverberate##115762
				Arcane Surge##80299
				Concentrated Power##80298
				Arcane Orb##80308
				Arcane Tempo##80205
				Nether Precision##80295
				Crackling Energy##80297
				Amplification##80294
				Improved Clearcasting##80293
				Arcane Familiar##80207
				Presence of Mind##80208
				Charged Orb##80310
				Resonance##80200
				Nether Tempest##80198
				Arcing Cleave##80201
				Touch of the Magi##80302
				Slipstream##80296
				Impetus##80291
				Crackling Energy##80297
				Arcane Echo##80191
				Radiant Spark##80304
				Harmonic Echo##80305
				Arcane Bombardment##80303
				Enlightened##80204
				Prodigious Savant##80197
				Prodigious Savant##80197
				Orb Barrage##80196
				Evocation##80209
				Siphon Storm##80210
			]]
		},
		["Fire (DPS)"] = {2,false, [[
				Overflowing Energy##80179
				Shifting Power##80171
				Incanter's Flow##80177
				Remove Curse##80175
				Alter Time##80174
				Ice Block##80181
				Spellsteal##80140
				Mirror Image##80183
				Quick Witted##80161
				Ice Floes##80162
				Ice Nova##80186
				Master of Time##80159
				Blast Wave##80160
				Energized Barriers##80157
				Tome of Antonidas##80155
				Tome of Rhonin##80187
				Winter's Protection##80182
				Winter's Protection##80182
				Diverted Energy##80158
				Diverted Energy##80158
				Temporal Velocity##80156
				Temporal Velocity##80156
				Dragon's Breath##80147
				Mass Barrier##80148
				Accumulative Shielding##80149
				Temporal Warp##80150
				Greater Invisibility##115877
				Frigid Winds##80188
				Frigid Winds##80188
				Ice Ward##80142
				Ice Cold##80141
				Blazing Barrier##80178
			]],[[
				Pyroblast##80283
				Fire Blast##80282
				Phoenix Flames##80285
				Scorch##80281
				Searing Touch##80280
				Pyrotechnics##80284
				Surging Blaze##80258
				Fuel the Fire##80257
				Flame On##80256
				Flame On##80256
				Combustion##80275
				Critical Mass##80287
				Critical Mass##80287
				Improved Combustion##80269
				Feel the Burn##80261
				Firemind##80276
				Alexstrasza's Fury##80288
				Call of the Sun King##80278
				Flame Patch##80259
				Incendiary Eruptions##80255
				Kindling##80265
				Wildfire##80270
				Wildfire##80270
				Sun King's Blessing##80273
				Fiery Rush##80271
				Conflagration##80262
				Meteor##80253
				Fevered Incantation##80277
				Phoenix Reborn##80266
				Fervent Flickering##80286
			]]
		},
		["Frost (DPS)"] = {3,true, [[
				Overflowing Energy##80179
				Shifting Power##80171
				Incanter's Flow##80177
				Remove Curse##80175
				Alter Time##80174
				Ice Block##80181
				Spellsteal##80140
				Mirror Image##80183
				Quick Witted##80161
				Ice Nova##80186
				Tome of Rhonin##80187
				Master of Time##80159
				Blast Wave##80160
				Ice Floes##80162
				Tome of Antonidas##80155
				Energized Barriers##80157
				Diverted Energy##80158
				Diverted Energy##80158
				Cryo-Freeze##80165
				Cryo-Freeze##80165
				Frigid Winds##80188
				Frigid Winds##80188
				Time Manipulation##80189
				Temporal Warp##80150
				Freezing Cold##80143
				Ice Cold##80141
				Temporal Velocity##80156
				Temporal Velocity##80156
				Dragon's Breath##80147
				Mass Barrier##80148
				Greater Invisibility##115877
				Ice Barrier##80176
			]],[[
				Ice Lance##80241
				Frozen Orb##80242
				Flurry##80243
				Fingers of Frost##80227
				Shatter##80228
				Frostbite##102428
				Winter's Blessing##80239
				Everlasting Frost##102429
				Piercing Cold##80229
				Lonely Winter##80237
				Wintertide##80236
				Wintertide##80236
				Icy Veins##80235
				Brain Freeze##80244
				Perpetual Winter##80247
				Comet Storm##80248
				Ice Caller##80233
				Flash Freeze##80231
				Bone Chilling##80230
				Subzero##80223
				Subzero##80223
				Splitting Ice##80224
				Hailstones##80221
				Hailstones##80221
				Glacial Spike##80220
				Thermal Void##80217
				Freezing Rain##80212
				Freezing Winds##80214
				Coldest Snap##80218
				Glacial Assault##80249
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
				Calming Presence##101511
				Improved Detox##102627
				Ferocity of Xuen##101524
				Ferocity of Xuen##101524
				Vigorous Expulsion##101530
				Vivacious Vivification##101513
				Tiger's Lust##101507
				Improved Vivify##101510
				Transcendence##101512
				Spear Hand Strike##101504
				Celerity##101503
				Ring of Peace##101516
				Dampen Harm##117802
				Diffuse Magic##101515
				Chi Burst##101527
				Profound Rebuttal##101526
				Fast Feet##101523
				Fast Feet##101523
				Improved Touch of Death##101501
				Improved Vivify##101510
				Fatal Touch##101521
				Fatal Touch##101521
				Resonant Fists##101520
				Resonant Fists##101520
				Close to Heart##101525
				Close to Heart##101525
				Save Them All##101533
				Save Them All##101533
				Generous Pour##101500
				Generous Pour##101500
				Paralysis##101506
				Soothing Mist##101509
				Rising Sun Kick##101508
			]],[[
				Enveloping Mist##101370
				Renewing Mist##101394
				Essence Font##101406
				Thunder Focus Tea##101410
				Revival##101378
				Life Cocoon##101390
				Mana Tea##101395
				Teachings of the Monastery##101403
				Mists of Life##101369
				Chrysalis##101389
				Healing Elixir##101374
				Invoke Chi-Ji, the Red Crane##101396
				Mist Wrap##101363
				Zen Pulse##101368
				Energizing Brew##101380
				Celestial Harmony##101388
				Dancing Mists##101393
				Uplifted Spirits##101398
				Invigorating Mists##101358
				Rapid Diffusion##101385
				Sheilun's Gift##101392
				Veil of Pride##101405
				Rising Mist##101356
				Legacy of Wisdom##114821
				Ancient Teachings##101408
				Gift of the Celestials##101381
				Faeline Stomp##101359
				Ancient Concordance##101371
				Awakened Faeline##101383
				Rapid Diffusion##101385
			]]
		},
		["Windwalker (DPS)"] = {3,true,  [[
				Tiger's Lust##101507
				Detox##101416
				Ferocity of Xuen##101524
				Ferocity of Xuen##101524
				Soothing Mist##101509
				Vigorous Expulsion##101530
				Grace of the Crane##101529
				Grace of the Crane##101529
				Chi Burst##101527
				Transcendence##101512
				Ring of Peace##101516
				Dampen Harm##117804
				Eye of the Tiger##101518
				Diffuse Magic##101515
				Fast Feet##101523
				Fast Feet##101523
				Disable##101495
				Fortifying Brew##101496
				Celerity##101503
				Improved Touch of Death##101501
				Fatal Touch##101521
				Fatal Touch##101521
				Resonant Fists##101520
				Resonant Fists##101520
				Summon White Tiger Statue##101519
				Profound Rebuttal##101526
				Calming Presence##101511
				Generous Pour##101500
				Generous Pour##101500
				Close to Heart##101525
				Close to Heart##101525
				Rising Sun Kick##101508
			]],[[
				Fists of Fury##101423
				Ascension##101422
				Power Strikes##101424
				Flashing Fists##101425
				Flashing Fists##101425
				Flying Serpent Kick##101432
				Touch of Karma##101420
				Widening Whirl##101419
				Serenity##101428
				Drinking Horn Cover##101430
				Invoke Xuen, the White Tiger##101473
				Glory of the Dawn##101493
				Open Palm Strikes##101494
				Strike of the Windlord##101491
				Hit Combo##101492
				Thunderfist##101490
				Teachings of the Monastery##101426
				Mark of the Crane##101434
				Shadowboxing Treads##101435
				Dance of Chi-Ji##101437
				Fury of Xuen##101472
				Xuen's Battlegear##101478
				Skyreach##114822
				Rising Star##101489
				Rising Star##101489
				Jadefire Stomp##101488
				Jadefire Harmony##101487
				Empowered Tiger Lightning##101475
				Transfer the Power##101476
				Invoker's Delight##101477
			]]
		},
	},
	PALADIN = {
		["Holy"] = {1,false, [[
				Divine Steed##102625
				Hammer of Wrath##102479
				Greater Judgment##114292
				Rebuke##102591
				Cavalier##102592
				Obduracy##102622
				Improved Cleanse##102477
				Blinding Light##102584
				Avenging Wrath##102593
				Blessing of Protection##102604
				Crusader's Reprieve##102518
				Holy Aegis##102597
				Holy Aegis##102597
				Echoing Blessings##115872
				Afterimage##102601
				Sanctified Plates##115034
				Sanctified Plates##115034
				Unbreakable Spirit##102603
				Blessing of Sacrifice##102602
				Sacrifice of the Just##102595
				Divine Purpose##115489
				Seal of Alacrity##102609
				Seal of Alacrity##102609
				Divine Toll##102465
				Quickened Invocation##115465
				Seal of Might##102612
				Seal of Might##102612
				Of Dusk and Dawn##115673
				Seal of Order##102614
				Strength of Conviction##102444
				Strength of Conviction##102444
				Lay on Hands##102583
				Auras of the Resolute##102586
				Blessing of Freedom##102587
			]],[[
				Holy Shock##102534
				Light of Dawn##102545
				Aura Mastery##102548
				Glimmer of Light##102550
				Beacon of the Lightbringer##102549
				Holy Infusion##102543
				Light's Conviction##116376
				Moment of Compassion##102553
				Divine Favor##102551
				Illumination##102542
				Glistening Radiance##102559
				Holy Prism##102560
				Imbued Infusions##102536
				Light's Protection##115874
				Tower of Radiance##102571
				Shining Righteousness##102541
				Divine Glimpse##102570
				Righteous Judgment##115875
				Divine Revelations##102562
				Commanding Light##102564
				Beacon of Faith##102533
				Daybreak##102563
				Rising Sunlight##102581
				Avenging Wrath##102569
				Blessing of Summer##116183
				Awakening##116205
				Inflorescence of the Sunwell##102577
				Glorious Dawn##115873
				Reclamation##102537
				Veneration##102565
			]]
		},
		["Protection (Tank)"] = {2,false, [[
				Divine Steed##102625
				Cavalier##102592
				Hammer of Wrath##102479
				Greater Judgment##102590
				Rebuke##102591
				Blessing of Freedom##102587
				Obduracy##102622
				Cleanse Toxins##102476
				Avenging Wrath##102593
				Blessing of Sacrifice##102602
				Blessing of Protection##102604
				Unbreakable Spirit##102603
				Crusader's Reprieve##102518
				Punishment##115444
				Lightforged Blessing##115447
				Justification##102478
				Sanctified Plates##115034
				Sanctified Plates##115034
				Holy Aegis##102597
				Holy Aegis##102597
				Seal of Alacrity##102609
				Seal of Alacrity##102609
				Divine Toll##102465
				Divine Resonance##102443
				Seal of Might##102612
				Seal of Might##102612
				Of Dusk and Dawn##115672
				Seal of Order##102614
				Seal of the Crusader##116065
				Seal of the Crusader##116065
				Zealot's Paragon##102616
				Lay on Hands##102583
				Auras of the Resolute##102586
			]],[[
				Avenger's Shield##102471
				Redoubt##102462
				Grand Crusader##102453
				Ardent Defender##102445
				Holy Shield##102455
				Blessed Hammer##102430
				Sanctuary##102451
				Shining Light##102467
				Consecration in Flame##102432
				Strength in Adversity##102461
				Bulwark of Order##102468
				Bulwark of Order##102468
				Sentinel##102447
				Guardian of Ancient Kings##102456
				Relentless Inquisitor##102475
				Bastion of Light##102454
				Crusader's Judgment##102436
				Tyr's Enforcer##102437
				Tyr's Enforcer##102437
				Barricade of Faith##102470
				Soaring Shield##102434
				Eye of Tyr##102466
				Avenging Wrath##102611
				Inmost Light##115167
				Bulwark of Righteous Fury##102457
				Final Stand##102473
				Resolute Defender##102433
				Resolute Defender##102433
				Righteous Protector##102440
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
				Blessing of Protection##102604
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
				Zealot's Fervor##115165
				Tempest of the Lightbringer##115452
				Jurisdiction##102516
				Boundless Judgment##115021
				--Heart of the Crusader##115483
				--Vanguard of Justice##115453
				Blade of Vengeance##102521
				Shield of Vengeance##102519
				Divine Wrath##115439
				Templar Strikes##115473
				Avenging Wrath##102497
				Consecrated Blade##102485
				Blessed Champion##102515
				Blessed Champion##102515
				Adjudication##102511
				Blades of Light##115443
				Aegis of Protection##102526
				Final Reckoning##102513
				Wake of Ashes##115043
				Seething Flames##102525
				Truth's Wake##114824
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
				Cheat Death##114737
				Cloak of Shadows##112585
				Shadowstep##112583
				Master Poisoner##112521
				Nimble Fingers##112635
				Blind##112572
				Improved Sprint##112636
				Fleet Footed##112654
				Numbing Poison##112656
				Deadly Precision##112652
				Blackjack##117143
				Shadowrunner##112575
				Subterfuge##112576
				Featherfoot##117146
				Graceful Guile##117145
				Tight Spender##117152
				Iron Stomach##112634
				Deadened Nerves##112633
				Airborne Irritant##117740
				Soothing Darkness##112579
				Nightstalker##112581
				Nightstalker##112581
				Shadow Dance##112577
				Alacrity##112643
				Alacrity##112643
				Deeper Stratagem##112642
				Leeching Poison##112650
				Vigor##112651
				Vigor##112651
				Thistle Tea##112648
				Shiv##112630
			]],[[
				Deadly Poison##112676
				Path of Blood##117106
				Bloody Mess##112510
				Improved Garrote##112673
				Improved Shiv##112513
				Cut to the Chase##117139
				Seal Fate##112649
				Caustic Spatter##117137
				Deathmark##112662
				Thrown Precision##112515
				Crimson Tempest##112517
				Master Assassin##112508
				Iron Wire##117134
				Sanguine Blades##112672
				Fatal Concoction##112511
				Amplifying Poison##112505
				Lethal Dose##112509
				Lethal Dose##112509
				Venomous Wounds##112520
				Lightweight Shiv##112518
				Dashing Scoundrel##112659
				Poison Bomb##112660
				Poison Bomb##112660
				Kingsbane##117130
				Dragon-Tempered Blades##117131
				Indiscriminate Carnage##112667
				Shrouded Suffocation##112669
				Scent of Blood##112668
				Scent of Blood##112668
				Sudden Demise##117129
			]]
		},
		["Outlaw (DPS)"] = {2,true, [[
				Shiv##112630
				Evasion##112657
				Cheat Death##114737
				Cloak of Shadows##112585
				Shadowstep##112583
				Tricks of the Trade##112574
				Shadowrunner##112575
				Nimble Fingers##112635
				Subterfuge##112576
				Fleet Footed##112654
				Numbing Poison##112656
				Deadly Precision##112652
				Improved Sprint##112636
				Featherfoot##117146
				Graceful Guile##117145
				Recuperator##112526
				Improved Ambush##112580
				Airborne Irritant##117740
				Iron Stomach##112634
				Deadened Nerves##112633
				Soothing Darkness##112579
				Nightstalker##112581
				Nightstalker##112581
				Shadow Dance##112577
				Alacrity##112643
				Alacrity##112643
				Deeper Stratagem##112642
				Leeching Poison##112650
				Vigor##112651
				Vigor##112651
				Acrobatic Strikes##112644
				Blind##112572
			]],[[
				Opportunity##112571
				Adrenaline Rush##112545
				Combat Potency##112532
				Sting Like a Bee##117173
				Hit and Run##112560
				Precision Shot##112533
				Retractable Hook##112569
				Combat Stamina##112534
				Devious Stratagem##112567
				Fatal Flourish##112548
				Loaded Dice##112542
				Improved Adrenaline Rush##112540
				Ruthlessness##112568
				Audacity##112527
				Quick Draw##112549
				Ace Up Your Sleeve##112557
				Improved Between the Eyes##112558
				Dancing Steel##112556
				Deft Maneuvers##112559
				Thief's Versatility##112645
				Underhanded Upper Hand##112564
				Ghostly Strike##112530
				Count the Odds##112541
				Take 'em by Surprise##112563
				Take 'em by Surprise##112563
				Hidden Opportunity##112562
				Crackshot##117148
				Precise Cuts##112554
				Fan the Hammer##112553
				Fan the Hammer##112553
			]]
		},
		["Subtlety (DPS)"] = {3,false, [[
				Shadowstep##112583
				Tricks of the Trade##112574
				Cheat Death##114737
				Shiv##112630
				Evasion##112657
				Shadowrunner##112575
				Master Poisoner##112521
				Nimble Fingers##112635
				Fleet Footed##112654
				Numbing Poison##112656
				Deadly Precision##112652
				Subterfuge##112576
				Improved Sprint##112636
				Featherfoot##117146
				Graceful Guile##117145
				Improved Ambush##112580
				Recuperator##112526
				Blind##112572
				Iron Stomach##112634
				Deadened Nerves##112633
				Soothing Darkness##112579
				Nightstalker##112581
				Nightstalker##112581
				Shadow Dance##112577
				Alacrity##112643
				Alacrity##112643
				Deeper Stratagem##112642
				Leeching Poison##112650
				Vigor##112651
				Vigor##112651
				Thistle Tea##112648
				Cloak of Shadows##112585
			]],[[
				Find Weakness##112578
				Shadow Blades##112614
				Ephemeral Bond##112613
				Fade to Nothing##112621
				Quick Decisions##112616
				Without a Trace##112590
				Improved Backstab##112629
				Improved Shuriken Storm##112598
				The First Dance##112625
				Secret Technique##112603
				Relentless Strikes##112597
				Replicating Shadows##112605
				Shuriken Tornado##112604
				Shadowed Finishers##112611
				Secret Stratagem##112610
				Veiltouched##112601
				Deepening Shadows##112612
				Improved Shadow Techniques##112626
				Planned Execution##112591
				Premeditation##112627
				Flagellation##112606
				Deeper Daggers##112609
				Dark Shadow##112620
				Dark Shadow##112620
				Danse Macabre##112618
				Shadowcraft##117168
				Finality##112608
				Finality##112608
				Dark Brew##112607
				Improved Shadow Dance##112623
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
				Static Charge##101960
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
				Elemental Warding##117910
				Elemental Warding##117910
				Chain Lightning##101949
				Maelstrom Weapon##101948
			]],[[
				Stormstrike##101804
				Lava Lash##101805
				Windfury Weapon##101823
				Improved Maelstrom Weapon##101822
				Improved Maelstrom Weapon##101822
				Raging Maelstrom##101802
				Ice Strike##101821
				Molten Assault##101806
				Elemental Blast##117750
				Crash Lightning##101840
				Elemental Weapons##101826
				Elemental Weapons##101826
				Crashing Storms##101818
				Molten Assault##101806
				Hailstorm##101808
				Overflowing Maelstrom##101801
				Sundering##101841
				Hot Hand##101809
				Hot Hand##101809
				Ashen Catalyst##101811
				Feral Spirit##101838
				Witch Doctor's Ancestry##101837
				Witch Doctor's Ancestry##101837
				Elemental Spirits##101836
				Primordial Wave##101830
				Primal Maelstrom##101829
				Primal Maelstrom##101829
				Splintered Elements##101828
				Lashing Flames##101812
				Elemental Assault##101827
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
				Creeping Death##91580
				Xavius' Gambit##91429
				Xavius' Gambit##91429
				Doom Blossom##91503
				Wrath of Consumption##91553
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
				Dreadlash##91539
				Demonic Strength##91540
				Carnivorous Stalkers##91536
				Demonbolt##91544
				Annihilan Training##91542
				Fel and Steel##91534
				Demonic Knowledge##91546
				Implosion##91520
				Grimoire: Felguard##91531
				Power Siphon##91521
				The Houndmaster's Stratagem##91533
				Demonic Calling##91535
				Fel Sunder##91528
				Heavy Handed##91532
				Bloodbound Imps##91519
				Inner Demons##91547
				Imp Gang Boss##91516
				Imp Gang Boss##91516
				Dread Calling##91517
				Summon Demonic Tyrant##91550
				Soulbound Tyrant##91510
				Soulbound Tyrant##91510
				Reign of Tyranny##91509
				Dread Calling##91517
				Antoran Armaments##91526
				Infernal Command##91524
				Infernal Command##91524
				Guillotine##115460
				The Expendables##91512
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
