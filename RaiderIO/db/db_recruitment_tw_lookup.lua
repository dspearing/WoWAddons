--
-- Copyright (c) 2023 by Ludicrous Speed, LLC
-- All rights reserved.
--
local provider={name=...,data=3,region="tw",date="2023-05-02T07:23:58Z",numCharacters=32489,lookup={},recordSizeInBytes=2,encodingOrder={0,1,3}}
local F

-- chunk size: 52
F = function() provider.lookup[1] = "?\29?\29?\29;\4;\8\4\4?\29?\29?\29?\13?\13?\13?\13?\13?\13s\29\4\4s\29\4\4s\29?\13?\13?\13?\13;\16;\4" end F()

F = nil
RaiderIO.AddProvider(provider)
