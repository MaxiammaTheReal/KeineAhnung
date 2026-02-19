-- Name: Promise
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_remo@1.5.2.remo.Promise
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.71449610000127 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:28
-- Luau version 6, Types version 3
-- Time taken: 0.001989 seconds

local var2
if not var2 then
	var2 = script:FindFirstAncestor("include")
	if not var2 then
		var2 = game:GetService("ReplicatedStorage"):FindFirstChild("rbxts_include")
		if not var2 then
			var2 = script.Parent.Parent
		end
	end
end
if var2 and var2:FindFirstChild("Promise") then
	return require(var2.Promise)
end
error(`Could not find Promise from {script:GetFullName()}`)