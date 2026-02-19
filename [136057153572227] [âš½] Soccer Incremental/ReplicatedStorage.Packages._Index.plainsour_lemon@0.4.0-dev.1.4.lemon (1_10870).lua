-- Name: lemon
-- Path: game:GetService("ReplicatedStorage").Packages._Index.plainsour_lemon@0.4['0-dev'].1.4.lemon
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 1.030975199995737 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:32:44
-- Luau version 6, Types version 3
-- Time taken: 0.002709 seconds

require(script.External).setExternalProvider(require(script.RobloxExternal))
return table.freeze({
	version = {
		major = 0;
		minor = 4;
		isRelease = false;
	};
	Contextual = require(script.Utility.Contextual);
	Safe = require(script.Utility.Safe);
	deriveScope = require(script.Memory.deriveScope);
	doCleanup = require(script.Memory.doCleanup);
	innerScope = require(script.Memory.innerScope);
	insert = require(script.Memory.insert);
	detach = require(script.Memory.detach);
	scoped = require(script.Memory.scoped);
	Observer = require(script.Graph.Observer);
	Computed = require(script.State.Computed);
	ForKeys = require(script.State.ForKeys);
	ForPairs = require(script.State.ForPairs);
	ForValues = require(script.State.ForValues);
	peek = require(script.State.peek);
	Value = require(script.State.Value);
	Attribute = require(script.Instances.Attribute);
	AttributeChange = require(script.Instances.AttributeChange);
	AttributeOut = require(script.Instances.AttributeOut);
	Child = require(script.Instances.Child);
	Children = require(script.Instances.Children);
	Hydrate = require(script.Instances.Hydrate);
	New = require(script.Instances.New);
	OnChange = require(script.Instances.OnChange);
	OnEvent = require(script.Instances.OnEvent);
	Out = require(script.Instances.Out);
	Tween = require(script.Animation.Tween);
	Spring = require(script.Animation.Spring);
})