--
-- Copyright (c) 2023 by Ludicrous Speed, LLC
-- All rights reserved.
--
local provider={name=...,data=3,region="tw",date="2023-04-19T08:52:35Z",numCharacters=31230,db={}}
local F

F = function() provider.db["亞雷戈斯"]={0,"穢邪路路","聖光路路"} end F()
F = function() provider.db["世界之樹"]={4,"Paoda","Richmal","灬老头乐灬","菜菜子","阿提米斯"} end F()
F = function() provider.db["冰霜之刺"]={14,"七轟"} end F()
F = function() provider.db["雷鱗"]={16,"Areher","Jierax","万万兮","久夕","喵呜","國家电网","大魔怔","沒有魚丸","猪九平一","瑞娅","皮卡丘","等待","红尾鵟","群星萝莉","背上有翅膀","赞美太阳","這不對吧"} end F()
F = function() provider.db["眾星之子"]={50,"Verapamil","伍棍","酸菜菜"} end F()
F = function() provider.db["暗影之月"]={56,"Bakemono","Maievg"} end F()
F = function() provider.db["水晶之刺"]={60,"潘鳳"} end F()

F = nil
RaiderIO.AddProvider(provider)
