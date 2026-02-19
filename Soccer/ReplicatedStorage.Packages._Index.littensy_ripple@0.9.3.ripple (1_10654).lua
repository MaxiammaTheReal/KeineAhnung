-- Name: ripple
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_ripple@0.9.3.ripple
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5465747999987798 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:09
-- Luau version 6, Types version 3
-- Time taken: 0.000616 seconds

return {
	createMotion = require(script.createMotion);
	config = require(script.config);
	immediate = require(script.solvers.immediate);
	linear = require(script.solvers.linear);
	spring = require(script.solvers.spring);
	tween = require(script.solvers.tween);
}