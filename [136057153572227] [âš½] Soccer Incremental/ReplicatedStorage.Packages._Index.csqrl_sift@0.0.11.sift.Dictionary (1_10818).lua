-- Name: Dictionary
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Dictionary
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7380596000002697 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:32:41
-- Luau version 6, Types version 3
-- Time taken: 0.001788 seconds

local module = {
	copy = require(script.copy);
	copyDeep = require(script.copyDeep);
	count = require(script.count);
	entries = require(script.entries);
	equals = require(script.equals);
	equalsDeep = require(script.equalsDeep);
	every = require(script.every);
	filter = require(script.filter);
	flatten = require(script.flatten);
	flip = require(script.flip);
	freeze = require(script.freeze);
	freezeDeep = require(script.freezeDeep);
	fromArrays = require(script.fromArrays);
	fromEntries = require(script.fromEntries);
	has = require(script.has);
	includes = require(script.includes);
	keys = require(script.keys);
	map = require(script.map);
	merge = require(script.merge);
	mergeDeep = require(script.mergeDeep);
	removeKey = require(script.removeKey);
	removeKeys = require(script.removeKeys);
	removeValue = require(script.removeValue);
	removeValues = require(script.removeValues);
	set = require(script.set);
	some = require(script.some);
	update = require(script.update);
	values = require(script.values);
	withKeys = require(script.withKeys);
	join = module.merge;
	joinDeep = module.mergeDeep;
}
return module