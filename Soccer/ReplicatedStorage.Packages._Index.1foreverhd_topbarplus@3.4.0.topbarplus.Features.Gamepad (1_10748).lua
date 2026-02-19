-- Name: Gamepad
-- Path: game:GetService("ReplicatedStorage").Packages._Index.1foreverhd_topbarplus@3.4.0.topbarplus.Features.Gamepad
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.733829799995874 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:22
-- Luau version 6, Types version 3
-- Time taken: 0.012940 seconds

local GamepadService_upvr = game:GetService("GamepadService")
local UserInputService_upvr = game:GetService("UserInputService")
local GuiService_upvr = game:GetService("GuiService")
local module_upvr = {}
local var5_upvw
local DPadUp_upvr = Enum.KeyCode.DPadUp
local Gamepad_upvr = Enum.PreferredInput.Gamepad
function module_upvr.start(arg1) -- Line 26
	--[[ Upvalues[7]:
		[1]: var5_upvw (read and write)
		[2]: DPadUp_upvr (readonly)
		[3]: GuiService_upvr (readonly)
		[4]: UserInputService_upvr (readonly)
		[5]: Gamepad_upvr (readonly)
		[6]: module_upvr (readonly)
		[7]: GamepadService_upvr (readonly)
	]]
	var5_upvw = arg1
	local var8
	if var5_upvw.highlightKey ~= nil then
		var8 = var5_upvw.highlightKey
	else
		var8 = DPadUp_upvr
	end
	var5_upvw.highlightKey = var8
	var8 = false
	var5_upvw.highlightIcon = var8
	var8 = 1
	task.delay(var8, function() -- Line 35
		--[[ Upvalues[7]:
			[1]: var5_upvw (copied, read and write)
			[2]: GuiService_upvr (copied, readonly)
			[3]: DPadUp_upvr (copied, readonly)
			[4]: UserInputService_upvr (copied, readonly)
			[5]: Gamepad_upvr (copied, readonly)
			[6]: module_upvr (copied, readonly)
			[7]: GamepadService_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 22 start (CF ANALYSIS FAILED)
		local iconsDictionary_upvr = var5_upvw.iconsDictionary
		local function _() -- Line 38, Named "getIconFromSelectedObject"
			--[[ Upvalues[2]:
				[1]: GuiService_upvr (copied, readonly)
				[2]: iconsDictionary_upvr (readonly)
			]]
			local var12 = GuiService_upvr.SelectedObject
			if var12 then
				var12 = GuiService_upvr.SelectedObject:GetAttribute("CorrespondingIconUID")
			end
			local var13 = var12
			if var13 then
				var13 = iconsDictionary_upvr[var12]
			end
			return var13
		end
		local var14_upvw
		if DPadUp_upvr == var5_upvw.highlightKey then
			var14_upvw = false
		else
			var14_upvw = true
		end
		if DPadUp_upvr == var5_upvw.highlightKey then
			-- KONSTANTWARNING: GOTO [23] #19
		end
		-- KONSTANTERROR: [0] 1. Error Block 22 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [22] 18. Error Block 24 start (CF ANALYSIS FAILED)
		local var15_upvw = true
		local Selection_upvr = require(script.Parent.Parent.Elements.Selection)
		local var17_upvw
		local function updateSelectedObject_upvr() -- Line 50, Named "updateSelectedObject"
			--[[ Upvalues[10]:
				[1]: GuiService_upvr (copied, readonly)
				[2]: iconsDictionary_upvr (readonly)
				[3]: UserInputService_upvr (copied, readonly)
				[4]: Gamepad_upvr (copied, readonly)
				[5]: Selection_upvr (readonly)
				[6]: var5_upvw (copied, read and write)
				[7]: var17_upvw (read and write)
				[8]: var15_upvw (read and write)
				[9]: var14_upvw (read and write)
				[10]: module_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var19 = GuiService_upvr.SelectedObject
			if var19 then
				var19 = GuiService_upvr.SelectedObject:GetAttribute("CorrespondingIconUID")
			end
			local var20 = var19
			if var20 then
				var20 = iconsDictionary_upvr[var19]
			end
			local var21 = var20
			if UserInputService_upvr.PreferredInput ~= Gamepad_upvr then
				local _ = false
				-- KONSTANTWARNING: Skipped task `defvar` above
			else
			end
			if var21 then
				if true then
					if not var21.selection then
						local any_add_result1 = var21.janitor:add(Selection_upvr(var5_upvw))
						any_add_result1:SetAttribute("IgnoreVisibilityUpdater", true)
						any_add_result1.Parent = var21.widget
						var21.selection = any_add_result1
						var21:refreshAppearance(any_add_result1)
					end
					var21:getInstance("ClickRegion").SelectionImageObject = any_add_result1.Selection
				end
				if var17_upvw and var17_upvw ~= var21 then
					var17_upvw:setIndicator()
					local var24
				end
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if true and not var15_upvw and not var21.parentIconUID then
					var24 = Enum.KeyCode.ButtonB
				else
					var24 = nil
				end
				var17_upvw = var21
				var5_upvw.lastHighlightedIcon = var21
				var21:setIndicator(var24)
				do
					return
				end
				local var25
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if true and not var14_upvw then
				var25 = var5_upvw.highlightKey
			else
				var25 = nil
			end
			if not var17_upvw then
				var17_upvw = module_upvr.getIconToHighlight()
			end
			if var25 == var5_upvw.highlightKey then
				var14_upvw = true
			end
			if var17_upvw then
				var17_upvw:setIndicator(var25)
			end
		end
		GuiService_upvr:GetPropertyChangedSignal("SelectedObject"):Connect(updateSelectedObject_upvr)
		UserInputService_upvr:GetPropertyChangedSignal("PreferredInput"):Connect(function() -- Line 93, Named "preferredInputChanged"
			--[[ Upvalues[5]:
				[1]: UserInputService_upvr (copied, readonly)
				[2]: Gamepad_upvr (copied, readonly)
				[3]: var14_upvw (read and write)
				[4]: var15_upvw (read and write)
				[5]: updateSelectedObject_upvr (readonly)
			]]
			local var26 = UserInputService_upvr
			if var26.PreferredInput ~= Gamepad_upvr then
				var26 = false
			else
				var26 = true
			end
			if not var26 then
				var14_upvw = false
				var15_upvw = false
			end
			updateSelectedObject_upvr()
		end)
		if UserInputService_upvr.PreferredInput ~= Gamepad_upvr then
		else
		end
		if not true then
			var14_upvw = false
			var15_upvw = false
		end
		updateSelectedObject_upvr()
		UserInputService_upvr.InputBegan:Connect(function(arg1_2, arg2) -- Line 109
			--[[ Upvalues[5]:
				[1]: GuiService_upvr (copied, readonly)
				[2]: iconsDictionary_upvr (readonly)
				[3]: var5_upvw (copied, read and write)
				[4]: module_upvr (copied, readonly)
				[5]: GamepadService_upvr (copied, readonly)
			]]
			local var28
			if arg1_2.UserInputType == Enum.UserInputType.MouseButton1 then
				var28 = GuiService_upvr
				var28 = var28.SelectedObject
				if var28 then
					var28 = var28.SelectedObject:GetAttribute("CorrespondingIconUID")
				end
				local var30 = var28
				if var30 then
					var30 = iconsDictionary_upvr[var28]
				end
				if var30 then
					GuiService_upvr.SelectedObject = nil
				end
			else
				if arg1_2.KeyCode ~= var5_upvw.highlightKey then return end
				local any_getIconToHighlight_result1 = module_upvr.getIconToHighlight()
				if any_getIconToHighlight_result1 then
					if GamepadService_upvr.GamepadCursorEnabled then
						task.wait(0.2)
						GamepadService_upvr:DisableGamepadCursor()
					end
					GuiService_upvr.SelectedObject = any_getIconToHighlight_result1:getInstance("ClickRegion")
				end
			end
		end)
		-- KONSTANTERROR: [22] 18. Error Block 24 end (CF ANALYSIS FAILED)
	end)
end
function module_upvr.getIconToHighlight() -- Line 136
	--[[ Upvalues[1]:
		[1]: var5_upvw (read and write)
	]]
	local var38
	if not var38 then
		var38 = var5_upvw.lastHighlightedIcon
	end
	if not var38 then
		local var39
		for _, v in pairs(var5_upvw.iconsDictionary) do
			if not v.parentIconUID and (not var39 or v.widget.AbsolutePosition.X < var39) then
				var38 = v
			end
		end
	end
	return var38
end
function module_upvr.registerButton(arg1) -- Line 158
	--[[ Upvalues[3]:
		[1]: UserInputService_upvr (readonly)
		[2]: GamepadService_upvr (readonly)
		[3]: GuiService_upvr (readonly)
	]]
	local var43_upvw = false
	arg1.InputBegan:Connect(function(arg1_3) -- Line 164
		--[[ Upvalues[1]:
			[1]: var43_upvw (read and write)
		]]
		var43_upvw = true
		task.wait()
		task.wait()
		var43_upvw = false
	end)
	local any_Connect_result1_upvr = UserInputService_upvr.InputBegan:Connect(function(arg1_4) -- Line 173
		--[[ Upvalues[4]:
			[1]: var43_upvw (read and write)
			[2]: GamepadService_upvr (copied, readonly)
			[3]: GuiService_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		task.wait()
		local var49
		if var49 == Enum.KeyCode.ButtonA then
			var49 = var43_upvw
			if var49 then
				var49 = task.wait
				var49(0.2)
				var49 = GamepadService_upvr:DisableGamepadCursor
				var49()
				var49 = GuiService_upvr
				var49.SelectedObject = arg1
				return
			end
		end
		if GuiService_upvr.SelectedObject ~= arg1 then
			var49 = false
		else
			var49 = true
		end
		local Name = arg1_4.KeyCode.Name
		if table.find({"ButtonB", "ButtonSelect"}, Name) and var49 and (Name ~= "ButtonSelect" or GamepadService_upvr.GamepadCursorEnabled) then
			GuiService_upvr.SelectedObject = nil
		end
	end)
	arg1.Destroying:Once(function() -- Line 194
		--[[ Upvalues[1]:
			[1]: any_Connect_result1_upvr (readonly)
		]]
		any_Connect_result1_upvr:Disconnect()
	end)
end
return module_upvr