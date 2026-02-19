-- Name: Footballs
-- Path: game:GetService("ReplicatedStorage").Client.Core.Loop.Footballs
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.9155448999954388 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:24
-- Luau version 6, Types version 3
-- Time taken: 0.041529 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage_upvr.Packages.Vide)
local Util_upvr = require(ReplicatedStorage_upvr.Shared.Util)
local SoundInstances_upvr = ReplicatedStorage_upvr.Shared.Assets.SoundInstances
local root_upvr = Vide.root
local useAtom_upvr = require(ReplicatedStorage_upvr.Packages.VideCharm).useAtom
local Players_upvr = game:GetService("Players")
local cleanup_upvr = Vide.cleanup
local RunService_upvr = game:GetService("RunService")
local indexes_upvr = Vide.indexes
local source_upvr = Vide.source
local useMotion_upvr = Util_upvr.ui.useMotion
local Mutations_upvr = require(ReplicatedStorage_upvr.Shared.Modules.Libraries.Mutations)
local UI_upvr = require(ReplicatedStorage_upvr.Client.Core.UI)
local apply_upvr = Vide.apply
local derive_upvr = Vide.derive
local effect_upvr = Vide.effect
local Loop_upvr = require(ReplicatedStorage_upvr.Client.Core.Loop):GetService("Loop")
local Sounds_upvr = require(ReplicatedStorage_upvr.Shared.Assets.Sounds)
local children_5_upvr = SoundInstances_upvr.Kick:GetChildren()
local Character_3_upvr = require(ReplicatedStorage_upvr.Client.Core.Character)
local RichFormat_upvr = require(ReplicatedStorage_upvr.Packages.RichFormat)
return function(arg1, arg2) -- Line 43
	--[[ Upvalues[21]:
		[1]: root_upvr (readonly)
		[2]: useAtom_upvr (readonly)
		[3]: Players_upvr (readonly)
		[4]: cleanup_upvr (readonly)
		[5]: RunService_upvr (readonly)
		[6]: indexes_upvr (readonly)
		[7]: source_upvr (readonly)
		[8]: useMotion_upvr (readonly)
		[9]: ReplicatedStorage_upvr (readonly)
		[10]: Mutations_upvr (readonly)
		[11]: UI_upvr (readonly)
		[12]: Util_upvr (readonly)
		[13]: apply_upvr (readonly)
		[14]: derive_upvr (readonly)
		[15]: effect_upvr (readonly)
		[16]: Loop_upvr (readonly)
		[17]: Sounds_upvr (readonly)
		[18]: children_5_upvr (readonly)
		[19]: SoundInstances_upvr (readonly)
		[20]: Character_3_upvr (readonly)
		[21]: RichFormat_upvr (readonly)
	]]
	local function _() -- Line 44
		--[[ Upvalues[23]:
			[1]: useAtom_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Players_upvr (copied, readonly)
			[4]: cleanup_upvr (copied, readonly)
			[5]: RunService_upvr (copied, readonly)
			[6]: arg2 (readonly)
			[7]: indexes_upvr (copied, readonly)
			[8]: source_upvr (copied, readonly)
			[9]: root_upvr (copied, readonly)
			[10]: useMotion_upvr (copied, readonly)
			[11]: ReplicatedStorage_upvr (copied, readonly)
			[12]: Mutations_upvr (copied, readonly)
			[13]: UI_upvr (copied, readonly)
			[14]: Util_upvr (copied, readonly)
			[15]: apply_upvr (copied, readonly)
			[16]: derive_upvr (copied, readonly)
			[17]: effect_upvr (copied, readonly)
			[18]: Loop_upvr (copied, readonly)
			[19]: Sounds_upvr (copied, readonly)
			[20]: children_5_upvr (copied, readonly)
			[21]: SoundInstances_upvr (copied, readonly)
			[22]: Character_3_upvr (copied, readonly)
			[23]: RichFormat_upvr (copied, readonly)
		]]
		debug.profilebegin("Football")
		local function _(arg1_2) -- Line 53, Named "getPointFrom3dPosition"
			local any_WorldToViewportPoint_result1, any_WorldToViewportPoint_result2_3 = workspace.CurrentCamera:WorldToViewportPoint(arg1_2)
			return any_WorldToViewportPoint_result1, any_WorldToViewportPoint_result2_3
		end
		local LocalPlayer_upvr_3 = Players_upvr.LocalPlayer
		local os_clock_result1_8_upvw = os.clock()
		cleanup_upvr(RunService_upvr.PreRender:Connect(function(arg1_3) -- Line 60
			--[[ Upvalues[3]:
				[1]: LocalPlayer_upvr_3 (readonly)
				[2]: os_clock_result1_8_upvw (read and write)
				[3]: arg2 (copied, readonly)
			]]
			local os_clock_result1_5 = os.clock()
			local Character_2 = LocalPlayer_upvr_3.Character
			local var68 = Character_2
			if var68 then
				var68 = Character_2:FindFirstChild("HumanoidRootPart")
			end
			local var69 = Character_2
			if var69 then
				var69 = Character_2:FindFirstChild("Humanoid")
			end
			if not var68 then
			else
				if 0.01 < os_clock_result1_5 - os_clock_result1_8_upvw then
					os_clock_result1_8_upvw = os_clock_result1_5
					local var70
					if var70 then
						var70 = nil
						for _, v_5 in workspace.Temp:GetChildren() do
							if v_5:HasTag("Football") and not v_5:GetAttribute("Kicked") then
								local PrimaryPart_2 = v_5.PrimaryPart
								if PrimaryPart_2 then
									if (PrimaryPart_2.Position - var68.Position).Magnitude < math.huge then
										var70 = v_5
									end
								end
							end
						end
						if var70 and var69 then
							var69.WalkToPoint = var70.PrimaryPart.Position
						end
					end
				end
				if var69 then
					if arg2() then
						if var69.MoveDirection.Magnitude ~= 0 then
							arg2(false)
						end
					end
				end
			end
		end))
		indexes_upvr(useAtom_upvr(arg1), function(arg1_4, arg2_2) -- Line 98
			--[[ Upvalues[19]:
				[1]: source_upvr (copied, readonly)
				[2]: root_upvr (copied, readonly)
				[3]: useMotion_upvr (copied, readonly)
				[4]: Players_upvr (copied, readonly)
				[5]: ReplicatedStorage_upvr (copied, readonly)
				[6]: cleanup_upvr (copied, readonly)
				[7]: Mutations_upvr (copied, readonly)
				[8]: UI_upvr (copied, readonly)
				[9]: Util_upvr (copied, readonly)
				[10]: RunService_upvr (copied, readonly)
				[11]: apply_upvr (copied, readonly)
				[12]: derive_upvr (copied, readonly)
				[13]: effect_upvr (copied, readonly)
				[14]: Loop_upvr (copied, readonly)
				[15]: Sounds_upvr (copied, readonly)
				[16]: children_5_upvr (copied, readonly)
				[17]: SoundInstances_upvr (copied, readonly)
				[18]: Character_3_upvr (copied, readonly)
				[19]: RichFormat_upvr (copied, readonly)
			]]
			local unpack_result1_upvr, unpack_result2, unpack_result3_upvr = unpack(arg1_4())
			local source_upvr_result1_upvr = source_upvr(false)
			local string_split_result1_upvw = string.split(unpack_result2, '/')
			local source_upvr_result1_upvr_2 = source_upvr(true)
			local var13_result1_upvr = source_upvr(false)
			local root_upvr_result1_upvr = root_upvr(function(arg1_5) -- Line 106
				--[[ Upvalues[25]:
					[1]: string_split_result1_upvw (read and write)
					[2]: useMotion_upvr (copied, readonly)
					[3]: Players_upvr (copied, readonly)
					[4]: ReplicatedStorage_upvr (copied, readonly)
					[5]: arg2_2 (readonly)
					[6]: cleanup_upvr (copied, readonly)
					[7]: unpack_result3_upvr (readonly)
					[8]: Mutations_upvr (copied, readonly)
					[9]: UI_upvr (copied, readonly)
					[10]: Util_upvr (copied, readonly)
					[11]: RunService_upvr (copied, readonly)
					[12]: source_upvr_result1_upvr_2 (readonly)
					[13]: apply_upvr (copied, readonly)
					[14]: derive_upvr (copied, readonly)
					[15]: effect_upvr (copied, readonly)
					[16]: var13_result1_upvr (readonly)
					[17]: Loop_upvr (copied, readonly)
					[18]: Sounds_upvr (copied, readonly)
					[19]: children_5_upvr (copied, readonly)
					[20]: SoundInstances_upvr (copied, readonly)
					[21]: Character_3_upvr (copied, readonly)
					[22]: root_upvr (copied, readonly)
					[23]: RichFormat_upvr (copied, readonly)
					[24]: unpack_result1_upvr (readonly)
					[25]: source_upvr_result1_upvr (readonly)
				]]
				local random_state = Random.new()
				local SOME_2 = workspace.Areas[string_split_result1_upvw[1]].Zones:FindFirstChild(string_split_result1_upvw[2])
				local useMotion_upvr_result1_upvr_3, useMotion_upvr_result2_3_upvr = useMotion_upvr(0)
				local var14_result1_upvr, var14_result2 = useMotion_upvr(1)
				local LocalPlayer_upvr = Players_upvr.LocalPlayer
				if LocalPlayer_upvr.Character then
				end
				local clone_upvr_2 = ReplicatedStorage_upvr.Shared.Assets.Ball:Clone()
				local PrimaryPart_5_upvr = clone_upvr_2.PrimaryPart
				clone_upvr_2.Name = arg2_2
				clone_upvr_2:SetAttribute("Size", PrimaryPart_5_upvr.Size)
				clone_upvr_2:SetAttribute("Kicked", false)
				clone_upvr_2.Parent = workspace.Temp
				clone_upvr_2:AddTag("Football")
				cleanup_upvr(clone_upvr_2)
				for i, v in clone_upvr_2:GetDescendants() do
					if v:IsA("ParticleEmitter") then
						v:SetAttribute("WasEnabled", v.Enabled)
						v.Enabled = false
					end
					if v:IsA("Trail") then
						v:SetAttribute("WasEnabled", v.Enabled)
						v.Enabled = false
					end
				end
				if unpack_result3_upvr ~= 0 then
					i = unpack_result3_upvr
					v = ReplicatedStorage_upvr.Shared.Assets
					i = v.VFX
					i = unpack_result3_upvr
					local SOME_4 = i.Balls.Mutations:FindFirstChild(i)
					if SOME_4 then
						SOME_4.Hit:Clone().Parent = clone_upvr_2
						SOME_4.Root:Clone().Parent = clone_upvr_2
						SOME_4.Highlight:Clone().Parent = clone_upvr_2
						i = SOME_4.Configuration:GetAttribute("PrimaryColor")
						clone_upvr_2.Part.Color = i
						v = Enum.Material
						i = v[SOME_4.Configuration:GetAttribute("PrimaryMaterial")]
						clone_upvr_2.Part.Material = i
						i = SOME_4.Configuration:GetAttribute("SecondaryColor")
						clone_upvr_2.Part2.Color = i
						v = Enum.Material
						i = v[SOME_4.Configuration:GetAttribute("SecondaryMaterial")]
						clone_upvr_2.Part2.Material = i
						v = UI_upvr
						i = v.Frames
						if i.Settings then
							v = UI_upvr
							i = v.Frames
							v = 3
							if not i.Settings:getOptionEnabled(v) then
								v = Util_upvr
								i = v.vfx
								i = clone_upvr_2
								v = {}
								v.ParticleEmitter = {
									Enabled = false;
								}
								v.Trail = {
									Enabled = false;
								}
								i.setDescendantsProperties(i, v)
							end
						end
					end
				end
				local children_2 = SOME_2.Floor:GetChildren()
				local var212 = children_2[math.random(#children_2)]
				local Size_2 = PrimaryPart_5_upvr.Size
				local any_PointToWorldSpace_result1 = var212.CFrame:PointToWorldSpace(Vector3.new((random_state:NextNumber() - 0.5) * var212.Size.X, var212.Size.Y / 2 + Size_2.Y / 2, (random_state:NextNumber() - 0.5) * var212.Size.Z))
				local GoalFloor_2 = SOME_2.GoalFloor
				local any_PointToWorldSpace_result1_2 = GoalFloor_2.CFrame:PointToWorldSpace(Vector3.new((random_state:NextNumber() - 0.5) * GoalFloor_2.Size.X, GoalFloor_2.Size.Y / 2 + Size_2.Y / 2, (random_state:NextNumber() - 0.5) * GoalFloor_2.Size.Z))
				local Magnitude_upvr = (any_PointToWorldSpace_result1_2 - any_PointToWorldSpace_result1).Magnitude
				clone_upvr_2:PivotTo(CFrame.new(any_PointToWorldSpace_result1))
				cleanup_upvr(RunService_upvr.PreRender:Connect(function(arg1_10) -- Line 190
					--[[ Upvalues[3]:
						[1]: LocalPlayer_upvr (readonly)
						[2]: source_upvr_result1_upvr_2 (copied, readonly)
						[3]: PrimaryPart_5_upvr (readonly)
					]]
					local var220 = LocalPlayer_upvr.Character
					if var220 then
						var220 = LocalPlayer_upvr.Character:FindFirstChild("HumanoidRootPart")
						local var221
					end
					if var220 then
						if (PrimaryPart_5_upvr.Position - var220.Position).Magnitude >= 60 then
							var221 = false
						else
							var221 = true
						end
						source_upvr_result1_upvr_2(var221)
					end
				end))
				apply_upvr(clone_upvr_2)({
					Parent = derive_upvr(function() -- Line 199
						--[[ Upvalues[2]:
							[1]: source_upvr_result1_upvr_2 (copied, readonly)
							[2]: ReplicatedStorage_upvr (copied, readonly)
						]]
						local var224
						local function INLINED_2() -- Internal function, doesn't exist in bytecode
							var224 = workspace.Temp
							return var224
						end
						if not source_upvr_result1_upvr_2() or not INLINED_2() then
							var224 = ReplicatedStorage_upvr.Temp
						end
						return var224
					end);
				})
				effect_upvr(function() -- Line 204
					--[[ Upvalues[3]:
						[1]: var14_result1_upvr (readonly)
						[2]: PrimaryPart_5_upvr (readonly)
						[3]: clone_upvr_2 (readonly)
					]]
					PrimaryPart_5_upvr.Size = clone_upvr_2:GetAttribute("Size") * var14_result1_upvr()
				end)
				for _, v_2 in clone_upvr_2:GetChildren() do
					if v_2:IsA("BasePart") then
						table.insert({}, v_2)
					end
				end
				local GoalFloor_3 = SOME_2.GoalFloor
				local Unit_2 = (any_PointToWorldSpace_result1_2 - any_PointToWorldSpace_result1).Unit
				local Unit_upvw_2 = Vector3.new(-Unit_2.Z, 0, Unit_2.X).Unit
				if Unit_upvw_2.Magnitude < 0.01 then
					Unit_upvw_2 = Vector3.new(0, 1, 0)
				end
				local tbl_10_upvr = {any_PointToWorldSpace_result1, (any_PointToWorldSpace_result1 + any_PointToWorldSpace_result1_2) / 2 + Vector3.new(0, 1, 0) * ((any_PointToWorldSpace_result1_2 - any_PointToWorldSpace_result1).Magnitude * 0.35 + math.random(2)), GoalFloor_3.Position + GoalFloor_3.CFrame.LookVector * 7, any_PointToWorldSpace_result1_2}
				local var234_upvr = (360) * (Magnitude_upvr / 10)
				local tbl_2_upvr = {}
				effect_upvr(function() -- Line 230
					--[[ Upvalues[10]:
						[1]: useMotion_upvr_result1_upvr_3 (readonly)
						[2]: Util_upvr (copied, readonly)
						[3]: tbl_10_upvr (readonly)
						[4]: var234_upvr (readonly)
						[5]: tbl_2_upvr (readonly)
						[6]: Unit_upvw_2 (read and write)
						[7]: var13_result1_upvr (copied, readonly)
						[8]: unpack_result3_upvr (copied, readonly)
						[9]: UI_upvr (copied, readonly)
						[10]: clone_upvr_2 (readonly)
					]]
					local var198_result1 = useMotion_upvr_result1_upvr_3()
					local any_bezier_result1 = Util_upvr.math.bezier(tbl_10_upvr, var198_result1)
					local var242 = var198_result1 * var234_upvr
					for i_3, v_3 in tbl_2_upvr do
						v_3.CFrame = CFrame.new(any_bezier_result1) * CFrame.fromAxisAngle(Unit_upvw_2, -math.rad(var242))
					end
					if 0.85 <= var198_result1 and not var13_result1_upvr() then
						var13_result1_upvr(true)
						if unpack_result3_upvr ~= 0 and UI_upvr.Frames.Settings then
							if UI_upvr.Frames.Settings:getOptionEnabled(3) then
								Util_upvr.vfx.emitDescendants(clone_upvr_2.Hit)
								local tbl_12 = {}
								i_3 = {}
								v_3 = 1
								i_3.Transparency = v_3
								tbl_12.BasePart = i_3
								i_3 = {}
								v_3 = false
								i_3.Enabled = v_3
								tbl_12.ParticleEmitter = i_3
								i_3 = {}
								v_3 = false
								i_3.Enabled = v_3
								tbl_12.Trail = i_3
								Util_upvr.vfx.setDescendantsProperties(clone_upvr_2, tbl_12)
							end
						end
					end
				end)
				local function kick_upvr() -- Line 255, Named "kick"
					--[[ Upvalues[23]:
						[1]: clone_upvr_2 (readonly)
						[2]: UI_upvr (copied, readonly)
						[3]: Loop_upvr (copied, readonly)
						[4]: arg2_2 (copied, readonly)
						[5]: Sounds_upvr (copied, readonly)
						[6]: children_5_upvr (copied, readonly)
						[7]: PrimaryPart_5_upvr (readonly)
						[8]: unpack_result3_upvr (copied, readonly)
						[9]: SoundInstances_upvr (copied, readonly)
						[10]: Character_3_upvr (copied, readonly)
						[11]: useMotion_upvr_result2_3_upvr (readonly)
						[12]: Magnitude_upvr (readonly)
						[13]: arg1_5 (readonly)
						[14]: root_upvr (copied, readonly)
						[15]: useMotion_upvr (copied, readonly)
						[16]: Mutations_upvr (copied, readonly)
						[17]: LocalPlayer_upvr (readonly)
						[18]: RichFormat_upvr (copied, readonly)
						[19]: unpack_result1_upvr (copied, readonly)
						[20]: cleanup_upvr (copied, readonly)
						[21]: RunService_upvr (copied, readonly)
						[22]: apply_upvr (copied, readonly)
						[23]: derive_upvr (copied, readonly)
					]]
					clone_upvr_2:SetAttribute("Kicked", true)
					local var248
					if var248 then
						var248 = UI_upvr.Frames.Settings:getOptionEnabled(3)
					end
					for _, v_4 in clone_upvr_2:GetDescendants() do
						if v_4:IsA("ParticleEmitter") and v_4:GetAttribute("WasEnabled") ~= nil then
							local var252 = var248
							if var252 then
								var252 = v_4:GetAttribute("WasEnabled")
							end
							v_4.Enabled = var252
						end
						if v_4:IsA("Trail") and v_4:GetAttribute("WasEnabled") ~= nil then
							local var253 = var248
							if var253 then
								var253 = v_4:GetAttribute("WasEnabled")
							end
							v_4.Enabled = var253
						end
					end
					Loop_upvr:ClaimFootball(arg2_2):catch(warn)
					Sounds_upvr.playSound(children_5_upvr[math.random(1, #children_5_upvr)], PrimaryPart_5_upvr)
					if unpack_result3_upvr ~= 0 then
						Sounds_upvr.playSound(SoundInstances_upvr.Ding, PrimaryPart_5_upvr).PlaybackSpeed = 2 + math.random(2) / 10
					end
					local Kick = Character_3_upvr.Animations.Kick
					if Kick then
						Kick:Play()
						Kick:AdjustSpeed(3)
					end
					useMotion_upvr_result2_3_upvr:tween(1, {
						time = Magnitude_upvr / 40;
						style = Enum.EasingStyle.Linear;
					})
					useMotion_upvr_result2_3_upvr:onComplete(function() -- Line 289
						--[[ Upvalues[1]:
							[1]: arg1_5 (copied, readonly)
						]]
						task.wait(3)
						arg1_5()
					end)
					root_upvr(function(arg1_11) -- Line 304
						--[[ Upvalues[12]:
							[1]: useMotion_upvr (copied, readonly)
							[2]: PrimaryPart_5_upvr (copied, readonly)
							[3]: UI_upvr (copied, readonly)
							[4]: unpack_result3_upvr (copied, readonly)
							[5]: Mutations_upvr (copied, readonly)
							[6]: LocalPlayer_upvr (copied, readonly)
							[7]: RichFormat_upvr (copied, readonly)
							[8]: unpack_result1_upvr (copied, readonly)
							[9]: cleanup_upvr (copied, readonly)
							[10]: RunService_upvr (copied, readonly)
							[11]: apply_upvr (copied, readonly)
							[12]: derive_upvr (copied, readonly)
						]]
						local useMotion_upvr_result1_upvr_2, useMotion_upvr_result2_2_upvr = useMotion_upvr(0)
						local clone_upvr_3 = UI_upvr.Frames.Stats.displays.Money.Container.ValueLabel:Clone()
						local var261 = false
						local var265
						if unpack_result3_upvr ~= 0 then
							var261 = Mutations_upvr.Content[tonumber(unpack_result3_upvr)].color
						end
						local PlayerGui = LocalPlayer_upvr.PlayerGui
						clone_upvr_3.Parent = PlayerGui.Temp
						clone_upvr_3.LayoutOrder = unpack_result3_upvr
						if unpack_result3_upvr ~= 0 then
							PlayerGui = 1.05
						else
							PlayerGui = 1
						end
						clone_upvr_3.UIScale.Scale = PlayerGui
						clone_upvr_3.FontFace = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.ExtraBold)
						var265 = RichFormat_upvr
						if 10000 < unpack_result1_upvr then
							var265 = "Abbreviate"
						else
							var265 = "Comma"
						end
						clone_upvr_3.Text = `${var265.number[var265](unpack_result1_upvr)}`
						clone_upvr_3.AnchorPoint = Vector2.new(0.5, 0.5)
						clone_upvr_3.Size = UDim2.fromOffset(clone_upvr_3.AbsoluteSize.X, clone_upvr_3.AbsoluteSize.Y / 2)
						local UIStroke = clone_upvr_3.UIStroke
						UIStroke.Thickness *= 0.5
						clone_upvr_3.Visible = false
						if var261 then
							if var261 == "_rainbow" then
								clone_upvr_3.UIGradient.Enabled = false
								local os_clock_result1_7_upvw = os.clock()
								local var267_upvw = 0
								function var265(arg1_12) -- Line 327
									--[[ Upvalues[3]:
										[1]: os_clock_result1_7_upvw (read and write)
										[2]: var267_upvw (read and write)
										[3]: clone_upvr_3 (readonly)
									]]
									local os_clock_result1_2 = os.clock()
									if os_clock_result1_2 - os_clock_result1_7_upvw < 0.033 then
									else
										os_clock_result1_7_upvw = os_clock_result1_2
										var267_upvw += arg1_12
										clone_upvr_3.TextColor3 = Color3.fromHSV(var267_upvw % 1.5, 1, 1)
									end
								end
								cleanup_upvr(RunService_upvr.RenderStepped:Connect(var265))
							else
								local tbl_8 = {}
								var265 = var261:Lerp(Color3.new(1, 1, 1), 0.5)
								var265 = 1
								tbl_8[1] = ColorSequenceKeypoint.new(0, var265)
								tbl_8[2] = ColorSequenceKeypoint.new(var265, var261)
								clone_upvr_3.UIGradient.Color = ColorSequence.new(tbl_8)
							end
						end
						local var271_upvw = 0
						local Position_upvr = PrimaryPart_5_upvr.Position
						cleanup_upvr(RunService_upvr.PreRender:Connect(function(arg1_13) -- Line 344
							--[[ Upvalues[4]:
								[1]: var271_upvw (read and write)
								[2]: clone_upvr_3 (readonly)
								[3]: Position_upvr (readonly)
								[4]: arg1_11 (readonly)
							]]
							var271_upvw += arg1_13
							clone_upvr_3.Visible = true
							local any_WorldToViewportPoint_result1_3, any_WorldToViewportPoint_result2 = workspace.CurrentCamera:WorldToViewportPoint(Position_upvr)
							local var275 = any_WorldToViewportPoint_result1_3
							clone_upvr_3.Position = UDim2.fromOffset(var275.X, var275.Y + -var271_upvw * 35)
							if not any_WorldToViewportPoint_result2 then
								arg1_11()
							end
						end))
						apply_upvr(clone_upvr_3)({
							TextTransparency = derive_upvr(function() -- Line 358
								--[[ Upvalues[1]:
									[1]: useMotion_upvr_result1_upvr_2 (readonly)
								]]
								return useMotion_upvr_result1_upvr_2()
							end);
						})
						apply_upvr(clone_upvr_3.UIStroke)({
							Transparency = derive_upvr(function() -- Line 364
								--[[ Upvalues[1]:
									[1]: useMotion_upvr_result1_upvr_2 (readonly)
								]]
								return useMotion_upvr_result1_upvr_2()
							end);
						})
						task.delay(0.2, function() -- Line 369
							--[[ Upvalues[2]:
								[1]: useMotion_upvr_result2_2_upvr (readonly)
								[2]: arg1_11 (readonly)
							]]
							useMotion_upvr_result2_2_upvr:tween(1, {
								time = 2;
								style = Enum.EasingStyle.Exponential;
								direction = Enum.EasingDirection.Out;
							})
							useMotion_upvr_result2_2_upvr:onComplete(function() -- Line 376
								--[[ Upvalues[1]:
									[1]: arg1_11 (copied, readonly)
								]]
								arg1_11()
							end)
						end)
						cleanup_upvr(clone_upvr_3)
						cleanup_upvr(function() -- Line 384
							--[[ Upvalues[1]:
								[1]: useMotion_upvr_result2_2_upvr (readonly)
							]]
							useMotion_upvr_result2_2_upvr:destroy()
						end)
					end)
				end
				cleanup_upvr(clone_upvr_2:GetAttributeChangedSignal("Touched"):Connect(function() -- Line 390
					--[[ Upvalues[3]:
						[1]: clone_upvr_2 (readonly)
						[2]: source_upvr_result1_upvr (copied, readonly)
						[3]: kick_upvr (readonly)
					]]
					if clone_upvr_2:GetAttribute("Touched") and not source_upvr_result1_upvr() then
						source_upvr_result1_upvr(true)
						kick_upvr()
					end
				end))
				cleanup_upvr(useMotion_upvr_result2_3_upvr)
				cleanup_upvr(var14_result2)
			end)
			cleanup_upvr(function() -- Line 401
				--[[ Upvalues[2]:
					[1]: source_upvr_result1_upvr (readonly)
					[2]: root_upvr_result1_upvr (readonly)
				]]
				if not source_upvr_result1_upvr() then
					root_upvr_result1_upvr()
				end
			end)
		end)
		debug.profileend()
	end
end