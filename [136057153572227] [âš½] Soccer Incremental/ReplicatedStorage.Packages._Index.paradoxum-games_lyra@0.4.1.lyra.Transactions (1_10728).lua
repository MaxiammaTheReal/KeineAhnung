-- Name: Transactions
-- Path: game:GetService("ReplicatedStorage").Packages._Index['paradoxum-games_lyra@0'].4.1.lyra.Transactions
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6336728000023868 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:06
-- Luau version 6, Types version 3
-- Time taken: 0.001976 seconds

local Promise_upvr = require(script.Parent.Promise)
local dataStoreRetry_upvr = require(script.Parent.dataStoreRetry)
local JsonPatch_upvr = require(script.Parent.JsonPatch)
return {
	readTx = function(arg1) -- Line 13, Named "readTx"
		--[[ Upvalues[3]:
			[1]: Promise_upvr (readonly)
			[2]: dataStoreRetry_upvr (readonly)
			[3]: JsonPatch_upvr (readonly)
		]]
		local txInfo_upvr = arg1.txInfo
		local txId_upvr = txInfo_upvr.txId
		if txId_upvr == nil then
			return Promise_upvr.resolve(txInfo_upvr.committedData)
		end
		return dataStoreRetry_upvr(function() -- Line 21
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: txId_upvr (readonly)
			]]
			return arg1.store:GetAsync(txId_upvr)
		end):andThen(function(arg1_2) -- Line 23
			--[[ Upvalues[3]:
				[1]: txInfo_upvr (readonly)
				[2]: Promise_upvr (copied, readonly)
				[3]: JsonPatch_upvr (copied, readonly)
			]]
			if arg1_2 == nil then
				if txInfo_upvr.txPatch == nil then
					return Promise_upvr.reject("Tx is committed but has no patch")
				end
				return JsonPatch_upvr.applyPatch(txInfo_upvr.committedData, txInfo_upvr.txPatch)
			end
			return txInfo_upvr.committedData
		end)
	end;
}