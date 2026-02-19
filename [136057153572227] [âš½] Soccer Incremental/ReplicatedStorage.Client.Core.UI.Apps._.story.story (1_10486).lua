-- Name: story.story
-- Path: game:GetService("ReplicatedStorage").Client.Core.UI.Apps._.story.story
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7413648000001558 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:15:57
-- Luau version 6, Types version 3
-- Time taken: 0.000880 seconds

return {
	vide = require(game:GetService("ReplicatedStorage").Packages.Vide);
	story = function(arg1) -- Line 7, Named "story"
		return require(script.Parent)({}, {}, arg1.target)
	end;
}