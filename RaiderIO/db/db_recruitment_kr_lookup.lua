--
-- Copyright (c) 2023 by Ludicrous Speed, LLC
-- All rights reserved.
--
local provider={name=...,data=3,region="kr",date="2023-03-23T20:13:47Z",numCharacters=35909,lookup={},recordSizeInBytes=2,encodingOrder={0,1,3}}
local F

-- chunk size: 4
F = function() provider.lookup[1] = "s\29s\29" end F()

F = nil
RaiderIO.AddProvider(provider)
