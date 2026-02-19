-- Name: Internal
-- Path: game:GetService("ReplicatedStorage").Packages._Index.nezuo_lapis@0.3.4.lapis.Internal
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7631065000023227 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:46
-- Luau version 6, Types version 3
-- Time taken: 0.001733 seconds

local module = {}
local Config_upvr = require(script.Parent.Config)
local Data_upvr = require(script.Parent.Data)
local AutoSave_upvr = require(script.Parent.AutoSave)
local Collection_upvr = require(script.Parent.Collection)
function module.new(arg1) -- Line 8
	--[[ Upvalues[4]:
		[1]: Config_upvr (readonly)
		[2]: Data_upvr (readonly)
		[3]: AutoSave_upvr (readonly)
		[4]: Collection_upvr (readonly)
	]]
	local any_new_result1_upvr_2 = Config_upvr.new()
	local any_new_result1_upvr_3 = Data_upvr.new(any_new_result1_upvr_2)
	local any_new_result1_upvr = AutoSave_upvr.new(any_new_result1_upvr_3)
	if arg1 then
		any_new_result1_upvr:start()
	end
	local module_2 = {}
	if not arg1 then
		module_2.autoSave = any_new_result1_upvr
	end
	function module_2.setConfig(arg1_2) -- Line 26
		--[[ Upvalues[1]:
			[1]: any_new_result1_upvr_2 (readonly)
		]]
		any_new_result1_upvr_2:set(arg1_2)
	end
	local tbl_upvr = {}
	function module_2.createCollection(arg1_3, arg2) -- Line 30
		--[[ Upvalues[5]:
			[1]: tbl_upvr (readonly)
			[2]: Collection_upvr (copied, readonly)
			[3]: any_new_result1_upvr_3 (readonly)
			[4]: any_new_result1_upvr (readonly)
			[5]: any_new_result1_upvr_2 (readonly)
		]]
		if tbl_upvr[arg1_3] then
			error(`Collection "{arg1_3}" already exists`)
		end
		tbl_upvr[arg1_3] = true
		return Collection_upvr.new(arg1_3, arg2, any_new_result1_upvr_3, any_new_result1_upvr, any_new_result1_upvr_2)
	end
	return module_2
end
return module