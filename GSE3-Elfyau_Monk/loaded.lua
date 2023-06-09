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
    ["Macro"] = [[dSKzjaqibv0OOkkofvrvZsv1UeuPFjedJQ6ykAzc8mq10eKUMqzBQs5BeHXjfDoPQSoQaZJQO09aL8pPkgiOuhuQSqrQhsvyIerDrcQnsf0hfQyKQsvNKGSsbXlPkntHQCtbLDcYpPkYqbfhvvQSurYtbMkv6QcvARcv1xjICwbv4TQsURQO9I8xbvnyjhgYILcpwHjtKUmPnlK(mv0OvvoTsETQWSj0TjWUH63uA4sPJlvvlxupNIPRY1fX2LQ03PcnEQIkNNOMVsTFuttYLGMeq4UWNoSWcVNstqbKlbCrIk(meON)E(75VN)E(75Vhc0LCF2mbIl(b26iMRUK7ZMjqCachFnBwwmbbF6hJacJJAZd1dRGw0HASexNmLMaXdzU42kfDQuce4ha3pMFSPFSyX6JaUEYdcQp)aFjiqyOr2AixcAsUei(O8c1qunKlb8QYPurfzuYLGMeiYazoUEjWk1bMVv07NlypsYgB(jxPwyNCzJYfmkAOeuabImqMJRxcSsDas8(X2XhcJvXf25tUCOnFROYlStUsNvhji4eiYazoJ2FIIhkxVGDRiswZ)y74dHXQ4c78jxCXvwn6bRHvqd0XfxGebcSyUK036uUCxo1mxGdDj6pxssrTwSHlBuU8uwQMPJaEvzyYQXqUe0Karou2PEkwfiZ1lS9dLf8JTsvK0NVKQiPpjOacezGmhxVeyL6aZ3k69ZfShjzJn)KRulStUSr5cgfnuccobImqMJRxcSsDas8(X2XhcJvXf25tUCOnFROYlStUsNvhPJoc0nULfBixcAsUe0Ka8M3EvzyYQXWBEtqbeiYazoJ2FIIhkxVW2XhcJvXf25tU4IRSA0dwdRGgOJlUMZy(918NR5m2S5KGGtaEZBVQCkvurgL38MacHpn3lsKGIrax5wLaP0wfD0rqbKlbnjaV5TxvgMSAm8M3euabImqMZO9NO4HY1lSD8HWyvCHD(KlU4kRg9G1WkOb64Il4bbt)5pxtFFjAg6pxZzFXAgqqWjaV5TxvoLkQiJYBEtaHWNM7fjsqWjGRCRsGuARIo6ii4KlbnjxcAsaEZBVQmmz1y4nVjOacezGmNr7prXdLRxy74dHXQ4c78jxCXvwn6bRHvqd0XfxZGzqm4)CnNV1muj(5A67lrt)FUM(ZyH(2pxtFFjA6tqWjaV5TxvoLkQiJYBEtax5wLaDJBzX0rqbKlbnjaV5TxvgMSAm8M3euabImqMZO9NO4HY1ly3kIK18p2o(qySkUWoFYfxCLvJEWAyf0aDCXf8GGy(s8Zf8MVfiXBeeCcWBE7vLtPIkYO8M3eWvUvjq34wwmDeeCYLGMeG382RkdtwngEZBckGargiZX1lSD8HWyvCHD(KRj8Gys0KGGtaEZBVQCkvurgL38MaUYTkb6g3YIPJGcLCjOjb4nV9QYWKvJH38MGciqKbYCgT)efpuUEHTJpegRIlSZNCXfxz1OhSgwbnqhxCndMbXG)Z1C(wZqL4NRPVVen9)5A6pJf6B)Cn99LOPpbbNa8M3Ev5uQOImkV5nbCLBvc0nULfthbCLBvcepRTLaP0wfDeuabaN26We84wwmbGjVS51jthbfk5sqtcWBE7vLHjRgdV5nbfqGidK546f2o(qySkUWoFYf8GGPFFeeCcWBE7vLtPIkYO8M3eqi8P5ErIe00NaUYTkbsPTk6OJocieUrYs8IpkVqnevd5sapScAGoknbCZl8d9MuAc4Mx4h6fqPPJo6iaOvhcjzcA6tajPOhDjzKHCPJaHPhsYOdrUe49QyR4c)GaF31ACqKinw2WvCHFerfJkJsiGlsuXNHaPD8DDX5Dr8OHhUUXPzyE0la75sEx)Heos311111juxxxNtqC9gsiPbaVNqDDDDTc7nKulHbFpE84bWJq7wc3kkPqeMaXbiC81SzzXee8jC4eqOHftac0LCF2mbewmQmkHaEiImgHKmbn9jqyiCcsui8P5Ev8TSyknbegh1MhQhwbTOd1yjUozknbKSgfLiEe0KaVxfBjqVtUcdjv5c2bX8fy4q6INlxrTzUCOnFROYlStUsNvh5qaVxih6YfShjzJnZvuBMRulStUSr5cgfnuoeoe3VLHlbOr2Y1YWLuv6AGovkxNLlbYCHCunwbkxWGUSAXgU8SW5YZiBt46b26ixo(z5s2MWfkREEUCCDF2KJR7txzUgw8TWjQuUmjTT28X19PgLlbOr2A4YrBIOuUAOCjWAoUsWIRhQOC4YfWYfIlZNn54YMCCDwUqyPCjqMl90mgjY19HWpmCPOXhxiSuU0E1SmxMf2POYLfRCzJYLSnjCsaiKaLac3f(0Hfw49uAcepK5IBRu0PsjqGFW0pu)MZ(cMb9raqRoesYeuWBnjGRN8GGM((tFFcijf9OljJmKlD0rhDeba]],
    ["SpecID"] = 268,
    ["ClassID"] = 10
}
Sequences["EA_WW_OB"] = {
    ["Macro"] = [[daLGpaqiLQOrbfDkOIzPI6wkvb7sPk1VGcdtihdfltkEgLAAKORjqBJI6BqvJJK6CQiRtPQAEkvHUhLG)rj0avQsoOuAHc4HcLjcGlsu2ifPpcLAKavNKOALa0lbYmPiUPkXovv)ujmuf0rvQSua9uetLcxvjzRusFvj1yHkDwGYAvj9wIu3LKyVu9xLQYGr1HjSyI4XQYKbPllAZkWNbXOvHtdXQjj9Asy2O0TvP2nP(TIgUs54cvlhupxQMosxxH2Us03HsgprY5f06PenFiTFj7mUH)zCIS29TE9(weW)nUHtmeSPM2DIfpBXZw8SfpBXZw8SfDs7i9yc7KvAf6jw6I3ospMWobBImRjChzQ9VntKzNitpyc)YyZ7nbvibHfHg6bCYfXdE2Dd)Z4goXQagriHn7UHtaLHat2u0t3W)mobJNOtlU0V5Teb9SE(oeADYIOHOsXj0j895IltatpoxCHgAXnfbo9FJtW4j60Il9BElrqpRNVdHwNSiAiQuCJ547O4ZbfhKa(w4FBNGXt0Pf3yo(ok(CqXbif0dN6eqz4q4S3Dd)Z4emOcyijn15DyXLwppeW3Qin0uavf)34emEIoTNXht9llU0657qO1jlIgIkfV4fho7j1cV5TebT4f3abscx8Hc27ZfxpYY6FBNGXt0Pfx67j09lyPN3R3iCFcRsXbIOHu85GIpmfV0)kDcgprNwCPVNq3F)aza9SE(oeADYIOHOsXjBiAnIgsXJbl0zXbH8u4uN6K2hfzQ7UH)zCd)Z4KcTqbLHdHZEVqlu)34emEIoTNXht9llU0657qO1jlIgIkfV4fho7j1cV5TebT4f3UPHjI5CXzycgDsT)TDsHwOGYqGjBk6zHwOorUMMWlfS(32jgHBPtaMBPG6u)34g(NXjfAHckdhcN9EHwO(VXjy8eDApJpM6xwCP1Z3HqRtwenevkEXloC2tQfEZBjcAXlodJT5GMpxCMOi8QJoxCMi8kBuFU4mrmbvA2)2oPqluqziWKnf9SqluNixtt4Lcw)B7eJWT0jaZTuqDQ)TDd)Z4KcTqbLHdHZEVqlu)34emEIoT4sRNVdHwNSiAiQuC7tnNuB7FBNuOfkOmeyYMIEwOfQtKRPj8sbR)d6eJWT0jaZTuqDQ)v6g(NXn8pJtk0cfugoeo79cTq9FJtW4j60Il9BElrqvP42nnmrN8VTtk0cfugcmztrpl0c1jgHBPtAFuKP2P(VXn8pJtk0cfugoeo79cTq9FJtW4j60EgFm1VS4sRNVdHwNSiAiQu8IxC4SNul8M3se0IxCMOi8QJoxCMOi8Qv6FBNuOfkOmeyYMIEwOfQtmc3sN0(OitTt9VTB4FgNuOfkOmCiC27fAH6)gNGXt0P9m(yQFzXLwpFhcTozr0quP4fV4WzpPw4nVLiOfV4mr4v2O(CXzIIWRo6CXzymRwjE)B7KcTqbLHat2u0ZcTqDIr4w6K2hfzQDQ)v6g(NXjfAHckdhcN9EHwO(VXjy8eDApJpM6xwCP1Z3HqRtwenevkEXloC2tQfEZBjcAXlotWgg8bpxCMOi8Qv6FBNuOfkOmeyYMIEwOfQtmc3sN0(OitTt9Fq3W)moPqluqz4q4S3l0c1)nobJNOt7z8Xu)YIlTE(oeADYIOHOsXlEXHZEsTWBElrqlEXzIIWRoY)2oPqluqziWKnf9SqluNyeULoP9rrMAN6FZUH)zCsHwOGYWHWzVxOfQ)BCcgprN2Z4JP(LfxA98Di06KfrdrLIx8IdN9KAH38wIGw8IZeHxzJ6ZfNjkcV6OZfNHXSAL49VTtk0cfugcmztrpl0c1jgHBPtAFuKP2PoXiClDIjZ5MtaMBPG6)gNqO5MPJ6hfzQDYqyKjmcn0P(pOB4FgNuOfkOmCiC27fAH6)gNGXt0Pfx638wIGEwpFhcTozr0quP4mn2NIu6FBNuOfkOmeyYMIEwOfQtKRPj8sbR)vg5eJWT0jaZTuqDQtDICTKrewQvbmIqcB2DdNeBElrq9aoXagrRiPmEaNyaJOvK0gpGtDQtDIjIoD1gubnH6KMOMgMgMGmrbp1W4K1Pqr7iSO7goHSHO1iAifpgSqNfheYtHt2Z1T7VzpzGxg3QEcpQecyGRWsWXAjyGVeiwXXEj84CS5nAq6XeyT76LfraqPMnRCfa2qr(4kt2u2IMR3TxWfGaMvDmF4gunf5dolMFXHsYYb2smWjbZQqgGaiap(OP4A1(QPxvlZQvR2xnmBRQvOgqp9Xm0KfRbHRsSBvBPeOBYg3Wje(s8trnqLfZYV5VKnm3WuGhWabcI54fSUaF5qiLLpAUlMCvhH0ggmocaZpORYHQhQi(xbylUU86Xh0cjxX2QQNKALz82TaT3bAnG0b7OdUxP6UawHLCsTjRSXu3OKPVIgd8geWmqM0UQqwFSkvEXoUI1lsOSygdcdiZaKM3HGlKlyd0uqwBIpc5ydY3YyY7RLY84FaKbbAUJp06vz70xW5YU4qbej46iMfWidKRO3nFboYCK9cw57Or5DIFhyRxDOvfjwFnmMswoHHk6qUe9uJjGeMTfyEO(VtKwXbefVoMYNrcgyZl7aaRUIXeKCXPtsHtccrifS8a2JnqLPaizOeO6RMexvSuczXIHBabhVslbeFGnmbhyRI1IBSBJBf8FdoeWzzvgW8GJG4ddGdl4ydbhAoQ8B3xH3466GV2fpAueZc5cftvXpabp2PYbSQg7IjbgO(yjaFPgncakxUCnrG0U(caBRWgQDCCBbt(WvGTSfbR1dnV7elG5GqOyMixUXrkJFOCyjQT8sKXjWu9EkdGL4L6KQl3wyg7DBgTMAkakc(wy(Q9Q2poxLsDhze)H6EgdWyFmv0WSAZk2XXfupg0hwGNR2UVUZ2gNvlXldQziWYTgczg)6qzw(ENoKQDatiWytamHjkoyXL02oEf)j5r3ysUvcO6RSGDF)hGfYcShylMyb6a(MEIa3a0mWMvMbcGAGwzJWfpiCbugeiRPxxbzfBlznwasJ)dAJ9jOlvBwQMB12Ymz3QeOQAOkKSdiM4nKBJd44eelLagZAaPWgmSTeKYGGRQLpWvSetWTNXhLj3sSmbOHAaWXuyMqLbKqLcCa)cdzadEidV2e8aB3TZoalJn4qbKakOmO4z2cnbon1YRi4EQvFkGTjWMyJpJPEnaYbHBqKGbBgCStI9hx5wdXf4afMdQqEmCdg4wbDuP4wbMlKXidGRGzQPbqyTm1dbAQvzaojydZIJCOwX8bgqzRIDXwkiGFnUQelN2yhWgrnUGz(KLFWWzj1aIuRJATvf6CLPyJFbUFPAIKaaqCmwcelJwRGnpaRjwCiwhYaV9nPfHDyq7nzac9bX0(Hboq3uEDQC9ukmXBvT1PtDIvbmIqcB2DdN6eYw(KdG)zICIXIy()uuteENCjPcaeuHB4eWt2nweTcNCqPB99JbgsqM7nlIwbgj7GqXOtmeSPM2DsGODTqZqOGz2gmL4csizcIXEeiWDTTTTTTTTYaeiHSIegGqABBBBbeqGYdarHSnfkieKhef7wS7br(bjwBBRtK)MANi)BDFxKtITVDRKrmKV4FPfiiNSofkAhHfD3WPorMEWe(LXM3BcQqcclcn0d4K2r6Xe2jYyhekgDc2ezwt4oYu7FBMgBNCrOhfSY10eEzQPitThWjXyf9UCa8ptKtapz3CYsM9MP4xeqZIVxnbJU7fGeWLBQX(3df30jCXjBiAnIgsXJbl0zXbH8uua2AIX(3dfFVEJW9jCXhmHloqenKIphu8HP4LfGfGghi9IFlEWZIJ0lo0ekYtqtOfNol(DyXfyL95Dw8HckCo19IVhTloMHZXIRqpXQ4yDmlE4CS4c4eNIJfc9yoslo9irGl(BQPi6XeAX7JBBtyAXPhzpl(T4bp7fhR5il0Iljl(9Stl(OMfrrYgU3fNmlUO49J5iT4ZrAXPZIl0ql(DyXtAcRfSfNEi0k6fpfVJIl0qlEUmHdlEhrdHnl(uNfFoO40J8EpDca5aXil1)moXerNUAdQGMqDstudtK5g8m2rnkv7KV4oDIS29TE9(weWjKT8jha)3y(KtmweZ)mrrrrnobykGUqZg6bCQtDQ7a]],
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
