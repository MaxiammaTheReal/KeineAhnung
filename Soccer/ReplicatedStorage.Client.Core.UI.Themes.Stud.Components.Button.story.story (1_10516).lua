-- Name: story.story
-- Path: game:GetService("ReplicatedStorage").Client.Core.UI.Themes.Stud.Components.Button.story.story
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6300549000006868 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:21
-- Luau version 6, Types version 3
-- Time taken: 0.001066 seconds

local module = {
	vide = require(game:GetService("ReplicatedStorage").Packages.Vide);
	controls = {
		text = "test";
		color = Color3.new(1, 1, 1);
		corner = 1;
	};
}
local component_upvr = require(script.Parent.component)
function module.story(arg1) -- Line 15
	--[[ Upvalues[1]:
		[1]: component_upvr (readonly)
	]]
	return component_upvr({
		text = arg1.controls.text;
		textSize = arg1.controls.textsize;
		color = arg1.controls.color;
		corner = arg1.controls.corner;
		automaticSize = arg1.controls.automaticsize;
	})
end
return module