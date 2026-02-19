-- Name: throttleMiddleware
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_remo@1.5.2.remo.middleware.throttleMiddleware
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7425967999952263 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:42
-- Luau version 6, Types version 3
-- Time taken: 0.007814 seconds

local RunService_upvr = game:GetService("RunService")
local function _(arg1, arg2) -- Line 17, Named "timeout"
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	local var3_upvw = 0
	local var4_upvw
	var4_upvw = RunService_upvr.Heartbeat:Connect(function(arg1_2) -- Line 21
		--[[ Upvalues[4]:
			[1]: var3_upvw (read and write)
			[2]: arg2 (readonly)
			[3]: var4_upvw (read and write)
			[4]: arg1 (readonly)
		]]
		var3_upvw += arg1_2
		if arg2 <= var3_upvw then
			var4_upvw:Disconnect()
			arg1()
		end
	end)
	return function() -- Line 29
		--[[ Upvalues[1]:
			[1]: var4_upvw (read and write)
		]]
		var4_upvw:Disconnect()
	end
end
local getSender_upvr = require(script.Parent.Parent.getSender)
local constants_upvr = require(script.Parent.Parent.constants)
local Promise_upvr = require(script.Parent.Parent.Promise)
local Players_upvr = game:GetService("Players")
return function(arg1) -- Line 34, Named "throttleMiddleware"
	--[[ Upvalues[5]:
		[1]: getSender_upvr (readonly)
		[2]: constants_upvr (readonly)
		[3]: RunService_upvr (readonly)
		[4]: Promise_upvr (readonly)
		[5]: Players_upvr (readonly)
	]]
	local var10_upvw = 0.1
	local var11_upvw = false
	if type(arg1) == "number" then
		var10_upvw = arg1
	elseif type(arg1) == "table" then
		if arg1.throttle ~= nil then
			var10_upvw = arg1.throttle
		end
		if arg1.trailing ~= nil then
			var11_upvw = arg1.trailing
		end
	end
	local function var12_upvr(arg1_3, arg2) -- Line 45
		--[[ Upvalues[5]:
			[1]: getSender_upvr (copied, readonly)
			[2]: constants_upvr (copied, readonly)
			[3]: var11_upvw (read and write)
			[4]: var10_upvw (read and write)
			[5]: RunService_upvr (copied, readonly)
		]]
		local tbl_upvr_3 = {}
		local tbl_upvr_4 = {}
		return function(...) -- Line 49
			--[[ Upvalues[9]:
				[1]: getSender_upvr (copied, readonly)
				[2]: tbl_upvr_3 (readonly)
				[3]: tbl_upvr_4 (readonly)
				[4]: constants_upvr (copied, readonly)
				[5]: arg2 (readonly)
				[6]: var11_upvw (copied, read and write)
				[7]: arg1_3 (readonly)
				[8]: var10_upvw (copied, read and write)
				[9]: RunService_upvr (copied, readonly)
			]]
			local var16_upvr = ...
			local getSender_upvr_result1 = getSender_upvr(var16_upvr)
			if getSender_upvr_result1 then
				var16_upvr = getSender_upvr_result1.Name
			else
				var16_upvr = "(SERVER)"
			end
			tbl_upvr_4[var16_upvr] = table.pack(...)
			if tbl_upvr_3[var16_upvr] then
				if not constants_upvr.IS_TEST and constants_upvr.IS_STUDIO then
					warn(`🔴 throttled remote '{arg2.name}' fired by '{var16_upvr}'`)
				end
				return
			end
			local function var18_upvr() -- Line 63
				--[[ Upvalues[5]:
					[1]: tbl_upvr_4 (copied, readonly)
					[2]: var16_upvr (readonly)
					[3]: tbl_upvr_3 (copied, readonly)
					[4]: var11_upvw (copied, read and write)
					[5]: arg1_3 (copied, readonly)
				]]
				local var19 = tbl_upvr_4[var16_upvr]
				tbl_upvr_3[var16_upvr] = nil
				tbl_upvr_4[var16_upvr] = nil
				if var11_upvw then
					arg1_3(table.unpack(var19, 1, var19.n))
				end
			end
			local var21_upvw = 0
			local var22_upvw
			var22_upvw = RunService_upvr.Heartbeat:Connect(function(arg1_4) -- Line 21
				--[[ Upvalues[4]:
					[1]: var21_upvw (read and write)
					[2]: var10_upvw (readonly)
					[3]: var22_upvw (read and write)
					[4]: var18_upvr (readonly)
				]]
				var21_upvw += arg1_4
				if var10_upvw <= var21_upvw then
					var22_upvw:Disconnect()
					var18_upvr()
				end
			end)
			tbl_upvr_3[var16_upvr] = function() -- Line 29
				--[[ Upvalues[1]:
					[1]: var22_upvw (read and write)
				]]
				var22_upvw:Disconnect()
			end
			return arg1_3(...)
		end
	end
	local function var24_upvr(arg1_5, arg2) -- Line 77
		--[[ Upvalues[5]:
			[1]: Promise_upvr (copied, readonly)
			[2]: Players_upvr (copied, readonly)
			[3]: getSender_upvr (copied, readonly)
			[4]: var10_upvw (read and write)
			[5]: RunService_upvr (copied, readonly)
		]]
		local tbl_upvr_6 = {}
		local tbl_upvr = {}
		local tbl_upvr_2 = {}
		local tbl_upvr_5 = {}
		local function clearCacheOnPlayerDisconnect_upvr(arg1_6) -- Line 83, Named "clearCacheOnPlayerDisconnect"
			--[[ Upvalues[6]:
				[1]: tbl_upvr_5 (readonly)
				[2]: Promise_upvr (copied, readonly)
				[3]: Players_upvr (copied, readonly)
				[4]: tbl_upvr_6 (readonly)
				[5]: tbl_upvr (readonly)
				[6]: tbl_upvr_2 (readonly)
			]]
			if tbl_upvr_5[arg1_6.Name] then
			else
				tbl_upvr_5[arg1_6.Name] = Promise_upvr.fromEvent(Players_upvr.PlayerRemoving, function(arg1_7) -- Line 88
					--[[ Upvalues[1]:
						[1]: arg1_6 (readonly)
					]]
					local var30
					if arg1_7 ~= arg1_6 then
						var30 = false
					else
						var30 = true
					end
					return var30
				end):andThen(function() -- Line 90
					--[[ Upvalues[5]:
						[1]: tbl_upvr_6 (copied, readonly)
						[2]: arg1_6 (readonly)
						[3]: tbl_upvr (copied, readonly)
						[4]: tbl_upvr_2 (copied, readonly)
						[5]: tbl_upvr_5 (copied, readonly)
					]]
					tbl_upvr_6[arg1_6.Name] = nil
					tbl_upvr[arg1_6.Name] = nil
					tbl_upvr_2[arg1_6.Name] = nil
					tbl_upvr_5[arg1_6.Name] = nil
				end)
			end
		end
		return function(...) -- Line 98
			--[[ Upvalues[9]:
				[1]: getSender_upvr (copied, readonly)
				[2]: tbl_upvr_6 (readonly)
				[3]: tbl_upvr_2 (readonly)
				[4]: clearCacheOnPlayerDisconnect_upvr (readonly)
				[5]: tbl_upvr (readonly)
				[6]: arg2 (readonly)
				[7]: arg1_5 (readonly)
				[8]: var10_upvw (copied, read and write)
				[9]: RunService_upvr (copied, readonly)
			]]
			local var33_upvr = ...
			local var6_result1 = getSender_upvr(var33_upvr)
			if var6_result1 then
				var33_upvr = var6_result1.Name
			else
				var33_upvr = "(SERVER)"
			end
			if var6_result1 then
				clearCacheOnPlayerDisconnect_upvr(var6_result1)
			end
			if tbl_upvr_6[var33_upvr] or tbl_upvr_2[var33_upvr] then
				local assert_result1 = assert(tbl_upvr[var33_upvr], `🔴 throttled remote '{arg2.name}' requested by '{var33_upvr}'`)
				return table.unpack(assert_result1, 1, assert_result1.n)
			end
			tbl_upvr_2[var33_upvr] = true
			local pcall_result1, pcall_result2 = pcall(function(...) -- Line 119
				--[[ Upvalues[1]:
					[1]: arg1_5 (copied, readonly)
				]]
				return table.pack(arg1_5(...))
			end, ...)
			tbl_upvr_2[var33_upvr] = nil
			local function var39_upvr() -- Line 125
				--[[ Upvalues[2]:
					[1]: tbl_upvr_6 (copied, readonly)
					[2]: var33_upvr (readonly)
				]]
				tbl_upvr_6[var33_upvr] = nil
			end
			local var41_upvw = 0
			local var42_upvw
			var42_upvw = RunService_upvr.Heartbeat:Connect(function(arg1_8) -- Line 21
				--[[ Upvalues[4]:
					[1]: var41_upvw (read and write)
					[2]: var10_upvw (readonly)
					[3]: var42_upvw (read and write)
					[4]: var39_upvr (readonly)
				]]
				var41_upvw += arg1_8
				if var10_upvw <= var41_upvw then
					var42_upvw:Disconnect()
					var39_upvr()
				end
			end)
			tbl_upvr_6[var33_upvr] = function() -- Line 29
				--[[ Upvalues[1]:
					[1]: var42_upvw (read and write)
				]]
				var42_upvw:Disconnect()
			end
			var39_upvr = pcall_result2
			assert(pcall_result1, var39_upvr)
			tbl_upvr[var33_upvr] = pcall_result2
			var39_upvr = 1
			return table.unpack(pcall_result2, var39_upvr, pcall_result2.n)
		end
	end
	return function(arg1_9, arg2) -- Line 137
		--[[ Upvalues[2]:
			[1]: var12_upvr (readonly)
			[2]: var24_upvr (readonly)
		]]
		if arg2.type == "event" then
			return var12_upvr(arg1_9, arg2)
		end
		if arg2.type == "function" then
			return var24_upvr(arg1_9, arg2)
		end
		return arg1_9
	end
end