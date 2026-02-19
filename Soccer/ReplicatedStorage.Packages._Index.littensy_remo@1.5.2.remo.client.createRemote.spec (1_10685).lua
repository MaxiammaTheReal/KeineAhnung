-- Name: createRemote.spec
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_remo@1.5.2.remo.client.createRemote.spec
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6964551999990363 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:32
-- Luau version 6, Types version 3
-- Time taken: 0.010425 seconds

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
			var6_upvw:FireAllClients(1, "")
		end).to.throw()
		expect(function() -- Line 26
			--[[ Upvalues[1]:
				[1]: var6_upvw (copied, read and write)
			]]
			var6_upvw:FireAllClients("")
		end).to.throw()
		expect(function() -- Line 30
			--[[ Upvalues[1]:
				[1]: var6_upvw (copied, read and write)
			]]
			var6_upvw:FireAllClients("", 1)
		end).to.never.throw()
	end)
	it("should receive incoming events", function() -- Line 35
		--[[ Upvalues[2]:
			[1]: var5_upvw (read and write)
			[2]: var6_upvw (read and write)
		]]
		local var15_upvw
		local var16_upvw
		var5_upvw:connect(function(...) -- Line 38
			--[[ Upvalues[2]:
				[1]: var15_upvw (read and write)
				[2]: var16_upvw (read and write)
			]]
			local var18, var19 = ...
			var15_upvw = var18
			var16_upvw = var19
		end)
		var6_upvw:FireAllClients("test", 1)
		expect(var15_upvw).to.equal("test")
		expect(var16_upvw).to.equal(1)
		var6_upvw:FireAllClients("test2", 2)
		expect(var15_upvw).to.equal("test2")
		expect(var16_upvw).to.equal(2)
	end)
	it("should fire outgoing events", function() -- Line 51
		--[[ Upvalues[2]:
			[1]: var6_upvw (read and write)
			[2]: var5_upvw (read and write)
		]]
		local var21_upvw
		local var22_upvw
		local var23_upvw
		var6_upvw.OnServerEvent:Connect(function(...) -- Line 54
			--[[ Upvalues[3]:
				[1]: var21_upvw (read and write)
				[2]: var22_upvw (read and write)
				[3]: var23_upvw (read and write)
			]]
			local var25, var26, var27 = ...
			var21_upvw = var25
			var22_upvw = var26
			var23_upvw = var27
		end)
		var5_upvw:fire("test", 1)
		expect(var21_upvw).to.be.ok()
		expect(var22_upvw).to.equal("test")
		expect(var23_upvw).to.equal(1)
		var5_upvw:fire("test2", 2)
		expect(var21_upvw).to.be.ok()
		expect(var22_upvw).to.equal("test2")
		expect(var23_upvw).to.equal(2)
	end)
	it("should throw when used after destruction", function() -- Line 69
		--[[ Upvalues[1]:
			[1]: var5_upvw (read and write)
		]]
		var5_upvw:destroy()
		expect(function() -- Line 72
			--[[ Upvalues[1]:
				[1]: var5_upvw (copied, read and write)
			]]
			var5_upvw:fire("test", 1)
		end).to.throw()
		expect(function() -- Line 76
			--[[ Upvalues[1]:
				[1]: var5_upvw (copied, read and write)
			]]
			var5_upvw:connect(function() -- Line 77
			end)
		end).to.throw()
	end)
	it("should not fire disconnected events", function() -- Line 81
		--[[ Upvalues[2]:
			[1]: var5_upvw (read and write)
			[2]: var6_upvw (read and write)
		]]
		local var33_upvw = false
		var5_upvw:connect(function() -- Line 83
			--[[ Upvalues[1]:
				[1]: var33_upvw (read and write)
			]]
			var33_upvw = true
		end)()
		var6_upvw:FireAllClients("intercepted", 1)
		expect(var33_upvw).to.equal(false)
	end)
	it("should apply the middleware", function() -- Line 91
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
		var5_upvw = createRemote_upvr("test", builder_upvr.remote(t_upvr.string, t_upvr.number).middleware(function(arg1, arg2) -- Line 96
			--[[ Upvalues[1]:
				[1]: var36_upvw (read and write)
			]]
			var36_upvw = arg2
			return function() -- Line 98
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				return arg1("intercepted", 2)
			end
		end))
		expect(var36_upvw).to.equal(var5_upvw)
		var5_upvw:connect(function(...) -- Line 106
			--[[ Upvalues[2]:
				[1]: var37_upvw (read and write)
				[2]: var38_upvw (read and write)
			]]
			local var42, var43 = ...
			var37_upvw = var42
			var38_upvw = var43
		end)
		var6_upvw:FireAllClients("test", 1)
		expect(var37_upvw).to.equal("intercepted")
		expect(var38_upvw).to.equal(2)
	end)
	it("should fire the test listeners", function() -- Line 116
		--[[ Upvalues[2]:
			[1]: var5_upvw (read and write)
			[2]: var6_upvw (read and write)
		]]
		local var45_upvw
		local var46_upvw
		local var47_upvw
		local var48_upvw
		var5_upvw.test:onFire(function(...) -- Line 119
			--[[ Upvalues[2]:
				[1]: var45_upvw (read and write)
				[2]: var46_upvw (read and write)
			]]
			local var50, var51 = ...
			var45_upvw = var50
			var46_upvw = var51
		end)
		var6_upvw.OnServerEvent:Connect(function(arg1, ...) -- Line 123
			--[[ Upvalues[2]:
				[1]: var47_upvw (read and write)
				[2]: var48_upvw (read and write)
			]]
			local var53, var54 = ...
			var47_upvw = var53
			var48_upvw = var54
		end)
		var5_upvw:fire("test", 1)
		expect(var45_upvw).to.equal(var47_upvw)
		expect(var46_upvw).to.equal(var48_upvw)
		var45_upvw = nil
		var46_upvw = nil
		var47_upvw = nil
		var48_upvw = nil
		var5_upvw.test:disconnectAll()
		var5_upvw:fire("test", 1)
		expect(var45_upvw).to.never.be.ok()
		expect(var46_upvw).to.never.be.ok()
		expect(var47_upvw).to.equal("test")
		expect(var48_upvw).to.equal(1)
	end)
	it("should be callable", function() -- Line 142
		--[[ Upvalues[2]:
			[1]: var6_upvw (read and write)
			[2]: var5_upvw (read and write)
		]]
		local var56_upvw
		local var57_upvw
		local var58_upvw
		var6_upvw.OnServerEvent:Connect(function(...) -- Line 145
			--[[ Upvalues[3]:
				[1]: var56_upvw (read and write)
				[2]: var57_upvw (read and write)
				[3]: var58_upvw (read and write)
			]]
			local var60, var61, var62 = ...
			var56_upvw = var60
			var57_upvw = var61
			var58_upvw = var62
		end)
		var5_upvw("test", 1)
		expect(var56_upvw).to.be.ok()
		expect(var57_upvw).to.equal("test")
		expect(var58_upvw).to.equal(1)
	end)
	it("should promise an event", function() -- Line 155
		--[[ Upvalues[2]:
			[1]: var5_upvw (read and write)
			[2]: var6_upvw (read and write)
		]]
		local var64_upvw
		local var65_upvw
		var5_upvw:promise():andThen(function(...) -- Line 158
			--[[ Upvalues[2]:
				[1]: var64_upvw (read and write)
				[2]: var65_upvw (read and write)
			]]
			local var67, var68 = ...
			var64_upvw = var67
			var65_upvw = var68
		end)
		var6_upvw:FireAllClients("test", 1)
		expect(var64_upvw).to.equal("test")
		expect(var65_upvw).to.equal(1)
	end)
	it("should promise a predicated event", function() -- Line 168
		--[[ Upvalues[2]:
			[1]: var5_upvw (read and write)
			[2]: var6_upvw (read and write)
		]]
		local var70_upvw
		local var71_upvw
		var5_upvw:promise(function(arg1) -- Line 172
			if arg1 ~= "true" then
			else
			end
			return true
		end):andThen(function(...) -- Line 175
			--[[ Upvalues[2]:
				[1]: var70_upvw (read and write)
				[2]: var71_upvw (read and write)
			]]
			local var74, var75 = ...
			var70_upvw = var74
			var71_upvw = var75
		end)
		var6_upvw:FireAllClients("false", 2)
		expect(var70_upvw).to.never.be.ok()
		expect(var71_upvw).to.never.be.ok()
		var6_upvw:FireAllClients("true", 1)
		expect(var70_upvw).to.equal("true")
		expect(var71_upvw).to.equal(1)
	end)
end