--
-- Copyright (c) 2023 by Ludicrous Speed, LLC
-- All rights reserved.
--
local provider={name=...,data=3,region="tw",date="2023-05-28T08:50:38Z",numCharacters=34408,db={}}
local F

F = function() provider.db["阿薩斯"]={0,"惡魔腳毛","漆黑腳毛","灵魂复苏","蜜雪","黑龍腳毛"} end F()
F = function() provider.db["世界之樹"]={10,"Paoda","元素丶皮卡丘","菜菜子","阿提米斯","鹿角神"} end F()
F = function() provider.db["亞雷戈斯"]={20,"穢邪路路"} end F()
F = function() provider.db["冰霜之刺"]={22,"七轟"} end F()
F = function() provider.db["暗影之月"]={24,"Nazhock","Worchief","丶阿劍","佳佳不是熊貓","全村的希望丶","巨獸斬","狗富貴","狼魅妹","王钢蛋","黑風"} end F()
F = function() provider.db["日落沼澤"]={44,"一條龍服務","冰火雙重天","咖哩咖哩幽默","咖哩小尾巴","小壞","我爱看烟花","款冬","灵犀","無尾熊之星","肉嘟嘟胖呼呼","花殤紫幽幽","阿戦","阿莱克斯莉萨","非正义的圣光"} end F()
F = function() provider.db["克羅之刃"]={72,"濁酒獨酌"} end F()
F = function() provider.db["水晶之刺"]={74,"潘鳳"} end F()

F = nil
RaiderIO.AddProvider(provider)
