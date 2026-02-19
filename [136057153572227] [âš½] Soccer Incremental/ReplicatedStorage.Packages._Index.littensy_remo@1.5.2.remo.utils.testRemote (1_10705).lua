-- Name: testRemote
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_remo@1.5.2.remo.utils.testRemote
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6670226999995066 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:48
-- Luau version 6, Types version 3
-- Time taken: 0.003978 seconds

local getSender_upvr = require(script.Parent.Parent.getSender)
local function noop_upvr() -- Line 4, Named "noop"
end
return {
	createTestRemote = function() -- Line 6, Named "createTestRemote"
		--[[ Upvalues[1]:
			[1]: getSender_upvr (readonly)
		]]
		local tbl_upvr = {}
		local var5_upvw = 0
		local function disconnectAll(arg1) -- Line 32
			--[[ Upvalues[1]:
				[1]: tbl_upvr (readonly)
			]]
			table.clear(tbl_upvr)
		end
		return {
			_fire = function(arg1, arg2, ...) -- Line 10, Named "fire"
				--[[ Upvalues[2]:
					[1]: getSender_upvr (copied, readonly)
					[2]: tbl_upvr (readonly)
				]]
				for _, v in tbl_upvr do
					if getSender_upvr(arg2) then
						v(...)
					else
						v(arg2, ...)
					end
				end
			end;
			onFire = function(arg1, arg2) -- Line 22, Named "onFire"
				--[[ Upvalues[2]:
					[1]: var5_upvw (read and write)
					[2]: tbl_upvr (readonly)
				]]
				local var6_upvr = var5_upvw
				var5_upvw += 1
				tbl_upvr[var6_upvr] = arg2
				return function() -- Line 27
					--[[ Upvalues[2]:
						[1]: tbl_upvr (copied, readonly)
						[2]: var6_upvr (readonly)
					]]
					tbl_upvr[var6_upvr] = nil
				end
			end;
			disconnectAll = disconnectAll;
		}
	end;
	createTestAsyncRemote = function() -- Line 45, Named "createTestAsyncRemote"
		--[[ Upvalues[2]:
			[1]: noop_upvr (readonly)
			[2]: getSender_upvr (readonly)
		]]
		local var9_upvw = noop_upvr
		return {
			_request = function(arg1, arg2, ...) -- Line 48, Named "request"
				--[[ Upvalues[2]:
					[1]: getSender_upvr (copied, readonly)
					[2]: var9_upvw (read and write)
				]]
				if getSender_upvr(arg2) then
					return var9_upvw(...)
				end
				return var9_upvw(arg2, ...)
			end;
			handleRequest = function(arg1, arg2) -- Line 52, Named "handleRequest"
				--[[ Upvalues[1]:
					[1]: var9_upvw (read and write)
				]]
				var9_upvw = arg2
			end;
			hasRequestHandler = function() -- Line 56, Named "hasRequestHandler"
				--[[ Upvalues[2]:
					[1]: var9_upvw (read and write)
					[2]: noop_upvr (copied, readonly)
				]]
				local var10
				if var9_upvw == noop_upvr then
					var10 = false
				else
					var10 = true
				end
				return var10
			end;
			disconnectAll = function() -- Line 60, Named "disconnectAll"
				--[[ Upvalues[2]:
					[1]: var9_upvw (read and write)
					[2]: noop_upvr (copied, readonly)
				]]
				var9_upvw = noop_upvr
			end;
		}
	end;
}