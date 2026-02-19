-- Name: createAsyncRemote.spec
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_remo@1.5.2.remo.server.createAsyncRemote.spec
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.713959499997145 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:38
-- Luau version 6, Types version 3
-- Time taken: 0.013495 seconds

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
		--[[ Upvalues[2]:
			[1]: var7_upvw (read and write)
			[2]: var8_upvw (read and write)
		]]
		var7_upvw:onRequest(function() -- Line 25
			return ""
		end)
		expect(function() -- Line 29
			--[[ Upvalues[1]:
				[1]: var8_upvw (copied, read and write)
			]]
			var8_upvw:InvokeServer(1, "")
		end).to.throw()
		expect(function() -- Line 33
			--[[ Upvalues[1]:
				[1]: var8_upvw (copied, read and write)
			]]
			var8_upvw:InvokeServer("")
		end).to.throw()
		expect(function() -- Line 37
			--[[ Upvalues[1]:
				[1]: var8_upvw (copied, read and write)
			]]
			var8_upvw:InvokeServer("", 1)
		end).to.never.throw()
	end)
	it("should validate incoming return types", function() -- Line 42
		--[[ Upvalues[3]:
			[1]: var8_upvw (read and write)
			[2]: var7_upvw (read and write)
			[3]: LocalPlayer_upvr (readonly)
		]]
		function var8_upvw.OnClientInvoke() -- Line 43
			return 1
		end
		expect(function() -- Line 47
			--[[ Upvalues[2]:
				[1]: var7_upvw (copied, read and write)
				[2]: LocalPlayer_upvr (copied, readonly)
			]]
			var7_upvw:request(LocalPlayer_upvr, "", 1):expect()
		end).to.throw()
		function var8_upvw.OnClientInvoke() -- Line 51
			return ""
		end
		expect(function() -- Line 55
			--[[ Upvalues[2]:
				[1]: var7_upvw (copied, read and write)
				[2]: LocalPlayer_upvr (copied, readonly)
			]]
			var7_upvw:request(LocalPlayer_upvr, "", 1):expect()
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
			--[[ Upvalues[3]:
				[1]: var23_upvw (read and write)
				[2]: var24_upvw (read and write)
				[3]: var25_upvw (read and write)
			]]
			local var27, var28, var29 = ...
			var23_upvw = var27
			var24_upvw = var28
			var25_upvw = var29
			return "result"
		end)
		local function OnClientInvoke(...) -- Line 68
			--[[ Upvalues[2]:
				[1]: var24_upvw (read and write)
				[2]: var25_upvw (read and write)
			]]
			local var30, var31 = ...
			var24_upvw = var30
			var25_upvw = var31
			return "result"
		end
		var8_upvw.OnClientInvoke = OnClientInvoke
		expect(var7_upvw:request(var23_upvw, "test2", 2):expect()).to.equal("result")
		expect(var23_upvw).to.never.be.ok()
		expect(var24_upvw).to.equal("test2")
		expect(var25_upvw).to.equal(2)
		expect(var8_upvw:InvokeServer("test", 1)).to.equal("result")
		expect(var23_upvw).to.be.ok()
		expect(var24_upvw).to.equal("test")
		expect(var25_upvw).to.equal(1)
	end)
	it("should unwrap promises on invoke", function() -- Line 86
		--[[ Upvalues[3]:
			[1]: var7_upvw (read and write)
			[2]: Promise_upvr (readonly)
			[3]: var8_upvw (read and write)
		]]
		local var33_upvw
		local var34_upvw
		local var35_upvw
		var7_upvw:onRequest(function(...) -- Line 89
			--[[ Upvalues[4]:
				[1]: var33_upvw (read and write)
				[2]: var34_upvw (read and write)
				[3]: var35_upvw (read and write)
				[4]: Promise_upvr (copied, readonly)
			]]
			local var37, var38, var39 = ...
			var33_upvw = var37
			var34_upvw = var38
			var35_upvw = var39
			return Promise_upvr.resolve("result")
		end)
		expect(var8_upvw:InvokeServer("test", 1)).to.equal("result")
		expect(var33_upvw).to.be.ok()
		expect(var34_upvw).to.equal("test")
		expect(var35_upvw).to.equal(1)
	end)
	it("should throw when used after destruction", function() -- Line 101
		--[[ Upvalues[2]:
			[1]: var7_upvw (read and write)
			[2]: LocalPlayer_upvr (readonly)
		]]
		var7_upvw:onRequest(function() -- Line 102
		end)
		var7_upvw:destroy()
		expect(function() -- Line 105
			--[[ Upvalues[2]:
				[1]: var7_upvw (copied, read and write)
				[2]: LocalPlayer_upvr (copied, readonly)
			]]
			var7_upvw:request(LocalPlayer_upvr, "", 1):expect()
		end).to.throw()
		expect(function() -- Line 109
			--[[ Upvalues[1]:
				[1]: var7_upvw (copied, read and write)
			]]
			var7_upvw:onRequest(function() -- Line 110
			end)
		end).to.throw()
	end)
	it("should apply the middleware", function() -- Line 114
		--[[ Upvalues[5]:
			[1]: var7_upvw (read and write)
			[2]: createAsyncRemote_upvr (readonly)
			[3]: builder_upvr (readonly)
			[4]: t_upvr (readonly)
			[5]: var8_upvw (read and write)
		]]
		local var46_upvw
		local var47_upvw
		local var48_upvw
		local var49_upvw
		local var50_upvw
		var7_upvw = createAsyncRemote_upvr("test", builder_upvr.remote(t_upvr.string, t_upvr.number).returns(t_upvr.string).middleware(function(arg1, arg2) -- Line 119
			--[[ Upvalues[2]:
				[1]: var46_upvw (read and write)
				[2]: var50_upvw (read and write)
			]]
			var46_upvw = arg2
			return function(arg1_2) -- Line 121
				--[[ Upvalues[2]:
					[1]: var50_upvw (copied, read and write)
					[2]: arg1 (readonly)
				]]
				var50_upvw = arg1(arg1_2, "intercepted", 2)
				return var50_upvw..'!'
			end
		end))
		expect(var46_upvw).to.equal(var7_upvw)
		var7_upvw:onRequest(function(...) -- Line 130
			--[[ Upvalues[3]:
				[1]: var47_upvw (read and write)
				[2]: var48_upvw (read and write)
				[3]: var49_upvw (read and write)
			]]
			local var54, var55, var56 = ...
			var47_upvw = var54
			var48_upvw = var55
			var49_upvw = var56
			return "result"
		end)
		expect(var8_upvw:InvokeServer("test", 1)).to.equal("result!")
		expect(var47_upvw).to.be.ok()
		expect(var48_upvw).to.equal("intercepted")
		expect(var49_upvw).to.equal(2)
		expect(var50_upvw).to.equal("result")
	end)
	it("should support multiple return values", function() -- Line 142
		--[[ Upvalues[6]:
			[1]: var7_upvw (read and write)
			[2]: createAsyncRemote_upvr (readonly)
			[3]: builder_upvr (readonly)
			[4]: t_upvr (readonly)
			[5]: Promise_upvr (readonly)
			[6]: var8_upvw (read and write)
		]]
		var7_upvw = createAsyncRemote_upvr("test", builder_upvr.remote().returns(t_upvr.string, t_upvr.string, t_upvr.string))
		var7_upvw:onRequest(function() -- Line 145
			--[[ Upvalues[1]:
				[1]: Promise_upvr (copied, readonly)
			]]
			return Promise_upvr.resolve('a', 'b', 'c')
		end)
		local any_InvokeServer_result1, any_InvokeServer_result2, any_InvokeServer_result3 = var8_upvw:InvokeServer()
		expect(any_InvokeServer_result1).to.equal('a')
		expect(any_InvokeServer_result2).to.equal('b')
		expect(any_InvokeServer_result3).to.equal('c')
		function var8_upvw.OnClientInvoke() -- Line 155
			return 'a', 'b', 'c'
		end
		local any_expect_result1, any_expect_result2, any_expect_result3 = var7_upvw:request():expect()
		expect(any_expect_result1).to.equal('a')
		expect(any_expect_result2).to.equal('b')
		expect(any_expect_result3).to.equal('c')
	end)
	it("should be callable", function() -- Line 166
		--[[ Upvalues[3]:
			[1]: var8_upvw (read and write)
			[2]: var7_upvw (read and write)
			[3]: LocalPlayer_upvr (readonly)
		]]
		function var8_upvw.OnClientInvoke() -- Line 167
			return "result"
		end
		expect(var7_upvw(LocalPlayer_upvr, "test", 1):expect()).to.equal("result")
	end)
	it("should invoke the test handler", function() -- Line 174
		--[[ Upvalues[1]:
			[1]: var7_upvw (read and write)
		]]
		local var68_upvw
		local var69_upvw
		var7_upvw.test:handleRequest(function(...) -- Line 177
			--[[ Upvalues[2]:
				[1]: var68_upvw (read and write)
				[2]: var69_upvw (read and write)
			]]
			local var71, var72 = ...
			var68_upvw = var71
			var69_upvw = var72
			return "result"
		end)
		expect(var7_upvw:request("test", 1):expect()).to.equal("result")
		expect(var68_upvw).to.equal("test")
		expect(var69_upvw).to.equal(1)
		var7_upvw.test:disconnectAll()
		expect(function() -- Line 188
			--[[ Upvalues[1]:
				[1]: var7_upvw (copied, read and write)
			]]
			var7_upvw:request("test", 1):expect()
		end).to.throw()
	end)
end