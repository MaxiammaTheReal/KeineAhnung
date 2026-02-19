-- Name: behaviours
-- Path: game:GetService("ReplicatedStorage").Client.Core.UI.Apps.Buttons.behaviours
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6279503999976441 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:13
-- Luau version 6, Types version 3
-- Time taken: 0.013225 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage.Packages.Vide)
local Charm_upvr = require(ReplicatedStorage.Packages.Charm)
local Util_upvr = require(ReplicatedStorage.Shared.Util)
local RichFormat_upvr = require(ReplicatedStorage.Packages.RichFormat)
local Market_upvr_2 = require(ReplicatedStorage.Client.Core.Market)
local Data_upvr = require(ReplicatedStorage.Client.Core.Data)
local Market_upvr = Market_upvr_2:GetService("Market")
local useAtom_upvr = require(ReplicatedStorage.Packages.VideCharm).useAtom
local apply_upvr = Vide.apply
local derive_upvr = Vide.derive
local any_computed_result1_upvr = Charm_upvr.computed(function() -- Line 39
	--[[ Upvalues[2]:
		[1]: Data_upvr (readonly)
		[2]: Util_upvr (readonly)
	]]
	local any_Local_result1_2 = Data_upvr.Local()
	local var17
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var17 = Util_upvr.table.navigatePath(any_Local_result1_2, "market/Gamepasses")
		return var17
	end
	if not any_Local_result1_2 or not INLINED() then
		var17 = {}
	end
	return var17
end)
local module = {}
local UI_upvr = require(ReplicatedStorage.Client.Core.UI)
function module.toggleFrame(arg1, arg2, arg3) -- Line 51
	--[[ Upvalues[3]:
		[1]: apply_upvr (readonly)
		[2]: UI_upvr (readonly)
		[3]: derive_upvr (readonly)
	]]
	local tbl_2 = {}
	local function MouseButton1Click() -- Line 52
		--[[ Upvalues[2]:
			[1]: UI_upvr (copied, readonly)
			[2]: arg3 (readonly)
		]]
		if UI_upvr.Globals.Current() == arg3 then
			UI_upvr.Globals.Current(nil)
		else
			UI_upvr.Globals.Current(arg3)
		end
	end
	tbl_2.MouseButton1Click = MouseButton1Click
	apply_upvr(arg1)(tbl_2)
	arg1.Content.TextLabel1.Visible = false
	if arg3 == "Shop" then
		arg1.Content.CheapRobux.Visible = true
	end
	return derive_upvr(function() -- Line 66
		return true
	end)
end
local Loop_upvr = require(ReplicatedStorage.Client.Core.Loop)
local Products_upvr = require(ReplicatedStorage.Shared.Modules.Libraries.Products)
local source_upvr = Vide.source
function module.toggleFootballAuto(arg1, arg2, arg3, arg4) -- Line 71
	--[[ Upvalues[11]:
		[1]: useAtom_upvr (readonly)
		[2]: Loop_upvr (readonly)
		[3]: Products_upvr (readonly)
		[4]: source_upvr (readonly)
		[5]: Charm_upvr (readonly)
		[6]: any_computed_result1_upvr (readonly)
		[7]: Market_upvr_2 (readonly)
		[8]: apply_upvr (readonly)
		[9]: Market_upvr (readonly)
		[10]: derive_upvr (readonly)
		[11]: RichFormat_upvr (readonly)
	]]
	local var9_result1_upvr = useAtom_upvr(Loop_upvr.Auto)
	local _, any_GetByName_result2_upvr, any_GetByName_result3 = Products_upvr:GetByName("Auto")
	local source_upvr_result1_upvr = source_upvr(nil)
	local useAtom_upvr_result1_upvr = useAtom_upvr(Charm_upvr.computed(function() -- Line 76
		--[[ Upvalues[2]:
			[1]: any_computed_result1_upvr (copied, readonly)
			[2]: any_GetByName_result2_upvr (readonly)
		]]
		local var32
		if table.find(any_computed_result1_upvr(), any_GetByName_result2_upvr) == nil then
			var32 = false
		else
			var32 = true
		end
		return var32
	end))
	task.spawn(function() -- Line 80
		--[[ Upvalues[3]:
			[1]: source_upvr_result1_upvr (readonly)
			[2]: Market_upvr_2 (copied, readonly)
			[3]: any_GetByName_result2_upvr (readonly)
		]]
		source_upvr_result1_upvr(Market_upvr_2:GetProductInfo(any_GetByName_result2_upvr, Enum.InfoType.GamePass))
	end)
	local tbl = {}
	local function MouseButton1Click() -- Line 84
		--[[ Upvalues[5]:
			[1]: useAtom_upvr_result1_upvr (readonly)
			[2]: Market_upvr (copied, readonly)
			[3]: any_GetByName_result2_upvr (readonly)
			[4]: Loop_upvr (copied, readonly)
			[5]: var9_result1_upvr (readonly)
		]]
		if not useAtom_upvr_result1_upvr() then
			Market_upvr:Purchase(any_GetByName_result2_upvr)
		else
			Loop_upvr.Auto(not var9_result1_upvr())
		end
	end
	tbl.MouseButton1Click = MouseButton1Click
	apply_upvr(arg1)(tbl)
	apply_upvr(arg1.Content.ImageLabel)({
		Image = derive_upvr(function() -- Line 93
			--[[ Upvalues[3]:
				[1]: var9_result1_upvr (readonly)
				[2]: arg3 (readonly)
				[3]: arg4 (readonly)
			]]
			local var38
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var38 = arg3
				return var38
			end
			if not var9_result1_upvr() or not INLINED_2() then
				var38 = arg4
			end
			return var38
		end);
	})
	apply_upvr(arg1.Content.TextLabel1)({
		TextColor3 = Color3.new(0, 1, 0);
		Text = derive_upvr(function() -- Line 99
			--[[ Upvalues[3]:
				[1]: useAtom_upvr_result1_upvr (readonly)
				[2]: source_upvr_result1_upvr (readonly)
				[3]: RichFormat_upvr (copied, readonly)
			]]
			local var41
			if useAtom_upvr_result1_upvr() then
				var41 = "Owned"
				return var41
			end
			local function INLINED_3() -- Internal function, doesn't exist in bytecode
				var41 = `{RichFormat_upvr.number.Abbreviate(source_upvr_result1_upvr().PriceInRobux)}`
				return var41
			end
			if not source_upvr_result1_upvr() or not INLINED_3() then
				var41 = ""
			end
			return var41
		end);
		Visible = derive_upvr(function() -- Line 102
			return false
		end);
	})
	return derive_upvr(function() -- Line 107
		return true
	end)
end
local any_computed_result1_upvr_2 = Charm_upvr.computed(function() -- Line 34
	--[[ Upvalues[2]:
		[1]: Data_upvr (readonly)
		[2]: Util_upvr (readonly)
	]]
	local any_Local_result1 = Data_upvr.Local()
	local var14 = any_Local_result1
	if var14 then
		var14 = Util_upvr.table.navigatePath(any_Local_result1, "market/Products")
	end
	return var14
end)
local Sift_upvr = require(ReplicatedStorage.Packages.Sift)
local effect_upvr = Vide.effect
function module.productShuffle(arg1, arg2, arg3) -- Line 112
	--[[ Upvalues[11]:
		[1]: Charm_upvr (readonly)
		[2]: Market_upvr_2 (readonly)
		[3]: any_computed_result1_upvr (readonly)
		[4]: any_computed_result1_upvr_2 (readonly)
		[5]: Sift_upvr (readonly)
		[6]: effect_upvr (readonly)
		[7]: useAtom_upvr (readonly)
		[8]: RichFormat_upvr (readonly)
		[9]: apply_upvr (readonly)
		[10]: Market_upvr (readonly)
		[11]: derive_upvr (readonly)
	]]
	local any_atom_result1_upvr = Charm_upvr.atom()
	local any_atom_result1_upvr_2 = Charm_upvr.atom({})
	task.spawn(function() -- Line 117
		--[[ Upvalues[7]:
			[1]: arg3 (readonly)
			[2]: Market_upvr_2 (copied, readonly)
			[3]: Charm_upvr (copied, readonly)
			[4]: any_computed_result1_upvr (copied, readonly)
			[5]: any_computed_result1_upvr_2 (copied, readonly)
			[6]: Sift_upvr (copied, readonly)
			[7]: any_atom_result1_upvr_2 (readonly)
		]]
		for i_upvr, v in arg3 do
			any_atom_result1_upvr_2(Sift_upvr.Dictionary.set(any_atom_result1_upvr_2(), i_upvr, {v, Market_upvr_2:GetProductInfo(i_upvr, Enum.InfoType.Product), Charm_upvr.computed(function() -- Line 120
				--[[ Upvalues[4]:
					[1]: any_computed_result1_upvr (copied, readonly)
					[2]: any_computed_result1_upvr_2 (copied, readonly)
					[3]: Sift_upvr (copied, readonly)
					[4]: i_upvr (readonly)
				]]
				local any_computed_result1_upvr_result1 = any_computed_result1_upvr()
				local any_computed_result1_upvr_2_result1 = any_computed_result1_upvr_2()
				if not any_computed_result1_upvr_result1 or not any_computed_result1_upvr_2_result1 then
					return false
				end
				local any_contains_result1 = Sift_upvr.Array.contains(any_computed_result1_upvr_result1, i_upvr)
				if not any_contains_result1 then
					any_contains_result1 = Sift_upvr.Array.contains(any_computed_result1_upvr_2_result1, i_upvr)
				end
				return any_contains_result1
			end)}))
		end
	end)
	effect_upvr(function() -- Line 132
		--[[ Upvalues[2]:
			[1]: any_atom_result1_upvr (readonly)
			[2]: arg2 (readonly)
		]]
		any_atom_result1_upvr(arg2.area())
	end)
	local var9_result1_upvr_2 = useAtom_upvr(Charm_upvr.computed(function() -- Line 136
		--[[ Upvalues[3]:
			[1]: any_atom_result1_upvr (readonly)
			[2]: any_atom_result1_upvr_2 (readonly)
			[3]: arg3 (readonly)
		]]
		local any_atom_result1_upvr_result1_2 = any_atom_result1_upvr()
		if not any_atom_result1_upvr_result1_2 or any_atom_result1_upvr_result1_2 == "" then
			return nil
		end
		local module_3 = {}
		for i_2, v_2 in arg3 do
			local var76 = any_atom_result1_upvr_2()[i_2]
			if var76 and not var76[3]() then
				local sort = v_2.sort
				if not sort then
					sort = v_2.order
					if not sort then
						sort = math.huge
					end
				end
				table.insert(module_3, {
					productId = i_2;
					product = v_2;
					sort = sort;
				})
			end
		end
		table.sort(module_3, function(arg1_3, arg2_3) -- Line 162
			local var80
			if arg1_3.sort >= arg2_3.sort then
				var80 = false
			else
				var80 = true
			end
			return var80
		end)
		if 0 < #module_3 then
			return module_3[1].productId
		end
		return nil
	end))
	local var83_upvw
	effect_upvr(function() -- Line 176
		--[[ Upvalues[5]:
			[1]: var9_result1_upvr_2 (readonly)
			[2]: var83_upvw (read and write)
			[3]: any_atom_result1_upvr_2 (readonly)
			[4]: arg1 (readonly)
			[5]: RichFormat_upvr (copied, readonly)
		]]
		local var81_result1 = var9_result1_upvr_2()
		local var85
		if var81_result1 ~= var85 then
			var83_upvw = var81_result1
		else
			return
		end
		var85 = var81_result1
		if var85 then
		end
		if any_atom_result1_upvr_2()[var81_result1] then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local _1 = any_atom_result1_upvr_2()[var81_result1][1]
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local _2 = any_atom_result1_upvr_2()[var81_result1][2]
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local name = _1.name
			if not name then
				name = _2.Name
			end
			arg1.Content.TextLabel.Text = `{name}`
			local image = _1.image
			if not image then
				image = `rbxassetid://{_2.IconImageAssetId}`
			end
			arg1.Content.ImageLabel.Image = image
			local image_2 = _1.image
			if not image_2 then
				image_2 = `rbxassetid://{_2.IconImageAssetId}`
			end
			arg1.Content.ImageLabel1.Image = image_2
			arg1.Content.TextLabel1.TextColor3 = Color3.new(0, 1, 0)
			arg1.Content.TextLabel1.Text = `{RichFormat_upvr.number.Abbreviate(_2.PriceInRobux)}`
			arg1.Content.TextLabel1.Visible = false
		end
	end)
	apply_upvr(arg1)({
		MouseButton1Click = function() -- Line 198, Named "MouseButton1Click"
			--[[ Upvalues[2]:
				[1]: var9_result1_upvr_2 (readonly)
				[2]: Market_upvr (copied, readonly)
			]]
			local var9_result1_upvr_2_result1 = var9_result1_upvr_2()
			if var9_result1_upvr_2_result1 then
				Market_upvr:Purchase(var9_result1_upvr_2_result1)
			end
		end;
	})
	return derive_upvr(function() -- Line 205
		--[[ Upvalues[1]:
			[1]: var9_result1_upvr_2 (readonly)
		]]
		local var94
		if var9_result1_upvr_2() == nil then
			var94 = false
		else
			var94 = true
		end
		return var94
	end)
end
return module