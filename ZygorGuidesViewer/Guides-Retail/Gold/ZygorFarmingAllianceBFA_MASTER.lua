local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
ZygorGuidesViewer.Gold.guides_loaded=true
if ZGV:DoMutex("GoldFarmABFA") then return end

if UnitFactionGroup("player")~="Alliance" then return end

ZygorGuidesViewer.GuideMenuTier = "BFA"

--@@ONLYDEVSTART
ZGV.DevStart()
ZGV.DevEnd()
--@@ONLYDEVEND

-----------------------
-----    CLOTH    -----
-----------------------

--  Kul Tiran/Zandalari  --


--------------------------
-----    COOKING    ------
--------------------------

--  Kul Tiran/Zandalari  --


-------------------------------------
-----    ELEMENTAL REAGENTS    ------
-------------------------------------

--  Kul Tiran/Zandalari  --
