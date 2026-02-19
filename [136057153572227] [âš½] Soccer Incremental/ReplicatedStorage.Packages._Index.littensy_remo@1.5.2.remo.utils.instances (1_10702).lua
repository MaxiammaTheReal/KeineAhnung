-- Name: instances
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_remo@1.5.2.remo.utils.instances
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7509263999963878 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:45
-- Luau version 6, Types version 3
-- Time taken: 0.003596 seconds

local Promise_upvr = require(script.Parent.Parent.Promise)
local constants_upvr = require(script.Parent.Parent.constants)
local mockRemotes_upvr = require(script.Parent.mockRemotes)
local container_upvr = script.Parent.Parent.container
return {
	promiseRemoteFunction = function(arg1) -- Line 7, Named "promiseRemoteFunction"
		--[[ Upvalues[4]:
			[1]: container_upvr (readonly)
			[2]: Promise_upvr (readonly)
			[3]: constants_upvr (readonly)
			[4]: mockRemotes_upvr (readonly)
		]]
		if container_upvr:FindFirstChild(arg1) then
			return Promise_upvr.resolve(container_upvr[arg1])
		end
		if constants_upvr.IS_EDIT then
			return Promise_upvr.resolve(mockRemotes_upvr.createMockRemoteFunction(arg1))
		end
		return Promise_upvr.fromEvent(container_upvr.ChildAdded, function(arg1_2) -- Line 16
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local children_2 = arg1_2:IsA("RemoteFunction")
			if children_2 then
				if arg1_2.Name ~= arg1 then
					children_2 = false
				else
					children_2 = true
				end
			end
			return children_2
		end)
	end;
	promiseRemoteEvent = function(arg1) -- Line 21, Named "promiseRemoteEvent"
		--[[ Upvalues[4]:
			[1]: container_upvr (readonly)
			[2]: Promise_upvr (readonly)
			[3]: constants_upvr (readonly)
			[4]: mockRemotes_upvr (readonly)
		]]
		if container_upvr:FindFirstChild(arg1) then
			return Promise_upvr.resolve(container_upvr[arg1])
		end
		if constants_upvr.IS_EDIT then
			return Promise_upvr.resolve(mockRemotes_upvr.createMockRemoteEvent(arg1))
		end
		return Promise_upvr.fromEvent(container_upvr.ChildAdded, function(arg1_3) -- Line 30
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local children = arg1_3:IsA("RemoteEvent")
			if children then
				if arg1_3.Name ~= arg1 then
					children = false
				else
					children = true
				end
			end
			return children
		end)
	end;
	createRemoteFunction = function(arg1) -- Line 35, Named "createRemoteFunction"
		--[[ Upvalues[3]:
			[1]: container_upvr (readonly)
			[2]: constants_upvr (readonly)
			[3]: mockRemotes_upvr (readonly)
		]]
		if container_upvr:FindFirstChild(arg1) then
			return container_upvr[arg1]
		end
		if constants_upvr.IS_EDIT then
			return mockRemotes_upvr.createMockRemoteFunction(arg1)
		end
		local RemoteFunction = Instance.new("RemoteFunction")
		RemoteFunction.Name = arg1
		RemoteFunction.Parent = container_upvr
		return RemoteFunction
	end;
	createRemoteEvent = function(arg1, arg2) -- Line 51, Named "createRemoteEvent"
		--[[ Upvalues[3]:
			[1]: container_upvr (readonly)
			[2]: constants_upvr (readonly)
			[3]: mockRemotes_upvr (readonly)
		]]
		local var10
		if container_upvr:FindFirstChild(arg1) then
			var10 = container_upvr
			return var10[arg1]
		end
		var10 = constants_upvr
		if var10.IS_EDIT then
			var10 = mockRemotes_upvr
			var10 = arg1
			return var10.createMockRemoteEvent(var10)
		end
		if arg2 then
			var10 = "UnreliableRemoteEvent"
		else
			var10 = "RemoteEvent"
		end
		local any = Instance.new(var10)
		any.Name = arg1
		var10 = container_upvr
		any.Parent = var10
		return any
	end;
}