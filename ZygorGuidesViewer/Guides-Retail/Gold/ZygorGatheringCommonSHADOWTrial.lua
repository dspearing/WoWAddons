local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
ZygorGuidesViewer.Gold.guides_loaded=true
if ZGV:DoMutex("GoldGatherCSHADOW") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Iridescent Amberjack")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Lost Sole")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Pocked Bonefish")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Silvergill Pike")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Spinefin Piranha")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Elysian Thade")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Death Blossom")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Marrowroot")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Vigil's Torch")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Rising Glory")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Widowbloom")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Nightshade")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\First Flower")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Elethium Ore")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Laestrite Ore")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Oxxein Ore")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Phaedrum Ore")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Sinvyr Ore")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Solenium Ore")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Progenium Ore")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Callous Hide (Bastion)")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Callous Hide (Ardenweald)")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Callous Hide (Maldraxxus)")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Desolate Leather (Bastion)")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Desolate Leather (Ardenweald)")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Desolate Leather (Maldraxxus)")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Heavy Callous Hide (Bastion)")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Heavy Callous Hide (Maldraxxus)")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Heavy Desolate Leather (Bastion)")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Heavy Desolate Leather (Maldraxxus)")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Pallid Bone (Bastion)")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Pallid Bone (Ardenweald)")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Pallid Bone (Maldraxxus)")
