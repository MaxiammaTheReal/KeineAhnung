-- Name: Caption
-- Path: game:GetService("ReplicatedStorage").Packages._Index.1foreverhd_topbarplus@3.4.0.topbarplus.Elements.Caption
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.738156400002481 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:16
-- Luau version 6, Types version 3
-- Time taken: 0.011755 seconds

local Color3_fromRGB_result1_upvr = Color3.fromRGB(39, 41, 48)
return function(arg1) -- Line 3
	--[[ Upvalues[1]:
		[1]: Color3_fromRGB_result1_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local any_getInstance_result1_upvr = arg1:getInstance("ClickRegion")
	local CanvasGroup_upvr = Instance.new("CanvasGroup")
	CanvasGroup_upvr.Name = "Caption"
	CanvasGroup_upvr.AnchorPoint = Vector2.new(0.5, 0)
	CanvasGroup_upvr.BackgroundTransparency = 1
	CanvasGroup_upvr.BorderSizePixel = 0
	CanvasGroup_upvr.GroupTransparency = 1
	CanvasGroup_upvr.Position = UDim2.fromOffset(0, 0)
	CanvasGroup_upvr.Visible = true
	CanvasGroup_upvr.ZIndex = 30
	CanvasGroup_upvr.Parent = any_getInstance_result1_upvr
	local Frame_upvr = Instance.new("Frame")
	Frame_upvr.Name = "Box"
	Frame_upvr.AutomaticSize = Enum.AutomaticSize.XY
	Frame_upvr.BackgroundColor3 = Color3_fromRGB_result1_upvr
	Frame_upvr.Position = UDim2.fromOffset(4, 7)
	Frame_upvr.ZIndex = 12
	Frame_upvr.Parent = CanvasGroup_upvr
	local TextLabel = Instance.new("TextLabel")
	TextLabel.Name = "Header"
	TextLabel.FontFace = Font.new("rbxasset://fonts/families/BuilderSans.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
	TextLabel.Text = "Caption"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextSize = 15
	TextLabel.TextTruncate = Enum.TextTruncate.None
	TextLabel.TextWrapped = false
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel.AutomaticSize = Enum.AutomaticSize.X
	TextLabel.BackgroundTransparency = 1
	TextLabel.LayoutOrder = 1
	TextLabel.Size = UDim2.fromOffset(0, 16)
	TextLabel.ZIndex = 18
	TextLabel.Parent = Frame_upvr
	local UIListLayout_2 = Instance.new("UIListLayout")
	UIListLayout_2.Name = "Layout"
	UIListLayout_2.Padding = UDim.new(0, 8)
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_2.Parent = Frame_upvr
	local UICorner = Instance.new("UICorner")
	UICorner.Name = "CaptionCorner"
	UICorner.Parent = Frame_upvr
	local UIPadding = Instance.new("UIPadding")
	UIPadding.Name = "Padding"
	UIPadding.PaddingBottom = UDim.new(0, 12)
	UIPadding.PaddingLeft = UDim.new(0, 12)
	UIPadding.PaddingRight = UDim.new(0, 12)
	UIPadding.PaddingTop = UDim.new(0, 12)
	UIPadding.Parent = Frame_upvr
	local Frame_upvr_2 = Instance.new("Frame")
	Frame_upvr_2.Name = "Hotkeys"
	Frame_upvr_2.AutomaticSize = Enum.AutomaticSize.Y
	Frame_upvr_2.BackgroundTransparency = 1
	Frame_upvr_2.LayoutOrder = 3
	Frame_upvr_2.Size = UDim2.fromScale(1, 0)
	Frame_upvr_2.Visible = false
	Frame_upvr_2.Parent = Frame_upvr
	local UIListLayout = Instance.new("UIListLayout")
	UIListLayout.Name = "Layout1"
	UIListLayout.Padding = UDim.new(0, 6)
	UIListLayout.FillDirection = Enum.FillDirection.Vertical
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.HorizontalFlex = Enum.UIFlexAlignment.None
	UIListLayout.ItemLineAlignment = Enum.ItemLineAlignment.Automatic
	UIListLayout.VerticalFlex = Enum.UIFlexAlignment.None
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Parent = Frame_upvr_2
	local ImageLabel = Instance.new("ImageLabel")
	ImageLabel.Name = "Key1"
	ImageLabel.Image = "rbxasset://textures/ui/Controls/key_single.png"
	ImageLabel.ImageTransparency = 0.7
	ImageLabel.ScaleType = Enum.ScaleType.Slice
	ImageLabel.SliceCenter = Rect.new(5, 5, 23, 24)
	ImageLabel.AutomaticSize = Enum.AutomaticSize.X
	ImageLabel.BackgroundTransparency = 1
	ImageLabel.LayoutOrder = 1
	ImageLabel.Size = UDim2.fromOffset(0, 30)
	ImageLabel.ZIndex = 15
	ImageLabel.Parent = Frame_upvr_2
	local UIPadding_2 = Instance.new("UIPadding")
	UIPadding_2.Name = "Inset"
	UIPadding_2.PaddingLeft = UDim.new(0, 8)
	UIPadding_2.PaddingRight = UDim.new(0, 8)
	UIPadding_2.Parent = ImageLabel
	local TextLabel_2_upvr = Instance.new("TextLabel")
	TextLabel_2_upvr.AutoLocalize = false
	TextLabel_2_upvr.Name = "LabelContent"
	TextLabel_2_upvr.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
	TextLabel_2_upvr.Text = ""
	TextLabel_2_upvr.TextColor3 = Color3.fromRGB(189, 190, 190)
	TextLabel_2_upvr.TextSize = 15
	TextLabel_2_upvr.AutomaticSize = Enum.AutomaticSize.X
	TextLabel_2_upvr.BackgroundTransparency = 1
	TextLabel_2_upvr.Position = UDim2.fromOffset(0, -1)
	TextLabel_2_upvr.Size = UDim2.fromScale(1, 1)
	TextLabel_2_upvr.ZIndex = 16
	TextLabel_2_upvr.Parent = ImageLabel
	local ImageLabel_2_upvr = Instance.new("ImageLabel")
	ImageLabel_2_upvr.Name = "Caret"
	ImageLabel_2_upvr.Image = "rbxassetid://101906294438076"
	ImageLabel_2_upvr.ImageColor3 = Color3_fromRGB_result1_upvr
	ImageLabel_2_upvr.AnchorPoint = Vector2.new(0, 0.5)
	ImageLabel_2_upvr.BackgroundTransparency = 1
	ImageLabel_2_upvr.Position = UDim2.new(0, 0, 0, 4)
	ImageLabel_2_upvr.Size = UDim2.fromOffset(16, 8)
	ImageLabel_2_upvr.ZIndex = 12
	ImageLabel_2_upvr.Parent = CanvasGroup_upvr
	local ImageLabel_upvr = Instance.new("ImageLabel")
	ImageLabel_upvr.Visible = true
	ImageLabel_upvr.Name = "DropShadow"
	ImageLabel_upvr.Image = "rbxassetid://124920646932671"
	ImageLabel_upvr.ImageColor3 = Color3.fromRGB(0, 0, 0)
	ImageLabel_upvr.ImageTransparency = 0.45
	ImageLabel_upvr.ScaleType = Enum.ScaleType.Slice
	ImageLabel_upvr.SliceCenter = Rect.new(12, 12, 13, 13)
	ImageLabel_upvr.BackgroundTransparency = 1
	ImageLabel_upvr.Position = UDim2.fromOffset(0, 5)
	ImageLabel_upvr.Size = UDim2.new(1, 0, 0, 48)
	ImageLabel_upvr.Parent = CanvasGroup_upvr
	Frame_upvr:GetPropertyChangedSignal("AbsoluteSize"):Connect(function() -- Line 145
		--[[ Upvalues[2]:
			[1]: ImageLabel_upvr (readonly)
			[2]: Frame_upvr (readonly)
		]]
		ImageLabel_upvr.Size = UDim2.new(1, 0, 0, Frame_upvr.AbsoluteSize.Y + 8)
	end)
	local captionJanitor = arg1.captionJanitor
	local _, any_clipOutside_result2_upvr = arg1:clipOutside(CanvasGroup_upvr)
	any_clipOutside_result2_upvr.AutomaticSize = Enum.AutomaticSize.None
	captionJanitor:add(CanvasGroup_upvr:GetPropertyChangedSignal("AbsoluteSize"):Connect(function() -- Line 155, Named "matchSize"
		--[[ Upvalues[2]:
			[1]: CanvasGroup_upvr (readonly)
			[2]: any_clipOutside_result2_upvr (readonly)
		]]
		local AbsoluteSize_3 = CanvasGroup_upvr.AbsoluteSize
		any_clipOutside_result2_upvr.Size = UDim2.fromOffset(AbsoluteSize_3.X, AbsoluteSize_3.Y)
	end))
	local AbsoluteSize = CanvasGroup_upvr.AbsoluteSize
	any_clipOutside_result2_upvr.Size = UDim2.fromOffset(AbsoluteSize.X, AbsoluteSize.Y)
	local var23_upvw = false
	local UserInputService_upvr = game:GetService("UserInputService")
	local Header_upvr = CanvasGroup_upvr.Box.Header
	local function updateHotkey(arg1_2) -- Line 168
		--[[ Upvalues[6]:
			[1]: UserInputService_upvr (readonly)
			[2]: CanvasGroup_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: Header_upvr (readonly)
			[5]: TextLabel_2_upvr (readonly)
			[6]: Frame_upvr_2 (readonly)
		]]
		local KeyboardEnabled = UserInputService_upvr.KeyboardEnabled
		local var27 = CanvasGroup_upvr:GetAttribute("CaptionText") or ""
		local var28
		if var27 ~= "_hotkey_" then
			var28 = false
		else
			var28 = true
		end
		if not KeyboardEnabled and var28 then
			arg1:setCaption()
		else
			Header_upvr.Text = var27
			Header_upvr.Visible = not var28
			if arg1_2 then
				TextLabel_2_upvr.Text = arg1_2.Name
				Frame_upvr_2.Visible = true
			end
			if not KeyboardEnabled then
				Frame_upvr_2.Visible = false
			end
		end
	end
	CanvasGroup_upvr:GetAttributeChangedSignal("CaptionText"):Connect(updateHotkey)
	local Quad = Enum.EasingStyle.Quad
	local function _(arg1_3) -- Line 194, Named "getCaptionPosition"
		--[[ Upvalues[1]:
			[1]: var23_upvw (read and write)
		]]
		if arg1_3 ~= nil then
		else
		end
		if var23_upvw then
		else
		end
		return UDim2.new(0.5, 0, 1, 2)
	end
	local TweenInfo_new_result1_upvr_2 = TweenInfo.new(0.2, Quad, Enum.EasingDirection.In)
	local TweenInfo_new_result1_upvr = TweenInfo.new(0.2, Quad, Enum.EasingDirection.Out)
	local TweenService_upvr = game:GetService("TweenService")
	local RunService_upvr = game:GetService("RunService")
	local function updatePosition_upvr(arg1_4) -- Line 201, Named "updatePosition"
		--[[ Upvalues[9]:
			[1]: var23_upvw (read and write)
			[2]: ImageLabel_2_upvr (readonly)
			[3]: CanvasGroup_upvr (readonly)
			[4]: any_getInstance_result1_upvr (readonly)
			[5]: any_clipOutside_result2_upvr (readonly)
			[6]: TweenInfo_new_result1_upvr_2 (readonly)
			[7]: TweenInfo_new_result1_upvr (readonly)
			[8]: TweenService_upvr (readonly)
			[9]: RunService_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 43 start (CF ANALYSIS FAILED)
		local var34
		if not var34 then
		else
			if arg1_4 ~= nil then
				var34 = arg1_4
			else
				var34 = var23_upvw
			end
			if not var34 ~= nil then
				-- KONSTANTWARNING: GOTO [14] #13
			end
			-- KONSTANTERROR: [0] 1. Error Block 43 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [13] 12. Error Block 47 start (CF ANALYSIS FAILED)
			if var23_upvw then
			else
			end
			if var34 ~= nil then
				-- KONSTANTWARNING: GOTO [31] #28
			end
			if var23_upvw then
			else
			end
			if var34 then
				ImageLabel_2_upvr.Position = UDim2.fromOffset(0, ImageLabel_2_upvr.Position.Y.Offset)
				CanvasGroup_upvr.AutomaticSize = Enum.AutomaticSize.XY
				CanvasGroup_upvr.Size = UDim2.fromOffset(32, 53)
			else
				local AbsoluteSize_2 = CanvasGroup_upvr.AbsoluteSize
				CanvasGroup_upvr.AutomaticSize = Enum.AutomaticSize.Y
				CanvasGroup_upvr.Size = UDim2.fromOffset(AbsoluteSize_2.X, AbsoluteSize_2.Y)
			end
			local var37_upvw
			local function updateCaret() -- Line 230
				--[[ Upvalues[4]:
					[1]: any_getInstance_result1_upvr (copied, readonly)
					[2]: CanvasGroup_upvr (copied, readonly)
					[3]: ImageLabel_2_upvr (copied, readonly)
					[4]: var37_upvw (read and write)
				]]
				local var38 = any_getInstance_result1_upvr.AbsolutePosition.X - CanvasGroup_upvr.AbsolutePosition.X + any_getInstance_result1_upvr.AbsoluteSize.X / 2 - ImageLabel_2_upvr.AbsoluteSize.X / 2
				local Offset = ImageLabel_2_upvr.Position.Y.Offset
				if var37_upvw ~= var38 then
					var37_upvw = var38
					ImageLabel_2_upvr.Position = UDim2.fromOffset(0, Offset)
					task.wait()
				end
				ImageLabel_2_upvr.Position = UDim2.fromOffset(var38, Offset)
			end
			any_clipOutside_result2_upvr.Position = UDim2.new(0.5, 0, 1, 2)
			updateCaret()
			if not var34 or not TweenInfo_new_result1_upvr_2 then
			end
			local any_Create_result1 = TweenService_upvr:Create(any_clipOutside_result2_upvr, TweenInfo_new_result1_upvr, {
				Position = UDim2.new(0.5, 0, 1, 2);
			})
			any_Create_result1:Play()
			local any_Connect_result1_upvr = RunService_upvr.Heartbeat:Connect(updateCaret)
			any_Create_result1.Completed:Once(function() -- Line 253
				--[[ Upvalues[1]:
					[1]: any_Connect_result1_upvr (readonly)
				]]
				any_Connect_result1_upvr:Disconnect()
			end)
			-- KONSTANTERROR: [13] 12. Error Block 47 end (CF ANALYSIS FAILED)
		end
	end
	captionJanitor:add(any_getInstance_result1_upvr:GetPropertyChangedSignal("AbsoluteSize"):Connect(function() -- Line 258
		--[[ Upvalues[1]:
			[1]: updatePosition_upvr (readonly)
		]]
		updatePosition_upvr()
	end))
	updatePosition_upvr(false)
	captionJanitor:add(arg1.toggleKeyAdded:Connect(updateHotkey))
	local pairs_result1, pairs_result2, pairs_result3 = pairs(arg1.bindedToggleKeys)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [676] 464. Error Block 13 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [676] 464. Error Block 13 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [641] 439. Error Block 37 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [676.36]
	if nil ~= "_hotkey_" then
	else
	end
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [676.35]
	-- KONSTANTERROR: [641] 439. Error Block 37 end (CF ANALYSIS FAILED)
end