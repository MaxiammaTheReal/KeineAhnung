-- Name: Buttons
-- Path: game:GetService("ReplicatedStorage").Client.Core.UI.Apps.Buttons
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6753224999993108 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:11
-- Luau version 6, Types version 3
-- Time taken: 0.031908 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage_upvr.Packages.Vide)
local tbl_5_upvr = {
	tension = 600;
	friction = 8;
}
local source_upvr = Vide.source
local derive_upvr = Vide.derive
local Players_upvr = game:GetService("Players")
local cleanup_upvr = Vide.cleanup
local apply_upvr = Vide.apply
local indexes_upvr = Vide.indexes
local TopbarPlus_upvr = require(ReplicatedStorage_upvr.Packages.TopbarPlus)
local SocialService_upvr = game:GetService("SocialService")
local useMotion_upvr = require(ReplicatedStorage_upvr.Shared.Util).ui.useMotion
local effect_upvr = Vide.effect
local RunService_upvr = game:GetService("RunService")
return function(arg1, arg2, arg3) -- Line 21
	--[[ Upvalues[13]:
		[1]: ReplicatedStorage_upvr (readonly)
		[2]: source_upvr (readonly)
		[3]: derive_upvr (readonly)
		[4]: Players_upvr (readonly)
		[5]: cleanup_upvr (readonly)
		[6]: apply_upvr (readonly)
		[7]: indexes_upvr (readonly)
		[8]: TopbarPlus_upvr (readonly)
		[9]: SocialService_upvr (readonly)
		[10]: useMotion_upvr (readonly)
		[11]: effect_upvr (readonly)
		[12]: tbl_5_upvr (readonly)
		[13]: RunService_upvr (readonly)
	]]
	local UI_upvr_2 = require(ReplicatedStorage_upvr.Client.Core.UI)
	local Placeholder_upvr = arg3.Container.Placeholder
	Placeholder_upvr.Visible = false
	local source_upvr_result1_upvr = source_upvr("")
	local source_upvr_result1_upvr_5 = source_upvr("")
	local function onAreaChanged() -- Line 37
		--[[ Upvalues[3]:
			[1]: Players_upvr (copied, readonly)
			[2]: source_upvr_result1_upvr (readonly)
			[3]: source_upvr_result1_upvr_5 (readonly)
		]]
		local Area_5 = Players_upvr.LocalPlayer:GetAttribute("Area")
		local Zone_5 = Players_upvr.LocalPlayer:GetAttribute("Zone")
		local var80 = ""
		if Area_5 then
			var80 = var80..Area_5
			if Zone_5 then
				var80 = var80..`/{Zone_5}`
			end
		end
		source_upvr_result1_upvr(var80)
		source_upvr_result1_upvr_5(Zone_5)
	end
	local Area_4 = Players_upvr.LocalPlayer:GetAttribute("Area")
	local Zone_4 = Players_upvr.LocalPlayer:GetAttribute("Zone")
	local var83 = ""
	if Area_4 then
		var83 = var83..Area_4
		if Zone_4 then
			var83 = var83..`/{Zone_4}`
		end
	end
	source_upvr_result1_upvr(var83)
	source_upvr_result1_upvr_5(Zone_4)
	cleanup_upvr(Players_upvr.LocalPlayer:GetAttributeChangedSignal("Area"):Connect(onAreaChanged))
	cleanup_upvr(Players_upvr.LocalPlayer:GetAttributeChangedSignal("Zone"):Connect(onAreaChanged))
	local tbl_3 = {}
	local var6_result1_upvr_3 = derive_upvr(function() -- Line 33
		--[[ Upvalues[1]:
			[1]: UI_upvr_2 (readonly)
		]]
		local var77 = not UI_upvr_2.Globals.Current()
		if var77 then
			var77 = not UI_upvr_2.Globals.Treadmill()
		end
		return var77
	end)
	local behaviours_upvr = require(script.behaviours)
	tbl_3[1] = indexes_upvr(source_upvr(require(script.map)), function(arg1_4, arg2_3) -- Line 60
		--[[ Upvalues[17]:
			[1]: TopbarPlus_upvr (copied, readonly)
			[2]: UI_upvr_2 (readonly)
			[3]: SocialService_upvr (copied, readonly)
			[4]: Players_upvr (copied, readonly)
			[5]: Placeholder_upvr (readonly)
			[6]: derive_upvr (copied, readonly)
			[7]: var6_result1_upvr_3 (readonly)
			[8]: source_upvr_result1_upvr (readonly)
			[9]: source_upvr_result1_upvr_5 (readonly)
			[10]: source_upvr (copied, readonly)
			[11]: useMotion_upvr (copied, readonly)
			[12]: apply_upvr (copied, readonly)
			[13]: behaviours_upvr (readonly)
			[14]: effect_upvr (copied, readonly)
			[15]: tbl_5_upvr (copied, readonly)
			[16]: cleanup_upvr (copied, readonly)
			[17]: RunService_upvr (copied, readonly)
		]]
		local arg1_4_result1_upvr = arg1_4()
		if arg1_4_result1_upvr.properties.topbar then
			local any_new_result1_upvr_2 = TopbarPlus_upvr.new()
			any_new_result1_upvr_2:setImage(arg1_4_result1_upvr.image)
			any_new_result1_upvr_2:setImageScale(0.6)
			any_new_result1_upvr_2.selected:Connect(function() -- Line 66
				--[[ Upvalues[5]:
					[1]: any_new_result1_upvr_2 (readonly)
					[2]: arg1_4_result1_upvr (readonly)
					[3]: UI_upvr_2 (copied, readonly)
					[4]: SocialService_upvr (copied, readonly)
					[5]: Players_upvr (copied, readonly)
				]]
				any_new_result1_upvr_2:deselect()
				if arg1_4_result1_upvr.behaviour.name == "toggleFrame" then
					local _1 = arg1_4_result1_upvr.behaviour.arguments[1]
					if UI_upvr_2.Globals.Current() == _1 then
						UI_upvr_2.Globals.Current(nil)
					else
						UI_upvr_2.Globals.Current(_1)
					end
				end
				if arg1_4_result1_upvr.behaviour.name == "inviteFriends" then
					SocialService_upvr:PromptGameInvite(Players_upvr.LocalPlayer)
				end
			end)
			if arg1_4_result1_upvr.displayName then
				any_new_result1_upvr_2:setLabel(arg1_4_result1_upvr.displayName)
			end
			return
		end
		any_new_result1_upvr_2 = Placeholder_upvr:Clone()
		local var92_upvr = any_new_result1_upvr_2
		local source_upvr_result1_upvr_4 = source_upvr(false)
		local source_upvr_result1_upvr_3 = source_upvr(false)
		local useMotion_upvr_result1_2, useMotion_upvr_result2_upvr_4 = useMotion_upvr(1)
		local useMotion_upvr_result1, var13_result2_upvr_2 = useMotion_upvr(UDim2.fromScale(0.5, 0.5))
		local var13_result1, useMotion_upvr_result2_upvr = useMotion_upvr(0)
		var92_upvr.Name = arg2_3
		var92_upvr.LayoutOrder = arg1_4_result1_upvr.order
		var92_upvr.Content.TextLabel.Text = arg2_3
		var92_upvr.Content.ImageLabel.Image = arg1_4_result1_upvr.image
		var92_upvr.Content.ImageLabel1.Image = arg1_4_result1_upvr.image
		var92_upvr.Content.Fx.Sunburst.Visible = arg1_4_result1_upvr.properties.sunburst
		var92_upvr.Content.Fx.Glow.Visible = arg1_4_result1_upvr.properties.glow
		var92_upvr.Visible = true
		apply_upvr(var92_upvr.UIScale)({
			Scale = useMotion_upvr_result1_2;
		})
		apply_upvr(var92_upvr.Content)({
			Rotation = var13_result1;
			Position = useMotion_upvr_result1;
		})
		apply_upvr(var92_upvr)({
			MouseEnter = function() -- Line 151, Named "MouseEnter"
				--[[ Upvalues[1]:
					[1]: source_upvr_result1_upvr_4 (readonly)
				]]
				source_upvr_result1_upvr_4(true)
			end;
			MouseLeave = function() -- Line 152, Named "MouseLeave"
				--[[ Upvalues[1]:
					[1]: source_upvr_result1_upvr_4 (readonly)
				]]
				source_upvr_result1_upvr_4(false)
			end;
			MouseButton1Down = function() -- Line 153, Named "MouseButton1Down"
				--[[ Upvalues[1]:
					[1]: source_upvr_result1_upvr_3 (readonly)
				]]
				source_upvr_result1_upvr_3(true)
			end;
			MouseButton1Up = function() -- Line 154, Named "MouseButton1Up"
				--[[ Upvalues[1]:
					[1]: source_upvr_result1_upvr_3 (readonly)
				]]
				source_upvr_result1_upvr_3(false)
			end;
		})
		local derive_upvr_result1_upvr = derive_upvr(function() -- Line 87
			--[[ Upvalues[4]:
				[1]: var6_result1_upvr_3 (copied, readonly)
				[2]: arg1_4_result1_upvr (readonly)
				[3]: source_upvr_result1_upvr (copied, readonly)
				[4]: source_upvr_result1_upvr_5 (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var94
			if not var94 then
				var94 = false
				return var94
			end
			var94 = arg1_4_result1_upvr.properties.area
			if not var94 then
				var94 = true
				return var94
			end
			var94 = type(arg1_4_result1_upvr.properties.area)
			local var95
			if var94 == "table" then
				var94 = source_upvr_result1_upvr()
				if not var94 or var94 == "" then
					return false
				end
				var95 = "^([^/]+)"
				if not var94:match(var95) then
					return false
				end
				var95 = var94:match(var95):match("Area(%d+)")
				local tonumber_result1 = tonumber(var95)
				var95 = false
				if tonumber_result1 ~= nil then
					if table.find(arg1_4_result1_upvr.properties.area, tonumber_result1) == nil then
						var95 = false
					else
						var95 = true
					end
				end
				local var98
				if arg1_4_result1_upvr.properties.zone then
					if not source_upvr_result1_upvr_5 or not source_upvr_result1_upvr_5() then
						local var99
					end
					if not var99 then
						return false
					end
					if type(arg1_4_result1_upvr.properties.zone) == "table" then
						local var100 = var95
						if var100 then
							if table.find(arg1_4_result1_upvr.properties.zone, var99) == nil then
								var100 = false
							else
								var100 = true
							end
						end
						return var100
					end
					var100 = var95
					local var101 = var100
					if var101 then
						if var99 ~= arg1_4_result1_upvr.properties.zone then
						else
						end
					end
					return true
				end
				return var95
			end
			if source_upvr_result1_upvr() ~= arg1_4_result1_upvr.properties.area then
				var94 = false
			else
				var94 = true
			end
			return var94
		end)
		local any_any_result1_upvr = behaviours_upvr[arg1_4_result1_upvr.behaviour.name](var92_upvr, {
			area = source_upvr_result1_upvr;
			shown = var6_result1_upvr_3;
		}, unpack(arg1_4_result1_upvr.behaviour.arguments))
		effect_upvr(function() -- Line 159
			--[[ Upvalues[7]:
				[1]: arg1_4_result1_upvr (readonly)
				[2]: source_upvr_result1_upvr_3 (readonly)
				[3]: source_upvr_result1_upvr_4 (readonly)
				[4]: derive_upvr_result1_upvr (readonly)
				[5]: any_any_result1_upvr (readonly)
				[6]: var13_result2_upvr_2 (readonly)
				[7]: useMotion_upvr_result2_upvr_4 (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local derive_upvr_result1_upvr_result1 = derive_upvr_result1_upvr()
			if derive_upvr_result1_upvr_result1 then
				derive_upvr_result1_upvr_result1 = any_any_result1_upvr()
			end
			if source_upvr_result1_upvr_4() then
				local var118 = 700
				if source_upvr_result1_upvr_3() then
					-- KONSTANTWARNING: GOTO [26] #25
				end
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if source_upvr_result1_upvr_3() then
					source_upvr_result1_upvr_3(false)
				end
			end
			if derive_upvr_result1_upvr_result1 then
			else
			end
			local tbl_8 = {}
			if derive_upvr_result1_upvr_result1 then
				-- KONSTANTWARNING: GOTO [40] #38
			end
			tbl_8.friction = 40
			tbl_8.tension = var118 or 400
			var13_result2_upvr_2:spring(UDim2.fromScale(0.5, 2), tbl_8)
			if derive_upvr_result1_upvr_result1 then
				-- KONSTANTWARNING: GOTO [53] #48
			end
			local tbl_7 = {}
			if derive_upvr_result1_upvr_result1 then
			else
			end
			tbl_7.friction = 40
			tbl_7.tension = var118 or 700
			useMotion_upvr_result2_upvr_4:spring(arg1_4_result1_upvr.properties.scale * 1.1 * 0.9 * 0, tbl_7)
		end)
		useMotion_upvr_result2_upvr:spring(0, tbl_5_upvr)
		local var122_upvw = 0
		local os_clock_result1_upvw_2 = os.clock()
		local randint_upvw = math.random(5, 10)
		cleanup_upvr(RunService_upvr.PreRender:Connect(function(arg1_5) -- Line 199
			--[[ Upvalues[6]:
				[1]: var122_upvw (read and write)
				[2]: arg1_4_result1_upvr (readonly)
				[3]: os_clock_result1_upvw_2 (read and write)
				[4]: randint_upvw (read and write)
				[5]: useMotion_upvr_result2_upvr (readonly)
				[6]: var92_upvr (readonly)
			]]
			var122_upvw += arg1_5
			if arg1_4_result1_upvr.properties.shake and randint_upvw < os.clock() - os_clock_result1_upvw_2 then
				os_clock_result1_upvw_2 = os.clock()
				randint_upvw = math.random(5, 10)
				useMotion_upvr_result2_upvr:impulse(0.7 * math.random(-1, 1))
			end
			if arg1_4_result1_upvr.properties.sunburst then
				var92_upvr.Content.Fx.Sunburst.Rotation = var122_upvw * 10
			end
		end))
		return var92_upvr
	end)
	apply_upvr(arg3.Container)(tbl_3)
end