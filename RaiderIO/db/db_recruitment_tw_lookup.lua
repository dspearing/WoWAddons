--
-- Copyright (c) 2023 by Ludicrous Speed, LLC
-- All rights reserved.
--
local provider={name=...,data=3,region="tw",date="2023-03-13T20:25:26Z",numCharacters=38408,lookup={},recordSizeInBytes=2,encodingOrder={0,1,3}}
local F

-- chunk size: 86
F = function() provider.lookup[1] = "?\13?\13?\13?\13?\13?\13?\13?\13?\13?\13?\13?\13?\13?\13?\13?\13?\13;\4s\29?\13s\29s\29\4\16s\29?\13s\29s\29s\29\169\6\169\6;\8}\14\4\4;\8;\4;\4;\4\4\4;\4\4\4\12\4\14\4;\4" end F()

F = nil
RaiderIO.AddProvider(provider)
