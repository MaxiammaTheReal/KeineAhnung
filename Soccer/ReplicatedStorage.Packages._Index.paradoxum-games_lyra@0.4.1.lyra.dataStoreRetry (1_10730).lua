-- Name: dataStoreRetry
-- Path: game:GetService("ReplicatedStorage").Packages._Index['paradoxum-games_lyra@0'].4.1.lyra.dataStoreRetry
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.760559700000158 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:07
-- Luau version 6, Types version 3
-- Time taken: 0.002697 seconds

local tbl_upvr = {301, 302, 303, 304, 305, 306, 500, 501, 502, 503, 504, 505}
local Promise_upvr = require(script.Parent.Promise)
return function(arg1) -- Line 21, Named "dataStoreRetry"
	--[[ Upvalues[2]:
		[1]: Promise_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	return Promise_upvr.new(function(arg1_2, arg2) -- Line 22
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: tbl_upvr (copied, readonly)
		]]
		local var6
		for i = 1, 5 do
			local var7
			if 1 < i then
				var7 = 2
				var7 = task.wait
				var7(var7 ^ (i - 1))
			end
			var7 = pcall(arg1)
			local packed = table.pack(var7)
			var7 = packed[1]
			if var7 == true then
				var7 = arg1_2(table.unpack(packed, 2))
				return var7
			end
			var7 = packed[2]:match("(%d+)")
			if var7 then
				var7 = tonumber(var7)
			else
				var7 = nil
			end
			if var7 ~= nil and table.find(tbl_upvr, var7) then
			else
				return arg2(packed[2])
			end
		end
		return arg2(`DataStore error: too many retries. Last error: {nil}`)
	end)
end