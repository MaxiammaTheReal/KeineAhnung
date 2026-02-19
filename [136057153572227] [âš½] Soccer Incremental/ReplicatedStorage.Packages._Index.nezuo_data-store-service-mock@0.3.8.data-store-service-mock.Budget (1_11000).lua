-- Name: Budget
-- Path: game:GetService("ReplicatedStorage").Packages._Index['nezuo_data-store-service-mock@0'].3.8['data-store-service-mock'].Budget
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 1.0277822999996715 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:32:51
-- Luau version 6, Types version 3
-- Time taken: 0.005652 seconds

local Constants_upvr = require(script.Parent.Constants)
local function defaultBudget_upvr() -- Line 6, Named "defaultBudget"
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	local tbl = {}
	local tbl_3 = {}
	for i, v in Constants_upvr.REQUEST_BUDGETS do
		tbl[i] = v.INITIAL_BUDGET
		tbl_3[i] = {}
	end
	tbl[Enum.DataStoreRequestType.UpdateAsync] = math.min(tbl[Enum.DataStoreRequestType.GetAsync], tbl[Enum.DataStoreRequestType.SetIncrementAsync])
	return {
		accumulatedSeconds = 0;
		budgets = tbl;
		queues = tbl_3;
		maxThrottleQueueSize = Constants_upvr.MAX_THROTTLE_QUEUE_SIZE;
	}
end
local module_upvr = {}
module_upvr.__index = module_upvr
local RunService_upvr = game:GetService("RunService")
function module_upvr.new() -- Line 29
	--[[ Upvalues[3]:
		[1]: defaultBudget_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: RunService_upvr (readonly)
	]]
	local setmetatable_result1_upvr = setmetatable(defaultBudget_upvr(), module_upvr)
	setmetatable_result1_upvr.manual = false
	RunService_upvr.PostSimulation:Connect(function(arg1) -- Line 34
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:tick(arg1)
	end)
	return setmetatable_result1_upvr
end
function module_upvr.manual() -- Line 41
	--[[ Upvalues[2]:
		[1]: defaultBudget_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable(defaultBudget_upvr(), module_upvr)
	setmetatable_result1.manual = true
	return setmetatable_result1
end
function module_upvr.setMaxThrottleQueueSize(arg1, arg2) -- Line 49
	arg1.maxThrottleQueueSize = arg2
end
function module_upvr.hasBudget(arg1, arg2) -- Line 53
	for _, v_2 in arg2 do
		if arg1.budgets[v_2] < 1 then
			return false
		end
	end
	return true
end
function module_upvr.consumeBudget(arg1, arg2) -- Line 63
	for _, v_3 in arg2 do
		arg1.budgets[v_3] = math.max(arg1.budgets[v_3] - 1, 0)
	end
	arg1.budgets[Enum.DataStoreRequestType.UpdateAsync] = math.min(arg1.budgets[Enum.DataStoreRequestType.GetAsync], arg1.budgets[Enum.DataStoreRequestType.SetIncrementAsync])
end
local Players_upvr = game:GetService("Players")
function module_upvr.updateBudgets(arg1) -- Line 74
	--[[ Upvalues[2]:
		[1]: Players_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	local len = #Players_upvr:GetPlayers()
	for i_4, v_4 in Constants_upvr.REQUEST_BUDGETS do
		local var24 = v_4.RATE + len * v_4.RATE_PER_PLAYER
		arg1.budgets[i_4] = math.min(arg1.budgets[i_4] + var24 * Constants_upvr.BUDGET_UPDATE_INTERVAL, v_4.MAX_BUDGET_FACTOR * var24)
	end
	arg1.budgets[Enum.DataStoreRequestType.UpdateAsync] = math.min(arg1.budgets[Enum.DataStoreRequestType.GetAsync], arg1.budgets[Enum.DataStoreRequestType.SetIncrementAsync])
end
function module_upvr.updateQueues(arg1) -- Line 92
	for i_5, v_5 in arg1.queues do
		for _, v_6 in v_5 do
			if arg1:hasBudget(v_6.requestTypes) then
				arg1:consumeBudget(v_6.requestTypes)
				coroutine.resume(v_6.thread)
			else
				table.insert({}, v_6)
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg1.queues[i_5] = {}
	end
end
function module_upvr.update(arg1) -- Line 109
	arg1:updateBudgets()
	arg1:updateQueues()
end
function module_upvr.tick(arg1, arg2) -- Line 114
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	arg1.accumulatedSeconds += arg2
	while Constants_upvr.BUDGET_UPDATE_INTERVAL <= arg1.accumulatedSeconds do
		arg1:update()
		arg1.accumulatedSeconds -= Constants_upvr.BUDGET_UPDATE_INTERVAL
	end
end
function module_upvr.yieldForBudget(arg1, arg2) -- Line 123
	local _1 = arg2[1]
	if arg1:hasBudget(arg2) then
		arg1:consumeBudget(arg2)
	else
		if arg1.maxThrottleQueueSize <= #arg1.queues[_1] then
			error("Request was throttled due to lack of budget but the throttle queue was full")
			return
		end
		warn("Request was throttled due to lack of budget")
		local tbl_2 = {
			thread = coroutine.running();
		}
		tbl_2.requestTypes = arg2
		table.insert(arg1.queues[_1], tbl_2)
		coroutine.yield()
	end
end
return module_upvr