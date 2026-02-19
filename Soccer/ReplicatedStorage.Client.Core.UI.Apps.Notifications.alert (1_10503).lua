-- Name: alert
-- Path: game:GetService("ReplicatedStorage").Client.Core.UI.Apps.Notifications.alert
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6620488999978988 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:10
-- Luau version 6, Types version 3
-- Time taken: 0.005791 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage.Packages.Vide)
local tbl_upvr_2 = {
	tension = 600;
	friction = 25;
}
local tbl_upvr = {
	tension = 600;
	friction = 25;
}
local tbl_2_upvr = {
	tension = 600;
	friction = 25;
}
local udim2_upvr = UDim2.new(0.5, 0, 1, -90)
local useMotion_upvr = require(ReplicatedStorage.Shared.Util).ui.useMotion
local effect_upvr = Vide.effect
local create_upvr = Vide.create
local derive_upvr = Vide.derive
local cleanup_upvr = Vide.cleanup
local RunService_upvr = game:GetService("RunService")
return function(arg1, arg2, arg3, arg4) -- Line 32
	--[[ Upvalues[10]:
		[1]: udim2_upvr (readonly)
		[2]: useMotion_upvr (readonly)
		[3]: effect_upvr (readonly)
		[4]: tbl_upvr_2 (readonly)
		[5]: tbl_upvr (readonly)
		[6]: tbl_2_upvr (readonly)
		[7]: create_upvr (readonly)
		[8]: derive_upvr (readonly)
		[9]: cleanup_upvr (readonly)
		[10]: RunService_upvr (readonly)
	]]
	local function _() -- Line 35, Named "calculatePosition"
		--[[ Upvalues[2]:
			[1]: udim2_upvr (copied, readonly)
			[2]: arg3 (readonly)
		]]
		return udim2_upvr + UDim2.new(0, 0, 0, (30) * (arg3() * -1))
	end
	local var8_result1_2, var8_result2_upvr_2 = useMotion_upvr(udim2_upvr + UDim2.new(0, 0, 0, (30) * (arg3() * -1)) - UDim2.fromOffset(0, 23))
	local var8_result1, var8_result2_upvr = useMotion_upvr(1)
	local useMotion_upvr_result1, var8_result2_upvr_3 = useMotion_upvr(1)
	effect_upvr(function() -- Line 43
		--[[ Upvalues[4]:
			[1]: var8_result2_upvr_2 (readonly)
			[2]: udim2_upvr (copied, readonly)
			[3]: arg3 (readonly)
			[4]: tbl_upvr_2 (copied, readonly)
		]]
		var8_result2_upvr_2:spring(udim2_upvr + UDim2.new(0, 0, 0, (30) * (arg3() * -1)), tbl_upvr_2)
	end)
	local var21_upvw = false
	local function finish_upvr() -- Line 47, Named "finish"
		--[[ Upvalues[7]:
			[1]: var21_upvw (read and write)
			[2]: arg2 (readonly)
			[3]: var8_result2_upvr (readonly)
			[4]: tbl_upvr (copied, readonly)
			[5]: var8_result2_upvr_3 (readonly)
			[6]: tbl_2_upvr (copied, readonly)
			[7]: arg4 (readonly)
		]]
		if var21_upvw then
		else
			var21_upvw = true
			arg2.destroy()
			var8_result2_upvr:spring(0, tbl_upvr)
			var8_result2_upvr_3:spring(1, tbl_2_upvr)
			var8_result2_upvr_3:onComplete(function() -- Line 58
				--[[ Upvalues[1]:
					[1]: arg4 (copied, readonly)
				]]
				arg4()
			end)
		end
	end
	local tbl = {}
	tbl.Parent = arg1
	tbl.AnchorPoint = Vector2.new(0.5, 1)
	tbl.BackgroundTransparency = 1
	tbl.Position = var8_result1_2
	tbl.Size = UDim2.new(1, 0, 0, 23)
	tbl[1] = create_upvr("UIScale")({
		Scale = var8_result1;
	})
	tbl[2] = create_upvr("UIListLayout")({
		Padding = UDim.new(0, 5);
		FillDirection = Enum.FillDirection.Horizontal;
		VerticalAlignment = Enum.VerticalAlignment.Center;
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
	})
	tbl[3] = create_upvr("TextLabel")({
		BackgroundTransparency = 1;
		AutomaticSize = Enum.AutomaticSize.XY;
		LayoutOrder = 2;
		Font = Enum.Font.GothamBlack;
		TextScaled = false;
		TextSize = 19.166666666666668;
		TextColor3 = Color3.new(1, 1, 1);
		TextTransparency = useMotion_upvr_result1;
		Text = derive_upvr(function() -- Line 93
			--[[ Upvalues[1]:
				[1]: arg2 (readonly)
			]]
			return `(x{arg2.count()})`
		end);
		Visible = derive_upvr(function() -- Line 97
			--[[ Upvalues[2]:
				[1]: arg2 (readonly)
				[2]: var8_result2_upvr_2 (readonly)
			]]
			local var29
			if 1 >= arg2.count() then
				var29 = false
			else
				var29 = true
			end
			if var29 then
				var8_result2_upvr_2:impulse(UDim2.fromScale(0, 0.00025))
			end
			return var29
		end);
		
		create_upvr("UIStroke")({
			Thickness = 2;
			Transparency = useMotion_upvr_result1;
		})
	})
	tbl[4] = create_upvr("TextButton")({
		BackgroundTransparency = 1;
		AutomaticSize = Enum.AutomaticSize.XY;
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.fromScale(0.5, 0.5);
		LayoutOrder = 1;
		Text = arg2.text;
		TextColor3 = Color3.new(1, 1, 1);
		TextTransparency = useMotion_upvr_result1;
		Font = Enum.Font.GothamBold;
		TextSize = 23;
		MouseButton1Click = finish_upvr;
		
		create_upvr("UIStroke")({
			Thickness = 2.3;
			Transparency = useMotion_upvr_result1;
		}), create_upvr("UIGradient")({
			Color = arg2.color;
			Rotation = 90;
		})
	})
	local var34 = create_upvr("Frame")(tbl)
	cleanup_upvr(RunService_upvr.RenderStepped:Connect(function() -- Line 142
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: finish_upvr (readonly)
		]]
		if arg2.expiry < os.clock() then
			finish_upvr()
		end
	end))
	var8_result2_upvr:spring(1, tbl_upvr)
	var8_result2_upvr_3:spring(0, tbl_2_upvr)
	cleanup_upvr(var8_result2_upvr)
	cleanup_upvr(var8_result2_upvr_3)
	cleanup_upvr(var8_result2_upvr_2)
	cleanup_upvr(var34)
	return var34
end