local name,ZGV=...
ZGV.revision = tonumber(string.sub("$Revision: 28889 $", 12, -3))
ZGV.version = GetAddOnMetadata(name,"version") .. "." .. ZGV.revision
ZGV.date = string.sub("$Date: $WCDATE$ $", 8, 17)
--$WCNOW$
