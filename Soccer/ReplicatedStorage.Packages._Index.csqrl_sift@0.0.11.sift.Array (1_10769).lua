-- Name: Array
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Array
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7085697999937111 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:40
-- Luau version 6, Types version 3
-- Time taken: 0.002235 seconds

local module = {
	at = require(script.at);
	concat = require(script.concat);
	concatDeep = require(script.concatDeep);
	copy = require(script.copy);
	copyDeep = require(script.copyDeep);
	count = require(script.count);
	create = require(script.create);
	dedupe = require(script.dedupe);
	difference = require(script.difference);
	differenceSymmetric = require(script.differenceSymmetric);
	equals = require(script.equals);
	equalsDeep = require(script.equalsDeep);
	every = require(script.every);
	filter = require(script.filter);
	find = require(script.find);
	findLast = require(script.findLast);
	findWhere = require(script.findWhere);
	findWhereLast = require(script.findWhereLast);
	first = require(script.first);
	flatten = require(script.flatten);
	freeze = require(script.freeze);
	freezeDeep = require(script.freezeDeep);
	includes = require(script.includes);
	insert = require(script.insert);
	is = require(script.is);
	last = require(script.last);
	map = require(script.map);
	pop = require(script.pop);
	push = require(script.push);
	reduce = require(script.reduce);
	reduceRight = require(script.reduceRight);
	removeIndex = require(script.removeIndex);
	removeIndices = require(script.removeIndices);
	removeValue = require(script.removeValue);
	removeValues = require(script.removeValues);
	reverse = require(script.reverse);
	set = require(script.set);
	shift = require(script.shift);
	shuffle = require(script.shuffle);
	slice = require(script.slice);
	some = require(script.some);
	sort = require(script.sort);
	splice = require(script.splice);
	toSet = require(script.toSet);
	unshift = require(script.unshift);
	update = require(script.update);
	zip = require(script.zip);
	zipAll = require(script.zipAll);
	join = module.concat;
	merge = module.concat;
	joinDeep = module.concatDeep;
	mergeDeep = module.concatDeep;
	append = module.push;
	prepend = module.unshift;
	indexOf = module.find;
	has = module.includes;
	contains = module.includes;
	isArray = module.is;
}
return module