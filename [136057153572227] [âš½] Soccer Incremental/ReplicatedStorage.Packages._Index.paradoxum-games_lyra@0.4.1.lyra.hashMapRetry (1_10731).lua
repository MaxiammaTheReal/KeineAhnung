-- Name: hashMapRetry
-- Path: game:GetService("ReplicatedStorage").Packages._Index['paradoxum-games_lyra@0'].4.1.lyra.hashMapRetry
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7219146999996156 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:08
-- Luau version 6, Types version 3
-- Time taken: 0.002807 seconds

local tbl_upvr = {"TotalRequestsOverLimit", "InternalError", "Throttled", "PartitionRequestsOverLimit", "Timeout"}
local Promise_upvr = require(script.Parent.Promise)
return function(arg1) -- Line 15, Named "hashMapRetry"
	--[[ Upvalues[2]:
		[1]: Promise_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	local var3_upvw = false
	return {
		promise = Promise_upvr.new(function(arg1_2, arg2) -- Line 19
			--[[ Upvalues[3]:
				[1]: var3_upvw (read and write)
				[2]: arg1 (readonly)
				[3]: tbl_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
			local const_number = 1
			if 1 < const_number and not var3_upvw then
				task.wait(2 ^ (const_number - 1))
			end
			if var3_upvw then
				return arg2("HashMap error: operation cancelled")
			end
			local packed = table.pack(pcall(arg1))
			if packed[1] == true then
				return arg1_2(table.unpack(packed, 2))
			end
			-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [59] 52. Error Block 12 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [59] 52. Error Block 12 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [49] 43. Error Block 25 start (CF ANALYSIS FAILED)
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [59.13]
			if nil then
				if not false then
					return arg2(`HashMap error: {packed[2]}`)
				end
				-- KONSTANTWARNING: GOTO [5] #6
			end
			-- KONSTANTERROR: [49] 43. Error Block 25 end (CF ANALYSIS FAILED)
		end);
		cancel = function() -- Line 55, Named "cancel"
			--[[ Upvalues[1]:
				[1]: var3_upvw (read and write)
			]]
			var3_upvw = true
		end;
	}
end