-- Name: AutoSave
-- Path: game:GetService("ReplicatedStorage").Packages._Index.nezuo_lapis@0.3.4.lapis.AutoSave
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7417816999950446 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:40
-- Luau version 6, Types version 3
-- Time taken: 0.003578 seconds

local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new(arg1) -- Line 10
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local module = {
		documents = {};
	}
	module.data = arg1
	module.gameClosed = false
	module.ongoingLoads = 0
	module.ongoingRemoveLocks = 0
	return setmetatable(module, module_2_upvr)
end
function module_2_upvr.addDocument(arg1, arg2) -- Line 20
	table.insert(arg1.documents, arg2)
end
function module_2_upvr.removeDocument(arg1, arg2) -- Line 24
	table.remove(arg1.documents, table.find(arg1.documents, arg2))
end
function module_2_upvr.finishLoad(arg1, arg2) -- Line 30
	if arg1.gameClosed then
		arg2:close()
	end
	arg1.ongoingLoads -= 1
end
local Promise_upvr = require(script.Parent.Parent.Promise)
function module_2_upvr.onGameClose(arg1) -- Line 38
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	arg1.gameClosed = true
	arg1.data.throttle.gameClosed = true
	while 0 < #arg1.documents do
		arg1.documents[#arg1.documents]:close()
	end
	Promise_upvr.try(function() -- Line 46
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		while 0 < arg1.ongoingLoads do
			task.wait()
		end
	end):andThen(function() -- Line 51
		--[[ Upvalues[2]:
			[1]: Promise_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return Promise_upvr.allSettled({arg1.data:waitForOngoingSaves(), Promise_upvr.try(function() -- Line 54
			--[[ Upvalues[1]:
				[1]: arg1 (copied, readonly)
			]]
			while 0 < arg1.ongoingRemoveLocks do
				task.wait()
			end
		end)})
	end):await()
end
local RunService_upvr = game:GetService("RunService")
function module_2_upvr.start(arg1) -- Line 64
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	local var10_upvw = os.clock() + 300
	RunService_upvr.Heartbeat:Connect(function() -- Line 66
		--[[ Upvalues[2]:
			[1]: var10_upvw (read and write)
			[2]: arg1 (readonly)
		]]
		if var10_upvw <= os.clock() then
			for _, v in arg1.documents do
				v:save():catch(warn)
			end
			var10_upvw += 300
		end
	end)
	game:BindToClose(function() -- Line 76
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:onGameClose()
	end)
end
return module_2_upvr