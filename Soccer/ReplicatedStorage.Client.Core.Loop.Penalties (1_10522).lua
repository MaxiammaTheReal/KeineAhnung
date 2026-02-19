-- Name: Penalties
-- Path: game:GetService("ReplicatedStorage").Client.Core.Loop.Penalties
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.9367120000024443 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:26
-- Luau version 6, Types version 3
-- Time taken: 0.041541 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Util_upvr = require(ReplicatedStorage_upvr.Shared.Util)
local Vide = require(ReplicatedStorage_upvr.Packages.Vide)
local tbl_upvr_4 = {
	tree = "3/5";
}
local UI_upvr = require(ReplicatedStorage_upvr.Client.Core.UI)
local root_upvr = Vide.root
local source_upvr = Vide.source
local CollectionService_upvr = game:GetService("CollectionService")
local useAtom_upvr = require(ReplicatedStorage_upvr.Packages.VideCharm).useAtom
local derive_upvr = Vide.derive
local cleanup_upvr = Vide.cleanup
local Sift_upvr = require(ReplicatedStorage_upvr.Packages.Sift)
local Requirements_upvr = require(ReplicatedStorage_upvr.Shared.Modules.Libraries.Requirements)
local Players_upvr = game:GetService("Players")
local Values_upvr = require(ReplicatedStorage_upvr.Client.Core.Values)
local SoundInstances_upvr = ReplicatedStorage_upvr.Shared.Assets.SoundInstances
local indexes_upvr = Vide.indexes
local useMotion_upvr = Util_upvr.ui.useMotion
local apply_upvr = Vide.apply
local effect_upvr = Vide.effect
local Loop_upvr = UI_upvr:GetService("Loop")
local Ball_upvr = ReplicatedStorage_upvr.Shared.Assets.Ball
local Sounds_upvr = require(ReplicatedStorage_upvr.Shared.Assets.Sounds)
local Character_upvr = require(ReplicatedStorage_upvr.Client.Core.Character)
local Keeper_upvr = ReplicatedStorage_upvr.Shared.Assets.Keeper
local RunService_upvr = game:GetService("RunService")
return function(arg1) -- Line 41
	--[[ Upvalues[25]:
		[1]: root_upvr (readonly)
		[2]: source_upvr (readonly)
		[3]: CollectionService_upvr (readonly)
		[4]: useAtom_upvr (readonly)
		[5]: derive_upvr (readonly)
		[6]: cleanup_upvr (readonly)
		[7]: Sift_upvr (readonly)
		[8]: Requirements_upvr (readonly)
		[9]: Players_upvr (readonly)
		[10]: tbl_upvr_4 (readonly)
		[11]: Values_upvr (readonly)
		[12]: SoundInstances_upvr (readonly)
		[13]: indexes_upvr (readonly)
		[14]: Util_upvr (readonly)
		[15]: useMotion_upvr (readonly)
		[16]: apply_upvr (readonly)
		[17]: effect_upvr (readonly)
		[18]: UI_upvr (readonly)
		[19]: Loop_upvr (readonly)
		[20]: Ball_upvr (readonly)
		[21]: Sounds_upvr (readonly)
		[22]: Character_upvr (readonly)
		[23]: Keeper_upvr (readonly)
		[24]: ReplicatedStorage_upvr (readonly)
		[25]: RunService_upvr (readonly)
	]]
	root_upvr(function(arg1_2) -- Line 42
		--[[ Upvalues[26]:
			[1]: source_upvr (copied, readonly)
			[2]: CollectionService_upvr (copied, readonly)
			[3]: useAtom_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: derive_upvr (copied, readonly)
			[6]: cleanup_upvr (copied, readonly)
			[7]: Sift_upvr (copied, readonly)
			[8]: Requirements_upvr (copied, readonly)
			[9]: Players_upvr (copied, readonly)
			[10]: tbl_upvr_4 (copied, readonly)
			[11]: Values_upvr (copied, readonly)
			[12]: SoundInstances_upvr (copied, readonly)
			[13]: indexes_upvr (copied, readonly)
			[14]: Util_upvr (copied, readonly)
			[15]: useMotion_upvr (copied, readonly)
			[16]: apply_upvr (copied, readonly)
			[17]: effect_upvr (copied, readonly)
			[18]: UI_upvr (copied, readonly)
			[19]: Loop_upvr (copied, readonly)
			[20]: root_upvr (copied, readonly)
			[21]: Ball_upvr (copied, readonly)
			[22]: Sounds_upvr (copied, readonly)
			[23]: Character_upvr (copied, readonly)
			[24]: Keeper_upvr (copied, readonly)
			[25]: ReplicatedStorage_upvr (copied, readonly)
			[26]: RunService_upvr (copied, readonly)
		]]
		local source_upvr_result1_upvr = source_upvr(CollectionService_upvr:GetTagged("PenaltyZone"))
		local useAtom_upvr_result1_upvr = useAtom_upvr(arg1)
		cleanup_upvr(CollectionService_upvr:GetInstanceAddedSignal("PenaltyZone"):Connect(function(arg1_3) -- Line 48
			--[[ Upvalues[2]:
				[1]: source_upvr_result1_upvr (readonly)
				[2]: Sift_upvr (copied, readonly)
			]]
			source_upvr_result1_upvr(Sift_upvr.Array.append(source_upvr_result1_upvr(), arg1_3))
		end))
		cleanup_upvr(CollectionService_upvr:GetInstanceRemovedSignal("PenaltyZone"):Connect(function(arg1_4) -- Line 52
			--[[ Upvalues[2]:
				[1]: source_upvr_result1_upvr (readonly)
				[2]: Sift_upvr (copied, readonly)
			]]
			source_upvr_result1_upvr(Sift_upvr.Array.removeValue(source_upvr_result1_upvr(), arg1_4))
		end))
		local var11_result1_upvr = derive_upvr(function() -- Line 46
			--[[ Upvalues[1]:
				[1]: useAtom_upvr_result1_upvr (readonly)
			]]
			local useAtom_upvr_result1_upvr_result1 = useAtom_upvr_result1_upvr()
			if useAtom_upvr_result1_upvr_result1 then
				useAtom_upvr_result1_upvr_result1 = useAtom_upvr_result1_upvr().inventory.Tree
			end
			return useAtom_upvr_result1_upvr_result1
		end)
		local var11_result1_upvr_2 = derive_upvr(function() -- Line 56
			--[[ Upvalues[4]:
				[1]: var11_result1_upvr (readonly)
				[2]: Requirements_upvr (copied, readonly)
				[3]: Players_upvr (copied, readonly)
				[4]: tbl_upvr_4 (copied, readonly)
			]]
			var11_result1_upvr()
			return Requirements_upvr.getRequirement({
				player = Players_upvr.LocalPlayer;
				requirements = tbl_upvr_4;
			})
		end)
		local os_clock_result1_upvw = os.clock()
		local children_upvr = SoundInstances_upvr.Kick:GetChildren()
		local any_ReadValue_result1_upvr = Values_upvr:ReadValue("PenaltyShootRate", false)
		indexes_upvr(source_upvr_result1_upvr, function(arg1_5, arg2) -- Line 65
			--[[ Upvalues[22]:
				[1]: source_upvr (copied, readonly)
				[2]: Util_upvr (copied, readonly)
				[3]: useMotion_upvr (copied, readonly)
				[4]: apply_upvr (copied, readonly)
				[5]: derive_upvr (copied, readonly)
				[6]: var11_result1_upvr_2 (readonly)
				[7]: effect_upvr (copied, readonly)
				[8]: UI_upvr (copied, readonly)
				[9]: Loop_upvr (copied, readonly)
				[10]: root_upvr (copied, readonly)
				[11]: os_clock_result1_upvw (read and write)
				[12]: Players_upvr (copied, readonly)
				[13]: Ball_upvr (copied, readonly)
				[14]: cleanup_upvr (copied, readonly)
				[15]: Sounds_upvr (copied, readonly)
				[16]: children_upvr (readonly)
				[17]: Character_upvr (copied, readonly)
				[18]: Keeper_upvr (copied, readonly)
				[19]: ReplicatedStorage_upvr (copied, readonly)
				[20]: RunService_upvr (copied, readonly)
				[21]: SoundInstances_upvr (copied, readonly)
				[22]: any_ReadValue_result1_upvr (readonly)
			]]
			local var43_upvw
			local var8_result1_upvr = source_upvr(false)
			local var45_upvw = false
			local any_new_result1 = Util_upvr.zone.new(arg1_5().Spot)
			local Spinner = arg1_5().Spot.Spinner
			local SurfaceGui = Spinner.SurfaceGui
			local Size_upvr = Spinner.Size
			local useMotion_upvr_result1, var19_result2_upvr = useMotion_upvr(Spinner.Size)
			apply_upvr(SurfaceGui.ImageLabel)({
				Visible = derive_upvr(function() -- Line 81
					--[[ Upvalues[1]:
						[1]: var11_result1_upvr_2 (copied, readonly)
					]]
					return not var11_result1_upvr_2()
				end);
			})
			apply_upvr(SurfaceGui.Locked)({
				Visible = derive_upvr(function() -- Line 85
					--[[ Upvalues[1]:
						[1]: var11_result1_upvr_2 (copied, readonly)
					]]
					local var56
					if var11_result1_upvr_2() == nil then
						var56 = false
					else
						var56 = true
					end
					return var56
				end);
			})
			apply_upvr(SurfaceGui.Locked.Content.TextLabel)({
				Text = derive_upvr(function() -- Line 89
					--[[ Upvalues[1]:
						[1]: var11_result1_upvr_2 (copied, readonly)
					]]
					return var11_result1_upvr_2() or ""
				end);
			})
			apply_upvr(Spinner)({
				Size = useMotion_upvr_result1;
			})
			local var61_upvr = Size_upvr + Vector3.new(2, 0, 2)
			effect_upvr(function() -- Line 96
				--[[ Upvalues[4]:
					[1]: var19_result2_upvr (readonly)
					[2]: var8_result1_upvr (readonly)
					[3]: var61_upvr (readonly)
					[4]: Size_upvr (readonly)
				]]
				local var62
				local function INLINED() -- Internal function, doesn't exist in bytecode
					var62 = var61_upvr
					return var62
				end
				if not var8_result1_upvr() or not INLINED() then
					var62 = Size_upvr
				end
				var19_result2_upvr:spring(var62, {
					tension = 200;
					friction = 20;
				})
			end)
			local function _(arg1_6, arg2_2, arg3) -- Line 100, Named "displayEarnings"
				--[[ Upvalues[1]:
					[1]: UI_upvr (copied, readonly)
				]]
				local any_WorldToViewportPoint_result1, any_WorldToViewportPoint_result2 = workspace.CurrentCamera:WorldToViewportPoint(arg3)
				if any_WorldToViewportPoint_result2 then
					UI_upvr.Frames.Stats:createAnimatedIncrement("Goals", arg1_6, Vector2.new(any_WorldToViewportPoint_result1.X, any_WorldToViewportPoint_result1.Y))
				end
			end
			local function _() -- Line 107, Named "shoot"
				--[[ Upvalues[20]:
					[1]: Loop_upvr (copied, readonly)
					[2]: var45_upvw (read and write)
					[3]: var43_upvw (read and write)
					[4]: root_upvr (copied, readonly)
					[5]: os_clock_result1_upvw (copied, read and write)
					[6]: Players_upvr (copied, readonly)
					[7]: arg1_5 (readonly)
					[8]: Ball_upvr (copied, readonly)
					[9]: cleanup_upvr (copied, readonly)
					[10]: Sounds_upvr (copied, readonly)
					[11]: children_upvr (copied, readonly)
					[12]: Character_upvr (copied, readonly)
					[13]: useMotion_upvr (copied, readonly)
					[14]: Keeper_upvr (copied, readonly)
					[15]: effect_upvr (copied, readonly)
					[16]: ReplicatedStorage_upvr (copied, readonly)
					[17]: RunService_upvr (copied, readonly)
					[18]: Util_upvr (copied, readonly)
					[19]: UI_upvr (copied, readonly)
					[20]: SoundInstances_upvr (copied, readonly)
				]]
				local var67_upvw = false
				Loop_upvr:ShootPenalty():andThen(function(arg1_7, arg2_3, arg3) -- Line 112
					--[[ Upvalues[20]:
						[1]: var45_upvw (copied, read and write)
						[2]: var43_upvw (copied, read and write)
						[3]: root_upvr (copied, readonly)
						[4]: os_clock_result1_upvw (copied, read and write)
						[5]: Players_upvr (copied, readonly)
						[6]: arg1_5 (copied, readonly)
						[7]: Ball_upvr (copied, readonly)
						[8]: cleanup_upvr (copied, readonly)
						[9]: Sounds_upvr (copied, readonly)
						[10]: children_upvr (copied, readonly)
						[11]: Character_upvr (copied, readonly)
						[12]: useMotion_upvr (copied, readonly)
						[13]: Keeper_upvr (copied, readonly)
						[14]: effect_upvr (copied, readonly)
						[15]: ReplicatedStorage_upvr (copied, readonly)
						[16]: RunService_upvr (copied, readonly)
						[17]: Util_upvr (copied, readonly)
						[18]: var67_upvw (read and write)
						[19]: UI_upvr (copied, readonly)
						[20]: SoundInstances_upvr (copied, readonly)
					]]
					if not arg1_7 then
						warn(arg2_3)
						var45_upvw = false
					else
						var43_upvw = root_upvr(function(arg1_8) -- Line 119
							--[[ Upvalues[20]:
								[1]: os_clock_result1_upvw (copied, read and write)
								[2]: var45_upvw (copied, read and write)
								[3]: Players_upvr (copied, readonly)
								[4]: arg1_5 (copied, readonly)
								[5]: Ball_upvr (copied, readonly)
								[6]: cleanup_upvr (copied, readonly)
								[7]: Sounds_upvr (copied, readonly)
								[8]: children_upvr (copied, readonly)
								[9]: Character_upvr (copied, readonly)
								[10]: useMotion_upvr (copied, readonly)
								[11]: Keeper_upvr (copied, readonly)
								[12]: effect_upvr (copied, readonly)
								[13]: ReplicatedStorage_upvr (copied, readonly)
								[14]: arg3 (readonly)
								[15]: RunService_upvr (copied, readonly)
								[16]: Util_upvr (copied, readonly)
								[17]: var67_upvw (copied, read and write)
								[18]: arg2_3 (readonly)
								[19]: UI_upvr (copied, readonly)
								[20]: SoundInstances_upvr (copied, readonly)
							]]
							-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
							os_clock_result1_upvw = os.clock()
							var45_upvw = false
							local Character_2 = Players_upvr.LocalPlayer.Character
							local RaycastParams_new_result1_2 = RaycastParams.new()
							RaycastParams_new_result1_2.FilterDescendantsInstances = {Character_2, workspace.Temp}
							RaycastParams_new_result1_2.FilterType = Enum.RaycastFilterType.Exclude
							local Position_2 = (Character_2:GetPivot() * CFrame.new(0, 0, -3)).Position
							local workspace_Raycast_result1_2 = workspace:Raycast(Position_2, Vector3.new(0, -20, 0), RaycastParams_new_result1_2)
							local var82
							local function INLINED_2() -- Internal function, doesn't exist in bytecode
								var82 = workspace_Raycast_result1_2.Position
								return var82
							end
							if not workspace_Raycast_result1_2 or not INLINED_2() then
								var82 = Position_2
							end
							local Goal_upvr_2 = arg1_5().Goal
							local Floor = arg1_5().Floor
							local cframe_2 = CFrame.new(var82)
							local cframe_upvr = CFrame.new(Goal_upvr_2.CFrame:PointToWorldSpace(Vector3.new((math.random() - 0.5) * Goal_upvr_2.Size.X, Goal_upvr_2.Size.Y / 2 + Ball_upvr.PrimaryPart.Size.Y / 2, (math.random() - 0.5) * Goal_upvr_2.Size.Z)))
							local clone = Ball_upvr:Clone()
							clone.Parent = workspace.Temp
							clone:PivotTo(cframe_2)
							clone:SetAttribute("Kicked", true)
							cleanup_upvr(clone)
							local any_playSound_result1_3 = Sounds_upvr.playSound(children_upvr[math.random(#children_upvr)], clone.PrimaryPart)
							any_playSound_result1_3.Volume *= 2
							local Kick_2 = Character_upvr.Animations.Kick
							if Kick_2 then
								Kick_2:Play()
								Kick_2:AdjustSpeed(3)
							end
							local useMotion_upvr_result1_upvr, useMotion_upvr_result2_upvr_2 = useMotion_upvr(Goal_upvr_2.CFrame * CFrame.new(0, 0, -(Goal_upvr_2.Size.Z / 2 + 3)))
							local var92_upvw = 0
							local clone_4_upvr = Keeper_upvr:Clone()
							clone_4_upvr.Parent = workspace.Temp
							clone_4_upvr.PrimaryPart.Anchored = true
							clone_4_upvr:PivotTo(useMotion_upvr_result1_upvr())
							effect_upvr(function() -- Line 165
								--[[ Upvalues[2]:
									[1]: clone_4_upvr (readonly)
									[2]: useMotion_upvr_result1_upvr (readonly)
								]]
								clone_4_upvr:PivotTo(useMotion_upvr_result1_upvr())
							end)
							local var95
							local tbl_2 = {
								left = ReplicatedStorage_upvr.Shared.Assets.Animations.DiveLeft;
								right = ReplicatedStorage_upvr.Shared.Assets.Animations.DiveRight;
							}
							local var97
							if not arg3 then
								var97 = cframe_upvr.Position
								if var97.Z < Goal_upvr_2.Position.Z then
									var97 = "right"
								else
									var97 = "left"
								end
								var95 = clone_4_upvr.Humanoid.Animator:LoadAnimation(tbl_2[var97])
								if var97 == "right" then
								else
								end
								var92_upvw = -0
							else
								local Z = Goal_upvr_2.Position.Z
								local randint_2 = math.random(-8, 8)
								if Z + randint_2 < Z then
								else
								end
								var95 = clone_4_upvr.Humanoid.Animator:LoadAnimation(tbl_2.left)
								var92_upvw = randint_2
							end
							var95:Play()
							cleanup_upvr(var95:GetMarkerReachedSignal("GettingUp"):Connect(function() -- Line 187
								--[[ Upvalues[1]:
									[1]: clone_4_upvr (readonly)
								]]
								task.delay(0.1, function() -- Line 188
									--[[ Upvalues[1]:
										[1]: clone_4_upvr (copied, readonly)
									]]
									clone_4_upvr:Destroy()
								end)
							end))
							for _, v in clone:GetChildren() do
								if v:IsA("BasePart") then
									table.insert({}, v)
								end
							end
							local tbl_upvr = {}
							if arg3 then
								({})[1] = cframe_2.Position
								-- KONSTANTERROR: Expression was reused, decompilation is incorrect
								;({})[2] = (cframe_2.Position + cframe_upvr.Position) / 2 + Vector3.new(0, 10, 0)
								-- KONSTANTERROR: Expression was reused, decompilation is incorrect
								;({})[3] = cframe_upvr.Position
								-- KONSTANTERROR: Expression was reused, decompilation is incorrect
								table.insert(tbl_upvr, {})
							else
								({})[1] = cframe_2.Position
								-- KONSTANTERROR: Expression was reused, decompilation is incorrect
								;({})[2] = (cframe_2.Position + cframe_upvr.Position) / 2 + Vector3.new(0, 5, 0)
								-- KONSTANTERROR: Expression was reused, decompilation is incorrect
								;({})[3] = Vector3.new(clone_4_upvr.UpperTorso.Position.X, cframe_upvr.Position.Y, cframe_upvr.Position.Z) + Vector3.new(0.5, 1, 0)
								-- KONSTANTERROR: Expression was reused, decompilation is incorrect
								table.insert(tbl_upvr, {})
								local any_PointToWorldSpace_result1_2 = Floor.CFrame:PointToWorldSpace(Vector3.new((math.random() - 0.5) * Floor.Size.X, Floor.Size.Y / 2 + Ball_upvr.PrimaryPart.Size.Y / 2, (math.random() - 0.5) * Floor.Size.Z))
								table.insert(tbl_upvr, {Vector3.new(useMotion_upvr_result1_upvr().Position.X, cframe_upvr.Position.Y, cframe_upvr.Position.Z) + Vector3.new(0.5, 1, 0), (Vector3.new(useMotion_upvr_result1_upvr().Position.X, cframe_upvr.Position.Y, cframe_upvr.Position.Z) + any_PointToWorldSpace_result1_2) / 2 + Vector3.new(0, 4, 0), any_PointToWorldSpace_result1_2})
							end
							local Unit = (cframe_upvr.Position - cframe_2.Position).Unit
							local Unit_4_upvw = Vector3.new(-Unit.Z, 0, Unit.X).Unit
							if Unit_4_upvw.Magnitude < 0.01 then
								Unit_4_upvw = Vector3.new(0, 1, 0)
							end
							local var111_upvw = 0
							local len_upvr_2 = #tbl_upvr
							local var113_upvr = (360) * ((cframe_upvr.Position - cframe_2.Position).Magnitude / 10)
							local tbl_upvr_3 = {}
							cleanup_upvr(RunService_upvr.RenderStepped:Connect(function(arg1_9) -- Line 243
								--[[ Upvalues[19]:
									[1]: var111_upvw (read and write)
									[2]: len_upvr_2 (readonly)
									[3]: tbl_upvr (readonly)
									[4]: Util_upvr (copied, readonly)
									[5]: var113_upvr (readonly)
									[6]: tbl_upvr_3 (readonly)
									[7]: Unit_4_upvw (read and write)
									[8]: arg3 (copied, readonly)
									[9]: clone_4_upvr (readonly)
									[10]: useMotion_upvr_result2_upvr_2 (readonly)
									[11]: cframe_upvr (readonly)
									[12]: var92_upvw (read and write)
									[13]: Goal_upvr_2 (readonly)
									[14]: var67_upvw (copied, read and write)
									[15]: arg1_8 (readonly)
									[16]: arg2_3 (copied, readonly)
									[17]: UI_upvr (copied, readonly)
									[18]: Sounds_upvr (copied, readonly)
									[19]: SoundInstances_upvr (copied, readonly)
								]]
								-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
								var111_upvw += arg1_9 / 0.65
								local clamped = math.clamp(var111_upvw, 0, 1)
								local minimum = math.min(math.floor(clamped * len_upvr_2) + 1, len_upvr_2)
								local var126
								if minimum == len_upvr_2 and 1 <= clamped then
									var126 = 1
								end
								for _, v_2 in tbl_upvr_3 do
									v_2.CFrame = CFrame.new(Util_upvr.math.bezier(tbl_upvr[minimum], var126)) * CFrame.fromAxisAngle(Unit_4_upvw, -math.rad(clamped * var113_upvr))
									local var127
								end
								if not arg3 then
									local any_GetPivot_result1_3 = clone_4_upvr:GetPivot()
									v_2 = CFrame.lookAlong(Vector3.new(any_GetPivot_result1_3.Position.X, any_GetPivot_result1_3.Position.Y, cframe_upvr.Position.Z + var92_upvw), any_GetPivot_result1_3.LookVector)
									useMotion_upvr_result2_upvr_2:spring(v_2, {
										tension = 100;
										friction = 30;
									})
								else
									local any_GetPivot_result1_4 = clone_4_upvr:GetPivot()
									useMotion_upvr_result2_upvr_2:spring(CFrame.lookAlong(Vector3.new(any_GetPivot_result1_4.Position.X, any_GetPivot_result1_4.Position.Y, Goal_upvr_2.Position.Z + var92_upvw), any_GetPivot_result1_4.LookVector), {
										tension = 50;
										friction = 30;
									})
								end
								if 1 <= clamped and not var67_upvw then
									var67_upvw = true
									task.delay(3, arg1_8)
									local any_WorldToViewportPoint_result1_3, any_WorldToViewportPoint_result2_3 = workspace.CurrentCamera:WorldToViewportPoint(var127)
									if any_WorldToViewportPoint_result2_3 then
										UI_upvr.Frames.Stats:createAnimatedIncrement("Goals", arg2_3, Vector2.new(any_WorldToViewportPoint_result1_3.X, any_WorldToViewportPoint_result1_3.Y))
									end
									if arg3 then
										local any_playSound_result1_2 = Sounds_upvr.playSound(SoundInstances_upvr.Ding)
										any_playSound_result1_2.Volume /= 2
									end
								end
							end))
						end)
					end
				end):catch(warn)
			end
			any_new_result1.Entered:Connect(function(arg1_10, arg2_4) -- Line 284
				--[[ Upvalues[2]:
					[1]: Players_upvr (copied, readonly)
					[2]: var8_result1_upvr (readonly)
				]]
				if arg2_4 == Players_upvr.LocalPlayer then
					var8_result1_upvr(true)
				end
			end)
			any_new_result1.Exited:Connect(function(arg1_11, arg2_5) -- Line 290
				--[[ Upvalues[2]:
					[1]: Players_upvr (copied, readonly)
					[2]: var8_result1_upvr (readonly)
				]]
				if arg2_5 == Players_upvr.LocalPlayer then
					var8_result1_upvr(false)
				end
			end)
			cleanup_upvr(RunService_upvr.Heartbeat:Connect(function(arg1_12) -- Line 296
				--[[ Upvalues[23]:
					[1]: var11_result1_upvr_2 (copied, readonly)
					[2]: var45_upvw (read and write)
					[3]: var8_result1_upvr (readonly)
					[4]: os_clock_result1_upvw (copied, read and write)
					[5]: any_ReadValue_result1_upvr (copied, readonly)
					[6]: Loop_upvr (copied, readonly)
					[7]: var43_upvw (read and write)
					[8]: root_upvr (copied, readonly)
					[9]: Players_upvr (copied, readonly)
					[10]: arg1_5 (readonly)
					[11]: Ball_upvr (copied, readonly)
					[12]: cleanup_upvr (copied, readonly)
					[13]: Sounds_upvr (copied, readonly)
					[14]: children_upvr (copied, readonly)
					[15]: Character_upvr (copied, readonly)
					[16]: useMotion_upvr (copied, readonly)
					[17]: Keeper_upvr (copied, readonly)
					[18]: effect_upvr (copied, readonly)
					[19]: ReplicatedStorage_upvr (copied, readonly)
					[20]: RunService_upvr (copied, readonly)
					[21]: Util_upvr (copied, readonly)
					[22]: UI_upvr (copied, readonly)
					[23]: SoundInstances_upvr (copied, readonly)
				]]
				if var11_result1_upvr_2() then
				elseif not var45_upvw and var8_result1_upvr() and any_ReadValue_result1_upvr() < os.clock() - os_clock_result1_upvw then
					var45_upvw = true
					local var139_upvw = false
					Loop_upvr:ShootPenalty():andThen(function(arg1_13, arg2_6, arg3) -- Line 112
						--[[ Upvalues[20]:
							[1]: var45_upvw (copied, read and write)
							[2]: var43_upvw (copied, read and write)
							[3]: root_upvr (copied, readonly)
							[4]: os_clock_result1_upvw (copied, read and write)
							[5]: Players_upvr (copied, readonly)
							[6]: arg1_5 (copied, readonly)
							[7]: Ball_upvr (copied, readonly)
							[8]: cleanup_upvr (copied, readonly)
							[9]: Sounds_upvr (copied, readonly)
							[10]: children_upvr (copied, readonly)
							[11]: Character_upvr (copied, readonly)
							[12]: useMotion_upvr (copied, readonly)
							[13]: Keeper_upvr (copied, readonly)
							[14]: effect_upvr (copied, readonly)
							[15]: ReplicatedStorage_upvr (copied, readonly)
							[16]: RunService_upvr (copied, readonly)
							[17]: Util_upvr (copied, readonly)
							[18]: var139_upvw (read and write)
							[19]: UI_upvr (copied, readonly)
							[20]: SoundInstances_upvr (copied, readonly)
						]]
						if not arg1_13 then
							warn(arg2_6)
							var45_upvw = false
						else
							var43_upvw = root_upvr(function(arg1_14) -- Line 119
								--[[ Upvalues[20]:
									[1]: os_clock_result1_upvw (copied, read and write)
									[2]: var45_upvw (copied, read and write)
									[3]: Players_upvr (copied, readonly)
									[4]: arg1_5 (copied, readonly)
									[5]: Ball_upvr (copied, readonly)
									[6]: cleanup_upvr (copied, readonly)
									[7]: Sounds_upvr (copied, readonly)
									[8]: children_upvr (copied, readonly)
									[9]: Character_upvr (copied, readonly)
									[10]: useMotion_upvr (copied, readonly)
									[11]: Keeper_upvr (copied, readonly)
									[12]: effect_upvr (copied, readonly)
									[13]: ReplicatedStorage_upvr (copied, readonly)
									[14]: arg3 (readonly)
									[15]: RunService_upvr (copied, readonly)
									[16]: Util_upvr (copied, readonly)
									[17]: var139_upvw (copied, read and write)
									[18]: arg2_6 (readonly)
									[19]: UI_upvr (copied, readonly)
									[20]: SoundInstances_upvr (copied, readonly)
								]]
								-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
								os_clock_result1_upvw = os.clock()
								var45_upvw = false
								local Character = Players_upvr.LocalPlayer.Character
								local RaycastParams_new_result1 = RaycastParams.new()
								RaycastParams_new_result1.FilterDescendantsInstances = {Character, workspace.Temp}
								RaycastParams_new_result1.FilterType = Enum.RaycastFilterType.Exclude
								local Position = (Character:GetPivot() * CFrame.new(0, 0, -3)).Position
								local workspace_Raycast_result1 = workspace:Raycast(Position, Vector3.new(0, -20, 0), RaycastParams_new_result1)
								local var154
								local function INLINED_3() -- Internal function, doesn't exist in bytecode
									var154 = workspace_Raycast_result1.Position
									return var154
								end
								if not workspace_Raycast_result1 or not INLINED_3() then
									var154 = Position
								end
								local Goal_upvr = arg1_5().Goal
								local Floor_2 = arg1_5().Floor
								local cframe = CFrame.new(var154)
								local cframe_upvr_2 = CFrame.new(Goal_upvr.CFrame:PointToWorldSpace(Vector3.new((math.random() - 0.5) * Goal_upvr.Size.X, Goal_upvr.Size.Y / 2 + Ball_upvr.PrimaryPart.Size.Y / 2, (math.random() - 0.5) * Goal_upvr.Size.Z)))
								local clone_2 = Ball_upvr:Clone()
								clone_2.Parent = workspace.Temp
								clone_2:PivotTo(cframe)
								clone_2:SetAttribute("Kicked", true)
								cleanup_upvr(clone_2)
								local any_playSound_result1_4 = Sounds_upvr.playSound(children_upvr[math.random(#children_upvr)], clone_2.PrimaryPart)
								any_playSound_result1_4.Volume *= 2
								local Kick = Character_upvr.Animations.Kick
								if Kick then
									Kick:Play()
									Kick:AdjustSpeed(3)
								end
								local useMotion_upvr_result1_upvr_2, useMotion_upvr_result2_upvr = useMotion_upvr(Goal_upvr.CFrame * CFrame.new(0, 0, -(Goal_upvr.Size.Z / 2 + 3)))
								local var164_upvw = 0
								local clone_3_upvr = Keeper_upvr:Clone()
								clone_3_upvr.Parent = workspace.Temp
								clone_3_upvr.PrimaryPart.Anchored = true
								clone_3_upvr:PivotTo(useMotion_upvr_result1_upvr_2())
								effect_upvr(function() -- Line 165
									--[[ Upvalues[2]:
										[1]: clone_3_upvr (readonly)
										[2]: useMotion_upvr_result1_upvr_2 (readonly)
									]]
									clone_3_upvr:PivotTo(useMotion_upvr_result1_upvr_2())
								end)
								local var167
								local tbl = {
									left = ReplicatedStorage_upvr.Shared.Assets.Animations.DiveLeft;
									right = ReplicatedStorage_upvr.Shared.Assets.Animations.DiveRight;
								}
								local var169
								if not arg3 then
									var169 = cframe_upvr_2.Position
									if var169.Z < Goal_upvr.Position.Z then
										var169 = "right"
									else
										var169 = "left"
									end
									var167 = clone_3_upvr.Humanoid.Animator:LoadAnimation(tbl[var169])
									if var169 == "right" then
									else
									end
									var164_upvw = -0
								else
									local Z_2 = Goal_upvr.Position.Z
									local randint = math.random(-8, 8)
									if Z_2 + randint < Z_2 then
									else
									end
									var167 = clone_3_upvr.Humanoid.Animator:LoadAnimation(tbl.left)
									var164_upvw = randint
								end
								var167:Play()
								cleanup_upvr(var167:GetMarkerReachedSignal("GettingUp"):Connect(function() -- Line 187
									--[[ Upvalues[1]:
										[1]: clone_3_upvr (readonly)
									]]
									task.delay(0.1, function() -- Line 188
										--[[ Upvalues[1]:
											[1]: clone_3_upvr (copied, readonly)
										]]
										clone_3_upvr:Destroy()
									end)
								end))
								for _, v_3 in clone_2:GetChildren() do
									if v_3:IsA("BasePart") then
										table.insert({}, v_3)
									end
								end
								local tbl_3_upvr = {}
								if arg3 then
									({})[1] = cframe.Position
									-- KONSTANTERROR: Expression was reused, decompilation is incorrect
									;({})[2] = (cframe.Position + cframe_upvr_2.Position) / 2 + Vector3.new(0, 10, 0)
									-- KONSTANTERROR: Expression was reused, decompilation is incorrect
									;({})[3] = cframe_upvr_2.Position
									-- KONSTANTERROR: Expression was reused, decompilation is incorrect
									table.insert(tbl_3_upvr, {})
								else
									({})[1] = cframe.Position
									-- KONSTANTERROR: Expression was reused, decompilation is incorrect
									;({})[2] = (cframe.Position + cframe_upvr_2.Position) / 2 + Vector3.new(0, 5, 0)
									-- KONSTANTERROR: Expression was reused, decompilation is incorrect
									;({})[3] = Vector3.new(clone_3_upvr.UpperTorso.Position.X, cframe_upvr_2.Position.Y, cframe_upvr_2.Position.Z) + Vector3.new(0.5, 1, 0)
									-- KONSTANTERROR: Expression was reused, decompilation is incorrect
									table.insert(tbl_3_upvr, {})
									local any_PointToWorldSpace_result1 = Floor_2.CFrame:PointToWorldSpace(Vector3.new((math.random() - 0.5) * Floor_2.Size.X, Floor_2.Size.Y / 2 + Ball_upvr.PrimaryPart.Size.Y / 2, (math.random() - 0.5) * Floor_2.Size.Z))
									table.insert(tbl_3_upvr, {Vector3.new(useMotion_upvr_result1_upvr_2().Position.X, cframe_upvr_2.Position.Y, cframe_upvr_2.Position.Z) + Vector3.new(0.5, 1, 0), (Vector3.new(useMotion_upvr_result1_upvr_2().Position.X, cframe_upvr_2.Position.Y, cframe_upvr_2.Position.Z) + any_PointToWorldSpace_result1) / 2 + Vector3.new(0, 4, 0), any_PointToWorldSpace_result1})
								end
								local Unit_3 = (cframe_upvr_2.Position - cframe.Position).Unit
								local Unit_2_upvw = Vector3.new(-Unit_3.Z, 0, Unit_3.X).Unit
								if Unit_2_upvw.Magnitude < 0.01 then
									Unit_2_upvw = Vector3.new(0, 1, 0)
								end
								local var183_upvw = 0
								local len_upvr = #tbl_3_upvr
								local var185_upvr = (360) * ((cframe_upvr_2.Position - cframe.Position).Magnitude / 10)
								local tbl_upvr_2 = {}
								cleanup_upvr(RunService_upvr.RenderStepped:Connect(function(arg1_15) -- Line 243
									--[[ Upvalues[19]:
										[1]: var183_upvw (read and write)
										[2]: len_upvr (readonly)
										[3]: tbl_3_upvr (readonly)
										[4]: Util_upvr (copied, readonly)
										[5]: var185_upvr (readonly)
										[6]: tbl_upvr_2 (readonly)
										[7]: Unit_2_upvw (read and write)
										[8]: arg3 (copied, readonly)
										[9]: clone_3_upvr (readonly)
										[10]: useMotion_upvr_result2_upvr (readonly)
										[11]: cframe_upvr_2 (readonly)
										[12]: var164_upvw (read and write)
										[13]: Goal_upvr (readonly)
										[14]: var139_upvw (copied, read and write)
										[15]: arg1_14 (readonly)
										[16]: arg2_6 (copied, readonly)
										[17]: UI_upvr (copied, readonly)
										[18]: Sounds_upvr (copied, readonly)
										[19]: SoundInstances_upvr (copied, readonly)
									]]
									-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
									var183_upvw += arg1_15 / 0.65
									local clamped_2 = math.clamp(var183_upvw, 0, 1)
									local minimum_2 = math.min(math.floor(clamped_2 * len_upvr) + 1, len_upvr)
									local var198
									if minimum_2 == len_upvr and 1 <= clamped_2 then
										var198 = 1
									end
									for _, v_4 in tbl_upvr_2 do
										v_4.CFrame = CFrame.new(Util_upvr.math.bezier(tbl_3_upvr[minimum_2], var198)) * CFrame.fromAxisAngle(Unit_2_upvw, -math.rad(clamped_2 * var185_upvr))
										local var199
									end
									if not arg3 then
										local any_GetPivot_result1 = clone_3_upvr:GetPivot()
										v_4 = CFrame.lookAlong(Vector3.new(any_GetPivot_result1.Position.X, any_GetPivot_result1.Position.Y, cframe_upvr_2.Position.Z + var164_upvw), any_GetPivot_result1.LookVector)
										useMotion_upvr_result2_upvr:spring(v_4, {
											tension = 100;
											friction = 30;
										})
									else
										local any_GetPivot_result1_2 = clone_3_upvr:GetPivot()
										useMotion_upvr_result2_upvr:spring(CFrame.lookAlong(Vector3.new(any_GetPivot_result1_2.Position.X, any_GetPivot_result1_2.Position.Y, Goal_upvr.Position.Z + var164_upvw), any_GetPivot_result1_2.LookVector), {
											tension = 50;
											friction = 30;
										})
									end
									if 1 <= clamped_2 and not var139_upvw then
										var139_upvw = true
										task.delay(3, arg1_14)
										local any_WorldToViewportPoint_result1_2, any_WorldToViewportPoint_result2_2 = workspace.CurrentCamera:WorldToViewportPoint(var199)
										if any_WorldToViewportPoint_result2_2 then
											UI_upvr.Frames.Stats:createAnimatedIncrement("Goals", arg2_6, Vector2.new(any_WorldToViewportPoint_result1_2.X, any_WorldToViewportPoint_result1_2.Y))
										end
										if arg3 then
											local any_playSound_result1 = Sounds_upvr.playSound(SoundInstances_upvr.Ding)
											any_playSound_result1.Volume /= 2
										end
									end
								end))
							end)
						end
					end):catch(warn)
				end
			end))
			cleanup_upvr(any_new_result1)
		end)
	end)
end