-- Name: Products
-- Path: game:GetService("ReplicatedStorage").Client.Core.UI.Apps.Products
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7800411999996868 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:18
-- Luau version 6, Types version 3
-- Time taken: 0.013063 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage.Packages.Vide)
local Util_upvr = require(ReplicatedStorage.Shared.Util)
local Market_upvr = require(ReplicatedStorage.Client.Core.Market)
local useAtom_upvr = require(ReplicatedStorage.Packages.VideCharm).useAtom
local Data_upvr = require(ReplicatedStorage.Client.Core.Data)
local derive_upvr = Vide.derive
local source_upvr = Vide.source
local map_upvr = require(script.map)
local Players_upvr = game:GetService("Players")
local cleanup_upvr = Vide.cleanup
local RunService_upvr = game:GetService("RunService")
local apply_upvr = Vide.apply
local indexes_upvr = Vide.indexes
local useMotion_upvr = Util_upvr.ui.useMotion
local Sift_upvr = require(ReplicatedStorage.Packages.Sift)
local effect_upvr = Vide.effect
local RichFormat_upvr = require(ReplicatedStorage.Packages.RichFormat)
local Market_upvr_2 = Market_upvr:GetService("Market")
return function(arg1, arg2, arg3) -- Line 34
	--[[ Upvalues[17]:
		[1]: useAtom_upvr (readonly)
		[2]: Data_upvr (readonly)
		[3]: derive_upvr (readonly)
		[4]: Util_upvr (readonly)
		[5]: source_upvr (readonly)
		[6]: map_upvr (readonly)
		[7]: Players_upvr (readonly)
		[8]: cleanup_upvr (readonly)
		[9]: RunService_upvr (readonly)
		[10]: apply_upvr (readonly)
		[11]: indexes_upvr (readonly)
		[12]: useMotion_upvr (readonly)
		[13]: Market_upvr (readonly)
		[14]: Sift_upvr (readonly)
		[15]: effect_upvr (readonly)
		[16]: RichFormat_upvr (readonly)
		[17]: Market_upvr_2 (readonly)
	]]
	local var6_result1_upvr = useAtom_upvr(Data_upvr.Local)
	local var9_result1_upvr_2 = source_upvr(Players_upvr.LocalPlayer:GetAttribute("Area"))
	local Placeholder_upvr = arg3.Container.Placeholder
	Placeholder_upvr.Visible = false
	local source_upvr_result1_upvr = source_upvr(0)
	cleanup_upvr(RunService_upvr.PreRender:Connect(function(arg1_2) -- Line 51
		--[[ Upvalues[1]:
			[1]: source_upvr_result1_upvr (readonly)
		]]
		source_upvr_result1_upvr(source_upvr_result1_upvr() + arg1_2)
	end))
	cleanup_upvr(Players_upvr.LocalPlayer:GetAttributeChangedSignal("Area"):Connect(function() -- Line 55
		--[[ Upvalues[2]:
			[1]: var9_result1_upvr_2 (readonly)
			[2]: Players_upvr (copied, readonly)
		]]
		var9_result1_upvr_2(Players_upvr.LocalPlayer:GetAttribute("Area"))
	end))
	local tbl_2 = {}
	local var8_result1_upvr_3 = derive_upvr(function() -- Line 36
		--[[ Upvalues[2]:
			[1]: var6_result1_upvr (readonly)
			[2]: Util_upvr (copied, readonly)
		]]
		local var23
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var23 = Util_upvr.table.navigatePath(var6_result1_upvr(), "market/Products")
			return var23
		end
		if not var6_result1_upvr() or not INLINED() then
			var23 = {}
		end
		return var23
	end)
	local var8_result1_upvr = derive_upvr(function() -- Line 40
		--[[ Upvalues[2]:
			[1]: var6_result1_upvr (readonly)
			[2]: Util_upvr (copied, readonly)
		]]
		local var25
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var25 = Util_upvr.table.navigatePath(var6_result1_upvr(), "market/Gamepasses")
			return var25
		end
		if not var6_result1_upvr() or not INLINED_2() then
			var25 = {}
		end
		return var25
	end)
	tbl_2[1] = indexes_upvr(source_upvr(map_upvr), function(arg1_3, arg2_2) -- Line 60
		--[[ Upvalues[15]:
			[1]: Placeholder_upvr (readonly)
			[2]: source_upvr (copied, readonly)
			[3]: Players_upvr (copied, readonly)
			[4]: derive_upvr (copied, readonly)
			[5]: var9_result1_upvr_2 (readonly)
			[6]: useMotion_upvr (copied, readonly)
			[7]: cleanup_upvr (copied, readonly)
			[8]: Market_upvr (copied, readonly)
			[9]: var8_result1_upvr_3 (readonly)
			[10]: var8_result1_upvr (readonly)
			[11]: Sift_upvr (copied, readonly)
			[12]: apply_upvr (copied, readonly)
			[13]: effect_upvr (copied, readonly)
			[14]: RichFormat_upvr (copied, readonly)
			[15]: Market_upvr_2 (copied, readonly)
		]]
		local arg1_3_result1_upvr = arg1_3()
		local clone_upvr = Placeholder_upvr:Clone()
		local content_upvr = arg1_3_result1_upvr.content
		local var9_result1_upvr_3 = source_upvr(Players_upvr.LocalPlayer:GetAttribute(arg1_3_result1_upvr.attribute or ""))
		local useMotion_upvr_result1, var16_result2_upvr = useMotion_upvr(0)
		cleanup_upvr(Players_upvr.LocalPlayer:GetAttributeChangedSignal(arg1_3_result1_upvr.attribute or ""):Connect(function() -- Line 77
			--[[ Upvalues[3]:
				[1]: var9_result1_upvr_3 (readonly)
				[2]: Players_upvr (copied, readonly)
				[3]: arg1_3_result1_upvr (readonly)
			]]
			var9_result1_upvr_3(Players_upvr.LocalPlayer:GetAttribute(arg1_3_result1_upvr.attribute or ""))
		end))
		local var9_result1_upvr = source_upvr({})
		task.spawn(function() -- Line 84
			--[[ Upvalues[3]:
				[1]: content_upvr (readonly)
				[2]: Market_upvr (copied, readonly)
				[3]: var9_result1_upvr (readonly)
			]]
			local tbl_3 = {}
			for i, v in content_upvr do
				tbl_3[i] = {v, Market_upvr:GetProductInfo(i, Enum.InfoType.Product)}
			end
			var9_result1_upvr(tbl_3)
		end)
		local var8_result1_upvr_2 = derive_upvr(function() -- Line 94
			--[[ Upvalues[5]:
				[1]: var8_result1_upvr_3 (copied, readonly)
				[2]: var8_result1_upvr (copied, readonly)
				[3]: var9_result1_upvr (readonly)
				[4]: content_upvr (readonly)
				[5]: Sift_upvr (copied, readonly)
			]]
			local var33_result1 = var8_result1_upvr_3()
			local var8_result1_upvr_result1 = var8_result1_upvr()
			local module_2 = {}
			for i_2, v_2 in content_upvr do
				local var73 = var9_result1_upvr()[i_2]
				if var73 then
					local _2_2 = var73[2]
					local var75
					if _2_2 then
						local function INLINED_4() -- Internal function, doesn't exist in bytecode
							var75 = Sift_upvr.Array.contains(var33_result1, i_2)
							return var75
						end
						if not var33_result1 or not INLINED_4() then
							var75 = var8_result1_upvr_result1
							if var75 then
								var75 = Sift_upvr.Array.contains(var8_result1_upvr_result1, i_2)
							end
						end
						if not var75 then
							table.insert(module_2, {
								productId = i_2;
								product = v_2;
								productInfo = _2_2;
								price = _2_2.PriceInRobux;
							})
						end
					end
				end
			end
			table.sort(module_2, function(arg1_5, arg2_4) -- Line 120
				local var78
				if arg1_5.price >= arg2_4.price then
					var78 = false
				else
					var78 = true
				end
				return var78
			end)
			if 0 < #module_2 then
				return module_2[1].productId
			end
			return nil
		end)
		clone_upvr.Name = arg2_2
		clone_upvr.Visible = true
		apply_upvr(clone_upvr.UIScale)({
			Scale = useMotion_upvr_result1;
		})
		local var8_result1_upvr_4 = derive_upvr(function() -- Line 66
			--[[ Upvalues[3]:
				[1]: arg1_3_result1_upvr (readonly)
				[2]: var9_result1_upvr_3 (readonly)
				[3]: var9_result1_upvr_2 (copied, readonly)
			]]
			local var40
			if var40 then
				var40 = var9_result1_upvr_3()
				return var40
			end
			if table.find(arg1_3_result1_upvr.areas, tonumber(var9_result1_upvr_2() or "":gsub("Area", "") or 0)) == nil then
				var40 = false
			else
				var40 = true
			end
			return var40
		end)
		effect_upvr(function() -- Line 139
			--[[ Upvalues[2]:
				[1]: var16_result2_upvr (readonly)
				[2]: var8_result1_upvr_4 (readonly)
			]]
			local var83
			if var8_result1_upvr_4() then
				var83 = 1
			else
				var83 = 0
			end
			var16_result2_upvr:spring(var83, {
				tension = 700;
				friction = 30;
			})
		end)
		local var86_upvw
		effect_upvr(function() -- Line 145
			--[[ Upvalues[5]:
				[1]: var8_result1_upvr_2 (readonly)
				[2]: var86_upvw (read and write)
				[3]: var9_result1_upvr (readonly)
				[4]: clone_upvr (readonly)
				[5]: RichFormat_upvr (copied, readonly)
			]]
			local var8_result1_upvr_2_result1 = var8_result1_upvr_2()
			local var88
			if var8_result1_upvr_2_result1 ~= var88 then
				var86_upvw = var8_result1_upvr_2_result1
			else
				return
			end
			var88 = var8_result1_upvr_2_result1
			if var88 then
			end
			if var9_result1_upvr()[var8_result1_upvr_2_result1] then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				local _1 = var9_result1_upvr()[var8_result1_upvr_2_result1][1]
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				local _2 = var9_result1_upvr()[var8_result1_upvr_2_result1][2]
				local name = _1.name
				if not name then
					name = _2.Name
				end
				clone_upvr.Content.TextLabel.Text = `{name}`
				local image_2 = _1.image
				if not image_2 then
					image_2 = `rbxassetid://{_2.IconImageAssetId}`
				end
				clone_upvr.Content.ImageLabel.Image = image_2
				local image = _1.image
				if not image then
					image = `rbxassetid://{_2.IconImageAssetId}`
				end
				clone_upvr.Content.ImageLabel1.Image = image
				clone_upvr.Content.TextLabel1.TextColor3 = Color3.new(0, 1, 0)
				clone_upvr.Content.TextLabel1.Text = `{RichFormat_upvr.number.Abbreviate(_2.PriceInRobux)}`
				clone_upvr.Content.TextLabel1.Visible = false
			end
		end)
		apply_upvr(clone_upvr)({
			Visible = derive_upvr(function() -- Line 168
				--[[ Upvalues[1]:
					[1]: var8_result1_upvr_2 (readonly)
				]]
				local var96
				if var8_result1_upvr_2() == nil then
					var96 = false
				else
					var96 = true
				end
				return var96
			end);
			MouseButton1Click = function() -- Line 171, Named "MouseButton1Click"
				--[[ Upvalues[2]:
					[1]: var8_result1_upvr_2 (readonly)
					[2]: Market_upvr_2 (copied, readonly)
				]]
				local var79_result1 = var8_result1_upvr_2()
				if var79_result1 then
					Market_upvr_2:Purchase(var79_result1)
				end
			end;
		})
		return clone_upvr
	end)
	apply_upvr(arg3.Container)(tbl_2)
end