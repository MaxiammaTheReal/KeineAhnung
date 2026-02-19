-- Name: Widget
-- Path: game:GetService("ReplicatedStorage").Packages._Index.1foreverhd_topbarplus@3.4.0.topbarplus.Elements.Widget
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7613534000047366 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:22
-- Luau version 6, Types version 3
-- Time taken: 0.030896 seconds

return function(arg1, arg2) -- Line 6
	local Frame_upvr_8 = Instance.new("Frame")
	Frame_upvr_8:SetAttribute("WidgetUID", arg1.UID)
	Frame_upvr_8.Name = "Widget"
	Frame_upvr_8.BackgroundTransparency = 1
	Frame_upvr_8.Visible = true
	Frame_upvr_8.ZIndex = 20
	Frame_upvr_8.Active = false
	Frame_upvr_8.ClipsDescendants = true
	local Frame_upvr_4 = Instance.new("Frame")
	Frame_upvr_4.Name = "IconButton"
	Frame_upvr_4.Visible = true
	Frame_upvr_4.ZIndex = 2
	Frame_upvr_4.BorderSizePixel = 0
	Frame_upvr_4.Parent = Frame_upvr_8
	Frame_upvr_4.ClipsDescendants = true
	Frame_upvr_4.Active = false
	arg1.deselected:Connect(function() -- Line 25
		--[[ Upvalues[2]:
			[1]: Frame_upvr_4 (readonly)
			[2]: arg1 (readonly)
		]]
		Frame_upvr_4.ClipsDescendants = true
		task.delay(0.2, function() -- Line 27
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: Frame_upvr_4 (copied, readonly)
			]]
			if arg1.isSelected then
				Frame_upvr_4.ClipsDescendants = false
			end
		end)
	end)
	local GuiService_upvr = game:GetService("GuiService")
	arg1:setBehaviour("IconButton", "BackgroundTransparency", function(arg1_2) -- Line 36
		--[[ Upvalues[1]:
			[1]: GuiService_upvr (readonly)
		]]
		if arg1_2 == 1 then
			return arg1_2
		end
		return arg1_2 * GuiService_upvr.PreferredTransparency
	end)
	arg1.janitor:add(GuiService_upvr:GetPropertyChangedSignal("PreferredTransparency"):Connect(function() -- Line 44
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Frame_upvr_4 (readonly)
		]]
		arg1:refreshAppearance(Frame_upvr_4, "BackgroundTransparency")
	end))
	local UICorner = Instance.new("UICorner")
	UICorner:SetAttribute("Collective", "IconCorners")
	UICorner.Name = "UICorner"
	UICorner.Parent = Frame_upvr_4
	local var10_upvr = require(script.Parent.Menu)(arg1)
	local MenuUIListLayout_upvr = var10_upvr.MenuUIListLayout
	local MenuGap_upvr = var10_upvr.MenuGap
	var10_upvr.Parent = Frame_upvr_4
	local Frame_upvr_5 = Instance.new("Frame")
	Frame_upvr_5.Name = "IconSpot"
	Frame_upvr_5.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
	Frame_upvr_5.BackgroundTransparency = 0.9
	Frame_upvr_5.Visible = true
	Frame_upvr_5.AnchorPoint = Vector2.new(0, 0.5)
	Frame_upvr_5.ZIndex = 5
	Frame_upvr_5.Parent = var10_upvr
	UICorner:Clone().Parent = Frame_upvr_5
	local clone_2 = Frame_upvr_5:Clone()
	clone_2.UICorner.Name = "OverlayUICorner"
	clone_2.Name = "IconOverlay"
	clone_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	clone_2.ZIndex = Frame_upvr_5.ZIndex + 1
	clone_2.Size = UDim2.new(1, 0, 1, 0)
	clone_2.Position = UDim2.new(0, 0, 0, 0)
	clone_2.AnchorPoint = Vector2.new(0, 0)
	clone_2.Visible = false
	clone_2.Parent = Frame_upvr_5
	local TextButton_upvr = Instance.new("TextButton")
	TextButton_upvr:SetAttribute("CorrespondingIconUID", arg1.UID)
	TextButton_upvr.Name = "ClickRegion"
	TextButton_upvr.BackgroundTransparency = 1
	TextButton_upvr.Visible = true
	TextButton_upvr.Text = ""
	TextButton_upvr.ZIndex = 20
	TextButton_upvr.Selectable = true
	TextButton_upvr.SelectionGroup = true
	TextButton_upvr.Parent = Frame_upvr_5
	require(script.Parent.Parent.Features.Gamepad).registerButton(TextButton_upvr)
	UICorner:Clone().Parent = TextButton_upvr
	local Frame_upvr_6 = Instance.new("Frame")
	Frame_upvr_6.Name = "Contents"
	Frame_upvr_6.BackgroundTransparency = 1
	Frame_upvr_6.Size = UDim2.fromScale(1, 1)
	Frame_upvr_6.Parent = Frame_upvr_5
	local UIListLayout_upvr = Instance.new("UIListLayout")
	UIListLayout_upvr.Name = "ContentsList"
	UIListLayout_upvr.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_upvr.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout_upvr.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_upvr.VerticalFlex = Enum.UIFlexAlignment.SpaceEvenly
	UIListLayout_upvr.Padding = UDim.new(0, 3)
	UIListLayout_upvr.Parent = Frame_upvr_6
	local Frame_upvr_2 = Instance.new("Frame")
	Frame_upvr_2.Name = "PaddingLeft"
	Frame_upvr_2.LayoutOrder = 1
	Frame_upvr_2.ZIndex = 5
	Frame_upvr_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame_upvr_2.BackgroundTransparency = 1
	Frame_upvr_2.BorderSizePixel = 0
	Frame_upvr_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame_upvr_2.Parent = Frame_upvr_6
	local Frame_upvr_7 = Instance.new("Frame")
	Frame_upvr_7.Name = "PaddingCenter"
	Frame_upvr_7.LayoutOrder = 3
	Frame_upvr_7.ZIndex = 5
	Frame_upvr_7.Size = UDim2.new(0, 0, 1, 0)
	Frame_upvr_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame_upvr_7.BackgroundTransparency = 1
	Frame_upvr_7.BorderSizePixel = 0
	Frame_upvr_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame_upvr_7.Parent = Frame_upvr_6
	local Frame_upvr = Instance.new("Frame")
	Frame_upvr.Name = "PaddingRight"
	Frame_upvr.LayoutOrder = 5
	Frame_upvr.ZIndex = 5
	Frame_upvr.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame_upvr.BackgroundTransparency = 1
	Frame_upvr.BorderSizePixel = 0
	Frame_upvr.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame_upvr.Parent = Frame_upvr_6
	local Frame_upvr_3 = Instance.new("Frame")
	Frame_upvr_3.Name = "IconLabelContainer"
	Frame_upvr_3.LayoutOrder = 4
	Frame_upvr_3.ZIndex = 3
	Frame_upvr_3.AnchorPoint = Vector2.new(0, 0.5)
	Frame_upvr_3.Size = UDim2.new(0, 0, 0.5, 0)
	Frame_upvr_3.BackgroundTransparency = 1
	Frame_upvr_3.Position = UDim2.new(0.5, 0, 0.5, 0)
	Frame_upvr_3.Parent = Frame_upvr_6
	local TextLabel_upvr = Instance.new("TextLabel")
	local var23_upvr = workspace.CurrentCamera.ViewportSize.X + 200
	TextLabel_upvr.Name = "IconLabel"
	TextLabel_upvr.LayoutOrder = 4
	TextLabel_upvr.ZIndex = 15
	TextLabel_upvr.AnchorPoint = Vector2.new(0, 0)
	TextLabel_upvr.Size = UDim2.new(0, var23_upvr, 1, 0)
	TextLabel_upvr.ClipsDescendants = false
	TextLabel_upvr.BackgroundTransparency = 1
	TextLabel_upvr.Position = UDim2.fromScale(0, 0)
	TextLabel_upvr.RichText = true
	TextLabel_upvr.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_upvr.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel_upvr.Text = ""
	TextLabel_upvr.TextWrapped = true
	TextLabel_upvr.TextWrap = true
	TextLabel_upvr.TextScaled = false
	TextLabel_upvr.Active = false
	TextLabel_upvr.AutoLocalize = true
	TextLabel_upvr.Parent = Frame_upvr_3
	local ImageLabel_upvr = Instance.new("ImageLabel")
	ImageLabel_upvr.Name = "IconImage"
	ImageLabel_upvr.LayoutOrder = 2
	ImageLabel_upvr.ZIndex = 15
	ImageLabel_upvr.AnchorPoint = Vector2.new(0, 0.5)
	ImageLabel_upvr.Size = UDim2.new(0, 0, 0.5, 0)
	ImageLabel_upvr.BackgroundTransparency = 1
	ImageLabel_upvr.Position = UDim2.new(0, 11, 0.5, 0)
	ImageLabel_upvr.ScaleType = Enum.ScaleType.Stretch
	ImageLabel_upvr.Active = false
	ImageLabel_upvr.Parent = Frame_upvr_6
	local clone = UICorner:Clone()
	clone:SetAttribute("Collective", nil)
	clone.CornerRadius = UDim.new(0, 0)
	clone.Name = "IconImageCorner"
	clone.Parent = ImageLabel_upvr
	local TweenService_upvr = game:GetService("TweenService")
	local var27_upvw = 0
	local any_createStagger_result1_upvr = require(script.Parent.Parent.Utility).createStagger(0.01, function(arg1_3) -- Line 195, Named "handleLabelAndImageChangesUnstaggered"
		--[[ Upvalues[20]:
			[1]: arg1 (readonly)
			[2]: TextLabel_upvr (readonly)
			[3]: ImageLabel_upvr (readonly)
			[4]: Frame_upvr_3 (readonly)
			[5]: Frame_upvr_2 (readonly)
			[6]: Frame_upvr_7 (readonly)
			[7]: Frame_upvr (readonly)
			[8]: Frame_upvr_4 (readonly)
			[9]: UIListLayout_upvr (readonly)
			[10]: Frame_upvr_6 (readonly)
			[11]: Frame_upvr_8 (readonly)
			[12]: var23_upvr (readonly)
			[13]: var10_upvr (readonly)
			[14]: Frame_upvr_5 (readonly)
			[15]: MenuUIListLayout_upvr (readonly)
			[16]: MenuGap_upvr (readonly)
			[17]: TweenService_upvr (readonly)
			[18]: TextButton_upvr (readonly)
			[19]: var27_upvw (read and write)
			[20]: arg2 (readonly)
		]]
		task.defer(function() -- Line 202
			--[[ Upvalues[20]:
				[1]: arg1 (copied, readonly)
				[2]: TextLabel_upvr (copied, readonly)
				[3]: ImageLabel_upvr (copied, readonly)
				[4]: Frame_upvr_3 (copied, readonly)
				[5]: Frame_upvr_2 (copied, readonly)
				[6]: Frame_upvr_7 (copied, readonly)
				[7]: Frame_upvr (copied, readonly)
				[8]: Frame_upvr_4 (copied, readonly)
				[9]: UIListLayout_upvr (copied, readonly)
				[10]: Frame_upvr_6 (copied, readonly)
				[11]: Frame_upvr_8 (copied, readonly)
				[12]: var23_upvr (copied, readonly)
				[13]: var10_upvr (copied, readonly)
				[14]: Frame_upvr_5 (copied, readonly)
				[15]: MenuUIListLayout_upvr (copied, readonly)
				[16]: MenuGap_upvr (copied, readonly)
				[17]: TweenService_upvr (copied, readonly)
				[18]: TextButton_upvr (copied, readonly)
				[19]: var27_upvw (copied, read and write)
				[20]: arg2 (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local indicator = arg1.indicator
			local var50 = indicator
			if var50 then
				var50 = indicator.Visible
			end
			local var51 = var50
			if not var51 then
				if TextLabel_upvr.Text == "" then
					var51 = false
				else
					var51 = true
				end
			end
			local var52 = false
			if ImageLabel_upvr.Image ~= "" then
				if ImageLabel_upvr.Image == nil then
					var52 = false
				else
					var52 = true
				end
			end
			if var52 and not var51 then
				Frame_upvr_3.Visible = false
				ImageLabel_upvr.Visible = true
				Frame_upvr_2.Visible = false
				Frame_upvr_7.Visible = false
				Frame_upvr.Visible = false
				local var53
				-- KONSTANTWARNING: GOTO [106] #81
			end
			if not var52 and var51 then
				Frame_upvr_3.Visible = true
				ImageLabel_upvr.Visible = false
				Frame_upvr_2.Visible = true
				Frame_upvr_7.Visible = false
				Frame_upvr.Visible = true
			elseif var52 and var51 then
				Frame_upvr_3.Visible = true
				ImageLabel_upvr.Visible = true
				Frame_upvr_2.Visible = true
				Frame_upvr_7.Visible = not var50
				Frame_upvr.Visible = not var50
			end
			Frame_upvr_4.Size = UDim2.fromScale(1, 1)
			local function _(arg1_4) -- Line 232, Named "getItemWidth"
				local TargetWidth = arg1_4:GetAttribute("TargetWidth")
				if not TargetWidth then
					TargetWidth = arg1_4.AbsoluteSize.X
				end
				return TargetWidth
			end
			var53 = UIListLayout_upvr.Padding
			local Offset = var53.Offset
			var53 = Offset
			Frame_upvr_3.Size = UDim2.new(0, TextLabel_upvr.TextBounds.X, TextLabel_upvr.Size.Y.Scale, 0)
			for _, v in pairs(Frame_upvr_6:GetChildren()) do
				if v:IsA("GuiObject") and v.Visible == true then
					if not v:GetAttribute("TargetWidth") then
					end
					var53 += v.AbsoluteSize.X + Offset
				end
			end
			local MinimumWidth = Frame_upvr_8:GetAttribute("MinimumWidth")
			local MinimumHeight = Frame_upvr_8:GetAttribute("MinimumHeight")
			local BorderSize_2 = Frame_upvr_8:GetAttribute("BorderSize")
			if 0 >= #arg1.menuIcons then
			else
			end
			if true then
				local isSelected = arg1.isSelected
				local var63
			end
			if isSelected then
				for i_2, v_2 in pairs(var10_upvr:GetChildren()) do
					if v_2 ~= Frame_upvr_5 and v_2:IsA("GuiObject") and v_2.Visible then
						local TargetWidth_2 = v_2:GetAttribute("TargetWidth")
						if not TargetWidth_2 then
							TargetWidth_2 = v_2.AbsoluteSize.X
						end
						var63 += TargetWidth_2 + MenuUIListLayout_upvr.Padding.Offset
					end
				end
				if not Frame_upvr_5.Visible then
					i_2 = Frame_upvr_5
					v_2 = i_2:GetAttribute("TargetWidth")
					if not v_2 then
						v_2 = i_2.AbsoluteSize.X
					end
					v_2 = MenuUIListLayout_upvr.Padding.Offset
					i_2 = v_2 * 2
				end
				var63 -= BorderSize_2 * 0.5
			end
			if isSelected then
			end
			MenuGap_upvr.Visible = Frame_upvr_5.Visible
			local DesiredWidth = Frame_upvr_8:GetAttribute("DesiredWidth")
			if DesiredWidth and ((math.clamp(var53, MinimumWidth, var23_upvr)) - (v_2 + i_2 + BorderSize_2)) + (var63 - BorderSize_2 * 0.75) < DesiredWidth then
				local var69 = DesiredWidth
			end
			arg1.updateMenu:Fire()
			local var70 = math.max(var69 - var63, MinimumWidth) - BorderSize_2 * 2
			local MenuWidth = var10_upvr:GetAttribute("MenuWidth")
			local var72 = MenuWidth
			if var72 then
				var72 = MenuWidth + var70 + MenuUIListLayout_upvr.Padding.Offset + 10
			end
			if var72 then
				local MaxWidth = var10_upvr:GetAttribute("MaxWidth")
				if MaxWidth then
					var72 = math.max(MaxWidth, MinimumWidth)
				end
				var10_upvr:SetAttribute("MenuCanvasWidth", var69)
				if var72 < var69 then
					local var74 = var72
				end
			end
			local Quint = Enum.EasingStyle.Quint
			local Out = Enum.EasingDirection.Out
			local var77 = Frame_upvr_5
			local TargetWidth_4 = var77:GetAttribute("TargetWidth")
			if not TargetWidth_4 then
				TargetWidth_4 = var77.AbsoluteSize.X
			end
			local var79 = Frame_upvr_8
			local TargetWidth_3 = var79:GetAttribute("TargetWidth")
			if not TargetWidth_3 then
				TargetWidth_3 = var79.AbsoluteSize.X
			end
			local TweenInfo_new_result1 = TweenInfo.new(math.max(var70, TargetWidth_4, Frame_upvr_5.AbsoluteSize.X) / 750, Quint, Out)
			local TweenInfo_new_result1_2 = TweenInfo.new(math.max(var74, TargetWidth_3, Frame_upvr_8.AbsoluteSize.X) / 750, Quint, Out)
			TweenService_upvr:Create(Frame_upvr_5, TweenInfo_new_result1, {
				Position = UDim2.new(0, BorderSize_2, 0.5, 0);
				Size = UDim2.new(0, var70, 1, -BorderSize_2 * 2);
			}):Play()
			TweenService_upvr:Create(TextButton_upvr, TweenInfo_new_result1, {
				Size = UDim2.new(0, var70, 1, 0);
			}):Play()
			local var85 = var74
			local udim2 = UDim2.fromOffset(var85, MinimumHeight)
			if Frame_upvr_8.Size.Y.Offset == MinimumHeight then
				var85 = false
			else
				var85 = true
			end
			if var85 then
				Frame_upvr_8.Size = udim2
			end
			Frame_upvr_8:SetAttribute("TargetWidth", udim2.X.Offset)
			TweenService_upvr:Create(Frame_upvr_8, TweenInfo_new_result1_2, {
				Size = udim2;
			}):Play()
			var27_upvw += 1
			for i_3 = 1, TweenInfo_new_result1_2.Time * 100 do
				task.delay(i_3 / 100, function() -- Line 314
					--[[ Upvalues[2]:
						[1]: arg2 (copied, readonly)
						[2]: arg1 (copied, readonly)
					]]
					arg2.iconChanged:Fire(arg1)
				end)
			end
			task.delay(TweenInfo_new_result1_2.Time - 0.2, function() -- Line 318
				--[[ Upvalues[2]:
					[1]: var27_upvw (copied, read and write)
					[2]: arg1 (copied, readonly)
				]]
				var27_upvw -= 1
				task.defer(function() -- Line 320
					--[[ Upvalues[2]:
						[1]: var27_upvw (copied, read and write)
						[2]: arg1 (copied, readonly)
					]]
					if var27_upvw == 0 then
						arg1.resizingComplete:Fire()
					end
				end)
			end)
			arg1:updateParent()
		end)
	end)
	arg1:setBehaviour("IconLabel", "Text", any_createStagger_result1_upvr)
	local var93_upvw = true
	arg1:setBehaviour("IconLabel", "FontFace", function(arg1_5) -- Line 333
		--[[ Upvalues[3]:
			[1]: TextLabel_upvr (readonly)
			[2]: any_createStagger_result1_upvr (readonly)
			[3]: var93_upvw (read and write)
		]]
		if TextLabel_upvr.FontFace == arg1_5 then
		else
			task.spawn(function() -- Line 338
				--[[ Upvalues[2]:
					[1]: any_createStagger_result1_upvr (copied, readonly)
					[2]: var93_upvw (copied, read and write)
				]]
				any_createStagger_result1_upvr()
				if var93_upvw then
					var93_upvw = false
					for _ = 1, 10 do
						task.wait(1)
						any_createStagger_result1_upvr()
					end
				end
			end)
		end
	end)
	local function updateBorderSize() -- Line 360
		--[[ Upvalues[7]:
			[1]: Frame_upvr_8 (readonly)
			[2]: arg1 (readonly)
			[3]: Frame_upvr_5 (readonly)
			[4]: var10_upvr (readonly)
			[5]: MenuGap_upvr (readonly)
			[6]: MenuUIListLayout_upvr (readonly)
			[7]: any_createStagger_result1_upvr (readonly)
		]]
		task.defer(function() -- Line 361
			--[[ Upvalues[7]:
				[1]: Frame_upvr_8 (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: Frame_upvr_5 (copied, readonly)
				[4]: var10_upvr (copied, readonly)
				[5]: MenuGap_upvr (copied, readonly)
				[6]: MenuUIListLayout_upvr (copied, readonly)
				[7]: any_createStagger_result1_upvr (copied, readonly)
			]]
			local BorderSize_3 = Frame_upvr_8:GetAttribute("BorderSize")
			local var98 = arg1
			if Frame_upvr_5.Visible == false then
				var98 = 0
			else
				local function INLINED() -- Internal function, doesn't exist in bytecode
					var98 = -BorderSize_3
					return var98
				end
				if var98.alignment ~= "Right" or not INLINED() then
					var98 = BorderSize_3
				end
			end
			var10_upvr.Position = UDim2.new(0, var98, 0, 0)
			MenuGap_upvr.Size = UDim2.fromOffset(BorderSize_3, 0)
			MenuUIListLayout_upvr.Padding = UDim.new(0, 0)
			any_createStagger_result1_upvr()
		end)
	end
	arg1:setBehaviour("Widget", "BorderSize", updateBorderSize)
	arg1:setBehaviour("IconSpot", "Visible", updateBorderSize)
	arg1.startMenuUpdate:Connect(any_createStagger_result1_upvr)
	arg1.updateSize:Connect(any_createStagger_result1_upvr)
	arg1:setBehaviour("ContentsList", "HorizontalAlignment", any_createStagger_result1_upvr)
	arg1:setBehaviour("Widget", "Visible", any_createStagger_result1_upvr)
	arg1:setBehaviour("Widget", "DesiredWidth", any_createStagger_result1_upvr)
	arg1:setBehaviour("Widget", "MinimumWidth", any_createStagger_result1_upvr)
	arg1:setBehaviour("Widget", "MinimumHeight", any_createStagger_result1_upvr)
	arg1:setBehaviour("Indicator", "Visible", any_createStagger_result1_upvr)
	arg1:setBehaviour("IconImageRatio", "AspectRatio", any_createStagger_result1_upvr)
	arg1:setBehaviour("IconImage", "Image", function(arg1_6) -- Line 382
		--[[ Upvalues[2]:
			[1]: ImageLabel_upvr (readonly)
			[2]: any_createStagger_result1_upvr (readonly)
		]]
		local var100
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var100 = "http://www.roblox.com/asset/?id="..arg1_6
			return var100
		end
		if not tonumber(arg1_6) or not INLINED_2() then
			var100 = arg1_6
			if not var100 then
				var100 = ""
			end
		end
		if ImageLabel_upvr.Image ~= var100 then
			any_createStagger_result1_upvr()
		end
		return var100
	end)
	arg1.alignmentChanged:Connect(function(arg1_7) -- Line 389
		--[[ Upvalues[7]:
			[1]: MenuUIListLayout_upvr (readonly)
			[2]: Frame_upvr_8 (readonly)
			[3]: arg1 (readonly)
			[4]: Frame_upvr_5 (readonly)
			[5]: var10_upvr (readonly)
			[6]: MenuGap_upvr (readonly)
			[7]: any_createStagger_result1_upvr (readonly)
		]]
		if arg1_7 == "Center" then
		end
		MenuUIListLayout_upvr.HorizontalAlignment = Enum.HorizontalAlignment.Left
		task.defer(function() -- Line 361
			--[[ Upvalues[7]:
				[1]: Frame_upvr_8 (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: Frame_upvr_5 (copied, readonly)
				[4]: var10_upvr (copied, readonly)
				[5]: MenuGap_upvr (copied, readonly)
				[6]: MenuUIListLayout_upvr (copied, readonly)
				[7]: any_createStagger_result1_upvr (copied, readonly)
			]]
			local BorderSize = Frame_upvr_8:GetAttribute("BorderSize")
			local var104 = arg1
			if Frame_upvr_5.Visible == false then
				var104 = 0
			else
				local function INLINED_3() -- Internal function, doesn't exist in bytecode
					var104 = -BorderSize
					return var104
				end
				if var104.alignment ~= "Right" or not INLINED_3() then
					var104 = BorderSize
				end
			end
			var10_upvr.Position = UDim2.new(0, var104, 0, 0)
			MenuGap_upvr.Size = UDim2.fromOffset(BorderSize, 0)
			MenuUIListLayout_upvr.Padding = UDim.new(0, 0)
			any_createStagger_result1_upvr()
		end)
	end)
	local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
	local LocaleId_upvw = LocalPlayer_upvr.LocaleId
	arg1.janitor:add(LocalPlayer_upvr:GetPropertyChangedSignal("LocaleId"):Connect(function() -- Line 401
		--[[ Upvalues[3]:
			[1]: LocalPlayer_upvr (readonly)
			[2]: LocaleId_upvw (read and write)
			[3]: arg1 (readonly)
		]]
		task.delay(0.2, function() -- Line 402
			--[[ Upvalues[3]:
				[1]: LocalPlayer_upvr (copied, readonly)
				[2]: LocaleId_upvw (copied, read and write)
				[3]: arg1 (copied, readonly)
			]]
			local LocaleId = LocalPlayer_upvr.LocaleId
			if LocaleId ~= LocaleId_upvw then
				LocaleId_upvw = LocaleId
				arg1:refresh()
				task.wait(0.5)
				arg1:refresh()
			end
		end)
	end))
	local NumberValue_upvr = Instance.new("NumberValue")
	NumberValue_upvr.Name = "IconImageScale"
	NumberValue_upvr.Parent = ImageLabel_upvr
	NumberValue_upvr:GetPropertyChangedSignal("Value"):Connect(function() -- Line 416
		--[[ Upvalues[2]:
			[1]: ImageLabel_upvr (readonly)
			[2]: NumberValue_upvr (readonly)
		]]
		ImageLabel_upvr.Size = UDim2.new(NumberValue_upvr.Value, 0, NumberValue_upvr.Value, 0)
	end)
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	UIAspectRatioConstraint.Name = "IconImageRatio"
	UIAspectRatioConstraint.AspectType = Enum.AspectType.FitWithinMaxSize
	UIAspectRatioConstraint.DominantAxis = Enum.DominantAxis.Height
	UIAspectRatioConstraint.Parent = ImageLabel_upvr
	local UIGradient = Instance.new("UIGradient")
	UIGradient.Name = "IconGradient"
	UIGradient.Enabled = true
	UIGradient.Parent = Frame_upvr_4
	local UIGradient_2 = Instance.new("UIGradient")
	UIGradient_2.Name = "IconSpotGradient"
	UIGradient_2.Enabled = true
	UIGradient_2.Parent = Frame_upvr_5
	return Frame_upvr_8
end