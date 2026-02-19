-- Name: Merchant
-- Path: game:GetService("ReplicatedStorage").Client.Core.UI.Apps.Merchant
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.8034687000035774 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:17
-- Luau version 6, Types version 3
-- Time taken: 0.029422 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage_upvr.Packages.Vide)
local Util_upvr = require(ReplicatedStorage_upvr.Shared.Util)
local tbl_4_upvr = {
	tension = 330;
	friction = 18;
}
local tbl_8_upvr = {
	tension = 330;
	friction = 40;
}
local source_upvr = Vide.source
local Merchant_upvr_2 = require(ReplicatedStorage_upvr.Shared.Modules.Libraries.Merchant)
local useAtom_upvr = require(ReplicatedStorage_upvr.Packages.VideCharm).useAtom
local derive_upvr = Vide.derive
local Requirements_upvr = require(ReplicatedStorage_upvr.Shared.Modules.Libraries.Requirements)
local Players_upvr = game:GetService("Players")
local Sift_upvr = require(ReplicatedStorage_upvr.Packages.Sift)
local CollectionService_upvr = game:GetService("CollectionService")
local cleanup_upvr = Vide.cleanup
local indexes_upvr = Vide.indexes
local create_upvr = Vide.create
local useMotion_upvr = Util_upvr.ui.useMotion
local effect_upvr = Vide.effect
local apply_upvr = Vide.apply
local RichFormat_upvr = require(ReplicatedStorage_upvr.Packages.RichFormat)
local Rarities_upvr = require(ReplicatedStorage_upvr.Shared.Modules.Libraries.Rarities)
local Currencies_upvr = require(ReplicatedStorage_upvr.Shared.Modules.Libraries.Currencies)
local spring_upvr = Vide.spring
local Sounds_upvr = require(ReplicatedStorage_upvr.Shared.Assets.Sounds)
local SoundInstances_upvr = ReplicatedStorage_upvr.Shared.Assets.SoundInstances
local Products_upvr = require(ReplicatedStorage_upvr.Shared.Modules.Libraries.Products)
return function(arg1, arg2, arg3) -- Line 41
	--[[ Upvalues[25]:
		[1]: ReplicatedStorage_upvr (readonly)
		[2]: source_upvr (readonly)
		[3]: Merchant_upvr_2 (readonly)
		[4]: useAtom_upvr (readonly)
		[5]: derive_upvr (readonly)
		[6]: Util_upvr (readonly)
		[7]: Requirements_upvr (readonly)
		[8]: Players_upvr (readonly)
		[9]: Sift_upvr (readonly)
		[10]: CollectionService_upvr (readonly)
		[11]: cleanup_upvr (readonly)
		[12]: indexes_upvr (readonly)
		[13]: create_upvr (readonly)
		[14]: useMotion_upvr (readonly)
		[15]: effect_upvr (readonly)
		[16]: tbl_4_upvr (readonly)
		[17]: tbl_8_upvr (readonly)
		[18]: apply_upvr (readonly)
		[19]: RichFormat_upvr (readonly)
		[20]: Rarities_upvr (readonly)
		[21]: Currencies_upvr (readonly)
		[22]: spring_upvr (readonly)
		[23]: Sounds_upvr (readonly)
		[24]: SoundInstances_upvr (readonly)
		[25]: Products_upvr (readonly)
	]]
	local Merchant = require(ReplicatedStorage_upvr.Client.Core.Merchant)
	local Merchant_upvr = Merchant:GetService("Merchant")
	local source_upvr_result1_upvr_2 = source_upvr({})
	local useAtom_upvr_result1_upvr = useAtom_upvr(require(ReplicatedStorage_upvr.Client.Core.Data).Local)
	local derive_upvr_result1_upvr_8 = derive_upvr(function() -- Line 53
		--[[ Upvalues[1]:
			[1]: useAtom_upvr_result1_upvr (readonly)
		]]
		local var37
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var37 = useAtom_upvr_result1_upvr().inventory.Tree
			return var37
		end
		if not useAtom_upvr_result1_upvr() or not INLINED() then
			var37 = 0
		end
		return var37
	end)
	local useAtom_upvr_result1_upvr_2 = useAtom_upvr(Merchant.Atoms.Merchant)
	local derive_upvr_result1_upvr_9 = derive_upvr(function() -- Line 68
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local var51
		if arg2.Current() ~= script.Name then
			var51 = false
		else
			var51 = true
		end
		return var51
	end)
	local function _(arg1_2) -- Line 72, Named "onMerchantAdded"
		--[[ Upvalues[2]:
			[1]: source_upvr_result1_upvr_2 (readonly)
			[2]: Sift_upvr (copied, readonly)
		]]
		source_upvr_result1_upvr_2(Sift_upvr.Array.append(source_upvr_result1_upvr_2(), arg1_2))
	end
	local function _(arg1_3) -- Line 76, Named "onMerchantRemoved"
		--[[ Upvalues[2]:
			[1]: source_upvr_result1_upvr_2 (readonly)
			[2]: Sift_upvr (copied, readonly)
		]]
		source_upvr_result1_upvr_2(Sift_upvr.Array.removeValue(source_upvr_result1_upvr_2(), arg1_3))
	end
	for _, v in CollectionService_upvr:GetTagged("Merchant") do
		source_upvr_result1_upvr_2(Sift_upvr.Array.append(source_upvr_result1_upvr_2(), v))
	end
	cleanup_upvr(CollectionService_upvr:GetInstanceAddedSignal("Merchant"):Connect(function(arg1_4) -- Line 82
		--[[ Upvalues[2]:
			[1]: source_upvr_result1_upvr_2 (readonly)
			[2]: Sift_upvr (copied, readonly)
		]]
		source_upvr_result1_upvr_2(Sift_upvr.Array.append(source_upvr_result1_upvr_2(), arg1_4))
	end))
	cleanup_upvr(CollectionService_upvr:GetInstanceRemovedSignal("Merchant"):Connect(function(arg1_5) -- Line 83
		--[[ Upvalues[2]:
			[1]: source_upvr_result1_upvr_2 (readonly)
			[2]: Sift_upvr (copied, readonly)
		]]
		source_upvr_result1_upvr_2(Sift_upvr.Array.removeValue(source_upvr_result1_upvr_2(), arg1_5))
	end))
	local derive_upvr_result1_upvr = derive_upvr(function() -- Line 62
		--[[ Upvalues[4]:
			[1]: useAtom_upvr_result1_upvr (readonly)
			[2]: derive_upvr_result1_upvr_8 (readonly)
			[3]: Requirements_upvr (copied, readonly)
			[4]: Players_upvr (copied, readonly)
		]]
		if not useAtom_upvr_result1_upvr() then
			return ""
		end
		derive_upvr_result1_upvr_8()
		return Requirements_upvr.getRequirement({
			player = Players_upvr.LocalPlayer;
			requirements = {
				tree = "3/2";
			};
		})
	end)
	indexes_upvr(source_upvr_result1_upvr_2, function(arg1_6, arg2_2) -- Line 85
		--[[ Upvalues[6]:
			[1]: create_upvr (copied, readonly)
			[2]: derive_upvr (copied, readonly)
			[3]: derive_upvr_result1_upvr (readonly)
			[4]: derive_upvr_result1_upvr_9 (readonly)
			[5]: arg2 (readonly)
			[6]: cleanup_upvr (copied, readonly)
		]]
		cleanup_upvr(create_upvr("ProximityPrompt")({
			Parent = arg1_6().PrimaryPart;
			ActionText = derive_upvr(function() -- Line 90
				--[[ Upvalues[1]:
					[1]: derive_upvr_result1_upvr (copied, readonly)
				]]
				if derive_upvr_result1_upvr() then
					return "🔒 UPGRADE 3-5"
				end
				return "Merchant"
			end);
			RequiresLineOfSight = false;
			Enabled = derive_upvr(function() -- Line 92
				--[[ Upvalues[2]:
					[1]: derive_upvr_result1_upvr (copied, readonly)
					[2]: derive_upvr_result1_upvr_9 (copied, readonly)
				]]
				if derive_upvr_result1_upvr() then
					return true
				end
				return not derive_upvr_result1_upvr_9()
			end);
			Triggered = function() -- Line 99, Named "Triggered"
				--[[ Upvalues[2]:
					[1]: derive_upvr_result1_upvr (copied, readonly)
					[2]: arg2 (copied, readonly)
				]]
				if derive_upvr_result1_upvr() then
				else
					arg2.Current(script.Name)
				end
			end;
		}))
	end)
	local Position_upvr = arg3.Container.Position
	local var64_upvr = Position_upvr + UDim2.fromScale(0, -1)
	local var18_result1_upvr, useMotion_upvr_result2_upvr_2 = useMotion_upvr(UDim2.fromScale(0.5, 0.5))
	local useMotion_upvr_result1, useMotion_upvr_result2_upvr_3 = useMotion_upvr(1)
	effect_upvr(function() -- Line 113
		--[[ Upvalues[7]:
			[1]: useMotion_upvr_result2_upvr_2 (readonly)
			[2]: derive_upvr_result1_upvr_9 (readonly)
			[3]: Position_upvr (readonly)
			[4]: var64_upvr (readonly)
			[5]: tbl_4_upvr (copied, readonly)
			[6]: useMotion_upvr_result2_upvr_3 (readonly)
			[7]: tbl_8_upvr (copied, readonly)
		]]
		local var70
		local function INLINED_5() -- Internal function, doesn't exist in bytecode
			var70 = Position_upvr
			return var70
		end
		if not derive_upvr_result1_upvr_9() or not INLINED_5() then
			var70 = var64_upvr
		end
		useMotion_upvr_result2_upvr_2:spring(var70, tbl_4_upvr)
		if derive_upvr_result1_upvr_9() then
			var70 = 1
		else
			var70 = 0
		end
		useMotion_upvr_result2_upvr_3:spring(var70, tbl_8_upvr)
	end)
	apply_upvr(arg3)({
		Enabled = derive_upvr(function() -- Line 118
			--[[ Upvalues[2]:
				[1]: var18_result1_upvr (readonly)
				[2]: var64_upvr (readonly)
			]]
			local var73
			if 0.1 >= math.abs(var18_result1_upvr().Y.Scale - var64_upvr.Y.Scale) then
				var73 = false
			else
				var73 = true
			end
			return var73
		end);
	})
	apply_upvr(arg3.Container)({
		Position = var18_result1_upvr;
	})
	apply_upvr(arg3.Container.UIScale)({
		Scale = useMotion_upvr_result1;
	})
	local tbl_2 = {}
	local function MouseButton1Click() -- Line 121
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		arg2.Current(nil)
	end
	tbl_2.MouseButton1Click = MouseButton1Click
	apply_upvr(arg3.Container.Content.Topbar.Close)(tbl_2)
	local tbl_5 = {}
	local derive_upvr_result1_upvr_6 = derive_upvr(function() -- Line 57
		--[[ Upvalues[1]:
			[1]: useAtom_upvr_result1_upvr (readonly)
		]]
		local var35_result1 = useAtom_upvr_result1_upvr()
		local var46
		local function INLINED_4() -- Internal function, doesn't exist in bytecode
			var46 = var35_result1.misc.MerchantRestockTimeRemaining
			return var46
		end
		if not var35_result1 or not INLINED_4() then
			var46 = 0
		end
		return var46
	end)
	tbl_5.Text = derive_upvr(function() -- Line 122
		--[[ Upvalues[2]:
			[1]: RichFormat_upvr (copied, readonly)
			[2]: derive_upvr_result1_upvr_6 (readonly)
		]]
		return `Restock in {RichFormat_upvr.time.Digital(derive_upvr_result1_upvr_6())}`
	end)
	apply_upvr(arg3.Container.Content.Topbar.TextLabel)(tbl_5)
	local tbl_9 = {}
	local function MouseButton1Click() -- Line 123
		--[[ Upvalues[2]:
			[1]: Merchant_upvr (readonly)
			[2]: Players_upvr (copied, readonly)
		]]
		Merchant_upvr:Restock(Players_upvr.LocalPlayer):catch(warn)
	end
	tbl_9.MouseButton1Click = MouseButton1Click
	apply_upvr(arg3.Container.Restock)(tbl_9)
	local Placeholder_upvr = arg3.Container.Content.List.Placeholder
	Placeholder_upvr.Visible = false
	local tbl_3 = {}
	local derive_upvr_result1_upvr_3 = derive_upvr(function() -- Line 56
		--[[ Upvalues[1]:
			[1]: useAtom_upvr_result1_upvr_2 (readonly)
		]]
		local var43
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			var43 = useAtom_upvr_result1_upvr_2().Items
			return var43
		end
		if not useAtom_upvr_result1_upvr_2() or not INLINED_3() then
			var43 = {}
		end
		return var43
	end)
	local derive_upvr_result1_upvr_10 = derive_upvr(function() -- Line 54
		--[[ Upvalues[2]:
			[1]: useAtom_upvr_result1_upvr (readonly)
			[2]: Util_upvr (copied, readonly)
		]]
		local var40
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var40 = Util_upvr.table.navigatePath(useAtom_upvr_result1_upvr(), "inventory/Merchant")
			return var40
		end
		if not useAtom_upvr_result1_upvr() or not INLINED_2() then
			var40 = {}
		end
		return var40
	end)
	local source_upvr_result1_upvr = source_upvr(nil)
	local UI_upvr = require(ReplicatedStorage_upvr.Client.Core.UI)
	local Market_upvr = require(ReplicatedStorage_upvr.Client.Core.Market)
	tbl_3[1] = indexes_upvr(source_upvr(Merchant_upvr_2.Content), function(arg1_7, arg2_3) -- Line 131
		--[[ Upvalues[23]:
			[1]: Rarities_upvr (copied, readonly)
			[2]: derive_upvr (copied, readonly)
			[3]: derive_upvr_result1_upvr_3 (readonly)
			[4]: derive_upvr_result1_upvr_10 (readonly)
			[5]: source_upvr_result1_upvr (readonly)
			[6]: useAtom_upvr_result1_upvr (readonly)
			[7]: derive_upvr_result1_upvr_8 (readonly)
			[8]: Requirements_upvr (copied, readonly)
			[9]: Players_upvr (copied, readonly)
			[10]: Currencies_upvr (copied, readonly)
			[11]: Placeholder_upvr (readonly)
			[12]: useMotion_upvr (copied, readonly)
			[13]: spring_upvr (copied, readonly)
			[14]: effect_upvr (copied, readonly)
			[15]: apply_upvr (copied, readonly)
			[16]: source_upvr (copied, readonly)
			[17]: Sounds_upvr (copied, readonly)
			[18]: SoundInstances_upvr (copied, readonly)
			[19]: UI_upvr (readonly)
			[20]: Products_upvr (copied, readonly)
			[21]: Market_upvr (readonly)
			[22]: RichFormat_upvr (copied, readonly)
			[23]: Merchant_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local arg1_7_result1_upvr = arg1_7()
		local var98 = Rarities_upvr[arg1_7_result1_upvr.rarity]
		local derive_upvr_result1_upvr_2 = derive_upvr(function() -- Line 135
			--[[ Upvalues[2]:
				[1]: derive_upvr_result1_upvr_3 (copied, readonly)
				[2]: arg2_3 (readonly)
			]]
			return derive_upvr_result1_upvr_3()[arg2_3] or 0
		end)
		local derive_upvr_result1_upvr_11 = derive_upvr(function() -- Line 136
			--[[ Upvalues[2]:
				[1]: derive_upvr_result1_upvr_10 (copied, readonly)
				[2]: arg2_3 (readonly)
			]]
			return derive_upvr_result1_upvr_10()[arg2_3] or 0
		end)
		local derive_upvr_result1_upvr_4 = derive_upvr(function() -- Line 139
			--[[ Upvalues[5]:
				[1]: useAtom_upvr_result1_upvr (copied, readonly)
				[2]: derive_upvr_result1_upvr_8 (copied, readonly)
				[3]: arg1_7_result1_upvr (readonly)
				[4]: Requirements_upvr (copied, readonly)
				[5]: Players_upvr (copied, readonly)
			]]
			local var108
			if not var108 then
				var108 = ""
				return var108
			end
			var108 = derive_upvr_result1_upvr_8
			var108()
			local function INLINED_6() -- Internal function, doesn't exist in bytecode
				var108 = var108(tbl_10)
				tbl_10.requirements = arg1_7_result1_upvr.requirements
				tbl_10.player = Players_upvr.LocalPlayer
				local tbl_10 = {}
				var108 = Requirements_upvr.getRequirement
				return var108
			end
			if not arg1_7_result1_upvr.requirements or not INLINED_6() then
				var108 = false
			end
			return var108
		end)
		local clone = Placeholder_upvr:Clone()
		clone.Name = arg2_3
		clone.Visible = true
		clone.Rarity.UIGradient.Color = var98.gradient
		clone.Rarity.Bar.Fill.UIGradient.Color = var98.gradient
		clone.Content.Info.NameLabel.Text = arg1_7_result1_upvr.name
		clone.Content.Icon.Image = arg1_7_result1_upvr.image
		clone.Content.Icon2.Image = arg1_7_result1_upvr.image
		local Size_upvr = clone.Size
		local useMotion_upvr_result1_2, useMotion_upvr_result2_upvr = useMotion_upvr(Size_upvr)
		local var24_result1 = spring_upvr(derive_upvr(function() -- Line 161
			--[[ Upvalues[1]:
				[1]: derive_upvr_result1_upvr_2 (readonly)
			]]
			local var116
			local function INLINED_7() -- Internal function, doesn't exist in bytecode
				var116 = Color3.fromRGB(0, 255, 0)
				return var116
			end
			if 0 >= derive_upvr_result1_upvr_2() or not INLINED_7() then
				var116 = Color3.fromRGB(255, 0, 0)
			end
			return var116
		end), 0.5, 1)
		local derive_upvr_result1_upvr_7 = derive_upvr(function() -- Line 137
			--[[ Upvalues[2]:
				[1]: source_upvr_result1_upvr (copied, readonly)
				[2]: arg2_3 (readonly)
			]]
			local var104
			if source_upvr_result1_upvr() ~= arg2_3 then
				var104 = false
			else
				var104 = true
			end
			return var104
		end)
		local var120_upvr = Size_upvr + UDim2.fromOffset(0, 55)
		effect_upvr(function() -- Line 165
			--[[ Upvalues[4]:
				[1]: useMotion_upvr_result2_upvr (readonly)
				[2]: derive_upvr_result1_upvr_7 (readonly)
				[3]: var120_upvr (readonly)
				[4]: Size_upvr (readonly)
			]]
			local var121
			local function INLINED_8() -- Internal function, doesn't exist in bytecode
				var121 = var120_upvr
				return var121
			end
			if not derive_upvr_result1_upvr_7() or not INLINED_8() then
				var121 = Size_upvr
			end
			useMotion_upvr_result2_upvr:spring(var121, {
				tension = 400;
				friction = 20;
			})
		end)
		apply_upvr(clone.Locked)({
			Visible = derive_upvr(function() -- Line 169
				--[[ Upvalues[1]:
					[1]: derive_upvr_result1_upvr_4 (readonly)
				]]
				if derive_upvr_result1_upvr_4() then
					return true
				end
				return false
			end);
		})
		apply_upvr(clone.Locked.Content.TextLabel)({
			Text = derive_upvr(function() -- Line 170
				--[[ Upvalues[1]:
					[1]: derive_upvr_result1_upvr_4 (readonly)
				]]
				return derive_upvr_result1_upvr_4() or ""
			end);
		})
		local tbl = {
			Size = useMotion_upvr_result1_2;
			ZIndex = arg1_7_result1_upvr.order or 1;
		}
		local function MouseButton1Click() -- Line 175
			--[[ Upvalues[2]:
				[1]: source_upvr_result1_upvr (copied, readonly)
				[2]: arg2_3 (readonly)
			]]
			if source_upvr_result1_upvr() == arg2_3 then
				source_upvr_result1_upvr(nil)
			else
				source_upvr_result1_upvr(arg2_3)
			end
		end
		tbl.MouseButton1Click = MouseButton1Click
		apply_upvr(clone)(tbl)
		apply_upvr(clone.Content.Info.Stock)({
			BackgroundColor3 = var24_result1;
		})
		apply_upvr(clone.Content.Info.Stock.UIStroke)({
			Color = var24_result1;
		})
		apply_upvr(clone.Content.Info.Stock.TextLabel)({
			Text = derive_upvr(function() -- Line 186
				--[[ Upvalues[1]:
					[1]: derive_upvr_result1_upvr_2 (readonly)
				]]
				return `{derive_upvr_result1_upvr_2()}x Stock`
			end);
		})
		apply_upvr(clone.Content.Info.LevelLabel)({
			Text = derive_upvr(function() -- Line 187
				--[[ Upvalues[2]:
					[1]: derive_upvr_result1_upvr_11 (readonly)
					[2]: arg1_7_result1_upvr (readonly)
				]]
				return `Level {derive_upvr_result1_upvr_11()}/{arg1_7_result1_upvr.max}`
			end);
		})
		for _, v_2 in clone.Buttons:GetChildren() do
			local children_2_upvr = v_2:IsA("GuiButton")
			if children_2_upvr then
				if v_2.Name:lower():match("robux") == nil then
					children_2_upvr = false
				else
					children_2_upvr = true
				end
				if v_2.Name:lower():match("multiple") == nil then
					local _ = false
					-- KONSTANTWARNING: Skipped task `defvar` above
				else
				end
				if children_2_upvr or not arg1_7_result1_upvr.price then
				end
				local source_upvr_result1_upvr_3 = source_upvr(0)
				local function alert_upvr(arg1_8) -- Line 197, Named "alert"
					--[[ Upvalues[3]:
						[1]: Sounds_upvr (copied, readonly)
						[2]: SoundInstances_upvr (copied, readonly)
						[3]: UI_upvr (copied, readonly)
					]]
					Sounds_upvr.playSound(SoundInstances_upvr.Error)
					UI_upvr.Frames.Notifications:alert(arg1_8, 3, ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("#ff0059")), ColorSequenceKeypoint.new(1, Color3.fromHex("#ff0000"))}))
				end
				local var142_upvr = true
				task.spawn(function() -- Line 205
					--[[ Upvalues[6]:
						[1]: children_2_upvr (readonly)
						[2]: arg1_7_result1_upvr (readonly)
						[3]: Products_upvr (copied, readonly)
						[4]: var142_upvr (readonly)
						[5]: Market_upvr (copied, readonly)
						[6]: source_upvr_result1_upvr_3 (readonly)
					]]
					if children_2_upvr then
						local var147
						if arg1_7_result1_upvr.robux then
							local function INLINED_10() -- Internal function, doesn't exist in bytecode
								var147 = arg1_7_result1_upvr.robux.multiple
								return var147
							end
							if not var142_upvr or not INLINED_10() then
								var147 = arg1_7_result1_upvr.robux.single
							end
							local any_GetByName_result1, any_GetByName_result2, _ = Products_upvr:GetByName(var147)
							if any_GetByName_result1 then
								source_upvr_result1_upvr_3(Market_upvr:GetProductInfo(any_GetByName_result2, Enum.InfoType.Product).PriceInRobux)
							end
						end
					end
				end)
				local tbl_7 = {}
				local var153_upvr = Currencies_upvr[arg1_7_result1_upvr.currency]
				tbl_7.Text = derive_upvr(function() -- Line 216
					--[[ Upvalues[4]:
						[1]: source_upvr_result1_upvr_3 (readonly)
						[2]: children_2_upvr (readonly)
						[3]: var153_upvr (readonly)
						[4]: RichFormat_upvr (copied, readonly)
					]]
					-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
					local var139_result1 = source_upvr_result1_upvr_3()
					local var155
					if children_2_upvr then
						var155 = ""
					else
						var155 = ""
					end
					local var156
					if not children_2_upvr then
						local formatShort = var153_upvr.formatShort
						if not formatShort then
							formatShort = var153_upvr.format
						end
						if not formatShort or not formatShort:format(var139_result1) then
						end
					elseif not RichFormat_upvr.number.Abbreviate or not RichFormat_upvr.number.Abbreviate(var139_result1) then
					end
					return var155..tostring(var139_result1)
				end)
				apply_upvr(v_2.TextLabel)(tbl_7)
				local tbl_6 = {
					Visible = derive_upvr(function() -- Line 232
						--[[ Upvalues[4]:
							[1]: children_2_upvr (readonly)
							[2]: var142_upvr (readonly)
							[3]: arg1_7_result1_upvr (readonly)
							[4]: derive_upvr_result1_upvr_11 (readonly)
						]]
						if children_2_upvr then
							if var142_upvr then
								local robux = arg1_7_result1_upvr.robux
								if robux then
									robux = arg1_7_result1_upvr.robux.multiple
									if robux then
										if derive_upvr_result1_upvr_11() >= arg1_7_result1_upvr.max - 4 then
											robux = false
										else
											robux = true
										end
									end
								end
								return robux
							end
							robux = arg1_7_result1_upvr.robux
							local var163 = robux
							if var163 then
								var163 = arg1_7_result1_upvr.robux.single
							end
							return var163
						end
						return true
					end);
				}
				local derive_upvr_result1_upvr_5 = derive_upvr(function() -- Line 138
					--[[ Upvalues[2]:
						[1]: derive_upvr_result1_upvr_11 (readonly)
						[2]: arg1_7_result1_upvr (readonly)
					]]
					local var106
					if (arg1_7_result1_upvr.max or 0) > derive_upvr_result1_upvr_11() then
						var106 = false
					else
						var106 = true
					end
					return var106
				end)
				function tbl_6.MouseButton1Click() -- Line 243
					--[[ Upvalues[7]:
						[1]: derive_upvr_result1_upvr_5 (readonly)
						[2]: alert_upvr (readonly)
						[3]: children_2_upvr (readonly)
						[4]: derive_upvr_result1_upvr_2 (readonly)
						[5]: Merchant_upvr (copied, readonly)
						[6]: arg2_3 (readonly)
						[7]: var142_upvr (readonly)
					]]
					if derive_upvr_result1_upvr_5() then
						alert_upvr("Max level reached!")
					else
						local var165
						if not children_2_upvr and derive_upvr_result1_upvr_2() <= 0 then
							alert_upvr("Out of stock!")
							return
						end
						if var142_upvr then
							var165 = 5
						else
							var165 = 1
						end
						Merchant_upvr:Buy(arg2_3, children_2_upvr, var165):andThen(function(arg1_9, arg2_4) -- Line 252
							--[[ Upvalues[1]:
								[1]: alert_upvr (copied, readonly)
							]]
							if not arg1_9 then
								alert_upvr(arg2_4)
							end
						end):catch(warn)
					end
				end
				apply_upvr(v_2)(tbl_6)
			end
		end
		return clone
	end)
	apply_upvr(arg3.Container.Content.List)(tbl_3)
end