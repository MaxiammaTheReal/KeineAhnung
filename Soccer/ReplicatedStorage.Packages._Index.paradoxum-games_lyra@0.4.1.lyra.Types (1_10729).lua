-- Name: Types
-- Path: game:GetService("ReplicatedStorage").Packages._Index['paradoxum-games_lyra@0'].4.1.lyra.Types
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5952447000017855 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:07
-- Luau version 6, Types version 3
-- Time taken: 0.000842 seconds

local t = require(game:GetService("ReplicatedStorage").Packages.t)
return {
	txInfoCheck = t.some(t.strictInterface({
		committedData = t.any;
	}), t.strictInterface({
		committedData = t.any;
		txId = t.string;
		txPatch = t.any;
	}));
	fileCheck = t.some(t.strictInterface({
		data = t.any;
	}), t.strictInterface({
		shard = t.string;
		count = t.number;
	}));
}