--
-- Copyright (c) 2023 by Ludicrous Speed, LLC
-- All rights reserved.
--
local provider={name=...,data=3,region="tw",date="2023-05-03T07:29:27Z",numCharacters=32710,db={}}
local F

F = function() provider.db["世界之樹"]={0,"Paoda","Qopjvatwo","柯基又飽了","猪猪的毛毛狗","菜菜子","阿提米斯"} end F()
F = function() provider.db["亞雷戈斯"]={12,"穢邪路路"} end F()
F = function() provider.db["冰霜之刺"]={14,"七轟"} end F()
F = function() provider.db["暗影之月"]={16,"丶阿劍","佳佳不是熊貓","全村的希望丶","狗富貴","王钢蛋","黑風"} end F()
F = function() provider.db["克羅之刃"]={28,"哈尼斯比魚","库露米","往小萌","真白花音","米米子"} end F()
F = function() provider.db["語風"]={38,"At","劍舞哀傷","增弱萨","米花"} end F()
F = function() provider.db["水晶之刺"]={46,"潘鳳"} end F()
F = function() provider.db["日落沼澤"]={48,"Silvio"} end F()

F = nil
RaiderIO.AddProvider(provider)
