-- Name: Network
-- Path: game:GetService("ReplicatedStorage").Client.Network
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5409164000011515 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:15:47
-- Luau version 6, Types version 3
-- Time taken: 0.005092 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local var3_upvw = 64
local var4_upvw = 0
local var5_upvw = 0
local buffer_create_result1_upvw = buffer.create(64)
local tbl_2_upvw = {}
local var8_upvw = 0
local buffer_create_result1_3_upvw = buffer.create(64)
local tbl_3_upvw = {}
local var11_upvw = 0
local function _(arg1) -- Line 46, Named "Read"
	--[[ Upvalues[1]:
		[1]: var8_upvw (read and write)
	]]
	var8_upvw += arg1
	return var8_upvw
end
local function _() -- Line 52, Named "Save"
	--[[ Upvalues[4]:
		[1]: var3_upvw (read and write)
		[2]: var5_upvw (read and write)
		[3]: buffer_create_result1_upvw (read and write)
		[4]: tbl_2_upvw (read and write)
	]]
	return {
		Size = var3_upvw;
		Cursor = var5_upvw;
		Buffer = buffer_create_result1_upvw;
		Instances = tbl_2_upvw;
	}
end
local function _(arg1) -- Line 61, Named "Load"
	--[[ Upvalues[5]:
		[1]: var3_upvw (read and write)
		[2]: var5_upvw (read and write)
		[3]: var4_upvw (read and write)
		[4]: buffer_create_result1_upvw (read and write)
		[5]: tbl_2_upvw (read and write)
	]]
	if arg1 then
		var3_upvw = arg1.Size
		var5_upvw = arg1.Cursor
		var4_upvw = arg1.Cursor
		buffer_create_result1_upvw = arg1.Buffer
		tbl_2_upvw = arg1.Instances
	else
		var3_upvw = 64
		var5_upvw = 0
		var4_upvw = 0
		buffer_create_result1_upvw = buffer.create(64)
		tbl_2_upvw = {}
	end
end
local var13_upvw = 0
local function _() -- Line 78, Named "Invoke"
	--[[ Upvalues[1]:
		[1]: var13_upvw (read and write)
	]]
	if var13_upvw == 255 then
		var13_upvw = 0
	end
	var13_upvw += 1
	return var13_upvw
end
local function _(arg1) -- Line 88, Named "Allocate"
	--[[ Upvalues[4]:
		[1]: var5_upvw (read and write)
		[2]: var3_upvw (read and write)
		[3]: buffer_create_result1_upvw (read and write)
		[4]: var4_upvw (read and write)
	]]
	local var14 = var5_upvw + arg1
	if var3_upvw < var14 then
		while var3_upvw < var14 do
			var3_upvw *= 1.5
		end
		local buffer_create_result1 = buffer.create(var3_upvw)
		buffer.copy(buffer_create_result1, 0, buffer_create_result1_upvw, 0, var5_upvw)
		buffer_create_result1_upvw = buffer_create_result1
	end
	var4_upvw = var5_upvw
	var5_upvw += arg1
	return var4_upvw
end
local function _() -- Line 107, Named "CreateQueue"
	return {
		head = nil;
		tail = nil;
	}
end
local function _(arg1) -- Line 114, Named "Pop"
	local head = arg1.head
	if head == nil then return end
	arg1.head = head.next
	return head.value
end
local function _(arg1, arg2) -- Line 124, Named "Push"
	local tbl = {}
	tbl.value = arg2
	tbl.next = nil
	if arg1.tail ~= nil then
		arg1.tail.next = tbl
	end
	arg1.tail = tbl
	if arg1.head == nil then
		arg1.head = tbl
	end
end
local _ = {
	Reliable = table.create(256);
	Unreliable = table.create(256);
}
local _ = {
	Reliable = table.create(256);
	Unreliable = table.create(256);
}
if not RunService:IsRunning() then
	local function _() -- Line 154
	end
	return table.freeze({})
end
if not RunService:IsClient() then
	error("Client network module can only be required from the client.")
end
local BLINK_RELIABLE_REMOTE_upvr = ReplicatedStorage:WaitForChild("BLINK_RELIABLE_REMOTE")
local function StepReplication() -- Line 167
	--[[ Upvalues[6]:
		[1]: var5_upvw (read and write)
		[2]: buffer_create_result1_upvw (read and write)
		[3]: BLINK_RELIABLE_REMOTE_upvr (readonly)
		[4]: tbl_2_upvw (read and write)
		[5]: var3_upvw (read and write)
		[6]: var4_upvw (read and write)
	]]
	if var5_upvw <= 0 then
	else
		local buffer_create_result1_2 = buffer.create(var5_upvw)
		buffer.copy(buffer_create_result1_2, 0, buffer_create_result1_upvw, 0, var5_upvw)
		BLINK_RELIABLE_REMOTE_upvr:FireServer(buffer_create_result1_2, tbl_2_upvw)
		var3_upvw = 64
		var5_upvw = 0
		var4_upvw = 0
		buffer_create_result1_upvw = buffer.create(64)
		table.clear(tbl_2_upvw)
	end
end
RunService.Heartbeat:Connect(StepReplication)
BLINK_RELIABLE_REMOTE_upvr.OnClientEvent:Connect(function(arg1, arg2) -- Line 183
	--[[ Upvalues[4]:
		[1]: var8_upvw (read and write)
		[2]: buffer_create_result1_3_upvw (read and write)
		[3]: tbl_3_upvw (read and write)
		[4]: var11_upvw (read and write)
	]]
	var8_upvw = 0
	buffer_create_result1_3_upvw = arg1
	tbl_3_upvw = arg2
	var11_upvw = 0
	while var8_upvw < buffer.len(buffer_create_result1_3_upvw) do
		var8_upvw += 1
	end
end)
ReplicatedStorage:WaitForChild("BLINK_UNRELIABLE_REMOTE").OnClientEvent:Connect(function(arg1, arg2) -- Line 195
	--[[ Upvalues[4]:
		[1]: var8_upvw (read and write)
		[2]: buffer_create_result1_3_upvw (read and write)
		[3]: tbl_3_upvw (read and write)
		[4]: var11_upvw (read and write)
	]]
	var8_upvw = 0
	buffer_create_result1_3_upvw = arg1
	tbl_3_upvw = arg2
	var11_upvw = 0
	while var8_upvw < buffer.len(buffer_create_result1_3_upvw) do
		var8_upvw += 1
	end
end)
return table.freeze({
	StepReplication = StepReplication;
})