--
-- Copyright (c) 2023 by Ludicrous Speed, LLC
-- All rights reserved.
--
local provider={name=...,data=3,region="tw",date="2023-03-26T11:23:49Z",numCharacters=34269,lookup={},recordSizeInBytes=2,encodingOrder={0,1,3}}
local F

-- chunk size: 72
F = function() provider.lookup[1] = "?\13?\13?\13?\13?\13?\13?\13?\13?\13?\13?\13?\13?\13?\13?\13;\4\10\4s\29s\29;\4s\29s\29s\29s\29s\29\169\6\169\6;\4;\4;\16;\4;\16\28\8\4\4;\16;\4" end F()

F = nil
RaiderIO.AddProvider(provider)
