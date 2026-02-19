-- Name: Attribute
-- Path: game:GetService("ReplicatedStorage").Packages._Index.1foreverhd_topbarplus@3.4.0.topbarplus.Attribute
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6854818000065279 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:12
-- Luau version 6, Types version 3
-- Time taken: 0.000932 seconds

task.defer(function() -- Line 21
	local VERSION = require(script.Parent.VERSION)
	if not game:GetService("RunService"):IsStudio() then
		print(`🍍 Running TopbarPlus {VERSION.getAppVersion()} by @ForeverHD & HD Admin`)
	end
	if not VERSION.isUpToDate() then
		warn(`A new version of TopbarPlus ({VERSION.getLatestVersion()}) is available: https://devforum.roblox.com/t/topbarplus/1017485`)
	end
end)
return {}