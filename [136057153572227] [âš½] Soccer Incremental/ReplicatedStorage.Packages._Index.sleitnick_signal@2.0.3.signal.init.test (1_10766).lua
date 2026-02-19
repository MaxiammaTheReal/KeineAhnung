-- Name: init.test
-- Path: game:GetService("ReplicatedStorage").Packages._Index.sleitnick_signal@2.0.3.signal.init.test
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6297199000036926 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:37
-- Luau version 6, Types version 3
-- Time taken: 0.015114 seconds

local function AwaitCondition_upvr(arg1, arg2) -- Line 5, Named "AwaitCondition"
	while true do
		if arg1() then
			return true
		end
		if (arg2 or 10) < os.clock() - os.clock() then
			return false
		end
		task.wait()
	end
end
return function(arg1) -- Line 19
	--[[ Upvalues[1]:
		[1]: AwaitCondition_upvr (readonly)
	]]
	local Parent_upvr = require(script.Parent)
	local var3_upvw
	local function _(arg1_2) -- Line 24, Named "NumConns"
		--[[ Upvalues[1]:
			[1]: var3_upvw (read and write)
		]]
		local var4 = arg1_2
		if not var4 then
			var4 = var3_upvw
		end
		return #var4:GetConnections()
	end
	arg1:BeforeEach(function() -- Line 29
		--[[ Upvalues[2]:
			[1]: var3_upvw (read and write)
			[2]: Parent_upvr (readonly)
		]]
		var3_upvw = Parent_upvr.new()
	end)
	arg1:AfterEach(function() -- Line 33
		--[[ Upvalues[1]:
			[1]: var3_upvw (read and write)
		]]
		var3_upvw:Destroy()
	end)
	arg1:Describe("Constructor", function() -- Line 37
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: Parent_upvr (readonly)
			[3]: var3_upvw (read and write)
			[4]: AwaitCondition_upvr (copied, readonly)
		]]
		arg1:Test("should create a new signal and fire it", function() -- Line 38
			--[[ Upvalues[3]:
				[1]: arg1 (copied, readonly)
				[2]: Parent_upvr (copied, readonly)
				[3]: var3_upvw (copied, read and write)
			]]
			arg1:Expect(Parent_upvr.Is(var3_upvw)):ToBe(true)
			task.defer(function() -- Line 40
				--[[ Upvalues[1]:
					[1]: var3_upvw (copied, read and write)
				]]
				var3_upvw:Fire(10, 20)
			end)
			local any_Wait_result1, any_Wait_result2 = var3_upvw:Wait()
			arg1:Expect(any_Wait_result1):ToBe(10)
			arg1:Expect(any_Wait_result2):ToBe(20)
		end)
		arg1:Test("should create a proxy signal and connect to it", function() -- Line 48
			--[[ Upvalues[3]:
				[1]: Parent_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: AwaitCondition_upvr (copied, readonly)
			]]
			local any_Wrap_result1 = Parent_upvr.Wrap(game:GetService("RunService").Heartbeat)
			arg1:Expect(Parent_upvr.Is(any_Wrap_result1)):ToBe(true)
			local var14_upvw = false
			any_Wrap_result1:Connect(function() -- Line 52
				--[[ Upvalues[1]:
					[1]: var14_upvw (read and write)
				]]
				var14_upvw = true
			end)
			arg1:Expect(AwaitCondition_upvr(function() -- Line 55
				--[[ Upvalues[1]:
					[1]: var14_upvw (read and write)
				]]
				return var14_upvw
			end, 2)):ToBe(true)
			any_Wrap_result1:Destroy()
		end)
	end)
	arg1:Describe("FireDeferred", function() -- Line 62
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: var3_upvw (read and write)
			[3]: AwaitCondition_upvr (copied, readonly)
		]]
		arg1:Test("should be able to fire primitive argument", function() -- Line 63
			--[[ Upvalues[3]:
				[1]: var3_upvw (copied, read and write)
				[2]: arg1 (copied, readonly)
				[3]: AwaitCondition_upvr (copied, readonly)
			]]
			local var19_upvw
			var3_upvw:Connect(function(arg1_3) -- Line 66
				--[[ Upvalues[1]:
					[1]: var19_upvw (read and write)
				]]
				var19_upvw = arg1_3
			end)
			var3_upvw:FireDeferred(10)
			arg1:Expect(AwaitCondition_upvr(function() -- Line 70
				--[[ Upvalues[1]:
					[1]: var19_upvw (read and write)
				]]
				local var22
				if var19_upvw ~= 10 then
					var22 = false
				else
					var22 = true
				end
				return var22
			end, 1)):ToBe(true)
		end)
		arg1:Test("should be able to fire a reference based argument", function() -- Line 75
			--[[ Upvalues[3]:
				[1]: var3_upvw (copied, read and write)
				[2]: arg1 (copied, readonly)
				[3]: AwaitCondition_upvr (copied, readonly)
			]]
			local tbl_2_upvr = {10, 20}
			local var25_upvw
			var3_upvw:Connect(function(arg1_4) -- Line 78
				--[[ Upvalues[1]:
					[1]: var25_upvw (read and write)
				]]
				var25_upvw = arg1_4
			end)
			var3_upvw:FireDeferred(tbl_2_upvr)
			arg1:Expect(AwaitCondition_upvr(function() -- Line 82
				--[[ Upvalues[2]:
					[1]: tbl_2_upvr (readonly)
					[2]: var25_upvw (read and write)
				]]
				local var28
				if tbl_2_upvr ~= var25_upvw then
					var28 = false
				else
					var28 = true
				end
				return var28
			end, 1)):ToBe(true)
		end)
	end)
	arg1:Describe("Fire", function() -- Line 88
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var3_upvw (read and write)
		]]
		arg1:Test("should be able to fire primitive argument", function() -- Line 89
			--[[ Upvalues[2]:
				[1]: var3_upvw (copied, read and write)
				[2]: arg1 (copied, readonly)
			]]
			local var31_upvw
			var3_upvw:Connect(function(arg1_5) -- Line 92
				--[[ Upvalues[1]:
					[1]: var31_upvw (read and write)
				]]
				var31_upvw = arg1_5
			end)
			var3_upvw:Fire(10)
			arg1:Expect(var31_upvw):ToBe(10)
		end)
		arg1:Test("should be able to fire a reference based argument", function() -- Line 99
			--[[ Upvalues[2]:
				[1]: var3_upvw (copied, read and write)
				[2]: arg1 (copied, readonly)
			]]
			local tbl = {10, 20}
			local var35_upvw
			var3_upvw:Connect(function(arg1_6) -- Line 102
				--[[ Upvalues[1]:
					[1]: var35_upvw (read and write)
				]]
				var35_upvw = arg1_6
			end)
			var3_upvw:Fire(tbl)
			arg1:Expect(var35_upvw):ToBe(tbl)
		end)
	end)
	arg1:Describe("ConnectOnce", function() -- Line 110
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var3_upvw (read and write)
		]]
		arg1:Test("should only capture first fire", function() -- Line 111
			--[[ Upvalues[2]:
				[1]: var3_upvw (copied, read and write)
				[2]: arg1 (copied, readonly)
			]]
			local var39_upvw
			local any_ConnectOnce_result1 = var3_upvw:ConnectOnce(function(arg1_7) -- Line 113
				--[[ Upvalues[1]:
					[1]: var39_upvw (read and write)
				]]
				var39_upvw = arg1_7
			end)
			arg1:Expect(any_ConnectOnce_result1.Connected):ToBe(true)
			var3_upvw:Fire(10)
			arg1:Expect(any_ConnectOnce_result1.Connected):ToBe(false)
			var3_upvw:Fire(20)
			arg1:Expect(var39_upvw):ToBe(10)
		end)
	end)
	arg1:Describe("Wait", function() -- Line 124
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var3_upvw (read and write)
		]]
		arg1:Test("should be able to wait for a signal to fire", function() -- Line 125
			--[[ Upvalues[2]:
				[1]: var3_upvw (copied, read and write)
				[2]: arg1 (copied, readonly)
			]]
			task.defer(function() -- Line 126
				--[[ Upvalues[1]:
					[1]: var3_upvw (copied, read and write)
				]]
				var3_upvw:Fire(10, 20, 30)
			end)
			local any_Wait_result1_2, any_Wait_result2_2, any_Wait_result3 = var3_upvw:Wait()
			arg1:Expect(any_Wait_result1_2):ToBe(10)
			arg1:Expect(any_Wait_result2_2):ToBe(20)
			arg1:Expect(any_Wait_result3):ToBe(30)
		end)
	end)
	arg1:Describe("DisconnectAll", function() -- Line 136
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var3_upvw (read and write)
		]]
		arg1:Test("should disconnect all connections", function() -- Line 137
			--[[ Upvalues[2]:
				[1]: var3_upvw (copied, read and write)
				[2]: arg1 (copied, readonly)
			]]
			var3_upvw:Connect(function() -- Line 138
			end)
			var3_upvw:Connect(function() -- Line 139
			end)
			local var52
			if not var52 then
				var52 = var3_upvw
			end
			arg1:Expect(#var52:GetConnections()):ToBe(2)
			var3_upvw:DisconnectAll()
			local var53
			if not var53 then
				var53 = var3_upvw
			end
			arg1:Expect(#var53:GetConnections()):ToBe(0)
		end)
	end)
	arg1:Describe("Disconnect", function() -- Line 146
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: var3_upvw (read and write)
			[3]: AwaitCondition_upvr (copied, readonly)
		]]
		arg1:Test("should disconnect connection", function() -- Line 147
			--[[ Upvalues[2]:
				[1]: var3_upvw (copied, read and write)
				[2]: arg1 (copied, readonly)
			]]
			local var57
			if not var57 then
				var57 = var3_upvw
			end
			arg1:Expect(#var57:GetConnections()):ToBe(1)
			var3_upvw:Connect(function() -- Line 148
			end):Disconnect()
			local var58
			if not var58 then
				var58 = var3_upvw
			end
			arg1:Expect(#var58:GetConnections()):ToBe(0)
		end)
		arg1:Test("should still work if connections disconnected while firing", function() -- Line 154
			--[[ Upvalues[2]:
				[1]: var3_upvw (copied, read and write)
				[2]: arg1 (copied, readonly)
			]]
			local var60_upvw = 0
			var3_upvw:Connect(function() -- Line 157
				--[[ Upvalues[1]:
					[1]: var60_upvw (read and write)
				]]
				var60_upvw += 1
			end)
			local var63_upvw
			var63_upvw = var3_upvw:Connect(function() -- Line 160
				--[[ Upvalues[2]:
					[1]: var63_upvw (read and write)
					[2]: var60_upvw (read and write)
				]]
				var63_upvw:Disconnect()
				var60_upvw += 1
			end)
			var3_upvw:Connect(function() -- Line 164
				--[[ Upvalues[1]:
					[1]: var60_upvw (read and write)
				]]
				var60_upvw += 1
			end)
			var3_upvw:Fire()
			arg1:Expect(var60_upvw):ToBe(3)
		end)
		arg1:Test("should still work if connections disconnected while firing deferred", function() -- Line 171
			--[[ Upvalues[3]:
				[1]: var3_upvw (copied, read and write)
				[2]: arg1 (copied, readonly)
				[3]: AwaitCondition_upvr (copied, readonly)
			]]
			local var66_upvw = 0
			var3_upvw:Connect(function() -- Line 174
				--[[ Upvalues[1]:
					[1]: var66_upvw (read and write)
				]]
				var66_upvw += 1
			end)
			local var69_upvw
			var69_upvw = var3_upvw:Connect(function() -- Line 177
				--[[ Upvalues[2]:
					[1]: var69_upvw (read and write)
					[2]: var66_upvw (read and write)
				]]
				var69_upvw:Disconnect()
				var66_upvw += 1
			end)
			var3_upvw:Connect(function() -- Line 181
				--[[ Upvalues[1]:
					[1]: var66_upvw (read and write)
				]]
				var66_upvw += 1
			end)
			var3_upvw:FireDeferred()
			arg1:Expect(AwaitCondition_upvr(function() -- Line 185
				--[[ Upvalues[1]:
					[1]: var66_upvw (read and write)
				]]
				local var72
				if var66_upvw ~= 3 then
					var72 = false
				else
					var72 = true
				end
				return var72
			end)):ToBe(true)
		end)
	end)
end