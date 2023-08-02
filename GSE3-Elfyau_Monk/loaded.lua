-----------------------------------------------------------------------------
-----------------------------------------------------------------------------
local ModName, Sequences = ...
local GSE = GSE
---- PRINT MISSING GSE
	if GSE == nil then
	print("Addon requires GSE3. You can get it from Curseforge @https://www.curseforge.com/wow/addons/gse-gnome-sequencer-enhanced-advanced-macros")
	return;
	end
local L = GSE.L
local Statics = GSE.Static
local GSEPlugin = LibStub("AceAddon-3.0"):NewAddon(ModName, "AceEvent-3.0")
-----------------------------------------------------------------------------

if GSE.isEmpty(Sequences) then
  local Sequences = {}
end

-----------------------------------------------------------------------------

---- Put the macros here [[MACRO HERE]]
---- We are storing more detail to give more control.
---- To find the ClassID - /gse showspec will tell you what the ClassID and SpecID is for your character

Sequences["EA_MWM_OB"] = {
    ["Macro"] = [[d40ekaqiPKuJckItbfLzb4wsjv7ckQ(Ls0WOQogKLjrptcMMc5AkLTPQ6BuIXPGohrfRJOQ3ruP5jLKCpPe)tPsdKQOdQKwOeYdvQyIqjDrIWgjI(iucJekrNuvPvcL6LQkMPuQCtju7Ks9tQcgkvPoQuszPuL8ukMQK6QqrARsPQVkLsRvkj6TkWDvO2RWFLsXGfDyswmrQhdvtMOCzuBgk8zLQgnv60QYRjsMnq3wk2nP(nHHlvoovHwUIEoOPRY1PITtj9DLGXRe68svRxkjmFjz)ihOOoSrHrI12uCBlUnEOOWUmQdtTcK1hmm7cSlWUa7cSlWUa7gMvNZvmddMQLslwqt5QZ5kMHblms0EEcFcDyxW3YOWiHgdXeN3r00PoL0pW31hffM2PGhM2jtDSSWu6xwWhvaHgHkmsoHPTSsQvNPcg1XfMIv4tbmQdBuuhM2RMpL0GmmQdZhU3lgKvqoQdBuywIRGhLdAeYKxbEaAbURsRzWNE)ykLacznotPKc9f2LHzjUcEuoqlWDvAnd(07htzTRJwgpPusbUdKYAwf2fcZsCf8OCGwG7Q0Ag8P3pMYIvAfL1SkUW8H79EYqyuh2OWS8uZ98r5GgHm5HUpmoaEXh8GaUmy3ykBeoqwyLNHDzywIRGhLdAeYKxbEaAbURsRzWNE)ykLacznotPKc9f2fcZsCf8OCGwG7Q0Ag8P3pMYAxhTmEsPKcChiL1SkU4cZk(9eAyuh2OOoSrHHQOQpCV3tgcPkQkSldZsCf8GShDynot5GgHm5HUpmoapBeoqwyLNa8Ip4bbCzWUXusjLtgYxlnchilSYtkPeH2qw2aOevo6FyjaLi0)VfFakrO)Fl(auIqBOnKCPCGNDGQEEcOf4UkTMbF69JPKskNmKVwWfnsRokPSqzjYhbqjcT5lNHauIqBOnuyximufv9H79IbzfKPkQkmF1hpTQad7rHPUVJdJxChRU4c7YOoSrHHQOQpCV3tgcPkQkSldZsCf8GShDynot5GgHm5HUpmoapBeoqwyLNa8Ip4bbCzWUXusjLtgYxlnchilSYtkPeH2qw2aOevo6FyjaLi0)VfFakrO)Fl(auIqBOnKCPCGNDGQEEcOf4UkTMbF69JPKskNmKVwWfnsRokPSqzjYxoH5R(4Pvfyypmm19DCy8I7y1fxyxiQdBuuh2OWqvu1hU37jdHufvf2LHzjUcEq2JoSgNPCqJqM8q3hghGNnchilSYtaEXh8GaUmy3ykPKYjd5RLgHdKfw5jLuIqBilBauIkh9pSeGse6)3IpaLi0)VfFakrOn0gsUuoqlWDvAnd(07htjLuoziFTGlAKwDusjY3YOYHauI8rBJ(bOe5Bzu5WWUqyOkQ6d37fdYkitvuvyQ774WSIFpHoUWUmQdBuyOkQ6d379KHqQIQc7YWSexbpi7rhwJZuoOritEO7dJdWZgHdKfw5jaV4dEqaxgSBmLus5KH81sJWbYcR8KskrOnKLnakrLJ(hwcqjc9)BXhGse6)3IpaLi0gAdjxkhOf4UkTMbF69JPKskNmKVwWfnsRokPe57BzOpaLiFFld9bOe57Bz4OWUqyOkQ6d37fdYkitvuvyQ774WSIFpHoUWu33XHPDcrxy8I7y1f2LHXCCNKoA87j0HX75tmFxFCH9OOoSrHHQOQpCV3tgcPkQkSldZsCf8GShDynot5GgHm5HUpmoapBeoqwyLNa8Ip4bbCzWUXusjLtgYxlnchilSYtkPeH2qw2aOevo6FyjaLi0)VfFakrO)Fl(auIqBOnKCPCGNDGQEEcOf4UkTMbF69JPSWWHi5uiSlegQIQ(W9EXGScYufvfMV6JNwvGH9OWu33XHXlUJvxCXfMVAPDEGx7vZNsAqgg1HzhrJ0QlkkU4IlmMog)lwdBKFyQ9WoHTC8l93ctX8PWQ6urDyWsgSd8PLkmU31bLF5sPFcmh8PLAjdIrVYjm1kqwFWWu0OwB1B0113k35ZN)fBfl9glK0Gvz7DX2RpFXw4RoPAnP(In4(Vsw0666666666666k2GFX2yKAfBSXwsPwOO1vjcdwyKO98e(e6WUaQuoHz15CfZWibig9kNWSdOcc)I1Wg5hgj0yiM48oIMo1PK(b(U(OOW0wwj1QZubJ64ct7uWdt7KPowwyk9lr(BOHOcLdlSfgSKb7cJveMJOSyLmMsk9SCZVbsyBWYVswlFRtPNnchilSYtkLumP8PpwdFwzkL9Mm(rPlRaHuIjl8oxkT(S(WONsmz1dsqPlRaXmmJWETD1Y36ukPysPeqiRXzkLuOpcBc7A3hKYgf(uq5dsPmw2dxDSmkpbLn9uQwGHIgMsVv3KfAiLTQcuIj9chkLslwGYfCfu2lCOunzmJYfENRW5O8C53KsCH(EAhwgLqNUoX8O8CzitzJcFkGuUGWbugLsZu2iGhLoAWNumypMtPrqPIsORW5Ou4CuEckvAzu20tjF8uRaP8CvAPGuYkCxkvAzuYw5zpLWNEpitPqZukWGYZLBA1HbRmgkhWlSrHXw1WHrI12uCBlUnEOOWy6y8VynSlT4hMApStyJ89993ctXkTJc8R(4PvwFpHokkU4Ilca]],
    ["SpecID"] = 270,
    ["ClassID"] = 10
}
Sequences["EA_BMM_OB"] = {
    ["Macro"] = [[dKeLjaqiQOQMLk6wurv2fvq)ss1We4ykSmQYZistJkY1KsTnPeFJGmovOZrvvRJku3dsQ)PO0ajGoOu1cLk9qHktKkKlki2ivu(OGKgjKeNuQyLsj9sb1mjqUPqv7eIFsfyOqIJkiXsfINcmvQ0vHK0wjq9vcWzPIkERIQ7Qc2lQ)ki1GfDyqlws5XQQjlKUmPntv5ZeXOvKtRsVwOmBcDBi1UH63umCP44kkwUepNstxPRljBNQkFNGA8urLoprnFvz)iZd2LrgmiK(q3n(4dTd6YiESldCHIkETmy2ZzpN9C2ZzpN9Cwg0xTtMcdqvCmSrymL9v7KPWGqfeIG1I9AWmI0rqBgec2NP814mOBGlS2v8UYCxgiiODr1MOWvJYaVapPbc51Ee45VtdgiafgRVQaTSlVmiE4VySSlJmyxgiyy5cRjQw2LbHv5iQOcTk7Yidgu)dTlLZrBI6y7013EsPa)vfRPCGYixSekn(Oeff(vgXJb1)q7s5C0MOogkUNyZFcIXQ4fl5aLoZu2Rp5lwcLDlQWmIugu)dTRvNPsXFLY5cSrekRLtS5pbXyv8ILCGskPSOwDr93GUgCPKsqfA0gmLcy6UkLUxjAHsWc3k9KsbOWgd2sPXhLoOevl8YGWQmkf1AzxgzWG6lSirxfROLPCo2mblOpXMOkm6H5rvy0dmIhdQ)H2LY5OnrDSD66BpPuG)QI1uoqzKlwcLgFuIIc)kJiLb1)q7s5C0MOogkUNyZFcIXQ4fl5aLoZu2Rp5lwcLDlQW8Yld6)71GTSlJmyxgzWa6rVWQmkf1APh9yepgu)dTRvNPsXFLY5yZFcIXQ4fl5aLuszrT6I6VbDn4sjLJr7a)pEs5y0ECCWisza9OxyvoIkQqRsp6XGo4vl(bfzK2mWvUrzqeTrHlVmIh7Yidgqp6fwLrPOwl9OhJ4XG6FODT6mvk(RuohB(tqmwfVyjhOKsklQvxu)nORbxkPuQN3iyCs5iiqOJoDs5y4F7JEmIugqp6fwLJOIk0Q0JEmOdE1IFqrgrkdCLBugerBu4YlJiLDzKb7Yidgqp6fwLrPOwl9OhJ4XG6FODT6mvk(RuohB(tqmwfVyjhOKsklQvxu)nORbxkPC4n8Al9KYXOLJoj0jLJGaHogCs5iy02PwoPCeei0XagrkdOh9cRYrurfAv6rpg4k3OmO)VxdMxgXJDzKbdOh9cRYOuuRLE0Jr8yq9p0UwDMkf)vkNlWgrOSwoXM)eeJvXlwYbkPKYIA1f1Fd6AWLskL651oqOtkLESfpHAHrKYa6rVWQCevuHwLE0JbUYnkd6)71G5LrKYUmYGb0JEHvzukQ1sp6XiEmO(hAxkNJn)jigRIxSKduoK61wOJmIugqp6fwLJOIk0Q0JEmWvUrzq)FVgmVmItSlJmya9OxyvgLIAT0JEmIhdQ)H21QZuP4Vs5CS5pbXyv8ILCGskPSOwDr93GUgCPKYH3WRT0tkhJwo6KqNuocce6yWjLJGrBNA5KYrqGqhdyePmGE0lSkhrfvOvPh9yGRCJYG()EnyEzGRCJYabzmnmiI2OWLr8yay1gNvH)71GzakLRPCxzEzeNyxgzWa6rVWQmkf1APh9yepgu)dTlLZXM)eeJvXlwYbkL65nc8NrKYa6rVWQCevuHwLE0JbDWRw8dkYiJag4k3OmiI2OWLxEzqhCTQR4kyy5cRjQw2LbXzqxdUCxg4wU4y6o4UmWTCXX01J7YlV8YaqJ(74igzeWaxhehJ4FGxGqmiEDHocUq2LbOIk2iEXXyW0UnwhxVETRXHIxCS6QOpzyfdCHIkETmORWHsp0FpbHmJmWvqTR1Ip)e8nI6hSVVVVVVVtFFFFOeostSyH0P1MGBFFFFmGjwiTcmcUtRBSyG4CQhcIjayCDzGauyS(Qc0YU8YaxhehJmccgbTzqF1ozkmierFYWkgeNi0A74igzeWG4H4kOyh8Qf)u8EnyUldcb7Zu(ACg0nWfw7kExzUldCK6dwjUmYGbOIk2Wa)goCqz8WOkLc0RDaAl1AVGCP0NPqPZmL96t(ILqz3Ikm1kav64mxkf4VQynfk9zkug5ILqPXhLOOWVsTsT2HsHH4LY1qP6CBkQ1sjAzkLuG7DRIQuUgkrltjuy1AqRuIcClQbBDiLc4UtMQLYDsVfknyjMlwcL2QMgtzpP8xu4EXsOCNuRsjA4VySukSPsmkL1ukNUsMeLPSclEJPIYoKsxdLqrrkn(Ou2urPWtgkNG(PuwtvmL7Kwuk9zkuIwpPSdLcdXlLRHsjx)ukLnvucP0ozQwNNPAPeIJsjAzk1vlyOiL7eehZ6qkDoMkkJHnctPWtgkLnvuclQZNbiq0kdcPp0DJp(q7GUmqqq7IQnrHRgLbEbEJaNcoo83B45pdan6VJJyeVwoYGoFdMbmiubHiyTyVgmJiDi1FE5LxMb]],
    ["SpecID"] = 268,
    ["ClassID"] = 10
}
Sequences["EA_WW_OB"] = {
    ["Macro"] = [[d8eNoaqivcAuGkNcu1SujDlvcSlus8lqXWuKJrvwMiEgvAAuORPISnIY3iHXrKoNIQ1PsO7Hss)dLuduLOoifTqsYdjrtur5IeYgju9raAKa4KqPvQs1lbPzsu5MsL2PQ8tvudvQ4OQqlfepfPPsWvvbBLK6RIIXIsCwvLwRkL3seDxIWEf(RkrgmPomQwmk1JH0KHIllzZuv9zvvJwuDAiwnHYRPGzdv3gq7Ms)wkdxQ64IslhONRW0rCDrA7uv(UQIXdkDEQy9evnFuSFLo8cH45furMxktMlDwv8scHGkWXllzeuwFL1xz9vwFL1xz9vwhuZusEdmOhSgSTp2vBMsYBGbfqQi1f4aPzJNR3KSGkY6VbIwkBa75eoBeCeItOkOQ5GiC241iecsqLJpih6XWjfMGMmL4oPyAEI3P5EsdQWzLXB(uYKIG2LJc2gHq88cHGQMdIWzJxJqiOqlhifEXhviepVGcdkFqwTKOnGS5KR2gAo3AlCe7VeRMsAGaVUArCqs(1vZTywT4iGv8sckmO8bz1sI2aYMtUABO5CRTWrS)sSAHwkA(QB(xnuoiqE8CdkmO8bz1cTu08v38V6zfNKhKGcTC6awJriepVGcdHd(xKYwaDwTK2woheOesIP4yKiEjbfgu(GmQSPLfTwTK2gAo3AlCe7VeRE1RgSgfHvrBazZjRE1ci)f4Q7WXbED12uC845guyq5dYQLeydZf54ejwTYCKvRkfCqINXGcdkFqwTKaByU4ihXp56LrtbhnWR2gAo3AlCe7VeRgcI9F1n)RUtXrRGeKGAIsqA2riepVqiEEbDzwgOLthWAmwMLjEjbfgu(GSAjrBazZjsSA3KeVP5XZnOlZYaTCGu4fFulZYeuSwsb6JJhVtbvWPVckKQV4KGeVKqiEEbDzwgOLthWAmwMLjEjbfgu(GmQSPLfTwTKxUhN7uGxTn0CU1w4i2Fjw9QxnynkcRI2aYMtw9QDNNmxQ71v7kvwIczXZnOlZYaTCGu4fFulZYeuSwsb6JJhpVPGk40xbfs1xCsqINBiepVGUmld0YPdynglZYeVKGcdkFqwTK2gAo3AlCe7VeR2njXBYlEUbDzwgOLdKcV4JAzwMGI1skqFC845gubN(kOqQ(Itcs8mgcXZleINxqxMLbA50bSgJLzzIxsqHbLpiRwsBdnNBTfoI9xIv7nnPq6u8Cd6YSmqlhifEXh1YSmbvWPVcQjkbPzds8scH45f0LzzGwoDaRXyzwM4Leuyq5dYOYMww0A1sABO5CRTWrS)sS6vVAWAuewfTbKnNS6v755k7KSRR2BAsHuJXZnOlZYaTCGu4fFulZYeubN(kOMOeKMniXZneINxqxMLbA50bSgJLzzIxsqHbLpiJkBAzrRvlPTHMZT2chX(lXQx9QbRrryv0gq2CYQxT3KcJjsVUAVjVtgLDD1EttkKAmEUbDzwgOLdKcV4JAzwMGk40xb1eLG0SbjEgdH45f0LzzGwoDaRXyzwM4Leuyq5dYQL02qZ5wBHJy)Ly1EttkKAmEUbDzwgOLdKcV4JAzwMGk40xb1eLG0SbjOco9vqLR16dkKQV4K4LeukP6fp1IsqA2G2bePbIqCcs8ofcXZlOlZYaTC6awJXYSmXljOWGYhKvljAdiBo5QTHMZT2chX(lXQ9sCNpzmEUbDzwgOLdKcV4JAzwMGI1skqFC84LmfubN(kOqQ(Itcs8KfcXZlOlZYaTC6awJXYSmXljOWGYhKvljAdiBo56L7X5of4vBdnNBTfoI9xIv7kvQmPYINBqxMLbA5aPWl(OwMLjOyTKc0hhpEjtbvWPVckKQV4KGeKGI1YofbNOMdIWzJxJqiOkBazZjHQGkaIynueVqvqfarSgkssOkibjibL2xOyNfpVPGMP4gmtb5JqiO0EeRfX(VALGCBTAOiOgc6fMX8IjxOhOVSQTnWuJ)FbWG8a8X3xa8b5twa9bM2stqtfOdL8phV1980mcrMmJhM5Ib5XIirnrNtUb0SllZujtS0cLLtsjipaWH7XZns953LTa81x1Cr3NXbiBQ4SO29M43KksTA1U3eK5kMAmcyM)GZrUZzGYIranLkpBm9Is7H3bSB25tjyePu(NSh7E46HJR4UkvNGlT7NUGDZ5WkpkPoQeRyP)MoNYImR9GEdlgBhdzFg(E(MVB5pONzFdq1Inh2dYu4AcX9i0m3j(ps8d8GyhvPgK9CPYDWfoBIrVXbIsasq(kG0idX(ZKFOm21nRHmNlm4WP83dQSzLSJiS83fqiIdvDs20)8()N8kXoYaRS0N)F)QsaMTJ6BIoA7cF3JzXCh5uMjVZGi(XAymK1fCs2K7zCShjtfWsXXVzoKBfdr5idiCS91aXWh)DNqLc3DQx)z4YL(oYl1WdLOWQ0iQq99BR7XzFggslOy5ZNdl8fueoSGyv5MMGrKbi0oSXyVjxwX(y8)85o9qaqHr5VRqvpCaaX0qgoqanZQgGxc8uaWXnQsM)8tkCubpoaa(dpPsn(ChhuiClZjuZZOKPjVZy5gAIPWpIcalJ(Xftzx5u5xAUVzpytfubT85ldLJyMP7S(daIXnllMFX25WxFMiFY0r2X543l)oyGRq6ceEyfEoybzlv(UtcZ)kgWMOz(ua7CX81FwgGh7fmfx8zgoHEw2n3dMp4VbR0bsQICPJs5DLp4mK4DOxnGzzb6qjg0pauh6bE7ORl8h8Pqegz)Gyv783YERJi5rrNNdRPFphikBZKZBk73SSnntVPyo2jGWrbA8U0B4Fbc85)dYza97YBFGMdcKmNcMargKKdYGmtke14tSOakl3f9)NHC7W)bCtAMp3jzFNCbCogFsLbBcqPUIK74HcIywmgyFecCkeW6cpaWF6JX7kvRcwa)cO8qnEcaXKhfad(Gda3w2uryL)JCqeKodEXb9CmQInbwaU)4cIGCkxKcRCkGyE8ORkCpxaWCNc9Kimk86DKdSex(BiSm30oxLRCGY5QOuknZmSqz5eYPtj(ZpY29Xcw1oSaXVbzNmGvjlNub0aj1ihOb4olYt0SBFfxCvi4Yx2oqexTO7nkGG4WJfJA4q)cr0bLDDH9hGBzfJkFZfqvUisz5RS5Y)(cVpIWpSzMmDfdt7G4aQ4mlpytMypdc8c(G8rWu93w(3eLz)v3XdS)jNjcENtU9IUJb9x8rUa8y6nERzmtdw4uOwQ6wqcA3IWNXj8qiOau494iwdbnNq6hxegyyJ0yfCeRbykC)o80GkWXllzeuvthnb8imkzRuqaqPDv6JAHn9y27FvzAAAAAAAAAAAAAAAAAAAG2mi6ofR4ukLc9()mttZGcivK6cCG0SXZ1ZvAqfoRmEEttEttbTl3MYXXAjfOVYsqA2qvqntj5nWGkc3VdpnOqkoMZwCNqvqfz93arlLnG9CcNncocXjufu54dYHEmCsHjOjtjEtYsu45oLyuAqbOW7dQppwjz1D5yQvF5Kttah7Dkayfx4IxWQVmAk4ObUAii2)v38V6ofhT27MYjCXly1kZrwTQuWbzVV3XU6pClz1K2Qly7bRXy1aDw9piNGqsXuRM0wnqNvZ)uJgWA1D4eWQzhSYQZGqYBPKvtYleWv3S)ne7)QhP99nqY1vJcwCcI9F1K8AuRgihfSnw9NwkoMvZUwDoYFoUZQtT4igkChwz1cTvZXXxDZ)QDAPR(tEB15CF1QzxLD1K8cSwT)g4Qbwxxn2v)HBjRM0w9pIVA1oT0vZx9iVLsUGwkz1ClMvd0z1fPaTC8vtY5wddwz1FBPR2GT9z1FYBR2PLUAoyDHbDw5NNItINxqFCGvqfzEPmzU0zvbvjoFmWolEEtbL2xOyNfVezZdAMIBWmfKpcHGeuSOnBqX(uFPUyPkV0XdIOcyp)6AcbAqcsqIa]],
    ["SpecID"] = 269,
    ["ClassID"] = 10
}

-----------------------------------------------------------------------------

---- Because we know the names earlier we can dynamically figure out the names.
local macroNames = {}
-- For each k ("MACRO NAME") and v (the macro string and classid) do this loop
for k,v in pairs(Sequences) do
---- Add the name to the list of macroNames
    table.insert(macroNames, k)
end

-----------------------------------------------------------------------------

local function loadSequences(event, arg)
  if arg == ModName then
---- Force overwrite of macros ignoring the players merge preference
    for k,v in pairs(Sequences) do
        local localsuccess, uncompressedVersion = GSE.DecodeMessage(v.Macro)
        GSE.ReplaceMacro(v.ClassID, k, uncompressedVersion[2])
    end


---- Tell GSE to reload the new stuff
    GSE.PerformReloadSequences()


---- Print Success Message
    GSE.Print("Hello, " .. UnitName("player") .. " " .. UnitLevel("player") .. "  - Elfyau's Monk Macro Set has been loaded.", ModName)
  end
end


if GSE.RegisterAddon(ModName, GetAddOnMetadata(ModName, "Version"), macroNames) then
  loadSequences("Load", ModName)
end

GSEPlugin:RegisterMessage(Statics.ReloadMessage,  loadSequences)
