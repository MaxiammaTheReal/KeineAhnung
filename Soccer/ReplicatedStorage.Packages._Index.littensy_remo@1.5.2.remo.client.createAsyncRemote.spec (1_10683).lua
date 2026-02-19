-- Name: createAsyncRemote.spec
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_remo@1.5.2.remo.client.createAsyncRemote.spec
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7626505000007455 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:31
-- Luau version 6, Types version 3
-- Time taken: 0.013076 seconds

return function() -- Line 1
	local t_upvr = require(game:GetService("ReplicatedStorage").DevPackages.t)
	local Promise_upvr = require(script.Parent.Parent.Promise)
	local builder_upvr = require(script.Parent.Parent.builder)
	local createAsyncRemote_upvr = require(script.Parent.createAsyncRemote)
	local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
	if not LocalPlayer_upvr then
		LocalPlayer_upvr = {}
	end
	local var7_upvw
	local var8_upvw
	local mockRemotes_upvr = require(script.Parent.Parent.utils.mockRemotes)
	beforeEach(function() -- Line 14
		--[[ Upvalues[6]:
			[1]: var7_upvw (read and write)
			[2]: createAsyncRemote_upvr (readonly)
			[3]: builder_upvr (readonly)
			[4]: t_upvr (readonly)
			[5]: var8_upvw (read and write)
			[6]: mockRemotes_upvr (readonly)
		]]
		var7_upvw = createAsyncRemote_upvr("test", builder_upvr.remote(t_upvr.string, t_upvr.number).returns(t_upvr.string))
		var8_upvw = mockRemotes_upvr.createMockRemoteFunction("test")
	end)
	afterEach(function() -- Line 19
		--[[ Upvalues[2]:
			[1]: var7_upvw (read and write)
			[2]: var8_upvw (read and write)
		]]
		var7_upvw:destroy()
		var8_upvw:Destroy()
	end)
	it("should validate incoming argument types", function() -- Line 24
		--[[ Upvalues[3]:
			[1]: var7_upvw (read and write)
			[2]: var8_upvw (read and write)
			[3]: LocalPlayer_upvr (readonly)
		]]
		var7_upvw:onRequest(function() -- Line 25
			return ""
		end)
		expect(function() -- Line 29
			--[[ Upvalues[2]:
				[1]: var8_upvw (copied, read and write)
				[2]: LocalPlayer_upvr (copied, readonly)
			]]
			var8_upvw:InvokeClient(LocalPlayer_upvr, 1, "")
		end).to.throw()
		expect(function() -- Line 33
			--[[ Upvalues[2]:
				[1]: var8_upvw (copied, read and write)
				[2]: LocalPlayer_upvr (copied, readonly)
			]]
			var8_upvw:InvokeClient(LocalPlayer_upvr, "")
		end).to.throw()
		expect(function() -- Line 37
			--[[ Upvalues[2]:
				[1]: var8_upvw (copied, read and write)
				[2]: LocalPlayer_upvr (copied, readonly)
			]]
			var8_upvw:InvokeClient(LocalPlayer_upvr, "", 1)
		end).to.never.throw()
	end)
	it("should validate incoming return types", function() -- Line 42
		--[[ Upvalues[2]:
			[1]: var8_upvw (read and write)
			[2]: var7_upvw (read and write)
		]]
		function var8_upvw.OnServerInvoke() -- Line 43
			return 1
		end
		expect(function() -- Line 47
			--[[ Upvalues[1]:
				[1]: var7_upvw (copied, read and write)
			]]
			var7_upvw:request("", 1):expect()
		end).to.throw()
		function var8_upvw.OnServerInvoke() -- Line 51
			return ""
		end
		expect(function() -- Line 55
			--[[ Upvalues[1]:
				[1]: var7_upvw (copied, read and write)
			]]
			var7_upvw:request("", 1):expect()
		end).to.never.throw()
	end)
	it("should send and receive the correct values", function() -- Line 60
		--[[ Upvalues[2]:
			[1]: var7_upvw (read and write)
			[2]: var8_upvw (read and write)
		]]
		local var23_upvw
		local var24_upvw
		local var25_upvw
		var7_upvw:onRequest(function(...) -- Line 63
			--[[ Upvalues[2]:
				[1]: var24_upvw (read and write)
				[2]: var25_upvw (read and write)
			]]
			local var27, var28 = ...
			var24_upvw = var27
			var25_upvw = var28
			return "result"
		end)
		local function OnServerInvoke(...) -- Line 68
			--[[ Upvalues[3]:
				[1]: var23_upvw (read and write)
				[2]: var24_upvw (read and write)
				[3]: var25_upvw (read and write)
			]]
			local var29, var30, var31 = ...
			var23_upvw = var29
			var24_upvw = var30
			var25_upvw = var31
			return "result"
		end
		var8_upvw.OnServerInvoke = OnServerInvoke
		expect(var8_upvw:InvokeClient(var23_upvw, "test", 1)).to.equal("result")
		expect(var23_upvw).to.never.be.ok()
		expect(var24_upvw).to.equal("test")
		expect(var25_upvw).to.equal(1)
		expect(var7_upvw:request("test2", 2):expect()).to.equal("result")
		expect(var23_upvw).to.be.ok()
		expect(var24_upvw).to.equal("test2")
		expect(var25_upvw).to.equal(2)
	end)
	it("should unwrap promises on invoke", function() -- Line 86
		--[[ Upvalues[4]:
			[1]: var7_upvw (read and write)
			[2]: Promise_upvr (readonly)
			[3]: var8_upvw (read and write)
			[4]: LocalPlayer_upvr (readonly)
		]]
		local var33_upvw
		local var34_upvw
		var7_upvw:onRequest(function(...) -- Line 89
			--[[ Upvalues[3]:
				[1]: var33_upvw (read and write)
				[2]: var34_upvw (read and write)
				[3]: Promise_upvr (copied, readonly)
			]]
			local var36, var37 = ...
			var33_upvw = var36
			var34_upvw = var37
			return Promise_upvr.resolve("result")
		end)
		expect(var8_upvw:InvokeClient(LocalPlayer_upvr, "test", 1)).to.equal("result")
		expect(var33_upvw).to.equal("test")
		expect(var34_upvw).to.equal(1)
	end)
	it("should throw when used after destruction", function() -- Line 100
		--[[ Upvalues[3]:
			[1]: var7_upvw (read and write)
			[2]: var8_upvw (read and write)
			[3]: LocalPlayer_upvr (readonly)
		]]
		var7_upvw:onRequest(function() -- Line 101
		end)
		var7_upvw:destroy()
		expect(function() -- Line 104
			--[[ Upvalues[1]:
				[1]: var7_upvw (copied, read and write)
			]]
			var7_upvw:request("", 1):expect()
		end).to.throw()
		expect(function() -- Line 108
			--[[ Upvalues[2]:
				[1]: var8_upvw (copied, read and write)
				[2]: LocalPlayer_upvr (copied, readonly)
			]]
			var8_upvw:InvokeClient(LocalPlayer_upvr, "", 1)
		end).to.throw()
		expect(function() -- Line 112
			--[[ Upvalues[1]:
				[1]: var7_upvw (copied, read and write)
			]]
			var7_upvw:onRequest(function() -- Line 113
			end)
		end).to.throw()
	end)
	it("should apply the middleware", function() -- Line 117
		--[[ Upvalues[6]:
			[1]: var7_upvw (read and write)
			[2]: createAsyncRemote_upvr (readonly)
			[3]: builder_upvr (readonly)
			[4]: t_upvr (readonly)
			[5]: var8_upvw (read and write)
			[6]: LocalPlayer_upvr (readonly)
		]]
		local var45_upvw
		local var46_upvw
		local var47_upvw
		local var48_upvw
		var7_upvw = createAsyncRemote_upvr("test", builder_upvr.remote(t_upvr.string, t_upvr.number).returns(t_upvr.string).middleware(function(arg1, arg2) -- Line 122
			--[[ Upvalues[2]:
				[1]: var45_upvw (read and write)
				[2]: var48_upvw (read and write)
			]]
			var45_upvw = arg2
			return function() -- Line 124
				--[[ Upvalues[2]:
					[1]: var48_upvw (copied, read and write)
					[2]: arg1 (readonly)
				]]
				var48_upvw = arg1("intercepted", 2)
				return var48_upvw..'!'
			end
		end))
		expect(var45_upvw).to.equal(var7_upvw)
		var7_upvw:onRequest(function(...) -- Line 133
			--[[ Upvalues[2]:
				[1]: var46_upvw (read and write)
				[2]: var47_upvw (read and write)
			]]
			local var52, var53 = ...
			var46_upvw = var52
			var47_upvw = var53
			return "result"
		end)
		expect(var8_upvw:InvokeClient(LocalPlayer_upvr, "test", 1)).to.equal("result!")
		expect(var46_upvw).to.equal("intercepted")
		expect(var47_upvw).to.equal(2)
		expect(var48_upvw).to.equal("result")
	end)
	it("should support multiple return values", function() -- Line 144
		--[[ Upvalues[7]:
			[1]: var7_upvw (read and write)
			[2]: createAsyncRemote_upvr (readonly)
			[3]: builder_upvr (readonly)
			[4]: t_upvr (readonly)
			[5]: Promise_upvr (readonly)
			[6]: var8_upvw (read and write)
			[7]: LocalPlayer_upvr (readonly)
		]]
		var7_upvw = createAsyncRemote_upvr("test", builder_upvr.remote().returns(t_upvr.string, t_upvr.string, t_upvr.string))
		var7_upvw:onRequest(function() -- Line 147
			--[[ Upvalues[1]:
				[1]: Promise_upvr (copied, readonly)
			]]
			return Promise_upvr.resolve('a', 'b', 'c')
		end)
		local any_InvokeClient_result1, any_InvokeClient_result2, any_InvokeClient_result3 = var8_upvw:InvokeClient(LocalPlayer_upvr)
		expect(any_InvokeClient_result1).to.equal('a')
		expect(any_InvokeClient_result2).to.equal('b')
		expect(any_InvokeClient_result3).to.equal('c')
		function var8_upvw.OnServerInvoke() -- Line 157
			return 'a', 'b', 'c'
		end
		local any_expect_result1, any_expect_result2, any_expect_result3 = var7_upvw:request():expect()
		expect(any_expect_result1).to.equal('a')
		expect(any_expect_result2).to.equal('b')
		expect(any_expect_result3).to.equal('c')
	end)
	it("should be callable", function() -- Line 168
		--[[ Upvalues[2]:
			[1]: var8_upvw (read and write)
			[2]: var7_upvw (read and write)
		]]
		function var8_upvw.OnServerInvoke() -- Line 169
			return "result"
		end
		expect(var7_upvw("test", 1):expect()).to.equal("result")
	end)
	it("should invoke the test handler", function() -- Line 176
		--[[ Upvalues[1]:
			[1]: var7_upvw (read and write)
		]]
		local var65_upvw
		local var66_upvw
		var7_upvw.test:handleRequest(function(...) -- Line 179
			--[[ Upvalues[2]:
				[1]: var65_upvw (read and write)
				[2]: var66_upvw (read and write)
			]]
			local var68, var69 = ...
			var65_upvw = var68
			var66_upvw = var69
			return "result"
		end)
		expect(var7_upvw:request("test", 1):expect()).to.equal("result")
		expect(var65_upvw).to.equal("test")
		expect(var66_upvw).to.equal(1)
		var7_upvw.test:disconnectAll()
		expect(function() -- Line 190
			--[[ Upvalues[1]:
				[1]: var7_upvw (copied, read and write)
			]]
			var7_upvw:request("test", 1):expect()
		end).to.throw()
	end)
end