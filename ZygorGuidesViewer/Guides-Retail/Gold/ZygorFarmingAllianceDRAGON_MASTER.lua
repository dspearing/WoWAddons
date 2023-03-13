local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
ZygorGuidesViewer.Gold.guides_loaded=true
if ZGV:DoMutex("GoldFarmADRAGON") then return end

if UnitFactionGroup("player")~="Alliance" then return end

ZygorGuidesViewer.GuideMenuTier = "SHA"

--@@ONLYDEVSTART
ZGV.DevStart()
ZGV.DevEnd()
--@@ONLYDEVEND

-----------------------
-----    CLOTH    -----
-----------------------



--------------------------
-----    COOKING    ------
--------------------------



-------------------------------------
-----    ELEMENTAL REAGENTS    ------
-------------------------------------

