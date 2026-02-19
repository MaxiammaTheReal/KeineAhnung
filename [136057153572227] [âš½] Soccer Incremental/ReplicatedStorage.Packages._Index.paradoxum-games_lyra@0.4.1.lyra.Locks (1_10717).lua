-- Name: Locks
-- Path: game:GetService("ReplicatedStorage").Packages._Index['paradoxum-games_lyra@0'].4.1.lyra.Locks
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6888510999997379 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:56
-- Luau version 6, Types version 3
-- Time taken: 0.010747 seconds

local hashMapRetry_upvr = require(script.Parent.hashMapRetry)
local HttpService_upvr = game:GetService("HttpService")
local Promise_upvr = require(script.Parent.Promise)
return {
	acquireLock = function(arg1) -- Line 27, Named "acquireLock"
		--[[ Upvalues[3]:
			[1]: HttpService_upvr (readonly)
			[2]: hashMapRetry_upvr (readonly)
			[3]: Promise_upvr (readonly)
		]]
		local any_GenerateGUID_result1_upvr = HttpService_upvr:GenerateGUID(false)
		local tbl_2_upvr = {}
		local var6_upvw
		local var7_upvw
		local var8_upvw
		local var9_upvw
		local storeContext_upvr = arg1.storeContext
		local key_upvr = arg1.key
		local any_extend_result1_upvr = storeContext_upvr.logger:extend({
			method = "acquireLock";
			key = key_upvr;
			lockId = any_GenerateGUID_result1_upvr;
		})
		local function _(arg1_2) -- Line 40, Named "transitionTo"
			--[[ Upvalues[2]:
				[1]: any_extend_result1_upvr (readonly)
				[2]: var8_upvw (read and write)
			]]
			any_extend_result1_upvr:log("trace", `lock transition: {var8_upvw} -> {arg1_2}`)
			var8_upvw = arg1_2
		end
		local function spawnExpiryCallbacks_upvr() -- Line 45, Named "spawnExpiryCallbacks"
			--[[ Upvalues[2]:
				[1]: var8_upvw (read and write)
				[2]: tbl_2_upvr (readonly)
			]]
			if var8_upvw == "held" then
				for _, v in tbl_2_upvr do
					task.spawn(v)
				end
			end
		end
		local function tryUpdate_upvr(arg1_3) -- Line 53, Named "tryUpdate"
			--[[ Upvalues[8]:
				[1]: any_extend_result1_upvr (readonly)
				[2]: any_GenerateGUID_result1_upvr (readonly)
				[3]: hashMapRetry_upvr (copied, readonly)
				[4]: storeContext_upvr (readonly)
				[5]: key_upvr (readonly)
				[6]: var9_upvw (read and write)
				[7]: var6_upvw (read and write)
				[8]: spawnExpiryCallbacks_upvr (readonly)
			]]
			any_extend_result1_upvr:log("trace", `attempting update with ttl {arg1_3}`)
			local function transformFunction_upvr(arg1_4) -- Line 55, Named "transformFunction"
				--[[ Upvalues[1]:
					[1]: any_GenerateGUID_result1_upvr (copied, readonly)
				]]
				if arg1_4 == nil or arg1_4 == any_GenerateGUID_result1_upvr then
					return any_GenerateGUID_result1_upvr
				end
				return nil
			end
			local var1_result1 = hashMapRetry_upvr(function() -- Line 62
				--[[ Upvalues[4]:
					[1]: storeContext_upvr (copied, readonly)
					[2]: key_upvr (copied, readonly)
					[3]: transformFunction_upvr (readonly)
					[4]: arg1_3 (readonly)
				]]
				return storeContext_upvr.lockHashMap:UpdateAsync(key_upvr, transformFunction_upvr, arg1_3)
			end)
			var1_result1.promise:tap(function(arg1_5) -- Line 66
				--[[ Upvalues[4]:
					[1]: var9_upvw (copied, read and write)
					[2]: arg1_3 (readonly)
					[3]: var6_upvw (copied, read and write)
					[4]: spawnExpiryCallbacks_upvr (copied, readonly)
				]]
				if arg1_5 ~= nil then
					var9_upvw = os.clock() + arg1_3 - 0.2
					if var6_upvw then
						task.cancel(var6_upvw)
					end
					if 0 < arg1_3 then
						var6_upvw = task.delay(arg1_3, spawnExpiryCallbacks_upvr)
					end
				end
			end)
			return var1_result1
		end
		local function release_upvr() -- Line 83, Named "release"
			--[[ Upvalues[7]:
				[1]: any_extend_result1_upvr (readonly)
				[2]: var8_upvw (read and write)
				[3]: Promise_upvr (copied, readonly)
				[4]: var6_upvw (read and write)
				[5]: var7_upvw (read and write)
				[6]: var9_upvw (read and write)
				[7]: tryUpdate_upvr (readonly)
			]]
			any_extend_result1_upvr:log("trace", "releasing lock")
			if var8_upvw ~= "held" then
				any_extend_result1_upvr:log("trace", "release already called")
				return Promise_upvr.resolve()
			end
			any_extend_result1_upvr:log("trace", `lock transition: {var8_upvw} -> released`)
			var8_upvw = "released"
			if var6_upvw then
				task.cancel(var6_upvw)
				var6_upvw = nil
			end
			if var7_upvw then
				var7_upvw:cancel()
				var7_upvw = nil
			end
			local var19 = var9_upvw
			if var19 then
				if os.clock() >= var9_upvw then
					var19 = false
				else
					var19 = true
				end
			end
			if var19 then
				return tryUpdate_upvr(0).promise
			end
			return Promise_upvr.resolve()
		end
		local function _() -- Line 171, Named "setupLockRefresh"
			--[[ Upvalues[6]:
				[1]: any_extend_result1_upvr (readonly)
				[2]: var7_upvw (read and write)
				[3]: Promise_upvr (copied, readonly)
				[4]: var8_upvw (read and write)
				[5]: arg1 (readonly)
				[6]: tryUpdate_upvr (readonly)
			]]
			any_extend_result1_upvr:log("trace", "setting up lock refresh")
			local var34_upvw
			var7_upvw = Promise_upvr.new(function(arg1_8, arg2, arg3) -- Line 176
				--[[ Upvalues[5]:
					[1]: var34_upvw (read and write)
					[2]: var8_upvw (copied, read and write)
					[3]: arg1 (copied, readonly)
					[4]: tryUpdate_upvr (copied, readonly)
					[5]: any_extend_result1_upvr (copied, readonly)
				]]
				arg3(function() -- Line 177
					--[[ Upvalues[1]:
						[1]: var34_upvw (copied, read and write)
					]]
					if var34_upvw then
						var34_upvw.cancel()
					end
				end)
				task.spawn(function() -- Line 183
					--[[ Upvalues[7]:
						[1]: var8_upvw (copied, read and write)
						[2]: arg1 (copied, readonly)
						[3]: arg3 (readonly)
						[4]: var34_upvw (copied, read and write)
						[5]: tryUpdate_upvr (copied, readonly)
						[6]: any_extend_result1_upvr (copied, readonly)
						[7]: arg1_8 (readonly)
					]]
					-- KONSTANTERROR: [58] 46. Error Block 10 start (CF ANALYSIS FAILED)
					-- KONSTANTERROR: [58] 46. Error Block 10 end (CF ANALYSIS FAILED)
					-- KONSTANTERROR: [0] 1. Error Block 15 start (CF ANALYSIS FAILED)
					-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [58.0]
					-- KONSTANTERROR: [0] 1. Error Block 15 end (CF ANALYSIS FAILED)
				end)
			end)
		end
		local module_upvr = {
			release = release_upvr;
			isLocked = function() -- Line 213, Named "isLocked"
				--[[ Upvalues[2]:
					[1]: var8_upvw (read and write)
					[2]: var9_upvw (read and write)
				]]
				local var38 = false
				if var8_upvw == "held" then
					if os.clock() >= (var9_upvw or 0) then
						var38 = false
					else
						var38 = true
					end
				end
				return var38
			end;
			onLockLost = function(arg1_9) -- Line 216, Named "onLockLost"
				--[[ Upvalues[1]:
					[1]: tbl_2_upvr (readonly)
				]]
				table.insert(tbl_2_upvr, arg1_9)
				return function() -- Line 218
					--[[ Upvalues[2]:
						[1]: tbl_2_upvr (copied, readonly)
						[2]: arg1_9 (readonly)
					]]
					local table_find_result1 = table.find(tbl_2_upvr, arg1_9)
					if table_find_result1 then
						table.remove(tbl_2_upvr, table_find_result1)
					end
				end
			end;
		}
		return (function() -- Line 110, Named "waitForLock"
			--[[ Upvalues[6]:
				[1]: any_extend_result1_upvr (readonly)
				[2]: var8_upvw (read and write)
				[3]: Promise_upvr (copied, readonly)
				[4]: release_upvr (readonly)
				[5]: arg1 (readonly)
				[6]: tryUpdate_upvr (readonly)
			]]
			any_extend_result1_upvr:log("trace", "acquiring lock")
			any_extend_result1_upvr:log("trace", `lock transition: {var8_upvw} -> acquiring`)
			var8_upvw = "acquiring"
			local var21_upvw
			local os_clock_result1_upvr = os.clock()
			local var23_upvw = 0
			return Promise_upvr.new(function(arg1_6, arg2, arg3) -- Line 119
				--[[ Upvalues[9]:
					[1]: Promise_upvr (copied, readonly)
					[2]: var21_upvw (read and write)
					[3]: release_upvr (copied, readonly)
					[4]: any_extend_result1_upvr (copied, readonly)
					[5]: os_clock_result1_upvr (readonly)
					[6]: arg1 (copied, readonly)
					[7]: var23_upvw (read and write)
					[8]: tryUpdate_upvr (copied, readonly)
					[9]: var8_upvw (copied, read and write)
				]]
				arg3(function() -- Line 120
					--[[ Upvalues[4]:
						[1]: Promise_upvr (copied, readonly)
						[2]: var21_upvw (copied, read and write)
						[3]: release_upvr (copied, readonly)
						[4]: any_extend_result1_upvr (copied, readonly)
					]]
					local any_resolve_result1 = Promise_upvr.resolve()
					if var21_upvw then
						var21_upvw.cancel()
						any_resolve_result1 = var21_upvw.promise
					end
					any_resolve_result1:finally(function() -- Line 127
						--[[ Upvalues[2]:
							[1]: release_upvr (copied, readonly)
							[2]: any_extend_result1_upvr (copied, readonly)
						]]
						release_upvr():catch(function(arg1_7) -- Line 128
							--[[ Upvalues[1]:
								[1]: any_extend_result1_upvr (copied, readonly)
							]]
							local tbl_3 = {}
							tbl_3.error = arg1_7
							any_extend_result1_upvr:log("error", "failed to unlock", tbl_3)
						end)
					end)
				end)
				task.spawn(function() -- Line 137
					--[[ Upvalues[10]:
						[1]: os_clock_result1_upvr (copied, readonly)
						[2]: arg1 (copied, readonly)
						[3]: arg3 (readonly)
						[4]: var23_upvw (copied, read and write)
						[5]: var21_upvw (copied, read and write)
						[6]: tryUpdate_upvr (copied, readonly)
						[7]: any_extend_result1_upvr (copied, readonly)
						[8]: var8_upvw (copied, read and write)
						[9]: arg1_6 (readonly)
						[10]: arg2 (readonly)
					]]
					while os.clock() - os_clock_result1_upvr < arg1.duration do
						if arg3() then return end
						var23_upvw += 1
						var21_upvw = tryUpdate_upvr(arg1.duration)
						local any_await_result1, any_await_result2 = var21_upvw.promise:await()
						var21_upvw = nil
						if any_await_result1 and any_await_result2 ~= nil then
							any_extend_result1_upvr:log("trace", `lock transition: {var8_upvw} -> held`)
							var8_upvw = "held"
							return arg1_6()
						end
						if not any_await_result1 then
							any_extend_result1_upvr:log("warn", "attempt to acquire lock failed", {
								attemptCount = var23_upvw;
								error = any_await_result2;
							})
						end
						if arg3() then return end
						task.wait(math.min(2 ^ (var23_upvw - 1), 30))
					end
					return arg2("lock remained")
				end)
			end)
		end)():andThen(function() -- Line 228
			--[[ Upvalues[7]:
				[1]: any_extend_result1_upvr (readonly)
				[2]: var7_upvw (read and write)
				[3]: Promise_upvr (copied, readonly)
				[4]: var8_upvw (read and write)
				[5]: arg1 (readonly)
				[6]: tryUpdate_upvr (readonly)
				[7]: module_upvr (readonly)
			]]
			any_extend_result1_upvr:log("trace", "setting up lock refresh")
			local var43_upvw
			var7_upvw = Promise_upvr.new(function(arg1_10, arg2, arg3) -- Line 176
				--[[ Upvalues[5]:
					[1]: var43_upvw (read and write)
					[2]: var8_upvw (copied, read and write)
					[3]: arg1 (copied, readonly)
					[4]: tryUpdate_upvr (copied, readonly)
					[5]: any_extend_result1_upvr (copied, readonly)
				]]
				arg3(function() -- Line 177
					--[[ Upvalues[1]:
						[1]: var43_upvw (copied, read and write)
					]]
					if var43_upvw then
						var43_upvw.cancel()
					end
				end)
				task.spawn(function() -- Line 183
					--[[ Upvalues[7]:
						[1]: var8_upvw (copied, read and write)
						[2]: arg1 (copied, readonly)
						[3]: arg3 (readonly)
						[4]: var43_upvw (copied, read and write)
						[5]: tryUpdate_upvr (copied, readonly)
						[6]: any_extend_result1_upvr (copied, readonly)
						[7]: arg1_10 (readonly)
					]]
					-- KONSTANTERROR: [58] 46. Error Block 10 start (CF ANALYSIS FAILED)
					-- KONSTANTERROR: [58] 46. Error Block 10 end (CF ANALYSIS FAILED)
					-- KONSTANTERROR: [0] 1. Error Block 15 start (CF ANALYSIS FAILED)
					-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [58.0]
					-- KONSTANTERROR: [0] 1. Error Block 15 end (CF ANALYSIS FAILED)
				end)
			end)
			return module_upvr
		end):catch(function(arg1_11) -- Line 232
			--[[ Upvalues[3]:
				[1]: any_extend_result1_upvr (readonly)
				[2]: release_upvr (readonly)
				[3]: Promise_upvr (copied, readonly)
			]]
			local tbl = {}
			tbl.error = arg1_11
			any_extend_result1_upvr:log("error", "failed to acquire lock", tbl)
			return release_upvr():andThen(function() -- Line 234
				--[[ Upvalues[2]:
					[1]: Promise_upvr (copied, readonly)
					[2]: arg1_11 (readonly)
				]]
				return Promise_upvr.reject(arg1_11)
			end)
		end)
	end;
	probeLockActive = function(arg1) -- Line 245, Named "probeLockActive"
		--[[ Upvalues[1]:
			[1]: hashMapRetry_upvr (readonly)
		]]
		local storeContext_upvr_2 = arg1.storeContext
		local key_upvr_2 = arg1.key
		storeContext_upvr_2.logger:extend({
			method = "probeLockActive";
			key = key_upvr_2;
		}):log("trace", "probing if lock is active")
		return hashMapRetry_upvr(function() -- Line 252
			--[[ Upvalues[2]:
				[1]: storeContext_upvr_2 (readonly)
				[2]: key_upvr_2 (readonly)
			]]
			return storeContext_upvr_2.lockHashMap:GetAsync(key_upvr_2)
		end).promise:andThen(function(arg1_12) -- Line 256
			if arg1_12 == nil then
			else
			end
			return true
		end)
	end;
}