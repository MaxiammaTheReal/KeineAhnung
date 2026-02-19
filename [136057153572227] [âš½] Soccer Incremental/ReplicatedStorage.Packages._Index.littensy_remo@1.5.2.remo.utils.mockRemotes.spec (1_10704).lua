-- Name: mockRemotes.spec
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_remo@1.5.2.remo.utils.mockRemotes.spec
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6920919999975013 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:47
-- Luau version 6, Types version 3
-- Time taken: 0.013612 seconds

return function() -- Line 1
	local mockRemotes_upvr = require(script.Parent.mockRemotes)
	afterEach(function() -- Line 4
		--[[ Upvalues[1]:
			[1]: mockRemotes_upvr (readonly)
		]]
		mockRemotes_upvr.destroyAll()
	end)
	describe("createMockRemoteEvent", function() -- Line 8
		--[[ Upvalues[1]:
			[1]: mockRemotes_upvr (readonly)
		]]
		it("should return a RemoteEvent-like object", function() -- Line 9
			--[[ Upvalues[1]:
				[1]: mockRemotes_upvr (copied, readonly)
			]]
			local any_createMockRemoteEvent_result1_6 = mockRemotes_upvr.createMockRemoteEvent("test")
			expect(any_createMockRemoteEvent_result1_6).to.be.ok()
			expect(any_createMockRemoteEvent_result1_6.Name).to.equal("test")
			expect(any_createMockRemoteEvent_result1_6.OnClientEvent).to.be.ok()
			expect(any_createMockRemoteEvent_result1_6.OnServerEvent).to.be.ok()
			expect(any_createMockRemoteEvent_result1_6.FireClient).to.be.ok()
			expect(any_createMockRemoteEvent_result1_6.FireAllClients).to.be.ok()
			expect(any_createMockRemoteEvent_result1_6.FireServer).to.be.ok()
			expect(any_createMockRemoteEvent_result1_6.Destroy).to.be.ok()
		end)
		it("should return the same object for the same name", function() -- Line 21
			--[[ Upvalues[1]:
				[1]: mockRemotes_upvr (copied, readonly)
			]]
			expect(mockRemotes_upvr.createMockRemoteEvent("test")).to.equal(mockRemotes_upvr.createMockRemoteEvent("test"))
		end)
		it("should fire OnClientEvent listeners", function() -- Line 27
			--[[ Upvalues[1]:
				[1]: mockRemotes_upvr (copied, readonly)
			]]
			local any_createMockRemoteEvent_result1_4 = mockRemotes_upvr.createMockRemoteEvent("test")
			local var10_upvw
			local var11_upvw
			any_createMockRemoteEvent_result1_4.OnClientEvent:Connect(function(...) -- Line 31
				--[[ Upvalues[1]:
					[1]: var10_upvw (read and write)
				]]
				var10_upvw = {...}
			end)
			any_createMockRemoteEvent_result1_4.OnClientEvent:Connect(function(...) -- Line 35
				--[[ Upvalues[1]:
					[1]: var11_upvw (read and write)
				]]
				var11_upvw = {...}
			end)
			any_createMockRemoteEvent_result1_4:FireClient({}, "test", 1)
			expect(var10_upvw).to.be.ok()
			expect(var10_upvw[1]).to.equal("test")
			expect(var10_upvw[2]).to.equal(1)
			expect(var11_upvw).to.be.ok()
			expect(var11_upvw[1]).to.equal("test")
			expect(var11_upvw[2]).to.equal(1)
		end)
		it("should fire OnServerEvent listeners", function() -- Line 50
			--[[ Upvalues[1]:
				[1]: mockRemotes_upvr (copied, readonly)
			]]
			local any_createMockRemoteEvent_result1_5 = mockRemotes_upvr.createMockRemoteEvent("test")
			local var18_upvw
			local var19_upvw
			any_createMockRemoteEvent_result1_5.OnServerEvent:Connect(function(arg1, ...) -- Line 54
				--[[ Upvalues[1]:
					[1]: var18_upvw (read and write)
				]]
				local tbl_4 = {}
				tbl_4[1] = arg1
				tbl_4[2] = ...
				var18_upvw = tbl_4
			end)
			any_createMockRemoteEvent_result1_5.OnServerEvent:Connect(function(arg1, ...) -- Line 58
				--[[ Upvalues[1]:
					[1]: var19_upvw (read and write)
				]]
				local tbl_3 = {}
				tbl_3[1] = arg1
				tbl_3[2] = ...
				var19_upvw = tbl_3
			end)
			any_createMockRemoteEvent_result1_5:FireServer("test", 1)
			expect(var18_upvw).to.be.ok()
			expect(var18_upvw[1]).to.be.ok()
			expect(var18_upvw[2]).to.equal("test")
			expect(var18_upvw[3]).to.equal(1)
			expect(var19_upvw).to.be.ok()
			expect(var18_upvw[1]).to.be.ok()
			expect(var19_upvw[2]).to.equal("test")
			expect(var19_upvw[3]).to.equal(1)
		end)
		it("should not fire disconnected listeners", function() -- Line 75
			--[[ Upvalues[1]:
				[1]: mockRemotes_upvr (copied, readonly)
			]]
			local any_createMockRemoteEvent_result1_3 = mockRemotes_upvr.createMockRemoteEvent("test")
			local var26_upvw
			local var27_upvw
			any_createMockRemoteEvent_result1_3.OnServerEvent:Connect(function(arg1, ...) -- Line 83
				--[[ Upvalues[1]:
					[1]: var27_upvw (read and write)
				]]
				local tbl_2 = {}
				tbl_2[1] = arg1
				tbl_2[2] = ...
				var27_upvw = tbl_2
			end)
			any_createMockRemoteEvent_result1_3.OnServerEvent:Connect(function(arg1, ...) -- Line 79
				--[[ Upvalues[1]:
					[1]: var26_upvw (read and write)
				]]
				local tbl_5 = {}
				tbl_5[1] = arg1
				tbl_5[2] = ...
				var26_upvw = tbl_5
			end):Disconnect()
			any_createMockRemoteEvent_result1_3:FireServer("test", 1)
			expect(var26_upvw).to.never.be.ok()
			expect(var27_upvw).to.be.ok()
			expect(var27_upvw[1]).to.be.ok()
			expect(var27_upvw[2]).to.equal("test")
			expect(var27_upvw[3]).to.equal(1)
		end)
		it("should not fire after being destroyed", function() -- Line 97
			--[[ Upvalues[1]:
				[1]: mockRemotes_upvr (copied, readonly)
			]]
			local any_createMockRemoteEvent_result1 = mockRemotes_upvr.createMockRemoteEvent("test")
			local var34_upvw
			any_createMockRemoteEvent_result1.OnServerEvent:Connect(function(arg1, ...) -- Line 101
				--[[ Upvalues[1]:
					[1]: var34_upvw (read and write)
				]]
				local tbl_6 = {}
				tbl_6[1] = arg1
				tbl_6[2] = ...
				var34_upvw = tbl_6
			end)
			any_createMockRemoteEvent_result1:Destroy()
			any_createMockRemoteEvent_result1:FireServer("test", 1)
			expect(var34_upvw).to.never.be.ok()
		end)
		it("should not fire the wrong listeners", function() -- Line 111
			--[[ Upvalues[1]:
				[1]: mockRemotes_upvr (copied, readonly)
			]]
			local any_createMockRemoteEvent_result1_2 = mockRemotes_upvr.createMockRemoteEvent("client")
			local any_createMockRemoteEvent_result1_7 = mockRemotes_upvr.createMockRemoteEvent("server")
			local var40_upvw = false
			any_createMockRemoteEvent_result1_7.OnServerEvent:Connect(function() -- Line 116
				--[[ Upvalues[1]:
					[1]: var40_upvw (read and write)
				]]
				var40_upvw = true
			end)
			any_createMockRemoteEvent_result1_2.OnClientEvent:Connect(function() -- Line 120
				--[[ Upvalues[1]:
					[1]: var40_upvw (read and write)
				]]
				var40_upvw = true
			end)
			any_createMockRemoteEvent_result1_2:FireServer()
			any_createMockRemoteEvent_result1_7:FireClient({})
			expect(var40_upvw).to.equal(false)
		end)
	end)
	describe("createMockRemoteFunction", function() -- Line 131
		--[[ Upvalues[1]:
			[1]: mockRemotes_upvr (readonly)
		]]
		it("should return a RemoteFunction-like object", function() -- Line 132
			--[[ Upvalues[1]:
				[1]: mockRemotes_upvr (copied, readonly)
			]]
			local any_createMockRemoteFunction_result1_3 = mockRemotes_upvr.createMockRemoteFunction("test")
			expect(any_createMockRemoteFunction_result1_3).to.be.ok()
			expect(any_createMockRemoteFunction_result1_3.Name).to.equal("test")
			expect(any_createMockRemoteFunction_result1_3.OnClientInvoke).to.be.ok()
			expect(any_createMockRemoteFunction_result1_3.OnServerInvoke).to.be.ok()
			expect(any_createMockRemoteFunction_result1_3.InvokeClient).to.be.ok()
			expect(any_createMockRemoteFunction_result1_3.InvokeServer).to.be.ok()
			expect(any_createMockRemoteFunction_result1_3.Destroy).to.be.ok()
		end)
		it("should return the same object for the same name", function() -- Line 143
			--[[ Upvalues[1]:
				[1]: mockRemotes_upvr (copied, readonly)
			]]
			expect(mockRemotes_upvr.createMockRemoteFunction("test")).to.equal(mockRemotes_upvr.createMockRemoteFunction("test"))
		end)
		it("should invoke the OnClientInvoke callback", function() -- Line 149
			--[[ Upvalues[1]:
				[1]: mockRemotes_upvr (copied, readonly)
			]]
			local any_createMockRemoteFunction_result1_2 = mockRemotes_upvr.createMockRemoteFunction("test")
			local var49_upvw
			local function OnClientInvoke(...) -- Line 153
				--[[ Upvalues[1]:
					[1]: var49_upvw (read and write)
				]]
				var49_upvw = {...}
				return "test"
			end
			any_createMockRemoteFunction_result1_2.OnClientInvoke = OnClientInvoke
			expect(var49_upvw).to.be.ok()
			expect(var49_upvw[1]).to.equal(1)
			expect(any_createMockRemoteFunction_result1_2:InvokeClient({}, 1)).to.equal("test")
		end)
		it("should invoke the OnServerInvoke callback", function() -- Line 165
			--[[ Upvalues[1]:
				[1]: mockRemotes_upvr (copied, readonly)
			]]
			local any_createMockRemoteFunction_result1_5 = mockRemotes_upvr.createMockRemoteFunction("test")
			local var53_upvw
			local function OnServerInvoke(arg1, ...) -- Line 169
				--[[ Upvalues[1]:
					[1]: var53_upvw (read and write)
				]]
				local tbl_7 = {}
				tbl_7[1] = arg1
				tbl_7[2] = ...
				var53_upvw = tbl_7
				return "test"
			end
			any_createMockRemoteFunction_result1_5.OnServerInvoke = OnServerInvoke
			expect(var53_upvw).to.be.ok()
			expect(var53_upvw[1]).to.be.ok()
			expect(var53_upvw[2]).to.equal(1)
			expect(any_createMockRemoteFunction_result1_5:InvokeServer(1)).to.equal("test")
		end)
		it("should not invoke after being destroyed", function() -- Line 182
			--[[ Upvalues[1]:
				[1]: mockRemotes_upvr (copied, readonly)
			]]
			local any_createMockRemoteFunction_result1_4 = mockRemotes_upvr.createMockRemoteFunction("test")
			local var57_upvw
			local function OnServerInvoke(arg1, ...) -- Line 186
				--[[ Upvalues[1]:
					[1]: var57_upvw (read and write)
				]]
				local tbl = {}
				tbl[1] = arg1
				tbl[2] = ...
				var57_upvw = tbl
				return "test"
			end
			any_createMockRemoteFunction_result1_4.OnServerInvoke = OnServerInvoke
			any_createMockRemoteFunction_result1_4:Destroy()
			expect(var57_upvw).to.never.be.ok()
			expect(any_createMockRemoteFunction_result1_4:InvokeServer(1)).to.never.be.ok()
		end)
		it("should not invoke the wrong callback", function() -- Line 199
			--[[ Upvalues[1]:
				[1]: mockRemotes_upvr (copied, readonly)
			]]
			local any_createMockRemoteFunction_result1 = mockRemotes_upvr.createMockRemoteFunction("client")
			local any_createMockRemoteFunction_result1_6 = mockRemotes_upvr.createMockRemoteFunction("server")
			local var62_upvw = false
			function any_createMockRemoteFunction_result1_6.OnServerInvoke() -- Line 204
				--[[ Upvalues[1]:
					[1]: var62_upvw (read and write)
				]]
				var62_upvw = true
			end
			function any_createMockRemoteFunction_result1.OnClientInvoke() -- Line 208
				--[[ Upvalues[1]:
					[1]: var62_upvw (read and write)
				]]
				var62_upvw = true
			end
			any_createMockRemoteFunction_result1:InvokeServer()
			any_createMockRemoteFunction_result1_6:InvokeClient({})
			expect(var62_upvw).to.equal(false)
		end)
	end)
end