-- Name: Migrations
-- Path: game:GetService("ReplicatedStorage").Packages._Index['paradoxum-games_lyra@0'].4.1.lyra.Migrations
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6127765999990515 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:58
-- Luau version 6, Types version 3
-- Time taken: 0.005771 seconds

local Tables_upvr = require(script.Parent.Tables)
local Promise_upvr = require(script.Parent.Promise)
return {
	makeAddFieldsStep = function(arg1, arg2) -- Line 18, Named "makeAddFieldsStep"
		--[[ Upvalues[1]:
			[1]: Tables_upvr (readonly)
		]]
		local module_2 = {}
		module_2.name = arg1
		local function apply(arg1_2) -- Line 21
			--[[ Upvalues[2]:
				[1]: Tables_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			return Tables_upvr.mergeDeep(arg2, arg1_2)
		end
		module_2.apply = apply
		return module_2
	end;
	makeTransformStep = function(arg1, arg2) -- Line 27, Named "makeTransformStep"
		local module = {}
		module.name = arg1
		module.apply = arg2
		return module
	end;
	validate = function(arg1) -- Line 9, Named "validate"
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 28 start (CF ANALYSIS FAILED)
		local var2
		if typeof(arg1) ~= "table" then
			var2 = false
		else
			var2 = true
		end
		assert(var2, "steps must be a table")
		var2 = nil
		-- KONSTANTERROR: [0] 1. Error Block 28 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [43] 33. Error Block 31 start (CF ANALYSIS FAILED)
		assert(true, "step.name must be a string")
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [50.5]
		if typeof(nil.apply) ~= "function" then
		else
		end
		assert(true, "step.apply must be a function")
		-- KONSTANTERROR: [43] 33. Error Block 31 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [19] 16. Error Block 29 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if "step.apply must be a function" ~= "table" then
		else
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if "step.apply must be a function" ~= "string" then
			-- KONSTANTWARNING: GOTO [44] #34
		end
		-- KONSTANTERROR: [19] 16. Error Block 29 end (CF ANALYSIS FAILED)
	end;
	apply = function(arg1) -- Line 46, Named "apply"
		--[[ Upvalues[2]:
			[1]: Promise_upvr (readonly)
			[2]: Tables_upvr (readonly)
		]]
		local appliedMigrations_upvr = arg1.appliedMigrations
		local tbl_upvr = {}
		for _, v in appliedMigrations_upvr do
			tbl_upvr[v] = true
		end
		local logger_upvr = arg1.logger
		local data_upvw = arg1.data
		return Promise_upvr.new(function(arg1_3, arg2) -- Line 56
			--[[ Upvalues[6]:
				[1]: arg1 (readonly)
				[2]: tbl_upvr (readonly)
				[3]: logger_upvr (readonly)
				[4]: Tables_upvr (copied, readonly)
				[5]: data_upvw (read and write)
				[6]: appliedMigrations_upvr (readonly)
			]]
			for _, v_2 in arg1.steps do
				if not tbl_upvr[v_2.name] then
					logger_upvr:log("trace", "applying migration step", {
						stepName = v_2.name;
					})
					local pcall_result1, pcall_result2 = pcall(v_2.apply, Tables_upvr.copyDeep(data_upvw))
					if not pcall_result1 then
						logger_upvr:log("error", "failed to apply migration step", {
							stepName = v_2.name;
							error = pcall_result2;
						})
						return arg2(pcall_result2)
					end
					data_upvw = Tables_upvr.copyDeep(pcall_result2)
					table.insert(appliedMigrations_upvr, v_2.name)
				end
			end
			return arg1_3({
				data = data_upvw;
				appliedMigrations = appliedMigrations_upvr;
			})
		end)
	end;
	getStepNames = function(arg1) -- Line 80, Named "getStepNames"
		local module_3 = {}
		for _, v_3 in arg1 do
			table.insert(module_3, v_3.name)
		end
		return module_3
	end;
}