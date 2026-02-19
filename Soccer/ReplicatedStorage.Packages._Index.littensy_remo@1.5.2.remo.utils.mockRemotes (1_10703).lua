-- Name: mockRemotes
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_remo@1.5.2.remo.utils.mockRemotes
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7204170999975759 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:46
-- Luau version 6, Types version 3
-- Time taken: 0.005567 seconds

local Players_upvr = game:GetService("Players")
local tbl_upvr_3 = {}
local tbl_upvr = {}
return {
	createMockRemoteEvent = function(arg1) -- Line 6, Named "createMockRemoteEvent"
		--[[ Upvalues[2]:
			[1]: tbl_upvr_3 (readonly)
			[2]: Players_upvr (readonly)
		]]
		if tbl_upvr_3[arg1] then
			return tbl_upvr_3[arg1]
		end
		local module = {}
		module.Name = arg1
		module.OnClientEvent = {}
		module.OnServerEvent = {}
		local tbl_upvr_4 = {}
		local tbl_upvr_2 = {}
		local function Connect(arg1_2, arg2) -- Line 20
			--[[ Upvalues[1]:
				[1]: tbl_upvr_4 (readonly)
			]]
			tbl_upvr_4[arg2] = true
			local module_2 = {
				Connected = true;
			}
			local function Disconnect(arg1_3) -- Line 25
				--[[ Upvalues[2]:
					[1]: tbl_upvr_4 (copied, readonly)
					[2]: arg2 (readonly)
				]]
				arg1_3.Connected = false
				tbl_upvr_4[arg2] = nil
			end
			module_2.Disconnect = Disconnect
			return module_2
		end
		module.OnClientEvent.Connect = Connect
		module.OnServerEvent.Connect = function(arg1_4, arg2) -- Line 32, Named "Connect"
			--[[ Upvalues[1]:
				[1]: tbl_upvr_2 (readonly)
			]]
			tbl_upvr_2[arg2] = true
			return {
				Connected = true;
				Disconnect = function(arg1_5) -- Line 37, Named "Disconnect"
					--[[ Upvalues[2]:
						[1]: tbl_upvr_2 (copied, readonly)
						[2]: arg2 (readonly)
					]]
					arg1_5.Connected = false
					tbl_upvr_2[arg2] = nil
				end;
			}
		end
		function module.FireClient(arg1_6, arg2, ...) -- Line 44
			--[[ Upvalues[1]:
				[1]: tbl_upvr_4 (readonly)
			]]
			for i in tbl_upvr_4 do
				i(...)
			end
		end
		function module.FireAllClients(arg1_7, ...) -- Line 50
			--[[ Upvalues[1]:
				[1]: tbl_upvr_4 (readonly)
			]]
			for i_2 in tbl_upvr_4 do
				i_2(...)
			end
		end
		function module.FireServer(arg1_8, ...) -- Line 56
			--[[ Upvalues[2]:
				[1]: tbl_upvr_2 (readonly)
				[2]: Players_upvr (copied, readonly)
			]]
			for i_3 in tbl_upvr_2 do
				local LocalPlayer_2 = Players_upvr.LocalPlayer
				if not LocalPlayer_2 then
					LocalPlayer_2 = {}
				end
				i_3(LocalPlayer_2, ...)
			end
		end
		local function Destroy(arg1_9) -- Line 62
			--[[ Upvalues[4]:
				[1]: tbl_upvr_3 (copied, readonly)
				[2]: arg1 (readonly)
				[3]: tbl_upvr_4 (readonly)
				[4]: tbl_upvr_2 (readonly)
			]]
			tbl_upvr_3[arg1] = nil
			table.clear(tbl_upvr_4)
			table.clear(tbl_upvr_2)
		end
		module.Destroy = Destroy
		tbl_upvr_3[arg1] = module
		return module
	end;
	createMockRemoteFunction = function(arg1) -- Line 73, Named "createMockRemoteFunction"
		--[[ Upvalues[2]:
			[1]: tbl_upvr (readonly)
			[2]: Players_upvr (readonly)
		]]
		if tbl_upvr[arg1] then
			return tbl_upvr[arg1]
		end
		local module_3_upvr = {}
		module_3_upvr.Name = arg1
		function module_3_upvr.OnClientInvoke() -- Line 80
		end
		function module_3_upvr.OnServerInvoke() -- Line 81
		end
		function module_3_upvr.InvokeClient(arg1_10, arg2, ...) -- Line 84
			return arg1_10.OnClientInvoke(...)
		end
		function module_3_upvr.InvokeServer(arg1_11, ...) -- Line 88
			--[[ Upvalues[1]:
				[1]: Players_upvr (copied, readonly)
			]]
			local LocalPlayer = Players_upvr.LocalPlayer
			if not LocalPlayer then
				LocalPlayer = {}
			end
			return arg1_11.OnServerInvoke(LocalPlayer, ...)
		end
		function module_3_upvr.Destroy(arg1_12) -- Line 92
			--[[ Upvalues[3]:
				[1]: tbl_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: module_3_upvr (readonly)
			]]
			tbl_upvr[arg1] = nil
			function module_3_upvr.OnClientInvoke() -- Line 94
			end
			function module_3_upvr.OnServerInvoke() -- Line 95
			end
		end
		tbl_upvr[arg1] = module_3_upvr
		return module_3_upvr
	end;
	getMockRemoteEvent = function(arg1) -- Line 103, Named "getMockRemoteEvent"
		--[[ Upvalues[1]:
			[1]: tbl_upvr_3 (readonly)
		]]
		return tbl_upvr_3[arg1]
	end;
	getMockRemoteFunction = function(arg1) -- Line 107, Named "getMockRemoteFunction"
		--[[ Upvalues[1]:
			[1]: tbl_upvr (readonly)
		]]
		return tbl_upvr[arg1]
	end;
	destroyAll = function() -- Line 111, Named "destroyAll"
		--[[ Upvalues[2]:
			[1]: tbl_upvr_3 (readonly)
			[2]: tbl_upvr (readonly)
		]]
		table.clear(tbl_upvr_3)
		table.clear(tbl_upvr)
	end;
}