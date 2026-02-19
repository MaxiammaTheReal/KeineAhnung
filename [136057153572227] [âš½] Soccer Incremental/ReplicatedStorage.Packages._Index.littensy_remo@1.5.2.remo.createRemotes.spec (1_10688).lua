-- Name: createRemotes.spec
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_remo@1.5.2.remo.createRemotes.spec
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.608136499999091 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:35
-- Luau version 6, Types version 3
-- Time taken: 0.011039 seconds

return function() -- Line 1
	local t_upvr = require(game:GetService("ReplicatedStorage").DevPackages.t)
	local createRemotes_upvr = require(script.Parent.createRemotes)
	local builder_upvr = require(script.Parent.builder)
	local mockRemotes_upvr = require(script.Parent.utils.mockRemotes)
	local var6_upvw
	beforeEach(function() -- Line 19
		--[[ Upvalues[4]:
			[1]: var6_upvw (read and write)
			[2]: createRemotes_upvr (readonly)
			[3]: builder_upvr (readonly)
			[4]: t_upvr (readonly)
		]]
		var6_upvw = createRemotes_upvr({
			event = builder_upvr.remote(t_upvr.string, t_upvr.number);
			callback = builder_upvr.remote(t_upvr.string, t_upvr.number).returns(t_upvr.string);
			namespace = builder_upvr.namespace({
				event = builder_upvr.remote(t_upvr.string, t_upvr.number);
				callback = builder_upvr.remote(t_upvr.string, t_upvr.number).returns(t_upvr.string);
			});
		})
	end)
	afterEach(function() -- Line 31
		--[[ Upvalues[1]:
			[1]: var6_upvw (read and write)
		]]
		var6_upvw:destroy()
	end)
	it("should create top-level remotes", function() -- Line 35
		--[[ Upvalues[2]:
			[1]: var6_upvw (read and write)
			[2]: mockRemotes_upvr (readonly)
		]]
		expect(var6_upvw.event).to.be.ok()
		expect(var6_upvw.callback).to.be.ok()
		expect(mockRemotes_upvr.getMockRemoteEvent("event")).to.be.ok()
		expect(mockRemotes_upvr.getMockRemoteFunction("callback")).to.be.ok()
	end)
	it("should create namespaced remotes", function() -- Line 42
		--[[ Upvalues[2]:
			[1]: var6_upvw (read and write)
			[2]: mockRemotes_upvr (readonly)
		]]
		expect(var6_upvw.namespace.event).to.be.ok()
		expect(var6_upvw.namespace.callback).to.be.ok()
		expect(mockRemotes_upvr.getMockRemoteEvent("namespace.event")).to.be.ok()
		expect(mockRemotes_upvr.getMockRemoteFunction("namespace.callback")).to.be.ok()
	end)
	it("should fire a top-level event", function() -- Line 49
		--[[ Upvalues[2]:
			[1]: var6_upvw (read and write)
			[2]: mockRemotes_upvr (readonly)
		]]
		local var14_upvw
		local var15_upvw
		local var16_upvw
		var6_upvw.event:connect(function(...) -- Line 52
			--[[ Upvalues[3]:
				[1]: var14_upvw (read and write)
				[2]: var15_upvw (read and write)
				[3]: var16_upvw (read and write)
			]]
			local var18, var19, var20 = ...
			var14_upvw = var18
			var15_upvw = var19
			var16_upvw = var20
		end)
		mockRemotes_upvr.createMockRemoteEvent("event"):FireServer("test", 1)
		expect(var14_upvw).to.be.ok()
		expect(var15_upvw).to.equal("test")
		expect(var16_upvw).to.equal(1)
	end)
	it("should fire a namespaced event", function() -- Line 63
		--[[ Upvalues[2]:
			[1]: var6_upvw (read and write)
			[2]: mockRemotes_upvr (readonly)
		]]
		local var22_upvw
		local var23_upvw
		local var24_upvw
		var6_upvw.namespace.event:connect(function(...) -- Line 66
			--[[ Upvalues[3]:
				[1]: var22_upvw (read and write)
				[2]: var23_upvw (read and write)
				[3]: var24_upvw (read and write)
			]]
			local var26, var27, var28 = ...
			var22_upvw = var26
			var23_upvw = var27
			var24_upvw = var28
		end)
		mockRemotes_upvr.createMockRemoteEvent("namespace.event"):FireServer("test", 1)
		expect(var22_upvw).to.be.ok()
		expect(var23_upvw).to.equal("test")
		expect(var24_upvw).to.equal(1)
	end)
	it("should invoke a top-level callback", function() -- Line 77
		--[[ Upvalues[2]:
			[1]: var6_upvw (read and write)
			[2]: mockRemotes_upvr (readonly)
		]]
		local var30_upvw
		local var31_upvw
		local var32_upvw
		var6_upvw.callback:onRequest(function(...) -- Line 80
			--[[ Upvalues[3]:
				[1]: var30_upvw (read and write)
				[2]: var31_upvw (read and write)
				[3]: var32_upvw (read and write)
			]]
			local var34, var35, var36 = ...
			var30_upvw = var34
			var31_upvw = var35
			var32_upvw = var36
			return "test"
		end)
		expect(var30_upvw).to.be.ok()
		expect(var31_upvw).to.equal("test")
		expect(var32_upvw).to.equal(1)
		expect(mockRemotes_upvr.createMockRemoteFunction("callback"):InvokeServer("test", 1)).to.equal("test")
	end)
	it("should invoke a namespaced callback", function() -- Line 93
		--[[ Upvalues[2]:
			[1]: var6_upvw (read and write)
			[2]: mockRemotes_upvr (readonly)
		]]
		local var38_upvw
		local var39_upvw
		local var40_upvw
		var6_upvw.namespace.callback:onRequest(function(...) -- Line 96
			--[[ Upvalues[3]:
				[1]: var38_upvw (read and write)
				[2]: var39_upvw (read and write)
				[3]: var40_upvw (read and write)
			]]
			local var42, var43, var44 = ...
			var38_upvw = var42
			var39_upvw = var43
			var40_upvw = var44
			return "test"
		end)
		expect(var38_upvw).to.be.ok()
		expect(var39_upvw).to.equal("test")
		expect(var40_upvw).to.equal(1)
		expect(mockRemotes_upvr.createMockRemoteFunction("namespace.callback"):InvokeServer("test", 1)).to.equal("test")
	end)
	it("should apply middleware to every remote", function() -- Line 109
		--[[ Upvalues[5]:
			[1]: var6_upvw (read and write)
			[2]: mockRemotes_upvr (readonly)
			[3]: createRemotes_upvr (readonly)
			[4]: builder_upvr (readonly)
			[5]: t_upvr (readonly)
		]]
		var6_upvw:destroy()
		mockRemotes_upvr.destroyAll()
		local tbl_upvw_2 = {}
		local tbl_upvr = {}
		local tbl_upvw = {}
		local function _(arg1) -- Line 115, Named "middleware"
			--[[ Upvalues[3]:
				[1]: tbl_upvr (readonly)
				[2]: tbl_upvw (read and write)
				[3]: tbl_upvw_2 (read and write)
			]]
			return function(arg1_2, arg2) -- Line 116
				--[[ Upvalues[4]:
					[1]: tbl_upvr (copied, readonly)
					[2]: tbl_upvw (copied, read and write)
					[3]: tbl_upvw_2 (copied, read and write)
					[4]: arg1 (readonly)
				]]
				table.insert(tbl_upvr, arg2)
				return function(...) -- Line 118
					--[[ Upvalues[4]:
						[1]: tbl_upvw (copied, read and write)
						[2]: tbl_upvw_2 (copied, read and write)
						[3]: arg1 (copied, readonly)
						[4]: arg1_2 (readonly)
					]]
					table.insert(tbl_upvw, {...})
					table.insert(tbl_upvw_2, arg1)
					return arg1_2(...)
				end
			end
		end
		local var58_upvr = 1
		local var62_upvr = 2
		function var58_upvr(arg1, arg2) -- Line 116
			--[[ Upvalues[4]:
				[1]: tbl_upvr (readonly)
				[2]: tbl_upvw (read and write)
				[3]: tbl_upvw_2 (read and write)
				[4]: var62_upvr (readonly)
			]]
			table.insert(tbl_upvr, arg2)
			return function(...) -- Line 118
				--[[ Upvalues[4]:
					[1]: tbl_upvw (copied, read and write)
					[2]: tbl_upvw_2 (copied, read and write)
					[3]: var62_upvr (copied, readonly)
					[4]: arg1 (readonly)
				]]
				table.insert(tbl_upvw, {...})
				table.insert(tbl_upvw_2, var62_upvr)
				return arg1(...)
			end
		end
		local const_number_upvr = 3
		function var62_upvr(arg1, arg2) -- Line 116
			--[[ Upvalues[4]:
				[1]: tbl_upvr (readonly)
				[2]: tbl_upvw (read and write)
				[3]: tbl_upvw_2 (read and write)
				[4]: const_number_upvr (readonly)
			]]
			table.insert(tbl_upvr, arg2)
			return function(...) -- Line 118
				--[[ Upvalues[4]:
					[1]: tbl_upvw (copied, read and write)
					[2]: tbl_upvw_2 (copied, read and write)
					[3]: const_number_upvr (copied, readonly)
					[4]: arg1 (readonly)
				]]
				table.insert(tbl_upvw, {...})
				table.insert(tbl_upvw_2, const_number_upvr)
				return arg1(...)
			end
		end
		var6_upvw = createRemotes_upvr({
			event = builder_upvr.remote(t_upvr.string, t_upvr.number);
			callback = builder_upvr.remote(t_upvr.string, t_upvr.number).returns(t_upvr.string);
			namespace = builder_upvr.namespace({
				event = builder_upvr.remote(t_upvr.string, t_upvr.number);
				callback = builder_upvr.remote(t_upvr.string, t_upvr.number).returns(t_upvr.string);
			});
		}, function(arg1, arg2) -- Line 116
			--[[ Upvalues[4]:
				[1]: tbl_upvr (readonly)
				[2]: tbl_upvw (read and write)
				[3]: tbl_upvw_2 (read and write)
				[4]: var58_upvr (readonly)
			]]
			table.insert(tbl_upvr, arg2)
			return function(...) -- Line 118
				--[[ Upvalues[4]:
					[1]: tbl_upvw (copied, read and write)
					[2]: tbl_upvw_2 (copied, read and write)
					[3]: var58_upvr (copied, readonly)
					[4]: arg1 (readonly)
				]]
				table.insert(tbl_upvw, {...})
				table.insert(tbl_upvw_2, var58_upvr)
				return arg1(...)
			end
		end, var58_upvr, var62_upvr)
		local function test(arg1, arg2) -- Line 135
			--[[ Upvalues[4]:
				[1]: tbl_upvw_2 (read and write)
				[2]: tbl_upvw (read and write)
				[3]: mockRemotes_upvr (copied, readonly)
				[4]: tbl_upvr (readonly)
			]]
			tbl_upvw_2 = {}
			tbl_upvw = {}
			mockRemotes_upvr.createMockRemoteEvent(arg1):FireServer("test", 1)
			for i = 1, 3 do
				expect(tbl_upvr[i]).to.be.ok()
				expect(tbl_upvw[i][1]).to.be.ok()
				expect(tbl_upvw[i][2]).to.equal("test")
				expect(tbl_upvw[i][3]).to.equal(1)
				expect(tbl_upvw_2[i]).to.equal(i)
			end
			tbl_upvw_2 = {}
			tbl_upvw = {}
			mockRemotes_upvr.createMockRemoteFunction(arg2):InvokeServer("test", 1)
			for i_2 = 1, 3 do
				expect(tbl_upvw[i_2][1]).to.be.ok()
				expect(tbl_upvw[i_2][2]).to.equal("test")
				expect(tbl_upvw[i_2][3]).to.equal(1)
				expect(tbl_upvw_2[i_2]).to.equal(i_2)
			end
		end
		var58_upvr = "callback"
		test("event", var58_upvr)
		var58_upvr = "namespace.callback"
		test("namespace.event", var58_upvr)
	end)
end