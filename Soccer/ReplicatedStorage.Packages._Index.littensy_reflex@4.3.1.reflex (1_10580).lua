-- Name: reflex
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_reflex@4.3.1.reflex
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7198820000048727 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:12
-- Luau version 6, Types version 3
-- Time taken: 0.000743 seconds

local broadcast = require(script.broadcast)
return {
	createProducer = require(script.createProducer);
	combineProducers = require(script.combineProducers);
	createSelector = require(script.createSelector);
	applyMiddleware = require(script.applyMiddleware);
	loggerMiddleware = require(script.middleware.loggerMiddleware);
	createBroadcaster = broadcast.createBroadcaster;
	createBroadcastReceiver = broadcast.createBroadcastReceiver;
	shallowEqual = require(script.utils.shallowEqual);
}