local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
ZygorGuidesViewer.Gold.guides_loaded=true
if ZGV:DoMutex("GoldFarmHDRAGON") then return end

if UnitFactionGroup("player")~="Horde" then return end

ZygorGuidesViewer.GuideMenuTier = "SHA"

--@@ONLYDEVSTART
ZGV.DevStart()
ZGV.DevEnd()
--@@ONLYDEVEND

--------------------------
-----    COOKING    ------
--------------------------


-----------------------
-----    CLOTH    -----
-----------------------



-------------------------------------
-----    ELEMENTAL REAGENTS    ------
-------------------------------------

