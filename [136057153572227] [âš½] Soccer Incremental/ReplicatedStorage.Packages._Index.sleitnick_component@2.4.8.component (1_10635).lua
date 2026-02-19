-- Name: component
-- Path: game:GetService("ReplicatedStorage").Packages._Index.sleitnick_component@2.4.8.component
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7470968999987235 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:55
-- Luau version 6, Types version 3
-- Time taken: 0.018288 seconds

local RunService_upvr = game:GetService("RunService")
local Symbol = require(script.Parent.Symbol)
local tbl_upvr = {workspace, game:GetService("Players")}
local var2_result1_upvr = Symbol("Ancestors")
local Symbol_result1_upvr_2 = Symbol("InstancesToComponents")
local Symbol_result1_upvr_4 = Symbol("LockConstruct")
local Symbol_result1_upvr_8 = Symbol("Components")
local Symbol_result1_upvr_7 = Symbol("Trove")
local Symbol_result1_upvr_5 = Symbol("Extensions")
local Symbol_result1_upvr = Symbol("ActiveExtensions")
local Symbol_result1_upvr_3 = Symbol("Started")
local var12_upvw = 0
local function _() -- Line 193, Named "NextRenderName"
	--[[ Upvalues[1]:
		[1]: var12_upvw (read and write)
	]]
	var12_upvw += 1
	return "ComponentRender"..tostring(var12_upvw)
end
local function InvokeExtensionFn_upvr(arg1, arg2) -- Line 198, Named "InvokeExtensionFn"
	--[[ Upvalues[1]:
		[1]: Symbol_result1_upvr (readonly)
	]]
	for _, v in ipairs(arg1[Symbol_result1_upvr]) do
		local var18 = v[arg2]
		if type(var18) == "function" then
			var18(arg1)
		end
	end
end
local function ShouldConstruct_upvr(arg1) -- Line 207, Named "ShouldConstruct"
	--[[ Upvalues[1]:
		[1]: Symbol_result1_upvr (readonly)
	]]
	for _, v_2 in ipairs(arg1[Symbol_result1_upvr]) do
		local ShouldConstruct = v_2.ShouldConstruct
		if type(ShouldConstruct) == "function" and not ShouldConstruct(arg1) then
			return false
		end
	end
	return true
end
local function GetActiveExtensions_upvr(arg1, arg2) -- Line 220, Named "GetActiveExtensions"
	local var32
	for _, v_3 in ipairs(arg2) do
		local ShouldExtend = v_3.ShouldExtend
		local var34 = true
		if type(ShouldExtend) == "function" then
			var34 = not not ShouldExtend(arg1)
		end
		if var34 then
			table.insert(table.create(#arg2), v_3)
		else
		end
	end
	if nil then
		return arg2
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return table.create(#arg2)
end
local module_upvr = {}
module_upvr.__index = module_upvr
local Trove_upvr = require(script.Parent.Trove)
local Signal_upvr = require(script.Parent.Signal)
function module_upvr.new(arg1) -- Line 299
	--[[ Upvalues[11]:
		[1]: var2_result1_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: Symbol_result1_upvr_2 (readonly)
		[4]: Symbol_result1_upvr_8 (readonly)
		[5]: Symbol_result1_upvr_4 (readonly)
		[6]: Symbol_result1_upvr_7 (readonly)
		[7]: Trove_upvr (readonly)
		[8]: Symbol_result1_upvr_5 (readonly)
		[9]: Symbol_result1_upvr_3 (readonly)
		[10]: Signal_upvr (readonly)
		[11]: module_upvr (readonly)
	]]
	local module = {}
	module.__index = module
	function module.__tostring() -- Line 302
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return "Component<"..arg1.Tag..'>'
	end
	local Ancestors = arg1.Ancestors
	if not Ancestors then
		Ancestors = tbl_upvr
	end
	module[var2_result1_upvr] = Ancestors
	module[Symbol_result1_upvr_2] = {}
	module[Symbol_result1_upvr_8] = {}
	module[Symbol_result1_upvr_4] = {}
	module[Symbol_result1_upvr_7] = Trove_upvr.new()
	local Extensions = arg1.Extensions
	if not Extensions then
		Extensions = {}
	end
	module[Symbol_result1_upvr_5] = Extensions
	module[Symbol_result1_upvr_3] = false
	module.Tag = arg1.Tag
	module.Started = module[Symbol_result1_upvr_7]:Construct(Signal_upvr)
	module.Stopped = module[Symbol_result1_upvr_7]:Construct(Signal_upvr)
	setmetatable(module, module_upvr)
	module:_setup()
	return module
end
function module_upvr._instantiate(arg1, arg2) -- Line 320
	--[[ Upvalues[5]:
		[1]: Symbol_result1_upvr (readonly)
		[2]: GetActiveExtensions_upvr (readonly)
		[3]: Symbol_result1_upvr_5 (readonly)
		[4]: ShouldConstruct_upvr (readonly)
		[5]: InvokeExtensionFn_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, arg1)
	setmetatable_result1.Instance = arg2
	setmetatable_result1[Symbol_result1_upvr] = GetActiveExtensions_upvr(setmetatable_result1, arg1[Symbol_result1_upvr_5])
	if not ShouldConstruct_upvr(setmetatable_result1) then
		return nil
	end
	InvokeExtensionFn_upvr(setmetatable_result1, "Constructing")
	if type(setmetatable_result1.Construct) == "function" then
		setmetatable_result1:Construct()
	end
	InvokeExtensionFn_upvr(setmetatable_result1, "Constructed")
	return setmetatable_result1
end
local Symbol_result1_upvr_6 = Symbol("Starting")
local any_IsServer_result1_upvr = RunService_upvr:IsServer()
local CollectionService_upvr = game:GetService("CollectionService")
function module_upvr._setup(arg1) -- Line 335
	--[[ Upvalues[12]:
		[1]: Symbol_result1_upvr_6 (readonly)
		[2]: InvokeExtensionFn_upvr (readonly)
		[3]: RunService_upvr (readonly)
		[4]: any_IsServer_result1_upvr (readonly)
		[5]: var12_upvw (read and write)
		[6]: Symbol_result1_upvr_3 (readonly)
		[7]: Symbol_result1_upvr_4 (readonly)
		[8]: Symbol_result1_upvr_2 (readonly)
		[9]: Symbol_result1_upvr_8 (readonly)
		[10]: var2_result1_upvr (readonly)
		[11]: Symbol_result1_upvr_7 (readonly)
		[12]: CollectionService_upvr (readonly)
	]]
	local tbl_upvr_2 = {}
	local function StartComponent_upvr(arg1_2) -- Line 338, Named "StartComponent"
		--[[ Upvalues[7]:
			[1]: Symbol_result1_upvr_6 (copied, readonly)
			[2]: InvokeExtensionFn_upvr (copied, readonly)
			[3]: RunService_upvr (copied, readonly)
			[4]: any_IsServer_result1_upvr (copied, readonly)
			[5]: var12_upvw (copied, read and write)
			[6]: Symbol_result1_upvr_3 (copied, readonly)
			[7]: arg1 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 33 start (CF ANALYSIS FAILED)
		arg1_2[Symbol_result1_upvr_6] = coroutine.running()
		InvokeExtensionFn_upvr(arg1_2, "Starting")
		arg1_2:Start()
		local var51
		if arg1_2[Symbol_result1_upvr_6] == nil then
		else
			local var52 = InvokeExtensionFn_upvr
			var51 = "Started"
			var52(arg1_2, var51)
			var51 = arg1_2.HeartbeatUpdate
			if typeof(var51) ~= "function" then
				var52 = false
			else
				var52 = true
			end
			var51 = typeof(arg1_2.SteppedUpdate)
			if var51 ~= "function" then
				-- KONSTANTWARNING: GOTO [41] #33
			end
			-- KONSTANTERROR: [0] 1. Error Block 33 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [40] 32. Error Block 40 start (CF ANALYSIS FAILED)
			if typeof(arg1_2.RenderSteppedUpdate) ~= "function" then
				var51 = false
			else
				var51 = true
			end
			if var52 then
				arg1_2._heartbeatUpdate = RunService_upvr.Heartbeat:Connect(function(arg1_3) -- Line 356
					--[[ Upvalues[1]:
						[1]: arg1_2 (readonly)
					]]
					arg1_2:HeartbeatUpdate(arg1_3)
				end)
			end
			if true then
				arg1_2._steppedUpdate = RunService_upvr.Stepped:Connect(function(arg1_4, arg2) -- Line 362
					--[[ Upvalues[1]:
						[1]: arg1_2 (readonly)
					]]
					arg1_2:SteppedUpdate(arg2)
				end)
			end
			if var51 and not any_IsServer_result1_upvr then
				if arg1_2.RenderPriority then
					var12_upvw += 1
					arg1_2._renderName = "ComponentRender"..tostring(var12_upvw)
					RunService_upvr:BindToRenderStep(arg1_2._renderName, arg1_2.RenderPriority, function(arg1_5) -- Line 370
						--[[ Upvalues[1]:
							[1]: arg1_2 (readonly)
						]]
						arg1_2:RenderSteppedUpdate(arg1_5)
					end)
				else
					arg1_2._renderSteppedUpdate = RunService_upvr.RenderStepped:Connect(function(arg1_6) -- Line 374
						--[[ Upvalues[1]:
							[1]: arg1_2 (readonly)
						]]
						arg1_2:RenderSteppedUpdate(arg1_6)
					end)
				end
			end
			arg1_2[Symbol_result1_upvr_3] = true
			arg1_2[Symbol_result1_upvr_6] = nil
			arg1.Started:Fire(arg1_2)
			-- KONSTANTERROR: [40] 32. Error Block 40 end (CF ANALYSIS FAILED)
		end
	end
	local function StopComponent_upvr(arg1_7) -- Line 386, Named "StopComponent"
		--[[ Upvalues[4]:
			[1]: Symbol_result1_upvr_6 (copied, readonly)
			[2]: RunService_upvr (copied, readonly)
			[3]: InvokeExtensionFn_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		if arg1_7[Symbol_result1_upvr_6] then
			local var57_upvr = arg1_7[Symbol_result1_upvr_6]
			if coroutine.status(var57_upvr) ~= "normal" then
				pcall(function() -- Line 391
					--[[ Upvalues[1]:
						[1]: var57_upvr (readonly)
					]]
					task.cancel(var57_upvr)
				end)
			else
				task.defer(function() -- Line 395
					--[[ Upvalues[1]:
						[1]: var57_upvr (readonly)
					]]
					pcall(function() -- Line 396
						--[[ Upvalues[1]:
							[1]: var57_upvr (copied, readonly)
						]]
						task.cancel(var57_upvr)
					end)
				end)
			end
			arg1_7[Symbol_result1_upvr_6] = nil
		end
		var57_upvr = arg1_7._heartbeatUpdate
		if var57_upvr then
			var57_upvr = arg1_7._heartbeatUpdate:Disconnect
			var57_upvr()
		end
		var57_upvr = arg1_7._steppedUpdate
		if var57_upvr then
			var57_upvr = arg1_7._steppedUpdate:Disconnect
			var57_upvr()
		end
		var57_upvr = arg1_7._renderSteppedUpdate
		if var57_upvr then
			var57_upvr = arg1_7._renderSteppedUpdate:Disconnect
			var57_upvr()
		else
			var57_upvr = arg1_7._renderName
			if var57_upvr then
				var57_upvr = RunService_upvr:UnbindFromRenderStep
				var57_upvr(arg1_7._renderName)
			end
		end
		var57_upvr = InvokeExtensionFn_upvr
		var57_upvr(arg1_7, "Stopping")
		var57_upvr = arg1_7:Stop
		var57_upvr()
		var57_upvr = InvokeExtensionFn_upvr
		var57_upvr(arg1_7, "Stopped")
		var57_upvr = arg1.Stopped:Fire
		var57_upvr(arg1_7)
	end
	local function _(arg1_8, arg2) -- Line 424, Named "SafeConstruct"
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Symbol_result1_upvr_4 (copied, readonly)
		]]
		if arg1[Symbol_result1_upvr_4][arg1_8] ~= arg2 then
			return nil
		end
		if arg1[Symbol_result1_upvr_4][arg1_8] ~= arg2 then
			return nil
		end
		return arg1:_instantiate(arg1_8)
	end
	local function _(arg1_9) -- Line 435, Named "TryConstructComponent"
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: Symbol_result1_upvr_2 (copied, readonly)
			[3]: Symbol_result1_upvr_4 (copied, readonly)
			[4]: Symbol_result1_upvr_8 (copied, readonly)
			[5]: StartComponent_upvr (readonly)
		]]
		if arg1[Symbol_result1_upvr_2][arg1_9] then
		else
			local var61_upvw = (arg1[Symbol_result1_upvr_4][arg1_9] or 0) + 1
			arg1[Symbol_result1_upvr_4][arg1_9] = var61_upvw
			task.defer(function() -- Line 442
				--[[ Upvalues[7]:
					[1]: arg1_9 (readonly)
					[2]: var61_upvw (read and write)
					[3]: arg1 (copied, readonly)
					[4]: Symbol_result1_upvr_4 (copied, readonly)
					[5]: Symbol_result1_upvr_2 (copied, readonly)
					[6]: Symbol_result1_upvr_8 (copied, readonly)
					[7]: StartComponent_upvr (copied, readonly)
				]]
				local var63 = arg1_9
				local var64 = var61_upvw
				local var65_upvr
				if arg1[Symbol_result1_upvr_4][var63] ~= var64 then
					var65_upvr = nil
				elseif arg1[Symbol_result1_upvr_4][var63] ~= var64 then
					var65_upvr = nil
				else
					var65_upvr = arg1:_instantiate(var63)
				end
				if not var65_upvr then
				else
					arg1[Symbol_result1_upvr_2][arg1_9] = var65_upvr
					table.insert(arg1[Symbol_result1_upvr_8], var65_upvr)
					task.defer(function() -- Line 449
						--[[ Upvalues[5]:
							[1]: arg1 (copied, readonly)
							[2]: Symbol_result1_upvr_2 (copied, readonly)
							[3]: arg1_9 (copied, readonly)
							[4]: var65_upvr (readonly)
							[5]: StartComponent_upvr (copied, readonly)
						]]
						if arg1[Symbol_result1_upvr_2][arg1_9] == var65_upvr then
							StartComponent_upvr(var65_upvr)
						end
					end)
				end
			end)
		end
	end
	local function TryDeconstructComponent_upvr(arg1_10) -- Line 457, Named "TryDeconstructComponent"
		--[[ Upvalues[7]:
			[1]: arg1 (readonly)
			[2]: Symbol_result1_upvr_2 (copied, readonly)
			[3]: Symbol_result1_upvr_4 (copied, readonly)
			[4]: Symbol_result1_upvr_8 (copied, readonly)
			[5]: Symbol_result1_upvr_3 (copied, readonly)
			[6]: Symbol_result1_upvr_6 (copied, readonly)
			[7]: StopComponent_upvr (readonly)
		]]
		local var67 = arg1[Symbol_result1_upvr_2][arg1_10]
		if not var67 then
		else
			arg1[Symbol_result1_upvr_2][arg1_10] = nil
			arg1[Symbol_result1_upvr_4][arg1_10] = nil
			local var68 = arg1[Symbol_result1_upvr_8]
			local table_find_result1 = table.find(var68, var67)
			if table_find_result1 then
				local len = #var68
				var68[table_find_result1] = var68[len]
				var68[len] = nil
			end
			if var67[Symbol_result1_upvr_3] or var67[Symbol_result1_upvr_6] then
				task.spawn(StopComponent_upvr, var67)
			end
		end
	end
	local function StartWatchingInstance_upvr(arg1_11) -- Line 476, Named "StartWatchingInstance"
		--[[ Upvalues[9]:
			[1]: tbl_upvr_2 (readonly)
			[2]: arg1 (readonly)
			[3]: var2_result1_upvr (copied, readonly)
			[4]: Symbol_result1_upvr_7 (copied, readonly)
			[5]: Symbol_result1_upvr_2 (copied, readonly)
			[6]: Symbol_result1_upvr_4 (copied, readonly)
			[7]: Symbol_result1_upvr_8 (copied, readonly)
			[8]: StartComponent_upvr (readonly)
			[9]: TryDeconstructComponent_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 15 start (CF ANALYSIS FAILED)
		if tbl_upvr_2[arg1_11] then return end
		local function _() -- Line 480, Named "IsInAncestorList"
			--[[ Upvalues[3]:
				[1]: arg1 (copied, readonly)
				[2]: var2_result1_upvr (copied, readonly)
				[3]: arg1_11 (readonly)
			]]
			for _, v_4 in ipairs(arg1[var2_result1_upvr]) do
				if arg1_11:IsDescendantOf(v_4) then
					return true
				end
			end
			return false
		end
		tbl_upvr_2[arg1_11] = arg1[Symbol_result1_upvr_7]:Connect(arg1_11.AncestryChanged, function(arg1_12, arg2) -- Line 488
			--[[ Upvalues[8]:
				[1]: arg1 (copied, readonly)
				[2]: var2_result1_upvr (copied, readonly)
				[3]: arg1_11 (readonly)
				[4]: Symbol_result1_upvr_2 (copied, readonly)
				[5]: Symbol_result1_upvr_4 (copied, readonly)
				[6]: Symbol_result1_upvr_8 (copied, readonly)
				[7]: StartComponent_upvr (copied, readonly)
				[8]: TryDeconstructComponent_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [18] 16. Error Block 16 start (CF ANALYSIS FAILED)
			if false then
				local var77_upvr = arg1_11
				if arg1[Symbol_result1_upvr_2][var77_upvr] then
				else
					local var78_upvw = (arg1[Symbol_result1_upvr_4][var77_upvr] or 0) + 1
					arg1[Symbol_result1_upvr_4][var77_upvr] = var78_upvw
					task.defer(function() -- Line 442
						--[[ Upvalues[7]:
							[1]: var77_upvr (readonly)
							[2]: var78_upvw (read and write)
							[3]: arg1 (copied, readonly)
							[4]: Symbol_result1_upvr_4 (copied, readonly)
							[5]: Symbol_result1_upvr_2 (copied, readonly)
							[6]: Symbol_result1_upvr_8 (copied, readonly)
							[7]: StartComponent_upvr (copied, readonly)
						]]
						-- KONSTANTERROR: [0] 1. Error Block 14 start (CF ANALYSIS FAILED)
						local var80 = var77_upvr
						local var81 = var78_upvw
						local var82_upvr
						if arg1[Symbol_result1_upvr_4][var80] ~= var81 then
							var82_upvr = nil
							-- KONSTANTWARNING: GOTO [24] #22
						end
						-- KONSTANTERROR: [0] 1. Error Block 14 end (CF ANALYSIS FAILED)
						-- KONSTANTERROR: [10] 10. Error Block 15 start (CF ANALYSIS FAILED)
						if arg1[Symbol_result1_upvr_4][var80] ~= var81 then
							var82_upvr = nil
						else
							var82_upvr = arg1:_instantiate(var80)
						end
						if not var82_upvr then
						else
							arg1[Symbol_result1_upvr_2][var77_upvr] = var82_upvr
							table.insert(arg1[Symbol_result1_upvr_8], var82_upvr)
							task.defer(function() -- Line 449
								--[[ Upvalues[5]:
									[1]: arg1 (copied, readonly)
									[2]: Symbol_result1_upvr_2 (copied, readonly)
									[3]: var77_upvr (copied, readonly)
									[4]: var82_upvr (readonly)
									[5]: StartComponent_upvr (copied, readonly)
								]]
								if arg1[Symbol_result1_upvr_2][var77_upvr] == var82_upvr then
									StartComponent_upvr(var82_upvr)
								end
							end)
							-- KONSTANTERROR: [10] 10. Error Block 15 end (CF ANALYSIS FAILED)
						end
					end)
				end
			end
			-- KONSTANTERROR: [18] 16. Error Block 16 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [50] 47. Error Block 11 start (CF ANALYSIS FAILED)
			var77_upvr = TryDeconstructComponent_upvr
			var77_upvr(arg1_11)
			-- KONSTANTERROR: [50] 47. Error Block 11 end (CF ANALYSIS FAILED)
		end)
		local ipairs_result1_3, ipairs_result2, ipairs_result3_4 = ipairs(arg1[var2_result1_upvr])
		-- KONSTANTERROR: [0] 1. Error Block 15 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [41] 38. Error Block 6 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [41] 38. Error Block 6 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [34] 32. Error Block 19 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [41.9]
		if nil then
			-- KONSTANTWARNING: GOTO [44] #40
		end
		-- KONSTANTERROR: [34] 32. Error Block 19 end (CF ANALYSIS FAILED)
	end
	local function InstanceTagged(arg1_13) -- Line 501
		--[[ Upvalues[1]:
			[1]: StartWatchingInstance_upvr (readonly)
		]]
		StartWatchingInstance_upvr(arg1_13)
	end
	arg1[Symbol_result1_upvr_7]:Connect(CollectionService_upvr:GetInstanceAddedSignal(arg1.Tag), InstanceTagged)
	arg1[Symbol_result1_upvr_7]:Connect(CollectionService_upvr:GetInstanceRemovedSignal(arg1.Tag), function(arg1_14) -- Line 505, Named "InstanceUntagged"
		--[[ Upvalues[4]:
			[1]: tbl_upvr_2 (readonly)
			[2]: arg1 (readonly)
			[3]: Symbol_result1_upvr_7 (copied, readonly)
			[4]: TryDeconstructComponent_upvr (readonly)
		]]
		local var88 = tbl_upvr_2[arg1_14]
		if var88 then
			tbl_upvr_2[arg1_14] = nil
			arg1[Symbol_result1_upvr_7]:Remove(var88)
		end
		TryDeconstructComponent_upvr(arg1_14)
	end)
	for _, v_5 in ipairs(CollectionService_upvr:GetTagged(arg1.Tag)) do
		task.defer(InstanceTagged, v_5)
	end
end
function module_upvr.GetAll(arg1) -- Line 542
	--[[ Upvalues[1]:
		[1]: Symbol_result1_upvr_8 (readonly)
	]]
	return arg1[Symbol_result1_upvr_8]
end
function module_upvr.FromInstance(arg1, arg2) -- Line 559
	--[[ Upvalues[1]:
		[1]: Symbol_result1_upvr_2 (readonly)
	]]
	return arg1[Symbol_result1_upvr_2][arg2]
end
local Promise_upvr = require(script.Parent.Promise)
function module_upvr.WaitForInstance(arg1, arg2, arg3) -- Line 582
	--[[ Upvalues[2]:
		[1]: Symbol_result1_upvr_3 (readonly)
		[2]: Promise_upvr (readonly)
	]]
	local any_FromInstance_result1_upvw = arg1:FromInstance(arg2)
	if any_FromInstance_result1_upvw and any_FromInstance_result1_upvw[Symbol_result1_upvr_3] then
		return Promise_upvr.resolve(any_FromInstance_result1_upvw)
	end
	local function var96(arg1_15) -- Line 587
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: any_FromInstance_result1_upvw (read and write)
		]]
		local var95
		if arg1_15.Instance ~= arg2 then
			var95 = false
		else
			var95 = true
		end
		if var95 then
			any_FromInstance_result1_upvw = arg1_15
		end
		return var95
	end
	function var96() -- Line 594
		--[[ Upvalues[1]:
			[1]: any_FromInstance_result1_upvw (read and write)
		]]
		return any_FromInstance_result1_upvw
	end
	local var97 = var96
	if type(arg3) == "number" then
		var97 = arg3
	else
		var97 = 60
	end
	return Promise_upvr.fromEvent(arg1.Started, var96):andThen(var97):timeout(var97)
end
function module_upvr.Construct(arg1) -- Line 614
end
function module_upvr.Start(arg1) -- Line 631
end
function module_upvr.Stop(arg1) -- Line 651
end
function module_upvr.GetComponent(arg1, arg2) -- Line 670
	--[[ Upvalues[1]:
		[1]: Symbol_result1_upvr_2 (readonly)
	]]
	return arg2[Symbol_result1_upvr_2][arg1.Instance]
end
function module_upvr.Destroy(arg1) -- Line 755
	--[[ Upvalues[1]:
		[1]: Symbol_result1_upvr_7 (readonly)
	]]
	arg1[Symbol_result1_upvr_7]:Destroy()
end
return module_upvr