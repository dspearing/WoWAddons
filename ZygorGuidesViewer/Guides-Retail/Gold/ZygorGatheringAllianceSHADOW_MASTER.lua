local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
ZygorGuidesViewer.Gold.guides_loaded=true
if ZGV:DoMutex("GoldGatherASHADOW") then return end

if UnitFactionGroup("player")~="Alliance" then return end

ZygorGuidesViewer.GuideMenuTier = "SHA"

--@@ONLYDEVSTART
ZGV.DevStart()
ZGV.DevEnd()
--@@ONLYDEVEND

-----------------------------
-----    ENCHANTING    ------
-----------------------------

--  Shadowlands  --


------------------------
----     FISHING    ----
------------------------

--  Shadowlands  --


---------------------------
-----    HERBALISM    -----
---------------------------

--  Shadowlands  --



---------------------------
----    INSCRIPTION    ----
---------------------------

--  Shadowlands  --


--------------------------------
-----    JEWELCRAFTING    ------
--------------------------------

--  Shadowlands  --


------------------------
-----    MINING    -----
------------------------

--  Shadowlands  --


------------------------
----    SKINNING    ----
------------------------

--  Shadowlands  --
