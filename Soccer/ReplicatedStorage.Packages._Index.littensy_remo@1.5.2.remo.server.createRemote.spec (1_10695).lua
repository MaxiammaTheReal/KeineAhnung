-- Name: createRemote.spec
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_remo@1.5.2.remo.server.createRemote.spec
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6384451999983867 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:40
-- Luau version 6, Types version 3
-- Time taken: 0.009041 seconds

return function() -- Line 1
	local t_upvr = require(game:GetService("ReplicatedStorage").DevPackages.t)
	local builder_upvr = require(script.Parent.Parent.builder)
	local createRemote_upvr = require(script.Parent.createRemote)
	local var5_upvw
	local var6_upvw
	local mockRemotes_upvr = require(script.Parent.Parent.utils.mockRemotes)
	beforeEach(function() -- Line 11
		--[[ Upvalues[6]:
			[1]: var5_upvw (read and write)
			[2]: createRemote_upvr (readonly)
			[3]: builder_upvr (readonly)
			[4]: t_upvr (readonly)
			[5]: var6_upvw (read and write)
			[6]: mockRemotes_upvr (readonly)
		]]
		var5_upvw = createRemote_upvr("test", builder_upvr.remote(t_upvr.string, t_upvr.number))
		var6_upvw = mockRemotes_upvr.createMockRemoteEvent("test")
	end)
	afterEach(function() -- Line 16
		--[[ Upvalues[2]:
			[1]: var5_upvw (read and write)
			[2]: var6_upvw (read and write)
		]]
		var5_upvw:destroy()
		var6_upvw:Destroy()
	end)
	it("should validate incoming argument types", function() -- Line 21
		--[[ Upvalues[1]:
			[1]: var6_upvw (read and write)
		]]
		expect(function() -- Line 22
			--[[ Upvalues[1]:
				[1]: var6_upvw (copied, read and write)
			]]
			var6_upvw:FireServer(1, "")
		end).to.throw()
		expect(function() -- Line 26
			--[[ Upvalues[1]:
				[1]: var6_upvw (copied, read and write)
			]]
			var6_upvw:FireServer("")
		end).to.throw()
		expect(function() -- Line 30
			--[[ Upvalues[1]:
				[1]: var6_upvw (copied, read and write)
			]]
			var6_upvw:FireServer("", 1)
		end).to.never.throw()
	end)
	it("should receive incoming events", function() -- Line 35
		--[[ Upvalues[2]:
			[1]: var5_upvw (read and write)
			[2]: var6_upvw (read and write)
		]]
		local var15_upvw
		local var16_upvw
		local var17_upvw
		var5_upvw:connect(function(...) -- Line 38
			--[[ Upvalues[3]:
				[1]: var15_upvw (read and write)
				[2]: var16_upvw (read and write)
				[3]: var17_upvw (read and write)
			]]
			local var19, var20, var21 = ...
			var15_upvw = var19
			var16_upvw = var20
			var17_upvw = var21
		end)
		var6_upvw:FireServer("test", 1)
		expect(var15_upvw).to.be.ok()
		expect(var16_upvw).to.equal("test")
		expect(var17_upvw).to.equal(1)
	end)
	it("should fire outgoing events", function() -- Line 49
		--[[ Upvalues[2]:
			[1]: var6_upvw (read and write)
			[2]: var5_upvw (read and write)
		]]
		local var23_upvw
		local var24_upvw
		var6_upvw.OnClientEvent:Connect(function(...) -- Line 52
			--[[ Upvalues[2]:
				[1]: var23_upvw (read and write)
				[2]: var24_upvw (read and write)
			]]
			local var26, var27 = ...
			var23_upvw = var26
			var24_upvw = var27
		end)
		var5_upvw:fireAll("test", 1)
		expect(var23_upvw).to.equal("test")
		expect(var24_upvw).to.equal(1)
		var5_upvw:fireAll("test2", 2)
		expect(var23_upvw).to.equal("test2")
		expect(var24_upvw).to.equal(2)
	end)
	it("should throw when used after destruction", function() -- Line 65
		--[[ Upvalues[1]:
			[1]: var5_upvw (read and write)
		]]
		var5_upvw:destroy()
		expect(function() -- Line 68
			--[[ Upvalues[1]:
				[1]: var5_upvw (copied, read and write)
			]]
			var5_upvw:fireAll("test", 1)
		end).to.throw()
		expect(function() -- Line 72
			--[[ Upvalues[1]:
				[1]: var5_upvw (copied, read and write)
			]]
			var5_upvw:connect(function() -- Line 73
			end)
		end).to.throw()
	end)
	it("should not fire disconnected events", function() -- Line 77
		--[[ Upvalues[1]:
			[1]: var5_upvw (read and write)
		]]
		local var33_upvw = false
		var5_upvw:connect(function() -- Line 79
			--[[ Upvalues[1]:
				[1]: var33_upvw (read and write)
			]]
			var33_upvw = true
		end)()
		var5_upvw:fireAll("test", 1)
		expect(var33_upvw).to.equal(false)
	end)
	it("should apply the middleware", function() -- Line 87
		--[[ Upvalues[5]:
			[1]: var5_upvw (read and write)
			[2]: createRemote_upvr (readonly)
			[3]: builder_upvr (readonly)
			[4]: t_upvr (readonly)
			[5]: var6_upvw (read and write)
		]]
		local var36_upvw
		local var37_upvw
		local var38_upvw
		local var39_upvw
		var5_upvw = createRemote_upvr("test", builder_upvr.remote(t_upvr.string, t_upvr.number).middleware(function(arg1, arg2) -- Line 92
			--[[ Upvalues[1]:
				[1]: var36_upvw (read and write)
			]]
			var36_upvw = arg2
			return function(arg1_2) -- Line 94
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				return arg1(arg1_2, "intercepted", 2)
			end
		end))
		expect(var36_upvw).to.equal(var5_upvw)
		var5_upvw:connect(function(...) -- Line 102
			--[[ Upvalues[3]:
				[1]: var37_upvw (read and write)
				[2]: var38_upvw (read and write)
				[3]: var39_upvw (read and write)
			]]
			local var43, var44, var45 = ...
			var37_upvw = var43
			var38_upvw = var44
			var39_upvw = var45
		end)
		var6_upvw:FireServer("test", 1)
		expect(var37_upvw).to.be.ok()
		expect(var38_upvw).to.equal("intercepted")
		expect(var39_upvw).to.equal(2)
	end)
	it("should fire the test listeners", function() -- Line 113
		--[[ Upvalues[2]:
			[1]: var5_upvw (read and write)
			[2]: var6_upvw (read and write)
		]]
		local var47_upvw
		local var48_upvw
		local var49_upvw
		local var50_upvw
		var5_upvw.test:onFire(function(...) -- Line 116
			--[[ Upvalues[2]:
				[1]: var47_upvw (read and write)
				[2]: var48_upvw (read and write)
			]]
			local var52, var53 = ...
			var47_upvw = var52
			var48_upvw = var53
		end)
		var6_upvw.OnClientEvent:Connect(function(...) -- Line 120
			--[[ Upvalues[2]:
				[1]: var49_upvw (read and write)
				[2]: var50_upvw (read and write)
			]]
			local var55, var56 = ...
			var49_upvw = var55
			var50_upvw = var56
		end)
		var5_upvw:fireAll("test", 1)
		expect(var47_upvw).to.equal(var49_upvw)
		expect(var48_upvw).to.equal(var50_upvw)
		var47_upvw = nil
		var48_upvw = nil
		var49_upvw = nil
		var50_upvw = nil
		var5_upvw.test:disconnectAll()
		var5_upvw:fireAll("test", 1)
		expect(var47_upvw).to.never.be.ok()
		expect(var48_upvw).to.never.be.ok()
		expect(var49_upvw).to.equal("test")
		expect(var50_upvw).to.equal(1)
	end)
	it("should be callable", function() -- Line 139
		--[[ Upvalues[2]:
			[1]: var6_upvw (read and write)
			[2]: var5_upvw (read and write)
		]]
		local var58_upvw
		local var59_upvw
		var6_upvw.OnClientEvent:Connect(function(...) -- Line 142
			--[[ Upvalues[2]:
				[1]: var58_upvw (read and write)
				[2]: var59_upvw (read and write)
			]]
			local var61, var62 = ...
			var58_upvw = var61
			var59_upvw = var62
		end)
		var5_upvw({}, "test", 1)
		expect(var58_upvw).to.equal("test")
		expect(var59_upvw).to.equal(1)
	end)
	it("should promise an event", function() -- Line 151
		--[[ Upvalues[2]:
			[1]: var5_upvw (read and write)
			[2]: var6_upvw (read and write)
		]]
		local var64_upvw
		local var65_upvw
		local var66_upvw
		var5_upvw:promise():andThen(function(...) -- Line 154
			--[[ Upvalues[3]:
				[1]: var64_upvw (read and write)
				[2]: var65_upvw (read and write)
				[3]: var66_upvw (read and write)
			]]
			local var68, var69, var70 = ...
			var64_upvw = var68
			var65_upvw = var69
			var66_upvw = var70
		end)
		var6_upvw:FireServer("test", 1)
		expect(var64_upvw).to.be.ok()
		expect(var65_upvw).to.equal("test")
		expect(var66_upvw).to.equal(1)
	end)
	it("should promise a predicated event", function() -- Line 165
		--[[ Upvalues[2]:
			[1]: var5_upvw (read and write)
			[2]: var6_upvw (read and write)
		]]
		local var72_upvw
		local var73_upvw
		local var74_upvw
		var5_upvw:promise(function(arg1, arg2) -- Line 169
			if arg2 ~= "true" then
			else
			end
			return true
		end):andThen(function(...) -- Line 172
			--[[ Upvalues[3]:
				[1]: var72_upvw (read and write)
				[2]: var73_upvw (read and write)
				[3]: var74_upvw (read and write)
			]]
			local var77, var78, var79 = ...
			var72_upvw = var77
			var73_upvw = var78
			var74_upvw = var79
		end)
		var6_upvw:FireServer("false", 2)
		expect(var72_upvw).to.never.be.ok()
		expect(var73_upvw).to.never.be.ok()
		expect(var74_upvw).to.never.be.ok()
		var6_upvw:FireServer("true", 1)
		expect(var72_upvw).to.be.ok()
		expect(var73_upvw).to.equal("true")
		expect(var74_upvw).to.equal(1)
	end)
end