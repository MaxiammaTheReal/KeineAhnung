-- Name: map
-- Path: game:GetService("ReplicatedStorage").Client.Core.UI.Apps.Products.map
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7376370999991195 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:18
-- Luau version 6, Types version 3
-- Time taken: 0.001015 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
return {
	Rebirths = {
		areas = {1, 2};
		frame = nil;
		content = require(game.ReplicatedStorage.Shared.Modules.Libraries.Products.DevProduct.Rebirths);
	};
	Strength = {
		areas = {4};
		attribute = "Treadmilling";
		frame = nil;
		content = require(game.ReplicatedStorage.Shared.Modules.Libraries.Products.DevProduct.Strength);
	};
}