--
-- Copyright (c) 2023 by Ludicrous Speed, LLC
-- All rights reserved.
--
local provider={name=...,data=3,region="kr",date="2023-03-23T20:13:47Z",numCharacters=35909,db={}}
local F

F = function() provider.db["아즈샤라"]={0,"Scarlety","닉카"} end F()

F = nil
RaiderIO.AddProvider(provider)
