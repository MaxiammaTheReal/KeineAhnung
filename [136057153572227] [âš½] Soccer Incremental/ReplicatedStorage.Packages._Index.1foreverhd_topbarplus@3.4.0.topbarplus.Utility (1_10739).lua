-- Name: Utility
-- Path: game:GetService("ReplicatedStorage").Packages._Index.1foreverhd_topbarplus@3.4.0.topbarplus.Utility
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.8703961000064737 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:15
-- Luau version 6, Types version 3
-- Time taken: 0.040926 seconds

local module_upvr = {
	createStagger = function(arg1, arg2, arg3) -- Line 13, Named "createStagger"
		local var2_upvw
		if not var2_upvw or var2_upvw == 0 then
			var2_upvw = 0.01
		end
		local var3_upvw = false
		local var4_upvw = false
		local function staggeredCallback_upvr(...) -- Line 29, Named "staggeredCallback"
			--[[ Upvalues[6]:
				[1]: var3_upvw (read and write)
				[2]: var4_upvw (read and write)
				[3]: arg3 (readonly)
				[4]: var2_upvw (read and write)
				[5]: arg2 (readonly)
				[6]: staggeredCallback_upvr (readonly)
			]]
			if var3_upvw then
				var4_upvw = true
			else
				local packed_upvr = table.pack(...)
				var3_upvw = true
				var4_upvw = false
				task.spawn(function() -- Line 37
					--[[ Upvalues[4]:
						[1]: arg3 (copied, readonly)
						[2]: var2_upvw (copied, read and write)
						[3]: arg2 (copied, readonly)
						[4]: packed_upvr (readonly)
					]]
					if arg3 then
						task.wait(var2_upvw)
					end
					arg2(table.unpack(packed_upvr))
				end)
				task.delay(var2_upvw, function() -- Line 43
					--[[ Upvalues[4]:
						[1]: var3_upvw (copied, read and write)
						[2]: var4_upvw (copied, read and write)
						[3]: staggeredCallback_upvr (copied, readonly)
						[4]: packed_upvr (readonly)
					]]
					var3_upvw = false
					if var4_upvw then
						staggeredCallback_upvr(table.unpack(packed_upvr))
					end
				end)
			end
		end
		return staggeredCallback_upvr
	end;
	round = function(arg1) -- Line 55, Named "round"
		return math.floor(arg1 + 0.5)
	end;
	reverseTable = function(arg1) -- Line 60, Named "reverseTable"
		for i = 1, math.floor(#arg1 / 2) do
			local var9 = #arg1 - i + 1
			arg1[i] = arg1[var9]
			arg1[var9] = arg1[i]
		end
	end;
}
function module_upvr.copyTable(arg1) -- Line 67
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var14
	if type(arg1) ~= "table" then
		var14 = false
	else
		var14 = true
	end
	assert(var14, "First argument must be a table")
	var14 = #arg1
	var14 = pairs(arg1)
	for i_2, v in pairs(arg1) do
		if type(v) == "table" then
			table.create(var14)[i_2] = module_upvr.copyTable(v)
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			table.create(var14)[i_2] = v
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return table.create(var14)
end
local tbl_upvr = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '<', '>', '?', '@', '{', '}', '[', ']', '!', '(', ')', '=', '+', '~', '#'}
function module_upvr.generateUID(arg1) -- Line 82
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local var21 = ""
	local var22 = tbl_upvr
	local len = #var22
	for _ = 1, arg1 or 8 do
		var21 = var21..var22[math.random(1, len)]
	end
	return var21
end
local tbl_upvr_2 = {}
function module_upvr.setVisible(arg1, arg2, arg3) -- Line 95
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 17 start (CF ANALYSIS FAILED)
	local var25
	if not var25 then
		var25 = {}
		tbl_upvr_2[arg1] = var25
		arg1.Destroying:Once(function() -- Line 104
			--[[ Upvalues[2]:
				[1]: tbl_upvr_2 (copied, readonly)
				[2]: arg1 (readonly)
			]]
			tbl_upvr_2[arg1] = nil
		end)
	end
	if not arg2 then
		var25[arg3] = true
	else
		var25[arg3] = nil
	end
	-- KONSTANTERROR: [0] 1. Error Block 17 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [28] 25. Error Block 9 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [28] 25. Error Block 9 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [32] 28. Error Block 13 start (CF ANALYSIS FAILED)
	arg1.Visible = false
	-- KONSTANTERROR: [32] 28. Error Block 13 end (CF ANALYSIS FAILED)
end
function module_upvr.formatStateName(arg1) -- Line 123
	return string.upper(string.sub(arg1, 1, 1))..string.lower(string.sub(arg1, 2))
end
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
function module_upvr.localPlayerRespawned(arg1) -- Line 127
	--[[ Upvalues[1]:
		[1]: LocalPlayer_upvr (readonly)
	]]
	LocalPlayer_upvr.CharacterRemoving:Connect(arg1)
end
function module_upvr.getClippedContainer(arg1) -- Line 137
	if not arg1:FindFirstChild("ClippedContainer") then
		local Folder = Instance.new("Folder")
		Folder.Name = "ClippedContainer"
		Folder.Parent = arg1
	end
	return Folder
end
local Janitor_upvr = require(script.Parent.Packages.Janitor)
local GuiService_upvr = game:GetService("GuiService")
function module_upvr.clipOutside(arg1, arg2) -- Line 151
	--[[ Upvalues[3]:
		[1]: Janitor_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: GuiService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 25 start (CF ANALYSIS FAILED)
	local any_add_result1_upvr = arg1.janitor:add(Janitor_upvr.new())
	arg2.Destroying:Once(function() -- Line 153
		--[[ Upvalues[1]:
			[1]: any_add_result1_upvr (readonly)
		]]
		any_add_result1_upvr:Destroy()
	end)
	arg1.janitor:add(arg2)
	local Parent_upvr = arg2.Parent
	local any_add_result1_upvr_2 = any_add_result1_upvr:add(Instance.new("Frame"))
	any_add_result1_upvr_2:SetAttribute("IsAClippedClone", true)
	any_add_result1_upvr_2.Name = arg2.Name
	any_add_result1_upvr_2.AnchorPoint = arg2.AnchorPoint
	any_add_result1_upvr_2.Size = arg2.Size
	any_add_result1_upvr_2.Position = arg2.Position
	any_add_result1_upvr_2.BackgroundTransparency = 1
	any_add_result1_upvr_2.LayoutOrder = arg2.LayoutOrder
	any_add_result1_upvr_2.Parent = Parent_upvr
	local ObjectValue = Instance.new("ObjectValue")
	ObjectValue.Name = "OriginalInstance"
	ObjectValue.Value = arg2
	ObjectValue.Parent = any_add_result1_upvr_2
	local clone = ObjectValue:Clone()
	arg2:SetAttribute("HasAClippedClone", true)
	clone.Name = "ClippedClone"
	clone.Value = any_add_result1_upvr_2
	clone.Parent = arg2
	local var41_upvw
	local iconModule_upvr = require(arg1.iconModule)
	local container_upvr = iconModule_upvr.container
	local function updateScreenGui() -- Line 183
		--[[ Upvalues[5]:
			[1]: Parent_upvr (readonly)
			[2]: var41_upvw (read and write)
			[3]: container_upvr (readonly)
			[4]: arg2 (readonly)
			[5]: module_upvr (copied, readonly)
		]]
		local class_ScreenGui = Parent_upvr:FindFirstAncestorWhichIsA("ScreenGui")
		local var45
		if string.match(class_ScreenGui.Name, "Clipped") then
			var45 = class_ScreenGui
		else
			var45 = container_upvr[class_ScreenGui.Name.."Clipped"]
		end
		var41_upvw = var45
		var45 = arg2
		var45.AnchorPoint = Vector2.new(0, 0)
		var45 = arg2
		var45.Parent = module_upvr.getClippedContainer(var41_upvw)
	end
	any_add_result1_upvr:add(arg1.alignmentChanged:Connect(updateScreenGui))
	updateScreenGui()
	local var49
	for _, v_2 in pairs(arg2:GetChildren()) do
		if v_2:IsA("UIAspectRatioConstraint") then
			v_2:Clone().Parent = any_add_result1_upvr_2
		end
	end
	local widget_upvr = arg1.widget
	local var51_upvw = false
	local IgnoreVisibilityUpdater_upvr = arg2:GetAttribute("IgnoreVisibilityUpdater")
	any_add_result1_upvr:add(widget_upvr:GetPropertyChangedSignal("Visible"):Connect(function() -- Line 205, Named "updateVisibility"
		--[[ Upvalues[5]:
			[1]: IgnoreVisibilityUpdater_upvr (readonly)
			[2]: widget_upvr (readonly)
			[3]: var51_upvw (read and write)
			[4]: module_upvr (copied, readonly)
			[5]: arg2 (readonly)
		]]
		if IgnoreVisibilityUpdater_upvr then
		else
			local Visible_2 = widget_upvr.Visible
			if var51_upvw then
				Visible_2 = false
			end
			module_upvr.setVisible(arg2, Visible_2, "ClipHandler")
		end
	end))
	local var54_upvw
	local function checkIfOutsideParentXBounds_upvr() -- Line 218, Named "checkIfOutsideParentXBounds"
		--[[ Upvalues[10]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: iconModule_upvr (readonly)
			[4]: var51_upvw (read and write)
			[5]: IgnoreVisibilityUpdater_upvr (readonly)
			[6]: widget_upvr (readonly)
			[7]: module_upvr (copied, readonly)
			[8]: var54_upvw (read and write)
			[9]: checkIfOutsideParentXBounds_upvr (readonly)
			[10]: any_add_result1_upvr (readonly)
		]]
		task.defer(function() -- Line 220
			--[[ Upvalues[10]:
				[1]: arg1 (copied, readonly)
				[2]: arg2 (copied, readonly)
				[3]: iconModule_upvr (copied, readonly)
				[4]: var51_upvw (copied, read and write)
				[5]: IgnoreVisibilityUpdater_upvr (copied, readonly)
				[6]: widget_upvr (copied, readonly)
				[7]: module_upvr (copied, readonly)
				[8]: var54_upvw (copied, read and write)
				[9]: checkIfOutsideParentXBounds_upvr (copied, readonly)
				[10]: any_add_result1_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local UID_5 = arg1.UID
			local var78
			if arg2:GetAttribute("ClipToJoinedParent") then
				for _ = 1, 10 do
					local any_getIconByUID_result1_4 = iconModule_upvr.getIconByUID(UID_5)
					if not any_getIconByUID_result1_4 then break end
					local joinedFrame_3 = any_getIconByUID_result1_4.joinedFrame
					if not joinedFrame_3 then break end
					local var81 = joinedFrame_3
					local function INLINED_2() -- Internal function, doesn't exist in bytecode
						var78 = var81.Name
						return var78 == "DropdownScroller"
					end
					if not var81 or INLINED_2() then break end
				end
			end
			if not var81 then
				var51_upvw = false
				if IgnoreVisibilityUpdater_upvr then
				else
					local Visible_3 = widget_upvr.Visible
					if var51_upvw then
						Visible_3 = false
					end
					module_upvr.setVisible(arg2, Visible_3, "ClipHandler")
				end
			end
			local AbsolutePosition_4 = var81.AbsolutePosition
			local AbsoluteSize_2 = var81.AbsoluteSize
			local var85 = arg2.AbsolutePosition + arg2.AbsoluteSize / 2
			if var85.X >= AbsolutePosition_4.X then
				var78 = false
			else
				var78 = true
			end
			if AbsolutePosition_4.X + AbsoluteSize_2.X >= var85.X then
				-- KONSTANTWARNING: GOTO [84] #65
			end
			if var85.Y >= AbsolutePosition_4.Y then
				-- KONSTANTWARNING: GOTO [92] #70
			end
			if AbsolutePosition_4.Y + AbsoluteSize_2.Y >= var85.Y then
			else
			end
			if not var78 then
				if not true then
					if not true then
						local var86 = true
					end
				end
			end
			if var86 ~= var51_upvw then
				var51_upvw = var86
				if IgnoreVisibilityUpdater_upvr then
				else
					local Visible_4 = widget_upvr.Visible
					if var51_upvw then
						Visible_4 = false
					end
					module_upvr.setVisible(arg2, Visible_4, "ClipHandler")
				end
			end
			if var81:IsA("ScrollingFrame") and var54_upvw ~= var81 then
				var54_upvw = var81
				any_add_result1_upvr:add(var81:GetPropertyChangedSignal("AbsoluteWindowSize"):Connect(function() -- Line 265
					--[[ Upvalues[1]:
						[1]: checkIfOutsideParentXBounds_upvr (copied, readonly)
					]]
					checkIfOutsideParentXBounds_upvr()
				end), "Disconnect", "TrackUtilityScroller-"..UID_5)
			end
		end)
	end
	local CurrentCamera_upvr = workspace.CurrentCamera
	local var90_upvr = arg2:GetAttribute("AdditionalOffsetX") or 0
	local function trackProperty(arg1_2) -- Line 275
		--[[ Upvalues[15]:
			[1]: any_add_result1_upvr_2 (readonly)
			[2]: CurrentCamera_upvr (readonly)
			[3]: arg2 (readonly)
			[4]: GuiService_upvr (copied, readonly)
			[5]: var41_upvw (read and write)
			[6]: iconModule_upvr (readonly)
			[7]: var90_upvr (readonly)
			[8]: arg1 (readonly)
			[9]: var51_upvw (read and write)
			[10]: IgnoreVisibilityUpdater_upvr (readonly)
			[11]: widget_upvr (readonly)
			[12]: module_upvr (copied, readonly)
			[13]: var54_upvw (read and write)
			[14]: checkIfOutsideParentXBounds_upvr (readonly)
			[15]: any_add_result1_upvr (readonly)
		]]
		local var91_upvr = "Absolute"..arg1_2
		local function updateProperty() -- Line 277
			--[[ Upvalues[17]:
				[1]: any_add_result1_upvr_2 (copied, readonly)
				[2]: var91_upvr (readonly)
				[3]: arg1_2 (readonly)
				[4]: CurrentCamera_upvr (copied, readonly)
				[5]: arg2 (copied, readonly)
				[6]: GuiService_upvr (copied, readonly)
				[7]: var41_upvw (copied, read and write)
				[8]: iconModule_upvr (copied, readonly)
				[9]: var90_upvr (copied, readonly)
				[10]: arg1 (copied, readonly)
				[11]: var51_upvw (copied, read and write)
				[12]: IgnoreVisibilityUpdater_upvr (copied, readonly)
				[13]: widget_upvr (copied, readonly)
				[14]: module_upvr (copied, readonly)
				[15]: var54_upvw (copied, read and write)
				[16]: checkIfOutsideParentXBounds_upvr (copied, readonly)
				[17]: any_add_result1_upvr (copied, readonly)
			]]
			local var92 = any_add_result1_upvr_2[var91_upvr]
			local udim2 = UDim2.fromOffset(var92.X, var92.Y)
			if arg1_2 == "Position" then
				local var94 = CurrentCamera_upvr.ViewportSize.X - arg2.AbsoluteSize.X - 4
				local Offset = udim2.X.Offset
				if Offset < 4 then
					Offset = 4
				elseif var94 < Offset then
					Offset = var94
				end
				udim2 = UDim2.fromOffset(Offset, udim2.Y.Offset)
				local AbsolutePosition_5 = var41_upvw.AbsolutePosition
				if iconModule_upvr.isOldTopbar then
					AbsolutePosition_5 = AbsolutePosition_5.X
				else
					AbsolutePosition_5 = workspace.CurrentCamera.ViewportSize.X - var41_upvw.AbsoluteSize.X - 0
				end
				udim2 += UDim2.fromOffset(-(AbsolutePosition_5 - var90_upvr), GuiService_upvr.TopbarInset.Height)
				task.defer(function() -- Line 220
					--[[ Upvalues[10]:
						[1]: arg1 (copied, readonly)
						[2]: arg2 (copied, readonly)
						[3]: iconModule_upvr (copied, readonly)
						[4]: var51_upvw (copied, read and write)
						[5]: IgnoreVisibilityUpdater_upvr (copied, readonly)
						[6]: widget_upvr (copied, readonly)
						[7]: module_upvr (copied, readonly)
						[8]: var54_upvw (copied, read and write)
						[9]: checkIfOutsideParentXBounds_upvr (copied, readonly)
						[10]: any_add_result1_upvr (copied, readonly)
					]]
					-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
					local UID_3 = arg1.UID
					local var103
					if arg2:GetAttribute("ClipToJoinedParent") then
						for _ = 1, 10 do
							local any_getIconByUID_result1_5 = iconModule_upvr.getIconByUID(UID_3)
							if not any_getIconByUID_result1_5 then break end
							local joinedFrame_4 = any_getIconByUID_result1_5.joinedFrame
							if not joinedFrame_4 then break end
							local var106 = joinedFrame_4
							local function INLINED_3() -- Internal function, doesn't exist in bytecode
								var103 = var106.Name
								return var103 == "DropdownScroller"
							end
							if not var106 or INLINED_3() then break end
						end
					end
					if not var106 then
						var51_upvw = false
						if IgnoreVisibilityUpdater_upvr then
						else
							local Visible_8 = widget_upvr.Visible
							if var51_upvw then
								Visible_8 = false
							end
							module_upvr.setVisible(arg2, Visible_8, "ClipHandler")
						end
					end
					local AbsolutePosition_3 = var106.AbsolutePosition
					local AbsoluteSize_5 = var106.AbsoluteSize
					local var110 = arg2.AbsolutePosition + arg2.AbsoluteSize / 2
					if var110.X >= AbsolutePosition_3.X then
						var103 = false
					else
						var103 = true
					end
					if AbsolutePosition_3.X + AbsoluteSize_5.X >= var110.X then
						-- KONSTANTWARNING: GOTO [84] #65
					end
					if var110.Y >= AbsolutePosition_3.Y then
						-- KONSTANTWARNING: GOTO [92] #70
					end
					if AbsolutePosition_3.Y + AbsoluteSize_5.Y >= var110.Y then
					else
					end
					if not var103 then
						if not true then
							if not true then
								local var111 = true
							end
						end
					end
					if var111 ~= var51_upvw then
						var51_upvw = var111
						if IgnoreVisibilityUpdater_upvr then
						else
							local Visible_7 = widget_upvr.Visible
							if var51_upvw then
								Visible_7 = false
							end
							module_upvr.setVisible(arg2, Visible_7, "ClipHandler")
						end
					end
					if var106:IsA("ScrollingFrame") and var54_upvw ~= var106 then
						var54_upvw = var106
						any_add_result1_upvr:add(var106:GetPropertyChangedSignal("AbsoluteWindowSize"):Connect(function() -- Line 265
							--[[ Upvalues[1]:
								[1]: checkIfOutsideParentXBounds_upvr (copied, readonly)
							]]
							checkIfOutsideParentXBounds_upvr()
						end), "Disconnect", "TrackUtilityScroller-"..UID_3)
					end
				end)
			end
			arg2[arg1_2] = udim2
		end
		local any_createStagger_result1_upvr = module_upvr.createStagger(0.01, updateProperty)
		any_add_result1_upvr:add(any_add_result1_upvr_2:GetPropertyChangedSignal(var91_upvr):Connect(any_createStagger_result1_upvr))
		any_add_result1_upvr:add(any_add_result1_upvr_2:GetAttributeChangedSignal("ForceUpdate"):Connect(function() -- Line 317
			--[[ Upvalues[1]:
				[1]: any_createStagger_result1_upvr (readonly)
			]]
			any_createStagger_result1_upvr()
		end))
		any_add_result1_upvr:add(any_add_result1_upvr_2:GetPropertyChangedSignal(var91_upvr):Connect(module_upvr.createStagger(0.5, updateProperty, true)))
		if arg1_2 == "Position" then
			any_add_result1_upvr:add(var41_upvw:GetPropertyChangedSignal("AbsoluteSize"):Connect(function() -- Line 336
				--[[ Upvalues[1]:
					[1]: any_createStagger_result1_upvr (readonly)
				]]
				any_createStagger_result1_upvr()
			end))
		end
	end
	var49 = task.delay
	var49(0.1, checkIfOutsideParentXBounds_upvr)
	var49 = task.defer
	var49(function() -- Line 220
		--[[ Upvalues[10]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: iconModule_upvr (readonly)
			[4]: var51_upvw (read and write)
			[5]: IgnoreVisibilityUpdater_upvr (readonly)
			[6]: widget_upvr (readonly)
			[7]: module_upvr (copied, readonly)
			[8]: var54_upvw (read and write)
			[9]: checkIfOutsideParentXBounds_upvr (readonly)
			[10]: any_add_result1_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local UID_4 = arg1.UID
		local var123
		if arg2:GetAttribute("ClipToJoinedParent") then
			for _ = 1, 10 do
				local any_getIconByUID_result1_3 = iconModule_upvr.getIconByUID(UID_4)
				if not any_getIconByUID_result1_3 then break end
				local joinedFrame_2 = any_getIconByUID_result1_3.joinedFrame
				if not joinedFrame_2 then break end
				local var126 = joinedFrame_2
				local function INLINED_4() -- Internal function, doesn't exist in bytecode
					var123 = var126.Name
					return var123 == "DropdownScroller"
				end
				if not var126 or INLINED_4() then break end
			end
		end
		if not var126 then
			var51_upvw = false
			if IgnoreVisibilityUpdater_upvr then
			else
				local Visible = widget_upvr.Visible
				if var51_upvw then
					Visible = false
				end
				module_upvr.setVisible(arg2, Visible, "ClipHandler")
			end
		end
		local AbsolutePosition_2 = var126.AbsolutePosition
		local AbsoluteSize_4 = var126.AbsoluteSize
		local var130 = arg2.AbsolutePosition + arg2.AbsoluteSize / 2
		if var130.X >= AbsolutePosition_2.X then
			var123 = false
		else
			var123 = true
		end
		if AbsolutePosition_2.X + AbsoluteSize_4.X >= var130.X then
			-- KONSTANTWARNING: GOTO [84] #65
		end
		if var130.Y >= AbsolutePosition_2.Y then
			-- KONSTANTWARNING: GOTO [92] #70
		end
		if AbsolutePosition_2.Y + AbsoluteSize_4.Y >= var130.Y then
		else
		end
		if not var123 then
			if not true then
				if not true then
					local var131 = true
				end
			end
		end
		if var131 ~= var51_upvw then
			var51_upvw = var131
			if IgnoreVisibilityUpdater_upvr then
			else
				local Visible_6 = widget_upvr.Visible
				if var51_upvw then
					Visible_6 = false
				end
				module_upvr.setVisible(arg2, Visible_6, "ClipHandler")
			end
		end
		if var126:IsA("ScrollingFrame") and var54_upvw ~= var126 then
			var54_upvw = var126
			any_add_result1_upvr:add(var126:GetPropertyChangedSignal("AbsoluteWindowSize"):Connect(function() -- Line 265
				--[[ Upvalues[1]:
					[1]: checkIfOutsideParentXBounds_upvr (copied, readonly)
				]]
				checkIfOutsideParentXBounds_upvr()
			end), "Disconnect", "TrackUtilityScroller-"..UID_4)
		end
	end)
	if IgnoreVisibilityUpdater_upvr then
		-- KONSTANTWARNING: GOTO [224] #169
	end
	-- KONSTANTERROR: [0] 1. Error Block 25 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [213] 160. Error Block 21 start (CF ANALYSIS FAILED)
	var49 = widget_upvr.Visible
	if var51_upvw then
		var49 = false
	end
	module_upvr.setVisible(arg2, var49, "ClipHandler")
	var49 = trackProperty
	var49("Position")
	var49 = any_add_result1_upvr:add
	var49(arg2:GetPropertyChangedSignal("Visible"):Connect(function() -- Line 348
	end))
	var49 = arg2:GetAttribute("TrackCloneSize")
	if var49 then
		trackProperty("Size")
	else
		any_add_result1_upvr:add(arg2:GetPropertyChangedSignal("AbsoluteSize"):Connect(function() -- Line 358
			--[[ Upvalues[2]:
				[1]: arg2 (readonly)
				[2]: any_add_result1_upvr_2 (readonly)
			]]
			local AbsoluteSize_3 = arg2.AbsoluteSize
			any_add_result1_upvr_2.Size = UDim2.fromOffset(AbsoluteSize_3.X, AbsoluteSize_3.Y)
		end))
	end
	do
		return any_add_result1_upvr_2
	end
	-- KONSTANTERROR: [213] 160. Error Block 21 end (CF ANALYSIS FAILED)
end
function module_upvr.joinFeature(arg1, arg2, arg3, arg4) -- Line 367
	local joinJanitor = arg1.joinJanitor
	joinJanitor:clean()
	if not arg4 then
		arg1:leave()
	else
		arg1.parentIconUID = arg2.UID
		arg1.joinedFrame = arg4
		joinJanitor:add(arg2.alignmentChanged:Connect(function() -- Line 378, Named "updateAlignent"
			--[[ Upvalues[2]:
				[1]: arg2 (readonly)
				[2]: arg1 (readonly)
			]]
			local alignment = arg2.alignment
			if alignment == "Center" then
				alignment = "Left"
			end
			arg1:setAlignment(alignment, true)
		end))
		local alignment_2 = arg2.alignment
		if alignment_2 == "Center" then
			alignment_2 = "Left"
		end
		arg1:setAlignment(alignment_2, true)
		arg1:modifyTheme({"IconButton", "BackgroundTransparency", 1}, "JoinModification")
		arg1:modifyTheme({"ClickRegion", "Active", false}, "JoinModification")
		if arg2.childModifications then
			task.defer(function() -- Line 393
				--[[ Upvalues[2]:
					[1]: arg1 (readonly)
					[2]: arg2 (readonly)
				]]
				arg1:modifyTheme(arg2.childModifications, arg2.childModificationsUID)
			end)
		end
		local any_getInstance_result1_upvr = arg1:getInstance("ClickRegion")
		local function makeSelectable() -- Line 399
			--[[ Upvalues[2]:
				[1]: any_getInstance_result1_upvr (readonly)
				[2]: arg2 (readonly)
			]]
			any_getInstance_result1_upvr.Selectable = arg2.isSelected
		end
		joinJanitor:add(arg2.toggled:Connect(makeSelectable))
		task.defer(makeSelectable)
		joinJanitor:add(function() -- Line 404
			--[[ Upvalues[1]:
				[1]: any_getInstance_result1_upvr (readonly)
			]]
			any_getInstance_result1_upvr.Selectable = true
		end)
		local UID_2_upvr = arg1.UID
		table.insert(arg3, UID_2_upvr)
		arg2:autoDeselect(false)
		arg2.childIconsDict[UID_2_upvr] = true
		if not arg2.isEnabled then
			arg2:setEnabled(true)
		end
		arg1.joinedParent:Fire(arg2)
		joinJanitor:add(function() -- Line 422
			--[[ Upvalues[4]:
				[1]: arg1 (readonly)
				[2]: arg3 (readonly)
				[3]: UID_2_upvr (readonly)
				[4]: arg2 (readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 23 start (CF ANALYSIS FAILED)
			if not arg1.joinedFrame then return end
			local pairs_result1_2, pairs_result2_3, pairs_result3_2 = pairs(arg3)
			-- KONSTANTERROR: [0] 1. Error Block 23 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [19] 16. Error Block 6 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [19] 16. Error Block 6 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [10] 9. Error Block 29 start (CF ANALYSIS FAILED)
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [19.5]
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [19.6]
			if nil == nil then
				local any_getIconByUID_result1_2 = require(arg1.iconModule).getIconByUID(arg1.parentIconUID)
				if not any_getIconByUID_result1_2 then return end
				arg1:setAlignment(arg1.originalAlignment)
				arg1.parentIconUID = false
				arg1.joinedFrame = false
				arg1:removeModification("JoinModification")
				local childIconsDict = any_getIconByUID_result1_2.childIconsDict
				childIconsDict[UID_2_upvr] = nil
				local _, _, _ = pairs(childIconsDict)
				-- KONSTANTWARNING: GOTO [66] #51
			end
			-- KONSTANTERROR: [10] 9. Error Block 29 end (CF ANALYSIS FAILED)
		end)
	end
end
return module_upvr