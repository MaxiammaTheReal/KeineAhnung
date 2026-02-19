-- Name: Janitor
-- Path: game:GetService("ReplicatedStorage").Packages._Index.1foreverhd_topbarplus@3.4.0.topbarplus.Packages.Janitor
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7212644000028376 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:27
-- Luau version 6, Types version 3
-- Time taken: 0.017984 seconds

local function _() -- Line 26, Named "getPromiseReference"
	return false
end
local newproxy_result1_upvr = newproxy(true)
getmetatable(newproxy_result1_upvr).__tostring = function() -- Line 31
	return "IndicesReference"
end
local newproxy_result1_3_upvr = newproxy(true)
getmetatable(newproxy_result1_3_upvr).__tostring = function() -- Line 36
	return "LinkToInstanceIndex"
end
local module_upvr = {
	IGNORE_MEMORY_DEBUG = true;
	ClassName = "Janitor";
	__index = {
		CurrentlyCleaning = true;
		[newproxy_result1_upvr] = nil;
	};
}
local tbl_2_upvr = {
	["function"] = true;
	Promise = "cancel";
	RBXScriptConnection = "Disconnect";
}
function module_upvr.new() -- Line 58
	--[[ Upvalues[2]:
		[1]: newproxy_result1_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	return setmetatable({
		CurrentlyCleaning = false;
		[newproxy_result1_upvr] = nil;
	}, module_upvr)
end
function module_upvr.Is(arg1) -- Line 65
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var13 = false
	if type(arg1) == "table" then
		if getmetatable(arg1) ~= module_upvr then
			var13 = false
		else
			var13 = true
		end
	end
	return var13
end
module_upvr.is = module_upvr.Is
module_upvr.__index.Add = function(arg1, arg2, arg3, arg4) -- Line 71, Named "Add"
	--[[ Upvalues[2]:
		[1]: newproxy_result1_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
	]]
	if arg4 then
		arg1:Remove(arg4)
		local var19 = arg1[newproxy_result1_upvr]
		if not var19 then
			var19 = {}
			arg1[newproxy_result1_upvr] = var19
		end
		var19[arg4] = arg2
	end
	local var20
	if var20 == "table" and string.match(tostring(arg2), "Promise") then
		var20 = "Promise"
	end
	local var21 = arg3
	if not var21 then
		var21 = tbl_2_upvr[var20]
		if not var21 then
			var21 = "Destroy"
		end
	end
	local var22 = var21
	if type(arg2) ~= "function" then
		if not arg2[var22] then
			warn(string.format("Object %s doesn't have method %s, are you sure you want to add it? Traceback: %s", tostring(arg2), tostring(var22), debug.traceback(nil, 2)))
		end
	end
	arg1[arg2] = {var22, debug.traceback("")}
	return arg2
end
module_upvr.__index.Give = module_upvr.__index.Add
module_upvr.__index.AddPromise = function(arg1, arg2) -- Line 103, Named "AddPromise"
	local var24 = false
	if var24 then
		if not var24.is(arg2) then
			error(string.format("Invalid argument #1 to 'Janitor:AddPromise' (Promise expected, got %s (%s))", typeof(arg2), tostring(arg2)))
		end
		if arg2:getStatus() == var24.Status.Started then
			local newproxy_result1 = newproxy(false)
			local any_Add_result1_2 = arg1:Add(var24.new(function(arg1_2, arg2_2, arg3) -- Line 111
				--[[ Upvalues[1]:
					[1]: arg2 (readonly)
				]]
				if arg3(function() -- Line 112
					--[[ Upvalues[1]:
						[1]: arg2 (copied, readonly)
					]]
					arg2:cancel()
				end) then
				else
					arg1_2(arg2)
				end
			end), "cancel", newproxy_result1)
			any_Add_result1_2:finallyCall(arg1.Remove, arg1, newproxy_result1)
			return any_Add_result1_2
		end
		return arg2
	end
	return arg2
end
module_upvr.__index.GivePromise = module_upvr.__index.AddPromise
module_upvr.__index.AddObject = function(arg1, arg2) -- Line 133, Named "AddObject"
	local newproxy_result1_2 = newproxy(false)
	local var30 = false
	if var30 and var30.is(arg2) then
		if arg2:getStatus() == var30.Status.Started then
			local any_Add_result1 = arg1:Add(var30.resolve(arg2), "cancel", newproxy_result1_2)
			any_Add_result1:finallyCall(arg1.Remove, arg1, newproxy_result1_2)
			return any_Add_result1, newproxy_result1_2
		end
		return arg2
	end
	return arg1:Add(arg2, false, newproxy_result1_2), newproxy_result1_2
end
module_upvr.__index.GiveObject = module_upvr.__index.AddObject
module_upvr.__index.Remove = function(arg1, arg2) -- Line 151, Named "Remove"
	--[[ Upvalues[1]:
		[1]: newproxy_result1_upvr (readonly)
	]]
	local var37 = arg1[newproxy_result1_upvr]
	if var37 then
		local var38 = var37[arg2]
		local var39
		if var38 then
			local var40 = arg1[var38]
			var39 = var40
			if var39 then
				var39 = var40[1]
			end
			if var39 then
				if var39 == true then
					var38()
				else
					local var41 = var38[var39]
					if var41 then
						var41(var38)
					end
				end
				arg1[var38] = nil
			end
			var37[arg2] = nil
		end
	end
	return arg1
end
module_upvr.__index.Get = function(arg1, arg2) -- Line 180, Named "Get"
	--[[ Upvalues[1]:
		[1]: newproxy_result1_upvr (readonly)
	]]
	local var42 = arg1[newproxy_result1_upvr]
	if var42 then
		return var42[arg2]
	end
	return nil
end
module_upvr.__index.Cleanup = function(arg1) -- Line 188, Named "Cleanup"
	--[[ Upvalues[1]:
		[1]: newproxy_result1_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [105] 86. Error Block 37 start (CF ANALYSIS FAILED)
	local var45 = arg1[newproxy_result1_upvr]
	if var45 then
		for i in next, var45 do
			var45[i] = nil
			local _
		end
		arg1[newproxy_result1_upvr] = {}
	end
	arg1.CurrentlyCleaning = false
	-- KONSTANTERROR: [105] 86. Error Block 37 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [124] 101. Error Block 28 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [124] 101. Error Block 28 end (CF ANALYSIS FAILED)
end
module_upvr.__index.Clean = module_upvr.__index.Cleanup
module_upvr.__index.Destroy = function(arg1) -- Line 244, Named "Destroy"
	arg1:Cleanup()
end
module_upvr.__call = module_upvr.__index.Cleanup
local tbl_upvr = {
	Connected = true;
}
tbl_upvr.__index = tbl_upvr
function tbl_upvr.Disconnect(arg1) -- Line 254
	if arg1.Connected then
		arg1.Connected = false
		arg1.Connection:Disconnect()
	end
end
function tbl_upvr.__tostring(arg1) -- Line 261
	return "Disconnect<"..tostring(arg1.Connected)..'>'
end
local Heartbeat_upvr = game:GetService("RunService").Heartbeat
module_upvr.__index.LinkToInstance = function(arg1, arg2, arg3) -- Line 265, Named "LinkToInstance"
	--[[ Upvalues[3]:
		[1]: newproxy_result1_3_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: Heartbeat_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var49_upvw
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var49_upvw = false
		return newproxy(var49_upvw)
	end
	if not arg3 or not INLINED() then
	end
	if arg2.Parent ~= nil then
		var49_upvw = false
	else
		var49_upvw = true
	end
	local setmetatable_result1_upvr = setmetatable({}, tbl_upvr)
	local var51_upvw
	var51_upvw = arg2.AncestryChanged:Connect(function(arg1_3, arg2_3) -- Line 271, Named "ChangedFunction"
		--[[ Upvalues[5]:
			[1]: setmetatable_result1_upvr (readonly)
			[2]: var49_upvw (read and write)
			[3]: Heartbeat_upvr (copied, readonly)
			[4]: var51_upvw (read and write)
			[5]: arg1 (readonly)
		]]
		local Connected = setmetatable_result1_upvr.Connected
		if Connected then
			if arg2_3 ~= nil then
				Connected = false
			else
				Connected = true
			end
			var49_upvw = Connected
			Connected = var49_upvw
			if Connected then
				Connected = coroutine.wrap
				Connected = Connected(function() -- Line 277
					--[[ Upvalues[5]:
						[1]: Heartbeat_upvr (copied, readonly)
						[2]: setmetatable_result1_upvr (copied, readonly)
						[3]: var51_upvw (copied, read and write)
						[4]: arg1 (copied, readonly)
						[5]: var49_upvw (copied, read and write)
					]]
					Heartbeat_upvr:Wait()
					if not setmetatable_result1_upvr.Connected then
					else
						if not var51_upvw.Connected then
							arg1:Cleanup()
							return
						end
						while var49_upvw and var51_upvw.Connected and setmetatable_result1_upvr.Connected do
							Heartbeat_upvr:Wait()
						end
						if setmetatable_result1_upvr.Connected and var49_upvw then
							arg1:Cleanup()
						end
					end
				end)
				Connected()
			end
		end
	end)
	local var54_upvw = var51_upvw
	setmetatable_result1_upvr.Connection = var54_upvw
	if var49_upvw and setmetatable_result1_upvr.Connected then
		if arg2.Parent ~= nil then
			var49_upvw = false
		else
			var49_upvw = true
		end
		if var49_upvw then
			coroutine.wrap(function() -- Line 277
				--[[ Upvalues[5]:
					[1]: Heartbeat_upvr (copied, readonly)
					[2]: setmetatable_result1_upvr (readonly)
					[3]: var54_upvw (read and write)
					[4]: arg1 (readonly)
					[5]: var49_upvw (read and write)
				]]
				Heartbeat_upvr:Wait()
				if not setmetatable_result1_upvr.Connected then
				else
					if not var54_upvw.Connected then
						arg1:Cleanup()
						return
					end
					while var49_upvw and var54_upvw.Connected and setmetatable_result1_upvr.Connected do
						Heartbeat_upvr:Wait()
					end
					if setmetatable_result1_upvr.Connected and var49_upvw then
						arg1:Cleanup()
					end
				end
			end)()
		end
	end
	return arg1:Add(setmetatable_result1_upvr, "Disconnect", newproxy_result1_3_upvr)
end
module_upvr.__index.LinkToInstances = function(arg1, ...) -- Line 308, Named "LinkToInstances"
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local any_new_result1 = module_upvr.new()
	for _, v in ipairs({...}) do
		any_new_result1:Add(arg1:LinkToInstance(v, true), "Disconnect")
	end
	return any_new_result1
end
for i_3, v_2 in next, module_upvr.__index do
	module_upvr.__index[string.sub(string.lower(i_3), 1, 1)..string.sub(i_3, 2)] = v_2
end
return module_upvr