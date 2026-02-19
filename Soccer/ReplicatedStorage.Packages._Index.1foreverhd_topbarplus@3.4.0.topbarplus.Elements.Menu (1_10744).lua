-- Name: Menu
-- Path: game:GetService("ReplicatedStorage").Packages._Index.1foreverhd_topbarplus@3.4.0.topbarplus.Elements.Menu
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7300888000027044 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:19
-- Luau version 6, Types version 3
-- Time taken: 0.009669 seconds

return function(arg1) -- Line 1
	local ScrollingFrame_upvr = Instance.new("ScrollingFrame")
	ScrollingFrame_upvr.Name = "Menu"
	ScrollingFrame_upvr.BackgroundTransparency = 1
	ScrollingFrame_upvr.Visible = true
	ScrollingFrame_upvr.ZIndex = 1
	ScrollingFrame_upvr.Size = UDim2.fromScale(1, 1)
	ScrollingFrame_upvr.ClipsDescendants = true
	ScrollingFrame_upvr.TopImage = ""
	ScrollingFrame_upvr.BottomImage = ""
	ScrollingFrame_upvr.HorizontalScrollBarInset = Enum.ScrollBarInset.Always
	ScrollingFrame_upvr.CanvasSize = UDim2.new(0, 0, 1, -1)
	ScrollingFrame_upvr.ScrollingEnabled = true
	ScrollingFrame_upvr.ScrollingDirection = Enum.ScrollingDirection.X
	ScrollingFrame_upvr.ZIndex = 20
	ScrollingFrame_upvr.ScrollBarThickness = 3
	ScrollingFrame_upvr.ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255)
	ScrollingFrame_upvr.ScrollBarImageTransparency = 0.8
	ScrollingFrame_upvr.BorderSizePixel = 0
	ScrollingFrame_upvr.Selectable = false
	local iconModule_upvr = require(arg1.iconModule)
	local clone_upvr = iconModule_upvr.container.TopbarStandard:FindFirstChild("UIListLayout", true):Clone()
	clone_upvr.Name = "MenuUIListLayout"
	clone_upvr.VerticalAlignment = Enum.VerticalAlignment.Center
	clone_upvr.Parent = ScrollingFrame_upvr
	local Frame = Instance.new("Frame")
	Frame.Name = "MenuGap"
	Frame.BackgroundTransparency = 1
	Frame.Visible = false
	Frame.AnchorPoint = Vector2.new(0, 0.5)
	Frame.ZIndex = 5
	Frame.Parent = ScrollingFrame_upvr
	local var6_upvw = false
	local Themes_upvr = require(script.Parent.Parent.Features.Themes)
	arg1.menuChildAdded:Connect(function() -- Line 39, Named "totalChildrenChanged"
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: var6_upvw (read and write)
			[3]: ScrollingFrame_upvr (readonly)
			[4]: Themes_upvr (readonly)
			[5]: clone_upvr (readonly)
		]]
		local menuJanitor_upvr = arg1.menuJanitor
		if var6_upvw then
			if #arg1.menuIcons <= 0 then
				menuJanitor_upvr:clean()
				var6_upvw = false
			end
		else
			var6_upvw = true
			menuJanitor_upvr:add(arg1.toggled:Connect(function() -- Line 53
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				if 0 < #arg1.menuIcons then
					arg1.updateSize:Fire()
				end
			end))
			local _, any_modifyTheme_result2_upvr = arg1:modifyTheme({{"Menu", "Active", true}})
			task.defer(function() -- Line 63
				--[[ Upvalues[3]:
					[1]: menuJanitor_upvr (readonly)
					[2]: arg1 (copied, readonly)
					[3]: any_modifyTheme_result2_upvr (readonly)
				]]
				menuJanitor_upvr:add(function() -- Line 64
					--[[ Upvalues[2]:
						[1]: arg1 (copied, readonly)
						[2]: any_modifyTheme_result2_upvr (copied, readonly)
					]]
					arg1:removeModification(any_modifyTheme_result2_upvr)
				end)
			end)
			local X_upvw = ScrollingFrame_upvr.AbsoluteCanvasSize.X
			local function rightAlignCanvas() -- Line 73
				--[[ Upvalues[3]:
					[1]: arg1 (copied, readonly)
					[2]: ScrollingFrame_upvr (copied, readonly)
					[3]: X_upvw (read and write)
				]]
				if arg1.alignment == "Right" then
					local X = ScrollingFrame_upvr.AbsoluteCanvasSize.X
					X_upvw = X
					ScrollingFrame_upvr.CanvasPosition = Vector2.new((ScrollingFrame_upvr.CanvasPosition.X) - (X_upvw - X), 0)
				end
			end
			menuJanitor_upvr:add(arg1.selected:Connect(rightAlignCanvas))
			menuJanitor_upvr:add(ScrollingFrame_upvr:GetPropertyChangedSignal("AbsoluteCanvasSize"):Connect(rightAlignCanvas))
			local any_getStateGroup_result1 = arg1:getStateGroup()
			if Themes_upvr.getThemeValue(any_getStateGroup_result1, "IconImage", "Image", "Deselected") == Themes_upvr.getThemeValue(any_getStateGroup_result1, "IconImage", "Image", "Selected") then
				arg1:removeModificationWith("IconLabel", "Text", "Viewing")
				arg1:removeModificationWith("IconLabel", "Image", "Viewing")
				arg1:modifyTheme({{"IconLabel", "FontFace", Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Light, Enum.FontStyle.Normal), "Selected"}, {"IconLabel", "Text", 'X', "Selected"}, {"IconLabel", "TextSize", 20, "Selected"}, {"IconLabel", "TextStrokeTransparency", 0.8, "Selected"}, {"IconImage", "Image", "", "Selected"}})
			end
			local any_getInstance_result1_upvr = arg1:getInstance("MenuGap")
			menuJanitor_upvr:add(arg1.alignmentChanged:Connect(function() -- Line 104, Named "updateAlignent"
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: any_getInstance_result1_upvr (readonly)
				]]
				local var26 = -99999
				local var27 = -99998
				if arg1.alignment == "Right" then
					var26 = 99999
					var27 = 99998
				end
				arg1:modifyTheme({"IconSpot", "LayoutOrder", var26})
				any_getInstance_result1_upvr.LayoutOrder = var27
			end))
			local var29 = -99999
			local var30 = -99998
			if arg1.alignment == "Right" then
				var29 = 99999
				var30 = 99998
			end
			arg1:modifyTheme({"IconSpot", "LayoutOrder", var29})
			any_getInstance_result1_upvr.LayoutOrder = var30
			ScrollingFrame_upvr:GetAttributeChangedSignal("MenuCanvasWidth"):Connect(function() -- Line 120
				--[[ Upvalues[1]:
					[1]: ScrollingFrame_upvr (copied, readonly)
				]]
				local Y = ScrollingFrame_upvr.CanvasSize.Y
				ScrollingFrame_upvr.CanvasSize = UDim2.new(0, ScrollingFrame_upvr:GetAttribute("MenuCanvasWidth"), Y.Scale, Y.Offset)
			end)
			menuJanitor_upvr:add(arg1.updateMenu:Connect(function() -- Line 125
				--[[ Upvalues[2]:
					[1]: ScrollingFrame_upvr (copied, readonly)
					[2]: clone_upvr (copied, readonly)
				]]
				local MaxIcons = ScrollingFrame_upvr:GetAttribute("MaxIcons")
				local var42
				if not MaxIcons then
				else
					local tbl = {}
					var42 = pairs(ScrollingFrame_upvr:GetChildren())
					local pairs_result1_3, pairs_result2_2, pairs_result3_2 = pairs(ScrollingFrame_upvr:GetChildren())
					for _, v_3 in pairs_result1_3, pairs_result2_2, pairs_result3_2 do
						if v_3:GetAttribute("WidgetUID") and v_3.Visible then
							table.insert(tbl, {v_3, v_3.AbsolutePosition.X})
						end
					end
					pairs_result1_3 = table.sort
					pairs_result1_3(tbl, function(arg1_2, arg2) -- Line 137
						local var49
						if arg1_2[2] >= arg2[2] then
							var49 = false
						else
							var49 = true
						end
						return var49
					end)
					pairs_result1_3 = 0
					for i_4 = 1, MaxIcons do
						if not tbl[i_4] then break end
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						pairs_result1_3 += tbl[i_4][1].AbsoluteSize.X + clone_upvr.Padding.Offset
					end
					ScrollingFrame_upvr:SetAttribute("MenuWidth", pairs_result1_3)
				end
			end))
			local function startMenuUpdate() -- Line 152
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				task.delay(0.1, function() -- Line 153
					--[[ Upvalues[1]:
						[1]: arg1 (copied, readonly)
					]]
					arg1.startMenuUpdate:Fire()
				end)
			end
			menuJanitor_upvr:add(ScrollingFrame_upvr.ChildAdded:Connect(startMenuUpdate))
			menuJanitor_upvr:add(ScrollingFrame_upvr.ChildRemoved:Connect(startMenuUpdate))
			menuJanitor_upvr:add(ScrollingFrame_upvr:GetAttributeChangedSignal("MaxIcons"):Connect(startMenuUpdate))
			menuJanitor_upvr:add(ScrollingFrame_upvr:GetAttributeChangedSignal("MaxWidth"):Connect(startMenuUpdate))
			task.delay(0.1, function() -- Line 153
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				arg1.startMenuUpdate:Fire()
			end)
		end
	end)
	arg1.menuSet:Connect(function(arg1_3) -- Line 165
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: iconModule_upvr (readonly)
		]]
		for _, v in pairs(arg1.menuIcons) do
			iconModule_upvr.getIconByUID(v):destroy()
		end
		if type(arg1_3) == "table" then
			for _, v_2 in pairs(arg1_3) do
				v_2:joinMenu(arg1)
			end
		end
	end)
	return ScrollingFrame_upvr
end