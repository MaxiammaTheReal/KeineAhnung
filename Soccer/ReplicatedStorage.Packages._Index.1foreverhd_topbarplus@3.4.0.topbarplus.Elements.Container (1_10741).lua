-- Name: Container
-- Path: game:GetService("ReplicatedStorage").Packages._Index.1foreverhd_topbarplus@3.4.0.topbarplus.Elements.Container
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.709324800001923 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:17
-- Luau version 6, Types version 3
-- Time taken: 0.009325 seconds

local var2_upvw = false
local var3_upvw = 0
return function(arg1) -- Line 3
	--[[ Upvalues[2]:
		[1]: var2_upvw (read and write)
		[2]: var3_upvw (read and write)
	]]
	local GuiService_upvr = game:GetService("GuiService")
	local module = {}
	local any_new_result1_upvr = require(script.Parent.Parent.Packages.GoodSignal).new()
	local any_GetGuiInset_result1_upvw = GuiService_upvr:GetGuiInset()
	local var8_upvw = 0
	local var9_upvw = 0
	local var10_upvw = 0
	local var11_upvw = false
	local var12_upvw = false
	local UserInputService_upvr = game:GetService("UserInputService")
	local var14_upvw = 0
	local Players_upvr = game:GetService("Players")
	local function checkInset_upvr(arg1_2) -- Line 20, Named "checkInset"
		--[[ Upvalues[15]:
			[1]: GuiService_upvr (readonly)
			[2]: var11_upvw (read and write)
			[3]: var12_upvw (read and write)
			[4]: UserInputService_upvr (readonly)
			[5]: arg1 (readonly)
			[6]: var14_upvw (read and write)
			[7]: checkInset_upvr (readonly)
			[8]: Players_upvr (readonly)
			[9]: var2_upvw (copied, read and write)
			[10]: any_GetGuiInset_result1_upvw (read and write)
			[11]: var8_upvw (read and write)
			[12]: var9_upvw (read and write)
			[13]: var10_upvw (read and write)
			[14]: any_new_result1_upvr (readonly)
			[15]: var3_upvw (copied, read and write)
		]]
		local TopbarInset = GuiService_upvr.TopbarInset
		local Height = TopbarInset.Height
		if Height > 36 then
			TopbarInset = false
		else
			TopbarInset = true
		end
		var11_upvw = GuiService_upvr:IsTenFootInterface()
		var12_upvw = UserInputService_upvr.VREnabled
		arg1.isOldTopbar = TopbarInset
		var14_upvw += 1
		if Height == 0 and arg1_2 == nil then
			task.defer(function() -- Line 33
				--[[ Upvalues[1]:
					[1]: checkInset_upvr (copied, readonly)
				]]
				task.wait(8)
				checkInset_upvr("ForceConvertToOld")
			end)
		elseif var14_upvw == 1 then
			task.delay(5, function() -- Line 38
				--[[ Upvalues[3]:
					[1]: Players_upvr (copied, readonly)
					[2]: var14_upvw (copied, read and write)
					[3]: checkInset_upvr (copied, readonly)
				]]
				Players_upvr.LocalPlayer:WaitForChild("PlayerGui")
				if var14_upvw == 1 then
					checkInset_upvr()
				end
			end)
		end
		local function INLINED() -- Internal function, doesn't exist in bytecode
			local var20
			return var20
		end
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var20 = var2_upvw
			return var20 == false
		end
		if arg1.isOldTopbar and not var11_upvw and not INLINED() and INLINED_2() and (Height ~= 0 or arg1_2 == "ForceConvertToOld") then
			var20 = true
			var2_upvw = var20
			var20 = task.defer
			var20(function() -- Line 50
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: GuiService_upvr (copied, readonly)
				]]
				arg1.modifyBaseTheme(require(script.Parent.Parent.Features.Themes.Classic))
				GuiService_upvr:GetPropertyChangedSignal("MenuIsOpen"):Connect(function() -- Line 57, Named "decideToHideTopbar"
					--[[ Upvalues[2]:
						[1]: GuiService_upvr (copied, readonly)
						[2]: arg1 (copied, readonly)
					]]
					if GuiService_upvr.MenuIsOpen then
						arg1.setTopbarEnabled(false, true)
					else
						arg1.setTopbarEnabled()
					end
				end)
				if GuiService_upvr.MenuIsOpen then
					arg1.setTopbarEnabled(false, true)
				else
					arg1.setTopbarEnabled()
				end
			end)
		end
		var20 = GuiService_upvr:GetGuiInset()
		any_GetGuiInset_result1_upvw = var20
		if TopbarInset then
			var20 = 12
		else
			var20 = any_GetGuiInset_result1_upvw.Y - 50
		end
		var8_upvw = var20
		if TopbarInset then
		else
		end
		var9_upvw = 0
		var10_upvw = -2
		if var11_upvw then
			var8_upvw = 10
			var9_upvw = 0
		end
		if GuiService_upvr.TopbarInset.Height == 0 and not var2_upvw then
			var9_upvw += 13
			var10_upvw = 50
		end
		any_new_result1_upvr:Fire(any_GetGuiInset_result1_upvw)
		if any_GetGuiInset_result1_upvw.Y ~= var3_upvw then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var3_upvw = any_GetGuiInset_result1_upvw.Y
			local Y_upvr = any_GetGuiInset_result1_upvw.Y
			task.defer(function() -- Line 88
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: Y_upvr (readonly)
				]]
				arg1.insetHeightChanged:Fire(Y_upvr)
			end)
		end
	end
	GuiService_upvr:GetPropertyChangedSignal("TopbarInset"):Connect(checkInset_upvr)
	checkInset_upvr("FirstTime")
	local ScreenGui_upvr = Instance.new("ScreenGui")
	any_new_result1_upvr:Connect(function() -- Line 98
		--[[ Upvalues[2]:
			[1]: ScreenGui_upvr (readonly)
			[2]: var8_upvw (read and write)
		]]
		ScreenGui_upvr:SetAttribute("StartInset", var8_upvw)
	end)
	ScreenGui_upvr.Name = "TopbarStandard"
	ScreenGui_upvr.Enabled = true
	ScreenGui_upvr.DisplayOrder = arg1.baseDisplayOrder
	ScreenGui_upvr.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	ScreenGui_upvr.IgnoreGuiInset = true
	ScreenGui_upvr.ResetOnSpawn = false
	ScreenGui_upvr.ScreenInsets = Enum.ScreenInsets.TopbarSafeInsets
	module[ScreenGui_upvr.Name] = ScreenGui_upvr
	arg1.baseDisplayOrderChanged:Connect(function() -- Line 109
		--[[ Upvalues[2]:
			[1]: ScreenGui_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		ScreenGui_upvr.DisplayOrder = arg1.baseDisplayOrder
	end)
	local Frame_upvr = Instance.new("Frame")
	Frame_upvr.Name = "Holders"
	Frame_upvr.BackgroundTransparency = 1
	any_new_result1_upvr:Connect(function() -- Line 116
		--[[ Upvalues[5]:
			[1]: var12_upvw (read and write)
			[2]: var11_upvw (read and write)
			[3]: var10_upvw (read and write)
			[4]: Frame_upvr (readonly)
			[5]: var9_upvw (read and write)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var29
		if var12_upvw then
			var29 = 36
		else
			var29 = 56
		end
		if var11_upvw then
			local udim2 = UDim2.new(1, 0, 0, var29)
		else
		end
		Frame_upvr.Position = UDim2.new(0, 0, 0, var9_upvw)
		Frame_upvr.Size = UDim2.new(1, 0, 1, var10_upvw)
	end)
	Frame_upvr.Visible = true
	Frame_upvr.ZIndex = 1
	Frame_upvr.Parent = ScreenGui_upvr
	local clone_upvr_5 = ScreenGui_upvr:Clone()
	local Holders_upvr = clone_upvr_5.Holders
	clone_upvr_5.Name = "TopbarCentered"
	clone_upvr_5.DisplayOrder = arg1.baseDisplayOrder
	clone_upvr_5.ScreenInsets = Enum.ScreenInsets.None
	arg1.baseDisplayOrderChanged:Connect(function() -- Line 134
		--[[ Upvalues[2]:
			[1]: clone_upvr_5 (readonly)
			[2]: arg1 (readonly)
		]]
		clone_upvr_5.DisplayOrder = arg1.baseDisplayOrder
	end)
	module[clone_upvr_5.Name] = clone_upvr_5
	any_new_result1_upvr:Connect(function() -- Line 128, Named "updateCenteredHoldersHeight"
		--[[ Upvalues[3]:
			[1]: Holders_upvr (readonly)
			[2]: GuiService_upvr (readonly)
			[3]: var10_upvw (read and write)
		]]
		Holders_upvr.Size = UDim2.new(1, 0, 0, GuiService_upvr.TopbarInset.Height + var10_upvw)
	end)
	Holders_upvr.Size = UDim2.new(1, 0, 0, GuiService_upvr.TopbarInset.Height + var10_upvw)
	local clone_upvr_2 = ScreenGui_upvr:Clone()
	clone_upvr_2.Name ..= "Clipped"
	clone_upvr_2.DisplayOrder = arg1.baseDisplayOrder + 1
	arg1.baseDisplayOrderChanged:Connect(function() -- Line 145
		--[[ Upvalues[2]:
			[1]: clone_upvr_2 (readonly)
			[2]: arg1 (readonly)
		]]
		clone_upvr_2.DisplayOrder = arg1.baseDisplayOrder + 1
	end)
	module[clone_upvr_2.Name] = clone_upvr_2
	local clone_upvr_4 = clone_upvr_5:Clone()
	clone_upvr_4.Name ..= "Clipped"
	clone_upvr_4.DisplayOrder = arg1.baseDisplayOrder + 1
	arg1.baseDisplayOrderChanged:Connect(function() -- Line 153
		--[[ Upvalues[2]:
			[1]: clone_upvr_4 (readonly)
			[2]: arg1 (readonly)
		]]
		clone_upvr_4.DisplayOrder = arg1.baseDisplayOrder + 1
	end)
	module[clone_upvr_4.Name] = clone_upvr_4
	local ScrollingFrame_upvr = Instance.new("ScrollingFrame")
	ScrollingFrame_upvr:SetAttribute("IsAHolder", true)
	ScrollingFrame_upvr.Name = "Left"
	any_new_result1_upvr:Connect(function() -- Line 162
		--[[ Upvalues[2]:
			[1]: ScrollingFrame_upvr (readonly)
			[2]: var8_upvw (read and write)
		]]
		ScrollingFrame_upvr.Position = UDim2.fromOffset(var8_upvw, 0)
	end)
	ScrollingFrame_upvr.Size = UDim2.new(1, -24, 1, 0)
	ScrollingFrame_upvr.BackgroundTransparency = 1
	ScrollingFrame_upvr.Visible = true
	ScrollingFrame_upvr.ZIndex = 1
	ScrollingFrame_upvr.Active = false
	ScrollingFrame_upvr.ClipsDescendants = true
	ScrollingFrame_upvr.HorizontalScrollBarInset = Enum.ScrollBarInset.None
	ScrollingFrame_upvr.CanvasSize = UDim2.new(0, 0, 1, -1)
	ScrollingFrame_upvr.AutomaticCanvasSize = Enum.AutomaticSize.X
	ScrollingFrame_upvr.ScrollingDirection = Enum.ScrollingDirection.X
	ScrollingFrame_upvr.ScrollBarThickness = 0
	ScrollingFrame_upvr.BorderSizePixel = 0
	ScrollingFrame_upvr.Selectable = false
	ScrollingFrame_upvr.ScrollingEnabled = false
	ScrollingFrame_upvr.ElasticBehavior = Enum.ElasticBehavior.Never
	ScrollingFrame_upvr.Parent = Frame_upvr
	local UIListLayout_upvr = Instance.new("UIListLayout")
	any_new_result1_upvr:Connect(function() -- Line 183
		--[[ Upvalues[2]:
			[1]: UIListLayout_upvr (readonly)
			[2]: var8_upvw (read and write)
		]]
		UIListLayout_upvr.Padding = UDim.new(0, var8_upvw)
	end)
	UIListLayout_upvr.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_upvr.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_upvr.VerticalAlignment = Enum.VerticalAlignment.Bottom
	UIListLayout_upvr.HorizontalAlignment = Enum.HorizontalAlignment.Left
	UIListLayout_upvr.Parent = ScrollingFrame_upvr
	local clone_upvr = ScrollingFrame_upvr:Clone()
	any_new_result1_upvr:Connect(function() -- Line 193
		--[[ Upvalues[2]:
			[1]: clone_upvr (readonly)
			[2]: var8_upvw (read and write)
		]]
		clone_upvr.UIListLayout.Padding = UDim.new(0, var8_upvw)
	end)
	clone_upvr.ScrollingEnabled = false
	clone_upvr.UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	clone_upvr.Name = "Center"
	clone_upvr.Parent = Holders_upvr
	local clone_upvr_3 = ScrollingFrame_upvr:Clone()
	any_new_result1_upvr:Connect(function() -- Line 202
		--[[ Upvalues[2]:
			[1]: clone_upvr_3 (readonly)
			[2]: var8_upvw (read and write)
		]]
		clone_upvr_3.UIListLayout.Padding = UDim.new(0, var8_upvw)
	end)
	clone_upvr_3.UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
	clone_upvr_3.Name = "Right"
	clone_upvr_3.AnchorPoint = Vector2.new(1, 0)
	clone_upvr_3.Position = UDim2.new(1, -12, 0, 0)
	clone_upvr_3.Parent = Frame_upvr
	any_new_result1_upvr:Fire(any_GetGuiInset_result1_upvw)
	return module
end