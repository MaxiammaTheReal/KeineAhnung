-- Name: throttleMiddleware.spec
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_remo@1.5.2.remo.middleware.throttleMiddleware.spec
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.8417680999991717 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:43
-- Luau version 6, Types version 3
-- Time taken: 0.023247 seconds

return function() -- Line 1
	local RunService_upvr = game:GetService("RunService")
	local createRemotes_upvr = require(script.Parent.Parent.createRemotes)
	local builder_upvr = require(script.Parent.Parent.builder)
	local instances_upvr = require(script.Parent.Parent.utils.instances)
	local throttleMiddleware_upvr = require(script.Parent.throttleMiddleware)
	local function _(arg1) -- Line 10, Named "pause"
		--[[ Upvalues[1]:
			[1]: RunService_upvr (readonly)
		]]
		local var8_upvw = arg1 or 1
		local var9_upvw
		local current_thread_upvr = coroutine.running()
		var9_upvw = RunService_upvr.Heartbeat:Connect(function() -- Line 15
			--[[ Upvalues[3]:
				[1]: var8_upvw (read and write)
				[2]: var9_upvw (read and write)
				[3]: current_thread_upvr (readonly)
			]]
			var8_upvw -= 1
			if var8_upvw <= 0 then
				var9_upvw:Disconnect()
				task.defer(current_thread_upvr)
			end
		end)
		coroutine.yield()
	end
	describe("event throttle", function() -- Line 26
		--[[ Upvalues[5]:
			[1]: createRemotes_upvr (readonly)
			[2]: builder_upvr (readonly)
			[3]: throttleMiddleware_upvr (readonly)
			[4]: instances_upvr (readonly)
			[5]: RunService_upvr (readonly)
		]]
		local var12_upvw
		local var13_upvw
		local var14_upvw
		local function create(arg1) -- Line 29
			--[[ Upvalues[7]:
				[1]: var12_upvw (read and write)
				[2]: createRemotes_upvr (copied, readonly)
				[3]: builder_upvr (copied, readonly)
				[4]: throttleMiddleware_upvr (copied, readonly)
				[5]: var13_upvw (read and write)
				[6]: var14_upvw (read and write)
				[7]: instances_upvr (copied, readonly)
			]]
			var12_upvw = createRemotes_upvr({
				remote = builder_upvr.remote();
			}, throttleMiddleware_upvr(arg1))
			var13_upvw = var12_upvw.remote
			var14_upvw = instances_upvr.createRemoteEvent("remote", false)
		end
		afterEach(function() -- Line 35
			--[[ Upvalues[1]:
				[1]: var12_upvw (read and write)
			]]
			var12_upvw:destroy()
		end)
		it("should throttle subsequent calls", function() -- Line 39
			--[[ Upvalues[4]:
				[1]: create (readonly)
				[2]: var13_upvw (read and write)
				[3]: var14_upvw (read and write)
				[4]: RunService_upvr (copied, readonly)
			]]
			local var18_upvw = 0
			create({
				throttle = 0;
				trailing = false;
			})
			var13_upvw:connect(function() -- Line 44
				--[[ Upvalues[1]:
					[1]: var18_upvw (read and write)
				]]
				var18_upvw += 1
			end)
			var14_upvw:FireServer()
			var14_upvw:FireServer()
			var14_upvw:FireServer()
			var14_upvw:FireServer()
			var14_upvw:FireServer()
			expect(var18_upvw).to.equal(1)
			local var22_upvw = 1
			local var23_upvw
			local current_thread_upvr_12 = coroutine.running()
			var23_upvw = RunService_upvr.Heartbeat:Connect(function() -- Line 15
				--[[ Upvalues[3]:
					[1]: var22_upvw (read and write)
					[2]: var23_upvw (read and write)
					[3]: current_thread_upvr_12 (readonly)
				]]
				var22_upvw -= 1
				if var22_upvw <= 0 then
					var23_upvw:Disconnect()
					task.defer(current_thread_upvr_12)
				end
			end)
			coroutine.yield()
			var14_upvw:FireServer()
			var14_upvw:FireServer()
			var14_upvw:FireServer()
			var14_upvw:FireServer()
			var14_upvw:FireServer()
			expect(var18_upvw).to.equal(2)
		end)
		it("should emit trailing calls", function() -- Line 61
			--[[ Upvalues[4]:
				[1]: create (readonly)
				[2]: var13_upvw (read and write)
				[3]: var14_upvw (read and write)
				[4]: RunService_upvr (copied, readonly)
			]]
			local var26_upvw = 0
			create({
				throttle = 0;
				trailing = true;
			})
			var13_upvw:connect(function() -- Line 66
				--[[ Upvalues[1]:
					[1]: var26_upvw (read and write)
				]]
				var26_upvw += 1
			end)
			var14_upvw:FireServer()
			var14_upvw:FireServer()
			var14_upvw:FireServer()
			var14_upvw:FireServer()
			var14_upvw:FireServer()
			expect(var26_upvw).to.equal(1)
			local var30_upvw = 1
			local var31_upvw
			local current_thread_upvr_14 = coroutine.running()
			var31_upvw = RunService_upvr.Heartbeat:Connect(function() -- Line 15
				--[[ Upvalues[3]:
					[1]: var30_upvw (read and write)
					[2]: var31_upvw (read and write)
					[3]: current_thread_upvr_14 (readonly)
				]]
				var30_upvw -= 1
				if var30_upvw <= 0 then
					var31_upvw:Disconnect()
					task.defer(current_thread_upvr_14)
				end
			end)
			coroutine.yield()
			expect(var26_upvw).to.equal(2)
			var14_upvw:FireServer()
			var14_upvw:FireServer()
			var14_upvw:FireServer()
			var14_upvw:FireServer()
			var14_upvw:FireServer()
			expect(var26_upvw).to.equal(3)
			local var34_upvw = 1
			local var35_upvw
			local current_thread_upvr_7 = coroutine.running()
			var35_upvw = RunService_upvr.Heartbeat:Connect(function() -- Line 15
				--[[ Upvalues[3]:
					[1]: var34_upvw (read and write)
					[2]: var35_upvw (read and write)
					[3]: current_thread_upvr_7 (readonly)
				]]
				var34_upvw -= 1
				if var34_upvw <= 0 then
					var35_upvw:Disconnect()
					task.defer(current_thread_upvr_7)
				end
			end)
			coroutine.yield()
			expect(var26_upvw).to.equal(4)
		end)
		it("should pass the latest arguments to the trailing call", function() -- Line 87
			--[[ Upvalues[4]:
				[1]: create (readonly)
				[2]: var13_upvw (read and write)
				[3]: var14_upvw (read and write)
				[4]: RunService_upvr (copied, readonly)
			]]
			local var38_upvw = 0
			local var39_upvw
			local var40_upvw
			create({
				throttle = 0;
				trailing = true;
			})
			var13_upvw:connect(function(arg1, arg2, arg3) -- Line 93
				--[[ Upvalues[3]:
					[1]: var38_upvw (read and write)
					[2]: var39_upvw (read and write)
					[3]: var40_upvw (read and write)
				]]
				var38_upvw += 1
				var39_upvw = arg2
				var40_upvw = arg3
			end)
			var14_upvw:FireServer(1, 2)
			var14_upvw:FireServer(2, 3)
			var14_upvw:FireServer(3, 4)
			var14_upvw:FireServer(4, 5)
			var14_upvw:FireServer(5, 6)
			var14_upvw:FireServer('a', 'b')
			expect(var38_upvw).to.equal(1)
			expect(var39_upvw).to.be.a("number")
			expect(var40_upvw).to.be.a("number")
			local var44_upvw = 1
			local var45_upvw
			local current_thread_upvr_5 = coroutine.running()
			var45_upvw = RunService_upvr.Heartbeat:Connect(function() -- Line 15
				--[[ Upvalues[3]:
					[1]: var44_upvw (read and write)
					[2]: var45_upvw (read and write)
					[3]: current_thread_upvr_5 (readonly)
				]]
				var44_upvw -= 1
				if var44_upvw <= 0 then
					var45_upvw:Disconnect()
					task.defer(current_thread_upvr_5)
				end
			end)
			coroutine.yield()
			expect(var38_upvw).to.equal(2)
			expect(var39_upvw).to.equal('a')
			expect(var40_upvw).to.equal('b')
			var14_upvw:FireServer('c', 'd')
			expect(var38_upvw).to.equal(3)
			expect(var39_upvw).to.equal('c')
			expect(var40_upvw).to.equal('d')
			local var48_upvw = 1
			local var49_upvw
			local current_thread_upvr_9 = coroutine.running()
			var49_upvw = RunService_upvr.Heartbeat:Connect(function() -- Line 15
				--[[ Upvalues[3]:
					[1]: var48_upvw (read and write)
					[2]: var49_upvw (read and write)
					[3]: current_thread_upvr_9 (readonly)
				]]
				var48_upvw -= 1
				if var48_upvw <= 0 then
					var49_upvw:Disconnect()
					task.defer(current_thread_upvr_9)
				end
			end)
			coroutine.yield()
			expect(var38_upvw).to.equal(4)
			expect(var39_upvw).to.equal('c')
			expect(var40_upvw).to.equal('d')
		end)
		it("should receive a throttle time as options", function() -- Line 123
			--[[ Upvalues[4]:
				[1]: create (readonly)
				[2]: var13_upvw (read and write)
				[3]: var14_upvw (read and write)
				[4]: RunService_upvr (copied, readonly)
			]]
			local var52_upvw = 0
			create(0)
			var13_upvw:connect(function() -- Line 128
				--[[ Upvalues[1]:
					[1]: var52_upvw (read and write)
				]]
				var52_upvw += 1
			end)
			var14_upvw:FireServer()
			var14_upvw:FireServer()
			var14_upvw:FireServer()
			var14_upvw:FireServer()
			var14_upvw:FireServer()
			expect(var52_upvw).to.equal(1)
			local var55_upvw = 1
			local var56_upvw
			local current_thread_upvr_11 = coroutine.running()
			var56_upvw = RunService_upvr.Heartbeat:Connect(function() -- Line 15
				--[[ Upvalues[3]:
					[1]: var55_upvw (read and write)
					[2]: var56_upvw (read and write)
					[3]: current_thread_upvr_11 (readonly)
				]]
				var55_upvw -= 1
				if var55_upvw <= 0 then
					var56_upvw:Disconnect()
					task.defer(current_thread_upvr_11)
				end
			end)
			coroutine.yield()
			var14_upvw:FireServer()
			var14_upvw:FireServer()
			var14_upvw:FireServer()
			var14_upvw:FireServer()
			var14_upvw:FireServer()
			expect(var52_upvw).to.equal(2)
		end)
	end)
	describe("async throttle", function() -- Line 146
		--[[ Upvalues[5]:
			[1]: createRemotes_upvr (readonly)
			[2]: builder_upvr (readonly)
			[3]: throttleMiddleware_upvr (readonly)
			[4]: instances_upvr (readonly)
			[5]: RunService_upvr (readonly)
		]]
		local var59_upvw
		local var60_upvw
		local var61_upvw
		local function create_upvr(arg1) -- Line 149, Named "create"
			--[[ Upvalues[7]:
				[1]: var59_upvw (read and write)
				[2]: createRemotes_upvr (copied, readonly)
				[3]: builder_upvr (copied, readonly)
				[4]: throttleMiddleware_upvr (copied, readonly)
				[5]: var60_upvw (read and write)
				[6]: var61_upvw (read and write)
				[7]: instances_upvr (copied, readonly)
			]]
			var59_upvw = createRemotes_upvr({
				remote = builder_upvr.remote().returns();
			}, throttleMiddleware_upvr(arg1))
			var60_upvw = var59_upvw.remote
			var61_upvw = instances_upvr.createRemoteFunction("remote")
		end
		local function _(arg1) -- Line 155, Named "didYield"
			local var63_upvw = true
			local var64_upvw
			local var65_upvw
			local function var66() -- Line 159
				--[[ Upvalues[4]:
					[1]: var64_upvw (read and write)
					[2]: var65_upvw (read and write)
					[3]: arg1 (readonly)
					[4]: var63_upvw (read and write)
				]]
				local pcall_result1, pcall_result2_5 = pcall(arg1)
				var64_upvw = pcall_result1
				var65_upvw = pcall_result2_5
				var63_upvw = false
			end
			task.spawn(var66)
			var66 = var64_upvw
			local var69 = var66
			if not var69 then
				if var64_upvw ~= nil then
					var69 = false
				else
					var69 = true
				end
			end
			assert(var69, var65_upvw)
			return var63_upvw
		end
		afterEach(function() -- Line 169
			--[[ Upvalues[1]:
				[1]: var59_upvw (read and write)
			]]
			var59_upvw:destroy()
		end)
		it("should throttle subsequent calls", function() -- Line 173
			--[[ Upvalues[4]:
				[1]: create_upvr (readonly)
				[2]: var60_upvw (read and write)
				[3]: var61_upvw (read and write)
				[4]: RunService_upvr (copied, readonly)
			]]
			local var72_upvw = 0
			create_upvr({
				throttle = 0;
			})
			var60_upvw:onRequest(function() -- Line 178
				--[[ Upvalues[1]:
					[1]: var72_upvw (read and write)
				]]
				var72_upvw += 1
			end)
			var61_upvw:InvokeServer()
			var61_upvw:InvokeServer()
			var61_upvw:InvokeServer()
			var61_upvw:InvokeServer()
			var61_upvw:InvokeServer()
			expect(var72_upvw).to.equal(1)
			local var76_upvw = 1
			local var77_upvw
			local current_thread_upvr_13 = coroutine.running()
			var77_upvw = RunService_upvr.Heartbeat:Connect(function() -- Line 15
				--[[ Upvalues[3]:
					[1]: var76_upvw (read and write)
					[2]: var77_upvw (read and write)
					[3]: current_thread_upvr_13 (readonly)
				]]
				var76_upvw -= 1
				if var76_upvw <= 0 then
					var77_upvw:Disconnect()
					task.defer(current_thread_upvr_13)
				end
			end)
			coroutine.yield()
			var61_upvw:InvokeServer()
			var61_upvw:InvokeServer()
			var61_upvw:InvokeServer()
			var61_upvw:InvokeServer()
			var61_upvw:InvokeServer()
			expect(var72_upvw).to.equal(2)
		end)
		it("should return the cached value when throttled", function() -- Line 195
			--[[ Upvalues[4]:
				[1]: create_upvr (readonly)
				[2]: var60_upvw (read and write)
				[3]: var61_upvw (read and write)
				[4]: RunService_upvr (copied, readonly)
			]]
			create_upvr({
				throttle = 0;
			})
			local var84_upvw = 0
			var60_upvw:onRequest(function() -- Line 200
				--[[ Upvalues[1]:
					[1]: var84_upvw (read and write)
				]]
				var84_upvw += 1
				return var84_upvw
			end)
			expect(var61_upvw:InvokeServer()).to.equal(1)
			for _ = 1, 5 do
				expect(var61_upvw:InvokeServer()).to.equal(1)
			end
			local var86_upvw = 1
			local var87_upvw
			local current_thread_upvr_10 = coroutine.running()
			var87_upvw = RunService_upvr.Heartbeat:Connect(function() -- Line 15
				--[[ Upvalues[3]:
					[1]: var86_upvw (read and write)
					[2]: var87_upvw (read and write)
					[3]: current_thread_upvr_10 (readonly)
				]]
				var86_upvw -= 1
				if var86_upvw <= 0 then
					var87_upvw:Disconnect()
					task.defer(current_thread_upvr_10)
				end
			end)
			coroutine.yield()
			expect(var61_upvw:InvokeServer()).to.equal(2)
			for _ = 1, 5 do
				expect(var61_upvw:InvokeServer()).to.equal(2)
			end
		end)
		it("should throw if the initial cache is not ready", function() -- Line 218
			--[[ Upvalues[4]:
				[1]: create_upvr (readonly)
				[2]: var60_upvw (read and write)
				[3]: RunService_upvr (copied, readonly)
				[4]: var61_upvw (read and write)
			]]
			create_upvr({
				throttle = 0;
			})
			var60_upvw:onRequest(function() -- Line 221
				--[[ Upvalues[1]:
					[1]: RunService_upvr (copied, readonly)
				]]
				local var93_upvw = 1
				local var94_upvw
				local current_thread_upvr_6 = coroutine.running()
				var94_upvw = RunService_upvr.Heartbeat:Connect(function() -- Line 15
					--[[ Upvalues[3]:
						[1]: var93_upvw (read and write)
						[2]: var94_upvw (read and write)
						[3]: current_thread_upvr_6 (readonly)
					]]
					var93_upvw -= 1
					if var93_upvw <= 0 then
						var94_upvw:Disconnect()
						task.defer(current_thread_upvr_6)
					end
				end)
				coroutine.yield()
			end)
			task.spawn(function() -- Line 225
				--[[ Upvalues[1]:
					[1]: var61_upvw (copied, read and write)
				]]
				var61_upvw:InvokeServer()
			end)
			expect(function() -- Line 229
				--[[ Upvalues[1]:
					[1]: var61_upvw (copied, read and write)
				]]
				var61_upvw:InvokeServer()
			end).to.throw()
		end)
		it("should return the cached value if a request is still pending", function() -- Line 234
			--[[ Upvalues[4]:
				[1]: create_upvr (readonly)
				[2]: var60_upvw (read and write)
				[3]: RunService_upvr (copied, readonly)
				[4]: var61_upvw (read and write)
			]]
			create_upvr({
				throttle = 0;
			})
			local var101_upvw = 0
			var60_upvw:onRequest(function() -- Line 239
				--[[ Upvalues[2]:
					[1]: var101_upvw (read and write)
					[2]: RunService_upvr (copied, readonly)
				]]
				if 0 < var101_upvw then
					local var103_upvw = 1
					local var104_upvw
					local current_thread_upvr_4 = coroutine.running()
					var104_upvw = RunService_upvr.Heartbeat:Connect(function() -- Line 15
						--[[ Upvalues[3]:
							[1]: var103_upvw (read and write)
							[2]: var104_upvw (read and write)
							[3]: current_thread_upvr_4 (readonly)
						]]
						var103_upvw -= 1
						if var103_upvw <= 0 then
							var104_upvw:Disconnect()
							task.defer(current_thread_upvr_4)
						end
					end)
					coroutine.yield()
				end
				var101_upvw += 1
				return var101_upvw
			end)
			local function var114_upvr() -- Line 248
				--[[ Upvalues[1]:
					[1]: var61_upvw (copied, read and write)
				]]
				expect(var61_upvw:InvokeServer()).to.equal(1)
			end
			local var107_upvw = true
			local var108_upvw
			local var109_upvw
			local function var110() -- Line 159
				--[[ Upvalues[4]:
					[1]: var108_upvw (read and write)
					[2]: var109_upvw (read and write)
					[3]: var114_upvr (readonly)
					[4]: var107_upvw (read and write)
				]]
				local pcall_result1_5, pcall_result2_4 = pcall(var114_upvr)
				var108_upvw = pcall_result1_5
				var109_upvw = pcall_result2_4
				var107_upvw = false
			end
			task.spawn(var110)
			var110 = var108_upvw
			local var136
			if not var136 then
				if var108_upvw ~= nil then
					var136 = false
				else
					var136 = true
				end
			end
			assert(var136, var109_upvw)
			expect(var107_upvw).to.equal(false)
			function var114_upvr() -- Line 253
				--[[ Upvalues[1]:
					[1]: var61_upvw (copied, read and write)
				]]
				expect(var61_upvw:InvokeServer()).to.equal(1)
				expect(var61_upvw:InvokeServer()).to.equal(1)
			end
			local var115_upvw = true
			local var116_upvw
			local var117_upvw
			function var136() -- Line 159
				--[[ Upvalues[4]:
					[1]: var116_upvw (read and write)
					[2]: var117_upvw (read and write)
					[3]: var114_upvr (readonly)
					[4]: var115_upvw (read and write)
				]]
				local pcall_result1_2, pcall_result2 = pcall(var114_upvr)
				var116_upvw = pcall_result1_2
				var117_upvw = pcall_result2
				var115_upvw = false
			end
			task.spawn(var136)
			var136 = var116_upvw
			if not var136 then
				if var116_upvw ~= nil then
					var136 = false
				else
					var136 = true
				end
			end
			assert(var136, var117_upvw)
			expect(var115_upvw).to.equal(false)
			var114_upvr = RunService_upvr
			local var122_upvw = 1
			local var123_upvw
			local current_thread_upvr_2 = coroutine.running()
			var123_upvw = var114_upvr.Heartbeat:Connect(function() -- Line 15
				--[[ Upvalues[3]:
					[1]: var122_upvw (read and write)
					[2]: var123_upvw (read and write)
					[3]: current_thread_upvr_2 (readonly)
				]]
				var122_upvw -= 1
				if var122_upvw <= 0 then
					var123_upvw:Disconnect()
					task.defer(current_thread_upvr_2)
				end
			end)
			coroutine.yield()
			local function var132_upvr() -- Line 261
				--[[ Upvalues[1]:
					[1]: var61_upvw (copied, read and write)
				]]
				expect(var61_upvw:InvokeServer()).to.equal(2)
			end
			local var126_upvw = true
			local var127_upvw
			local var128_upvw
			function var136() -- Line 159
				--[[ Upvalues[4]:
					[1]: var127_upvw (read and write)
					[2]: var128_upvw (read and write)
					[3]: var132_upvr (readonly)
					[4]: var126_upvw (read and write)
				]]
				local pcall_result1_4, pcall_result2_3 = pcall(var132_upvr)
				var127_upvw = pcall_result1_4
				var128_upvw = pcall_result2_3
				var126_upvw = false
			end
			task.spawn(var136)
			var136 = var127_upvw
			if not var136 then
				if var127_upvw ~= nil then
					var136 = false
				else
					var136 = true
				end
			end
			assert(var136, var128_upvw)
			expect(var126_upvw).to.equal(true)
			function var132_upvr() -- Line 266
				--[[ Upvalues[1]:
					[1]: var61_upvw (copied, read and write)
				]]
				expect(var61_upvw:InvokeServer()).to.equal(1)
				expect(var61_upvw:InvokeServer()).to.equal(1)
			end
			local var133_upvw = true
			local var134_upvw
			local var135_upvw
			function var136() -- Line 159
				--[[ Upvalues[4]:
					[1]: var134_upvw (read and write)
					[2]: var135_upvw (read and write)
					[3]: var132_upvr (readonly)
					[4]: var133_upvw (read and write)
				]]
				local pcall_result1_3, pcall_result2_2 = pcall(var132_upvr)
				var134_upvw = pcall_result1_3
				var135_upvw = pcall_result2_2
				var133_upvw = false
			end
			task.spawn(var136)
			var136 = var134_upvw
			if not var136 then
				if var134_upvw ~= nil then
					var136 = false
				else
					var136 = true
				end
			end
			assert(var136, var135_upvw)
			expect(var133_upvw).to.equal(false)
		end)
		it("should throttle if the handler throws an error", function() -- Line 273
			--[[ Upvalues[4]:
				[1]: create_upvr (readonly)
				[2]: var60_upvw (read and write)
				[3]: var61_upvw (read and write)
				[4]: RunService_upvr (copied, readonly)
			]]
			create_upvr({
				throttle = 0;
			})
			local var144_upvw = 0
			var60_upvw:onRequest(function() -- Line 278
				--[[ Upvalues[1]:
					[1]: var144_upvw (read and write)
				]]
				var144_upvw += 1
				local var145
				if var144_upvw == 1 then
					var145 = false
				else
					var145 = true
				end
				assert(var145, "error")
				return var144_upvw
			end)
			expect(function() -- Line 284
				--[[ Upvalues[1]:
					[1]: var61_upvw (copied, read and write)
				]]
				var61_upvw:InvokeServer()
			end).to.throw()
			expect(function() -- Line 288
				--[[ Upvalues[1]:
					[1]: var61_upvw (copied, read and write)
				]]
				var61_upvw:InvokeServer()
			end).to.throw()
			local var149_upvw = 1
			local var150_upvw
			local current_thread_upvr_8 = coroutine.running()
			var150_upvw = RunService_upvr.Heartbeat:Connect(function() -- Line 15
				--[[ Upvalues[3]:
					[1]: var149_upvw (read and write)
					[2]: var150_upvw (read and write)
					[3]: current_thread_upvr_8 (readonly)
				]]
				var149_upvw -= 1
				if var149_upvw <= 0 then
					var150_upvw:Disconnect()
					task.defer(current_thread_upvr_8)
				end
			end)
			coroutine.yield()
			expect(var61_upvw:InvokeServer()).to.equal(2)
			for _ = 1, 5 do
				expect(var61_upvw:InvokeServer()).to.equal(2)
			end
			local var153_upvw = 1
			local var154_upvw
			local current_thread_upvr_3 = coroutine.running()
			var154_upvw = RunService_upvr.Heartbeat:Connect(function() -- Line 15
				--[[ Upvalues[3]:
					[1]: var153_upvw (read and write)
					[2]: var154_upvw (read and write)
					[3]: current_thread_upvr_3 (readonly)
				]]
				var153_upvw -= 1
				if var153_upvw <= 0 then
					var154_upvw:Disconnect()
					task.defer(current_thread_upvr_3)
				end
			end)
			coroutine.yield()
			expect(var61_upvw:InvokeServer()).to.equal(3)
			for _ = 1, 5 do
				expect(var61_upvw:InvokeServer()).to.equal(3)
			end
		end)
	end)
end