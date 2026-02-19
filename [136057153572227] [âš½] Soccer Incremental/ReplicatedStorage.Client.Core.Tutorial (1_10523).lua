-- Name: Tutorial
-- Path: game:GetService("ReplicatedStorage").Client.Core.Tutorial
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6973541999977897 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:27
-- Luau version 6, Types version 3
-- Time taken: 0.003602 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local setmetatable_result1_upvr = setmetatable({
	Name = script.Name;
}, require(ReplicatedStorage_upvr.Shared.Util).framework.client)
local var4_upvw
local var5_upvw
function setmetatable_result1_upvr.Init(arg1) -- Line 22
	--[[ Upvalues[4]:
		[1]: var5_upvw (read and write)
		[2]: ReplicatedStorage_upvr (readonly)
		[3]: var4_upvw (read and write)
		[4]: setmetatable_result1_upvr (readonly)
	]]
	var5_upvw = require(ReplicatedStorage_upvr.Client.Core.UI)
	var4_upvw = setmetatable_result1_upvr:GetService("Tutorial")
end
local Promise_upvr = require(ReplicatedStorage_upvr.Packages.Promise)
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
function setmetatable_result1_upvr.Start(arg1) -- Line 28
	--[[ Upvalues[5]:
		[1]: ReplicatedStorage_upvr (readonly)
		[2]: setmetatable_result1_upvr (readonly)
		[3]: Promise_upvr (readonly)
		[4]: var4_upvw (read and write)
		[5]: LocalPlayer_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	repeat
		task.wait(5)
	until game:IsLoaded()
	local any_GetAsync_result1_upvr = require(ReplicatedStorage_upvr.Client.Core.Data):GetAsync()
	for _, v in script.Stages:GetChildren() do
		({})[tonumber(v.Name)] = require(v)
		local var28
	end
	if any_GetAsync_result1_upvr().properties.TutorialCompleted then
	else
		for i_2, v_2_upvr in var28 do
			setmetatable_result1_upvr:Log(print, `moving to stage: {i_2}`)
			Promise_upvr.new(function(arg1_2, arg2) -- Line 46
				--[[ Upvalues[2]:
					[1]: v_2_upvr (readonly)
					[2]: any_GetAsync_result1_upvr (readonly)
				]]
				v_2_upvr(any_GetAsync_result1_upvr, arg1_2)
			end):andThen(function(arg1_3) -- Line 48
				arg1_3()
			end):catch(warn):await()
			local _
		end
		var4_upvw.Completed:Fire(LocalPlayer_upvr)
	end
end
return setmetatable_result1_upvr