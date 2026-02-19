-- Name: Dropdown
-- Path: game:GetService("ReplicatedStorage").Packages._Index.1foreverhd_topbarplus@3.4.0.topbarplus.Elements.Dropdown
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7929933999985224 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:17
-- Luau version 6, Types version 3
-- Time taken: 0.019535 seconds

local Themes_upvr = require(script.Parent.Parent.Features.Themes)
local TweenService_upvr = game:GetService("TweenService")
local RunService_upvr = game:GetService("RunService")
return function(arg1) -- Line 5
	--[[ Upvalues[3]:
		[1]: Themes_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: RunService_upvr (readonly)
	]]
	local Frame_upvr = Instance.new("Frame")
	Frame_upvr.Name = "Dropdown"
	Frame_upvr.AutomaticSize = Enum.AutomaticSize.X
	Frame_upvr.BackgroundTransparency = 1
	Frame_upvr.BorderSizePixel = 0
	Frame_upvr.AnchorPoint = Vector2.new(0.5, 0)
	Frame_upvr.Position = UDim2.new(0.5, 0, 1, 10)
	Frame_upvr.ZIndex = -2
	Frame_upvr.ClipsDescendants = true
	Frame_upvr.Parent = arg1.widget
	local GuiService_upvr = game:GetService("GuiService")
	arg1:setBehaviour("Dropdown", "BackgroundTransparency", function(arg1_2) -- Line 20
		--[[ Upvalues[1]:
			[1]: GuiService_upvr (readonly)
		]]
		if arg1_2 == 1 then
			return arg1_2
		end
		return arg1_2 * GuiService_upvr.PreferredTransparency
	end)
	arg1.janitor:add(GuiService_upvr:GetPropertyChangedSignal("PreferredTransparency"):Connect(function() -- Line 28
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Frame_upvr (readonly)
		]]
		arg1:refreshAppearance(Frame_upvr, "BackgroundTransparency")
	end))
	local UICorner = Instance.new("UICorner")
	UICorner.Name = "DropdownCorner"
	UICorner.CornerRadius = UDim.new(0, 10)
	UICorner.Parent = Frame_upvr
	local ScrollingFrame_upvr = Instance.new("ScrollingFrame")
	ScrollingFrame_upvr.Name = "DropdownScroller"
	ScrollingFrame_upvr.AutomaticSize = Enum.AutomaticSize.X
	ScrollingFrame_upvr.BackgroundTransparency = 1
	ScrollingFrame_upvr.BorderSizePixel = 0
	ScrollingFrame_upvr.AnchorPoint = Vector2.new(0, 0)
	ScrollingFrame_upvr.Position = UDim2.new(0, 0, 0, 0)
	ScrollingFrame_upvr.ZIndex = -1
	ScrollingFrame_upvr.ClipsDescendants = true
	ScrollingFrame_upvr.Visible = true
	ScrollingFrame_upvr.VerticalScrollBarInset = Enum.ScrollBarInset.None
	ScrollingFrame_upvr.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right
	ScrollingFrame_upvr.Active = false
	ScrollingFrame_upvr.ScrollingEnabled = true
	ScrollingFrame_upvr.AutomaticCanvasSize = Enum.AutomaticSize.Y
	ScrollingFrame_upvr.ScrollBarThickness = 5
	ScrollingFrame_upvr.ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255)
	ScrollingFrame_upvr.ScrollBarImageTransparency = 0.8
	ScrollingFrame_upvr.CanvasSize = UDim2.new(0, 0, 0, 0)
	ScrollingFrame_upvr.Selectable = false
	ScrollingFrame_upvr.Active = true
	ScrollingFrame_upvr.Parent = Frame_upvr
	local NumberValue_upvr = Instance.new("NumberValue")
	NumberValue_upvr.Name = "DropdownSpeed"
	NumberValue_upvr.Value = 0.07
	NumberValue_upvr.Parent = Frame_upvr
	local UIPadding_upvr = Instance.new("UIPadding")
	UIPadding_upvr.Name = "DropdownPadding"
	UIPadding_upvr.PaddingTop = UDim.new(0, 0)
	UIPadding_upvr.PaddingBottom = UDim.new(0, 0)
	UIPadding_upvr.Parent = ScrollingFrame_upvr
	local UIListLayout = Instance.new("UIListLayout")
	UIListLayout.Name = "DropdownList"
	UIListLayout.FillDirection = Enum.FillDirection.Vertical
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.HorizontalFlex = Enum.UIFlexAlignment.SpaceEvenly
	UIListLayout.Parent = ScrollingFrame_upvr
	local dropdownJanitor = arg1.dropdownJanitor
	local iconModule_upvr = require(arg1.iconModule)
	arg1.dropdownChildAdded:Connect(function(arg1_3) -- Line 81
		local _, any_modifyTheme_result2_upvr = arg1_3:modifyTheme({{"Widget", "BorderSize", 0}, {"IconCorners", "CornerRadius", UDim.new(0, 10)}, {"Widget", "MinimumWidth", 190}, {"Widget", "MinimumHeight", 58}, {"IconLabel", "TextSize", 20}, {"IconOverlay", "Size", UDim2.new(1, 0, 1, 0)}, {"PaddingLeft", "Size", UDim2.fromOffset(25, 0)}, {"Notice", "Position", UDim2.new(1, -24, 0, 5)}, {"ContentsList", "HorizontalAlignment", Enum.HorizontalAlignment.Left}, {"Selection", "Size", UDim2.new(1, -0, 1, -0)}, {"Selection", "Position", UDim2.new(0, 0, 0, 0)}})
		task.defer(function() -- Line 95
			--[[ Upvalues[2]:
				[1]: arg1_3 (readonly)
				[2]: any_modifyTheme_result2_upvr (readonly)
			]]
			arg1_3.joinJanitor:add(function() -- Line 96
				--[[ Upvalues[2]:
					[1]: arg1_3 (copied, readonly)
					[2]: any_modifyTheme_result2_upvr (copied, readonly)
				]]
				arg1_3:removeModification(any_modifyTheme_result2_upvr)
			end)
		end)
	end)
	arg1.dropdownSet:Connect(function(arg1_4) -- Line 101
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: iconModule_upvr (readonly)
		]]
		for _, v in pairs(arg1.dropdownIcons) do
			iconModule_upvr.getIconByUID(v):destroy()
		end
		if type(arg1_4) == "table" then
			for _, v_2 in pairs(arg1_4) do
				v_2:joinDropdown(arg1)
			end
		end
	end)
	local function updateMaxIcons_upvr() -- Line 113, Named "updateMaxIcons"
		--[[ Upvalues[3]:
			[1]: Frame_upvr (readonly)
			[2]: ScrollingFrame_upvr (readonly)
			[3]: UIPadding_upvr (readonly)
		]]
		local MaxIcons = Frame_upvr:GetAttribute("MaxIcons")
		local var53
		if not MaxIcons then
			return 0
		end
		local tbl = {}
		var53 = pairs(ScrollingFrame_upvr:GetChildren())
		local pairs_result1_4, pairs_result2_5, pairs_result3_3 = pairs(ScrollingFrame_upvr:GetChildren())
		for _, v_3 in pairs_result1_4, pairs_result2_5, pairs_result3_3 do
			if v_3:IsA("GuiObject") and v_3.Visible then
				table.insert(tbl, v_3)
			end
		end
		pairs_result1_4 = table.sort
		pairs_result1_4(tbl, function(arg1_5, arg2) -- Line 124
			local var59
			if arg1_5.AbsolutePosition.Y >= arg2.AbsolutePosition.Y then
				var59 = false
			else
				var59 = true
			end
			return var59
		end)
		pairs_result1_4 = 0
		local ceiled_2 = math.ceil(MaxIcons)
		for i_4 = 1, ceiled_2 do
			local var61 = tbl[i_4]
			local var62
			if not var61 then break end
			var62 = var61.AbsoluteSize.Y
			local var63 = false
			if i_4 == ceiled_2 then
				if ceiled_2 == MaxIcons then
					var63 = false
				else
					var63 = true
				end
			end
			if var63 then
				var62 *= MaxIcons - ceiled_2 + 1
			end
			pairs_result1_4 += var62
		end
		pairs_result1_4 += UIPadding_upvr.PaddingTop.Offset + UIPadding_upvr.PaddingBottom.Offset
		return pairs_result1_4
	end
	local var64_upvw
	local var65_upvw
	local var66_upvw
	local var67_upvw
	local function _() -- Line 145, Named "getTweenInfo"
		--[[ Upvalues[5]:
			[1]: Themes_upvr (copied, readonly)
			[2]: Frame_upvr (readonly)
			[3]: var66_upvw (read and write)
			[4]: var67_upvw (read and write)
			[5]: NumberValue_upvr (readonly)
		]]
		local var68 = Themes_upvr.getInstanceValue(Frame_upvr, "MaxIcons") or 1
		if var66_upvw and var66_upvw == var68 and var67_upvw then
			return var67_upvw
		end
		local TweenInfo_new_result1_3 = TweenInfo.new(NumberValue_upvr.Value * var68, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
		var67_upvw = TweenInfo_new_result1_3
		var66_upvw = var68
		return TweenInfo_new_result1_3
	end
	local function updateVisibility() -- Line 159
		--[[ Upvalues[10]:
			[1]: Themes_upvr (copied, readonly)
			[2]: Frame_upvr (readonly)
			[3]: var66_upvw (read and write)
			[4]: var67_upvw (read and write)
			[5]: NumberValue_upvr (readonly)
			[6]: var64_upvw (read and write)
			[7]: var65_upvw (read and write)
			[8]: arg1 (readonly)
			[9]: updateMaxIcons_upvr (readonly)
			[10]: TweenService_upvr (copied, readonly)
		]]
		local var70 = Themes_upvr.getInstanceValue(Frame_upvr, "MaxIcons") or 1
		local var71
		if var66_upvw and var66_upvw == var70 and var67_upvw then
			var71 = var67_upvw
		else
			local TweenInfo_new_result1_2 = TweenInfo.new(NumberValue_upvr.Value * var70, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
			var67_upvw = TweenInfo_new_result1_2
			var66_upvw = var70
			var71 = TweenInfo_new_result1_2
		end
		if var64_upvw then
			var64_upvw:Cancel()
			var64_upvw = nil
		end
		if var65_upvw then
			var65_upvw:Cancel()
			var65_upvw = nil
		end
		if arg1.isSelected then
			Frame_upvr.Visible = true
			Frame_upvr.BackgroundTransparency = 0
			Frame_upvr.Size = UDim2.new(0, Frame_upvr.Size.X.Offset, 0, 0)
			var64_upvw = TweenService_upvr:Create(Frame_upvr, var71, {
				Size = UDim2.new(0, Frame_upvr.Size.X.Offset, 0, updateMaxIcons_upvr());
			})
			var64_upvw:Play()
			var64_upvw.Completed:Connect(function() -- Line 180
				--[[ Upvalues[1]:
					[1]: var64_upvw (copied, read and write)
				]]
				var64_upvw = nil
			end)
		else
			var65_upvw = TweenService_upvr:Create(Frame_upvr, TweenInfo.new(0), {
				Size = UDim2.new(0, Frame_upvr.Size.X.Offset, 0, 0);
			})
			var65_upvw:Play()
			var65_upvw.Completed:Connect(function() -- Line 187
				--[[ Upvalues[1]:
					[1]: var65_upvw (copied, read and write)
				]]
				var65_upvw = nil
			end)
		end
	end
	dropdownJanitor:add(arg1.toggled:Connect(updateVisibility))
	updateVisibility()
	local function updateChildSize_upvr() -- Line 197, Named "updateChildSize"
		--[[ Upvalues[11]:
			[1]: Themes_upvr (copied, readonly)
			[2]: Frame_upvr (readonly)
			[3]: var66_upvw (read and write)
			[4]: var67_upvw (read and write)
			[5]: NumberValue_upvr (readonly)
			[6]: arg1 (readonly)
			[7]: var64_upvw (read and write)
			[8]: var65_upvw (read and write)
			[9]: RunService_upvr (copied, readonly)
			[10]: updateMaxIcons_upvr (readonly)
			[11]: TweenService_upvr (copied, readonly)
		]]
		local var77 = Themes_upvr.getInstanceValue(Frame_upvr, "MaxIcons") or 1
		local var78
		if var66_upvw and var66_upvw == var77 and var67_upvw then
			var78 = var67_upvw
		else
			local TweenInfo_new_result1 = TweenInfo.new(NumberValue_upvr.Value * var77, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
			var67_upvw = TweenInfo_new_result1
			var66_upvw = var77
			var78 = TweenInfo_new_result1
		end
		if not arg1.isSelected then
		else
			if var64_upvw then
				var64_upvw:Cancel()
				var64_upvw = nil
			end
			if var65_upvw then
				var65_upvw:Cancel()
				var65_upvw = nil
			end
			RunService_upvr.Heartbeat:Wait()
			var64_upvw = TweenService_upvr:Create(Frame_upvr, var78, {
				Size = UDim2.new(0, Frame_upvr.Size.X.Offset, 0, updateMaxIcons_upvr());
			})
			var64_upvw:Play()
			var64_upvw.Completed:Connect(function() -- Line 215
				--[[ Upvalues[1]:
					[1]: var64_upvw (copied, read and write)
				]]
				var64_upvw = nil
			end)
		end
	end
	dropdownJanitor:add(arg1.toggled:Connect(updateVisibility))
	local var82_upvw = 0
	local var83_upvw = false
	local function updateMaxIconsListener_upvr() -- Line 228, Named "updateMaxIconsListener"
		--[[ Upvalues[8]:
			[1]: var82_upvw (read and write)
			[2]: var83_upvw (read and write)
			[3]: updateMaxIconsListener_upvr (readonly)
			[4]: Frame_upvr (readonly)
			[5]: ScrollingFrame_upvr (readonly)
			[6]: iconModule_upvr (readonly)
			[7]: arg1 (readonly)
			[8]: UIPadding_upvr (readonly)
		]]
		var82_upvw += 1
		local var90
		if var83_upvw then
		else
			var83_upvw = true
			task.defer(function() -- Line 233
				--[[ Upvalues[4]:
					[1]: var83_upvw (copied, read and write)
					[2]: var82_upvw (copied, read and write)
					[3]: var82_upvw (readonly)
					[4]: updateMaxIconsListener_upvr (copied, readonly)
				]]
				var83_upvw = false
				if var82_upvw ~= var82_upvw then
					updateMaxIconsListener_upvr()
				end
			end)
			var90 = "MaxIcons"
			local attribute = Frame_upvr:GetAttribute(var90)
			if not attribute then return end
			local tbl_2 = {}
			var90 = pairs(ScrollingFrame_upvr:GetChildren())
			local pairs_result1, pairs_result2, pairs_result3_2 = pairs(ScrollingFrame_upvr:GetChildren())
			for _, v_5 in pairs_result1, pairs_result2, pairs_result3_2 do
				if v_5:IsA("GuiObject") and v_5.Visible then
					table.insert(tbl_2, {v_5, v_5.AbsolutePosition.Y})
				end
			end
			pairs_result1 = table.sort
			pairs_result1(tbl_2, function(arg1_6, arg2) -- Line 248
				local var99
				if arg1_6[2] >= arg2[2] then
					var99 = false
				else
					var99 = true
				end
				return var99
			end)
			pairs_result1 = 0
			local ceiled = math.ceil(attribute)
			for i_7 = 1, ceiled do
				local var101 = tbl_2[i_7]
				local var102
				if not var101 then break end
				local _1 = var101[1]
				var102 = _1.AbsoluteSize.Y
				local var104 = false
				if i_7 == ceiled then
					if ceiled == attribute then
						var104 = false
					else
						var104 = true
					end
				end
				if var104 then
					var102 *= attribute - ceiled + 1
				end
				pairs_result1 += var102
				local var105
				if not var104 then
					local WidgetUID = _1:GetAttribute("WidgetUID")
					var105 = WidgetUID
					if var105 then
						var105 = iconModule_upvr.getIconByUID(WidgetUID)
					end
					if var105 then
						local var107
						if not false then
							var107 = arg1:getInstance("ClickRegion")
						end
						var105:getInstance("ClickRegion").NextSelectionUp = var107
					end
				end
			end
			pairs_result1 += UIPadding_upvr.PaddingTop.Offset + UIPadding_upvr.PaddingBottom.Offset
			ScrollingFrame_upvr.Size = UDim2.fromOffset(0, pairs_result1)
		end
	end
	dropdownJanitor:add(ScrollingFrame_upvr:GetPropertyChangedSignal("AbsoluteCanvasSize"):Connect(updateMaxIconsListener_upvr))
	dropdownJanitor:add(ScrollingFrame_upvr.ChildAdded:Connect(updateMaxIconsListener_upvr))
	dropdownJanitor:add(ScrollingFrame_upvr.ChildRemoved:Connect(updateChildSize_upvr))
	dropdownJanitor:add(ScrollingFrame_upvr.ChildRemoved:Connect(updateMaxIconsListener_upvr))
	dropdownJanitor:add(Frame_upvr:GetAttributeChangedSignal("MaxIcons"):Connect(updateMaxIconsListener_upvr))
	dropdownJanitor:add(Frame_upvr:GetAttributeChangedSignal("MaxIcons"):Connect(updateChildSize_upvr))
	dropdownJanitor:add(arg1.childThemeModified:Connect(updateMaxIconsListener_upvr))
	updateMaxIconsListener_upvr()
	local function _(arg1_7) -- Line 293, Named "connectVisibilityListeners"
		--[[ Upvalues[1]:
			[1]: updateChildSize_upvr (readonly)
		]]
		if arg1_7:IsA("GuiObject") then
			arg1_7:GetPropertyChangedSignal("Visible"):Connect(updateChildSize_upvr)
			arg1_7:GetPropertyChangedSignal("Size"):Connect(updateChildSize_upvr)
		end
	end
	for _, v_4 in pairs(ScrollingFrame_upvr:GetChildren()) do
		if v_4:IsA("GuiObject") then
			v_4:GetPropertyChangedSignal("Visible"):Connect(updateChildSize_upvr)
			v_4:GetPropertyChangedSignal("Size"):Connect(updateChildSize_upvr)
		end
	end
	ScrollingFrame_upvr.ChildAdded:Connect(function(arg1_8) -- Line 305
		--[[ Upvalues[2]:
			[1]: RunService_upvr (copied, readonly)
			[2]: updateChildSize_upvr (readonly)
		]]
		RunService_upvr.Heartbeat:Wait()
		if arg1_8:IsA("GuiObject") then
			arg1_8:GetPropertyChangedSignal("Visible"):Connect(updateChildSize_upvr)
			arg1_8:GetPropertyChangedSignal("Size"):Connect(updateChildSize_upvr)
		end
		updateChildSize_upvr()
	end)
	Frame_upvr.Visible = false
	return Frame_upvr
end