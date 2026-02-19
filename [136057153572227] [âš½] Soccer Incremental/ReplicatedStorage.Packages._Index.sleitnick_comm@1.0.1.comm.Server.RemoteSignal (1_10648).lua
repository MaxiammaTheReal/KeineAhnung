-- Name: RemoteSignal
-- Path: game:GetService("ReplicatedStorage").Packages._Index.sleitnick_comm@1.0.1.comm.Server.RemoteSignal
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7084059000044363 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:04
-- Luau version 6, Types version 3
-- Time taken: 0.007465 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
local Signal_upvr = require(script.Parent.Parent.Parent.Signal)
function module_upvr.new(arg1, arg2, arg3, arg4, arg5) -- Line 27
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: Signal_upvr (readonly)
	]]
	local tbl = {}
	local setmetatable_result1_upvr_2 = setmetatable(tbl, module_upvr)
	if arg3 == true then
		tbl = Instance.new("UnreliableRemoteEvent")
	else
		tbl = Instance.new("RemoteEvent")
	end
	setmetatable_result1_upvr_2._re = tbl
	setmetatable_result1_upvr_2._re.Name = arg2
	setmetatable_result1_upvr_2._re.Parent = arg1
	if arg5 then
		if 0 < #arg5 then
			setmetatable_result1_upvr_2._hasOutbound = true
			setmetatable_result1_upvr_2._outbound = arg5
			-- KONSTANTWARNING: GOTO [43] #29
		end
	end
	setmetatable_result1_upvr_2._hasOutbound = false
	if arg4 then
		if 0 < #arg4 then
			setmetatable_result1_upvr_2._directConnect = false
			setmetatable_result1_upvr_2._signal = Signal_upvr.new()
			setmetatable_result1_upvr_2._re.OnServerEvent:Connect(function(arg1_3, ...) -- Line 47
				--[[ Upvalues[2]:
					[1]: arg4 (readonly)
					[2]: setmetatable_result1_upvr_2 (readonly)
				]]
				local packed_2 = table.pack(...)
				for _, v in arg4 do
					if not table.pack(v(arg1_3, packed_2))[1] then return end
					packed_2.n = #packed_2
				end
				setmetatable_result1_upvr_2._signal:Fire(arg1_3, table.unpack(packed_2, 1, packed_2.n))
			end)
			return setmetatable_result1_upvr_2
		end
	end
	setmetatable_result1_upvr_2._directConnect = true
	return setmetatable_result1_upvr_2
end
function module_upvr.IsUnreliable(arg1) -- Line 69
	return arg1._re:IsA("UnreliableRemoteEvent")
end
function module_upvr.Connect(arg1, arg2) -- Line 80
	if arg1._directConnect then
		return arg1._re.OnServerEvent:Connect(arg2)
	end
	return arg1._signal:Connect(arg2)
end
function module_upvr._processOutboundMiddleware(arg1, arg2, ...) -- Line 88
	if not arg1._hasOutbound then
		return ...
	end
	local packed_3 = table.pack(...)
	for _, v_2 in arg1._outbound do
		local packed = table.pack(v_2(arg2, packed_3))
		if not packed[1] then
			return table.unpack(packed, 2, packed.n)
		end
		packed_3.n = #packed_3
	end
	return table.unpack(packed_3, 1, packed_3.n)
end
function module_upvr.Fire(arg1, arg2, ...) -- Line 113
	arg1._re:FireClient(arg2, arg1:_processOutboundMiddleware(arg2, ...))
end
function module_upvr.FireAll(arg1, ...) -- Line 126
	arg1._re:FireAllClients(arg1:_processOutboundMiddleware(nil, ...))
end
function module_upvr.FireExcept(arg1, arg2, ...) -- Line 141
	arg1:FireFilter(function(arg1_4) -- Line 142
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local var20
		if arg1_4 == arg2 then
			var20 = false
		else
			var20 = true
		end
		return var20
	end, ...)
end
local Players_upvr = game:GetService("Players")
function module_upvr.FireFilter(arg1, arg2, ...) -- Line 171
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	for _, v_3 in Players_upvr:GetPlayers() do
		if arg2(v_3, ...) then
			arg1._re:FireClient(v_3, arg1:_processOutboundMiddleware(nil, ...))
		end
	end
end
function module_upvr.FireFor(arg1, arg2, ...) -- Line 195
	for _, v_4 in arg2 do
		arg1._re:FireClient(v_4, arg1:_processOutboundMiddleware(nil, ...))
	end
end
function module_upvr.Destroy(arg1) -- Line 204
	arg1._re:Destroy()
	if arg1._signal then
		arg1._signal:Destroy()
	end
end
return module_upvr