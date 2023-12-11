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

Sequences["EA_MWM_DPS"] = {
    ["Macro"] = [[dSKTjaqirjQrjkbNsuImlr1TukPDrf0VefdtOogjwMiEgPyAqrxdkSnrj13eGXbuohvI1jqUNsj(NsPgOa6Gkvluq8qQitur4IKK2ivOpkkLgjqfNeiwjvsVurAMurDtbQDcPFkkfdLKYrfLKLcKEkOPsQUkqL2kjHVcu1zfLqVvqDxHyVO(ROunyPoSQwSsXJvyYuPUmLnlK(muA0uvNwjVMKQzd42Ks7wYVrmCf1XjjA5q8CKMUkxxK2UG03venEQaNNQmFOA)eZkSoJQWqv3ZEWGp4SpHAqgnH1zO(dy1rz425BNVD(25BNVD(2mCp98jimeCl1lYKL07PNpbHHzluvvyi0fPyunXbGjdvTIsqgMteTZ)9BwaRZJdHHQ4rw)gaJY68XqNF6bUZU)ZCZWK4enXGLKOeRXLymyi4Tx99uKNY68XWG)bcHY6mQcRZqv8iRFdGrzDgo18a1aSNASoJQWWmJNEshwlXDqu)v0lVid)VkdyvyJiTQuQvdtAhj1XOjmmZ4PN0H1sCh0dC5bgLmsP5Mdw0JMxKH)xLbSkSrcRL4oOh4YdCg49mK8Im8)QmGvHnI0oVIAs7ezqifJQHHzgp9KoCrg(FvgWQWgrAD)0YTHiTJKrkvAD7zumzyMXtpPdxKH)xLbSkSrKo4VEP1TNpgo18udXOuwNrvyyM7rWANvMwpPdxeZbl6rJe2T9UJWOjmmZ4PN0H1sChe1Ff9YlYW)RYawf2isRkLA1WK2rsDmQggMz80t6WAjUd6bU8aJsgP0CZbl6rZlYW)RYawf2iH1sCh0dC5bod8EgsErg(FvgWQWgrANxrnPDImiKIrXKHzgp9KoCrg(FvgWQWgrAD)0YTHiTJKrkvAD75JpgUpUfPOSoJQW6mQcdfCbFQ5PgIrPcUGZOjmmZ4Ph1uzQvdt6WbgLmsP5Mdw0JMxKH)xLbSkSrch4mW7zi5fz4)vzaRcBePLwAeJA3wgeTB(tAPvuWi2fWYLwtsIsSsU0kkyOGHsU0Aadmfx0KlTgxCbtxuYLwjjjbmfgvddfCbFQ5bQbyp1eCbNHGuNHe6dWOjmu3B2yiO2S9hFmAcRZOkmuWf8PMNAigLk4coJMWWmJNEshUid)VkdyvyJiTMKeLyxyunmuWf8PMhOgG9utWfCgcsDgsOpaJcgd19MngcQnB)XhJQH1zufwNrvyOGl4tnp1qmkvWfCgnHHzgp9OMktTAyshUid)VkdyvyJiT0sJyu72YGODZFslTsCayMawU0kXkyGzwNlTsCayMagJQHHcUGp18a1aSNAcUGZqDVzJH7JBrk(y0ewNrvyOGl4tnp1qmkvWfCgnHHzgp9OMktTAyshUid)VkdyvyJiT0sJyu72YGODZFslTsCCaGfNlTsCCaGHjJQHHcUGp18a1aSNAcUGZqDVzJH7JBrk(yunSoJQWqbxWNAEQHyuQGl4mAcdZmE6rnvMA1WKoCrg(FvgWQWgrAPLgXO2TLbr7M)KwAL44aaloxAL44aadtgvddfCbFQ5bQbyp1eCbNH6EZgd3h3Iu8XqDVzJHotiZmeuB2(Jrtyi8SzhtRXTifdvdzrqwNhFmkMSoJQWqbxWNAEQHyuQGl4mAcdZmE6jD4Im8)QmGvHnI0AsWqXLayunmuWf8PMhOgG9utWfCgcsDgsOpaJQeZqDVzJHGAZ2F8XhdbP2KUaov8iRFdGrzDgQJSk1TtHdHHor0U5poegQJSk1TlHdHp(4JHWzBaYemQsmd1ZgNyuxItIXGHbB3pXFpRZqWXaMbwL6m0)UzAqzYSzrCiWQupJbe17tzO(dy1rzyiyMv7VljoJQspOUZySjRJgQkwGAH(XqyiU6tIFqb5ab(HmdS2333333333333HVRt9v1vxFhZkNDDE3FFheNyOtapLcYemQsmd3tpFccdvfiQ3NYWSfQQkme6IumQgfmJzyWFL(aGuNHeQv3IuCime82R(EkYtzD(yOZp9a3z3)zUzysCIsmgkGPOjbmnyWqWXaMzyOkomr6GF3M0shycgXAPIRG33kPxL0tKwynsrZLg0F5MkTDdPP2jDGrjJuQ0hr67l1fxHGdioQh0wL2rcI0QsPwnmPDKuN46UZ6bTvPDKGiTZROM0orgesjDwiWOKrknljUkUcI0t(1j9rK2CWmIrPsR1tASi)TUu3M0hrATEs)tAuIwtA1(dXif1Hsd(15tspPpFBHinPWswfwPPPZZeKlx6bI93QWk95ButAT)aHqLEsskGBP3ys7VW6d4jDAbSu3a8CO06ePFaaPjrL2JKk9K(eP9)qnP3ywj95BiM0rjisR1YLgePN8Rt6Jin2vOM0EKuPFPP(K0BRK0t6VClTwpPTZqQhq6Z)l1Pou6SijvA1lYKspPprApsQ0pILLz4ew0pf4yufgI(AngQ6E2dg8bN9judYq4SnazcgnjGygQNnoXOkXXkXyWqvROeKH5er78F)MfW684q4Jp(yg]],
    ["SpecID"] = 270,
    ["ClassID"] = 10
}
Sequences["EA_MWM_HEAL"] = {
    ["Macro"] = [[dOKvfaqiLO0OOeYPuIWSus3sPGDrj6xuQggr6yiAzqXZOKmnLQCnrLTHu6BkLACkr15ukY6qQ6Ekr0avfDqewisLhcsnrLsUiizJif(OsKAKkv1jvfwPs4Lukntr0nfHDks)KsOgksrhvPOwkLupLIPsuxvjk2QsL(kLIZQejVvvXDvvAVc)vPIbt6WswSOQhdQjtexMQndP(SQQrJKtlvVgsA2s52Gy3a)wLHdLoUsHwoepNW0vCDOA7Qs(oKy8ucoVOmFvP2pQdYqosjddue7KWMe7SpuejJumHCysuWiNiKJuYqom7wi9kFZfHCyS1ZS2BEj8qosjdJD4smS(bYjH(QnRprFW4Iv3cDXiwbhmvbaERd()(bYjH(QnRpX2QmhzfCWufa4To4)lRj7ODwH(GVdePycJD4smS(bCWufa4To4)lRjkqXQSxrQvHXoCjgw)aoyQca8wh8)LvzkCGehHvACW4cwL9kMWyRNrtexic5iLmm2Nc53hwHC4c)E5irkMWyhUedRFGCsOVAZ6t0hmUy1TqxmIvWbtvaG36G)VFGCsOVAZ6tSTkZrwbhmvbaERd()YAYoANvOp47arQvHXoCjgw)aoyQca8wh8)L1efOyv2RyIjmeWt)aIqosjd5iLmm8B(TTEgnrCHGFZVJumHXoCjgHVrCha7S(5jKdx43lh5lRSYkIl8zjNc53hwzLKmh525wzLeZE0UCmRSssslTBlDLvssAPDBPRSssMJmhzKAvy438BB9mR9MxcNFZVdJCgwpmeWt)aXetyEaYJ3BZUfsVY3CrihgOpi5RjOlMyIjmjlXSmyLuJljmyKIXkPlNCpsm52uomHXgVqLahPeHCmHjHp1w1uHCy23ByBDaQHHAgSc6TBpF)SS1bOA3BOZk8WixnhmIWq3EBMO2eMKPBmZiNmxEAr)A3U1(RsQXq3cQtAz9J5HPOdBRtqqqqqqqqqqqqyQf2sb1Iffn2CYfyjOiiEaDyiWhQdjmq1qNv4HzPnqTRJi6hisTICpPHjrbWR2dW4iVCW0pqqxysliEyGIyNe2KyN9HIizyGcG(qGDOpiyRPY3B9jlOlm77nSH5fPLyynrjXz9jMCsHi4f2q5aw7aw3ch87hqSYQ1vxIGvFGzv4dRprFW4cwNJ1PaOYliskt)gyLghcRj7ODwH(GVdWQf9e9bJlwcEbV4bROuGH15y1TawexiyfsgR)i10hCjoRZXkKmwluCXbXzLM1G4hqyjR20hQdFyDO8ocRh4)6GFwf4yXEiZkRWiEnDWpRdLlCwHuWiNGvuo8MewZ7Ss1)PAzSIdADu9wMLSkFSwTgRhAwZoCwrH6yLQE5SM3DaRdLJ4SI(qyfIVY6dwrPadRZX6F)LZA2HZAXQG6WNnC4dRfqcRqYy1hhbunwhQcGQWswxQdNvubhkSIc1XA2HZAH4lBymyD4hBfPy2wAyKTyOJusPsjLMlmB5Ol82ePKXetmraa]],
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
