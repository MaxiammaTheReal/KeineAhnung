-- Name: topbarplus
-- Path: game:GetService("ReplicatedStorage").Packages._Index.1foreverhd_topbarplus@3.4.0.topbarplus
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.9413654000018141 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:11
-- Luau version 6, Types version 3
-- Time taken: 0.059182 seconds

local script_upvr = script
local Reference = require(script_upvr.Reference)
local any_getObject_result1 = Reference.getObject()
local var4
if var4 then
	var4 = any_getObject_result1.Value
end
if var4 and var4 ~= script_upvr then
	return require(var4)
end
if not any_getObject_result1 then
	Reference.addToReplicatedStorage()
end
local GoodSignal_upvr = require(script_upvr.Packages.GoodSignal)
local Utility_upvr = require(script_upvr.Utility)
local Themes_upvr = require(script_upvr.Features.Themes)
local module_3_upvr = {}
module_3_upvr.__index = module_3_upvr
local tbl_4_upvr = {}
local any_new_result1_2_upvr = GoodSignal_upvr.new()
local Elements_upvr = script_upvr.Elements
local tbl_11_upvr = {
	mobile = Enum.PreferredInput.Touch;
	desktop = Enum.PreferredInput.KeyboardAndMouse;
	console = Enum.PreferredInput.Gamepad;
}
module_3_upvr.baseDisplayOrderChanged = GoodSignal_upvr.new()
module_3_upvr.baseDisplayOrder = 10
module_3_upvr.baseTheme = require(script_upvr.Features.Themes.Default)
module_3_upvr.isOldTopbar = false
module_3_upvr.iconsDictionary = tbl_4_upvr
module_3_upvr.insetHeightChanged = GoodSignal_upvr.new()
module_3_upvr.container = require(Elements_upvr.Container)(module_3_upvr)
module_3_upvr.topbarEnabled = true
module_3_upvr.iconAdded = GoodSignal_upvr.new()
module_3_upvr.iconRemoved = GoodSignal_upvr.new()
module_3_upvr.iconChanged = GoodSignal_upvr.new()
function module_3_upvr.getIcons() -- Line 110
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	return module_3_upvr.iconsDictionary
end
function module_3_upvr.getIconByUID(arg1) -- Line 114
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	local var13 = module_3_upvr.iconsDictionary[arg1]
	if var13 then
		return var13
	end
	return nil
end
function module_3_upvr.getIcon(arg1) -- Line 122
	--[[ Upvalues[2]:
		[1]: module_3_upvr (readonly)
		[2]: tbl_4_upvr (readonly)
	]]
	local any_getIconByUID_result1 = module_3_upvr.getIconByUID(arg1)
	if any_getIconByUID_result1 then
		return any_getIconByUID_result1
	end
	for _, v in pairs(tbl_4_upvr) do
		if v.name == arg1 then
			return v
		end
	end
	return nil
end
function module_3_upvr.setTopbarEnabled(arg1, arg2) -- Line 135
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	local var24
	if typeof(arg1) ~= "boolean" then
		var24 = module_3_upvr.topbarEnabled
	end
	if not arg2 then
		module_3_upvr.topbarEnabled = var24
	end
	for _, v_2 in pairs(module_3_upvr.container) do
		v_2.Enabled = var24
	end
end
function module_3_upvr.modifyBaseTheme(arg1) -- Line 147
	--[[ Upvalues[3]:
		[1]: Themes_upvr (readonly)
		[2]: module_3_upvr (readonly)
		[3]: tbl_4_upvr (readonly)
	]]
	for _, v_3 in pairs(Themes_upvr.getModifications(arg1)) do
		for _, v_4 in pairs(module_3_upvr.baseTheme) do
			Themes_upvr.merge(v_4, v_3)
		end
	end
	for _, v_5 in pairs(tbl_4_upvr) do
		v_5:setTheme(module_3_upvr.baseTheme)
	end
end
function module_3_upvr.setDisplayOrder(arg1) -- Line 159
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	module_3_upvr.baseDisplayOrder = arg1
	module_3_upvr.baseDisplayOrderChanged:Fire(arg1)
end
task.defer(require(script_upvr.Features.Gamepad).start, module_3_upvr)
task.defer(require(script_upvr.Features.Overflow).start, module_3_upvr)
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
task.defer(function() -- Line 169
	--[[ Upvalues[3]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: module_3_upvr (readonly)
		[3]: script_upvr (readonly)
	]]
	local PlayerGui = LocalPlayer_upvr:WaitForChild("PlayerGui")
	for _, v_6 in pairs(module_3_upvr.container) do
		v_6.Parent = PlayerGui
	end
	require(script_upvr.Attribute)
end)
local Janitor_upvr = require(script_upvr.Packages.Janitor)
local var54_upvw = 0
local UserInputService_upvr = game:GetService("UserInputService")
local StarterGui_upvr = game:GetService("StarterGui")
function module_3_upvr.new() -- Line 180
	--[[ Upvalues[12]:
		[1]: module_3_upvr (readonly)
		[2]: Janitor_upvr (readonly)
		[3]: Utility_upvr (readonly)
		[4]: tbl_4_upvr (readonly)
		[5]: GoodSignal_upvr (readonly)
		[6]: script_upvr (readonly)
		[7]: Elements_upvr (readonly)
		[8]: var54_upvw (read and write)
		[9]: UserInputService_upvr (readonly)
		[10]: tbl_11_upvr (readonly)
		[11]: any_new_result1_2_upvr (readonly)
		[12]: StarterGui_upvr (readonly)
	]]
	local module_2_upvr = {}
	setmetatable(module_2_upvr, module_3_upvr)
	local any_new_result1 = Janitor_upvr.new()
	module_2_upvr.janitor = any_new_result1
	module_2_upvr.themesJanitor = any_new_result1:add(Janitor_upvr.new())
	module_2_upvr.singleClickJanitor = any_new_result1:add(Janitor_upvr.new())
	module_2_upvr.captionJanitor = any_new_result1:add(Janitor_upvr.new())
	module_2_upvr.joinJanitor = any_new_result1:add(Janitor_upvr.new())
	module_2_upvr.menuJanitor = any_new_result1:add(Janitor_upvr.new())
	module_2_upvr.dropdownJanitor = any_new_result1:add(Janitor_upvr.new())
	local any_generateUID_result1_upvr = Utility_upvr.generateUID()
	tbl_4_upvr[any_generateUID_result1_upvr] = module_2_upvr
	any_new_result1:add(function() -- Line 197
		--[[ Upvalues[2]:
			[1]: tbl_4_upvr (copied, readonly)
			[2]: any_generateUID_result1_upvr (readonly)
		]]
		tbl_4_upvr[any_generateUID_result1_upvr] = nil
	end)
	module_2_upvr.selected = any_new_result1:add(GoodSignal_upvr.new())
	module_2_upvr.deselected = any_new_result1:add(GoodSignal_upvr.new())
	module_2_upvr.toggled = any_new_result1:add(GoodSignal_upvr.new())
	module_2_upvr.viewingStarted = any_new_result1:add(GoodSignal_upvr.new())
	module_2_upvr.viewingEnded = any_new_result1:add(GoodSignal_upvr.new())
	module_2_upvr.stateChanged = any_new_result1:add(GoodSignal_upvr.new())
	module_2_upvr.notified = any_new_result1:add(GoodSignal_upvr.new())
	module_2_upvr.noticeStarted = any_new_result1:add(GoodSignal_upvr.new())
	module_2_upvr.noticeChanged = any_new_result1:add(GoodSignal_upvr.new())
	module_2_upvr.endNotices = any_new_result1:add(GoodSignal_upvr.new())
	module_2_upvr.toggleKeyAdded = any_new_result1:add(GoodSignal_upvr.new())
	module_2_upvr.fakeToggleKeyChanged = any_new_result1:add(GoodSignal_upvr.new())
	module_2_upvr.alignmentChanged = any_new_result1:add(GoodSignal_upvr.new())
	module_2_upvr.updateSize = any_new_result1:add(GoodSignal_upvr.new())
	module_2_upvr.resizingComplete = any_new_result1:add(GoodSignal_upvr.new())
	module_2_upvr.joinedParent = any_new_result1:add(GoodSignal_upvr.new())
	module_2_upvr.menuSet = any_new_result1:add(GoodSignal_upvr.new())
	module_2_upvr.dropdownSet = any_new_result1:add(GoodSignal_upvr.new())
	module_2_upvr.updateMenu = any_new_result1:add(GoodSignal_upvr.new())
	module_2_upvr.startMenuUpdate = any_new_result1:add(GoodSignal_upvr.new())
	module_2_upvr.childThemeModified = any_new_result1:add(GoodSignal_upvr.new())
	module_2_upvr.indicatorSet = any_new_result1:add(GoodSignal_upvr.new())
	module_2_upvr.dropdownChildAdded = any_new_result1:add(GoodSignal_upvr.new())
	module_2_upvr.menuChildAdded = any_new_result1:add(GoodSignal_upvr.new())
	module_2_upvr.iconModule = script_upvr
	module_2_upvr.UID = any_generateUID_result1_upvr
	module_2_upvr.isEnabled = true
	module_2_upvr.enabled = module_2_upvr.isEnabled
	module_2_upvr.isSelected = false
	module_2_upvr.isViewing = false
	module_2_upvr.joinedFrame = false
	module_2_upvr.parentIconUID = false
	module_2_upvr.deselectWhenOtherIconSelected = true
	module_2_upvr.totalNotices = 0
	module_2_upvr.activeState = "Deselected"
	module_2_upvr.alignment = ""
	module_2_upvr.originalAlignment = ""
	module_2_upvr.appliedTheme = {}
	module_2_upvr.appearance = {}
	module_2_upvr.cachedInstances = {}
	module_2_upvr.cachedNamesToInstances = {}
	module_2_upvr.cachedCollectives = {}
	module_2_upvr.bindedToggleKeys = {}
	module_2_upvr.customBehaviours = {}
	module_2_upvr.toggleItems = {}
	module_2_upvr.bindedEvents = {}
	module_2_upvr.notices = {}
	module_2_upvr.menuIcons = {}
	module_2_upvr.dropdownIcons = {}
	module_2_upvr.childIconsDict = {}
	module_2_upvr.creationTime = os.clock()
	module_2_upvr.widget = any_new_result1:add(require(Elements_upvr.Widget)(module_2_upvr, module_3_upvr))
	module_2_upvr:setAlignment()
	var54_upvw += 1
	local var65 = var54_upvw * 0.01 + 1
	module_2_upvr:setOrder(var65, "deselected")
	module_2_upvr:setOrder(var65, "selected")
	module_2_upvr:setTheme(module_3_upvr.baseTheme)
	local any_getInstance_result1_3 = module_2_upvr:getInstance("ClickRegion")
	local var67_upvw = false
	local var68_upvw = 0
	local function _() -- Line 277, Named "handleToggle"
		--[[ Upvalues[2]:
			[1]: module_2_upvr (readonly)
			[2]: var68_upvw (read and write)
		]]
		if module_2_upvr.locked then
		else
			local tick_result1_4 = tick()
			if tick_result1_4 - var68_upvw < 0.1 then return end
			var68_upvw = tick_result1_4
			if module_2_upvr.isSelected then
				module_2_upvr:deselect("User", module_2_upvr)
				return
			end
			module_2_upvr:select("User", module_2_upvr)
		end
	end
	any_getInstance_result1_3.MouseButton1Click:Connect(function() -- Line 296
		--[[ Upvalues[3]:
			[1]: var67_upvw (read and write)
			[2]: module_2_upvr (readonly)
			[3]: var68_upvw (read and write)
		]]
		var67_upvw = true
		if module_2_upvr.locked then
		else
			local tick_result1_2 = tick()
			if tick_result1_2 - var68_upvw < 0.1 then return end
			var68_upvw = tick_result1_2
			if module_2_upvr.isSelected then
				module_2_upvr:deselect("User", module_2_upvr)
				return
			end
			module_2_upvr:select("User", module_2_upvr)
		end
	end)
	any_getInstance_result1_3.TouchTap:Connect(function() -- Line 301
		--[[ Upvalues[3]:
			[1]: var67_upvw (read and write)
			[2]: module_2_upvr (readonly)
			[3]: var68_upvw (read and write)
		]]
		if not var67_upvw then
			if module_2_upvr.locked then return end
			local tick_result1 = tick()
			if tick_result1 - var68_upvw < 0.1 then return end
			var68_upvw = tick_result1
			if module_2_upvr.isSelected then
				module_2_upvr:deselect("User", module_2_upvr)
				return
			end
			module_2_upvr:select("User", module_2_upvr)
		end
	end)
	any_new_result1:add(UserInputService_upvr.InputBegan:Connect(function(arg1, arg2) -- Line 314
		--[[ Upvalues[2]:
			[1]: module_2_upvr (readonly)
			[2]: var68_upvw (read and write)
		]]
		if module_2_upvr.locked then
		elseif module_2_upvr.bindedToggleKeys[arg1.KeyCode] and not arg2 then
			if module_2_upvr.locked then return end
			local tick_result1_3 = tick()
			if tick_result1_3 - var68_upvw < 0.1 then return end
			var68_upvw = tick_result1_3
			if module_2_upvr.isSelected then
				module_2_upvr:deselect("User", module_2_upvr)
				return
			end
			module_2_upvr:select("User", module_2_upvr)
		end
	end))
	local function viewingEnded() -- Line 336
		--[[ Upvalues[1]:
			[1]: module_2_upvr (readonly)
		]]
		if module_2_upvr.locked then
		else
			module_2_upvr.isViewing = false
			module_2_upvr.viewingEnded:Fire(true)
			module_2_upvr:setState(nil, "User", module_2_upvr)
		end
	end
	module_2_upvr.joinedParent:Connect(function() -- Line 344
		--[[ Upvalues[1]:
			[1]: module_2_upvr (readonly)
		]]
		if module_2_upvr.isViewing then
			if module_2_upvr.locked then return end
			module_2_upvr.isViewing = false
			module_2_upvr.viewingEnded:Fire(true)
			module_2_upvr:setState(nil, "User", module_2_upvr)
		end
	end)
	any_getInstance_result1_3.MouseEnter:Connect(function() -- Line 349
		--[[ Upvalues[3]:
			[1]: UserInputService_upvr (copied, readonly)
			[2]: tbl_11_upvr (copied, readonly)
			[3]: module_2_upvr (readonly)
		]]
		local var78
		if UserInputService_upvr.PreferredInput == tbl_11_upvr.desktop then
			var78 = false
		else
			var78 = true
		end
		if module_2_upvr.locked then
		else
			module_2_upvr.isViewing = true
			module_2_upvr.viewingStarted:Fire(true)
			if not var78 then
				module_2_upvr:setState("Viewing", "User", module_2_upvr)
			end
		end
	end)
	local var79_upvw = 0
	any_new_result1:add(UserInputService_upvr.TouchEnded:Connect(viewingEnded))
	any_getInstance_result1_3.MouseLeave:Connect(viewingEnded)
	any_getInstance_result1_3.SelectionGained:Connect(function(arg1) -- Line 326, Named "viewingStarted"
		--[[ Upvalues[1]:
			[1]: module_2_upvr (readonly)
		]]
		if module_2_upvr.locked then
		else
			module_2_upvr.isViewing = true
			module_2_upvr.viewingStarted:Fire(true)
			if not arg1 then
				module_2_upvr:setState("Viewing", "User", module_2_upvr)
			end
		end
	end)
	any_getInstance_result1_3.SelectionLost:Connect(viewingEnded)
	any_getInstance_result1_3.MouseButton1Down:Connect(function() -- Line 358
		--[[ Upvalues[4]:
			[1]: module_2_upvr (readonly)
			[2]: UserInputService_upvr (copied, readonly)
			[3]: tbl_11_upvr (copied, readonly)
			[4]: var79_upvw (read and write)
		]]
		if not module_2_upvr.locked and UserInputService_upvr.PreferredInput == tbl_11_upvr.mobile then
			var79_upvw += 1
			task.delay(0.2, function() -- Line 362
				--[[ Upvalues[3]:
					[1]: var79_upvw (readonly)
					[2]: var79_upvw (copied, read and write)
					[3]: module_2_upvr (copied, readonly)
				]]
				if var79_upvw == var79_upvw then
					if module_2_upvr.locked then return end
					module_2_upvr.isViewing = true
					module_2_upvr.viewingStarted:Fire(true)
					module_2_upvr:setState("Viewing", "User", module_2_upvr)
				end
			end)
		end
	end)
	any_getInstance_result1_3.MouseButton1Up:Connect(function() -- Line 369
		--[[ Upvalues[1]:
			[1]: var79_upvw (read and write)
		]]
		var79_upvw += 1
	end)
	local any_getInstance_result1_4_upvr = module_2_upvr:getInstance("IconOverlay")
	module_2_upvr.viewingStarted:Connect(function() -- Line 375
		--[[ Upvalues[2]:
			[1]: any_getInstance_result1_4_upvr (readonly)
			[2]: module_2_upvr (readonly)
		]]
		any_getInstance_result1_4_upvr.Visible = not module_2_upvr.overlayDisabled
	end)
	module_2_upvr.viewingEnded:Connect(function() -- Line 378
		--[[ Upvalues[1]:
			[1]: any_getInstance_result1_4_upvr (readonly)
		]]
		any_getInstance_result1_4_upvr.Visible = false
	end)
	any_new_result1:add(any_new_result1_2_upvr:Connect(function(arg1) -- Line 383
		--[[ Upvalues[1]:
			[1]: module_2_upvr (readonly)
		]]
		if arg1 ~= module_2_upvr and module_2_upvr.deselectWhenOtherIconSelected and arg1.deselectWhenOtherIconSelected then
			module_2_upvr:deselect("AutoDeselect", arg1)
		end
	end))
	local var90
	for _, v_7 in pairs(string.split(debug.info(2, 's'), '.')) do
		local SOME = game:FindFirstChild(v_7)
		if not SOME then break end
		if SOME:IsA("ScreenGui") then
			var90 = SOME
		end
	end
	if SOME and var90 and var90.ResetOnSpawn == true then
		module_2_upvr.originsScreenGui = var90
		Utility_upvr.localPlayerRespawned(function() -- Line 409
			--[[ Upvalues[1]:
				[1]: module_2_upvr (readonly)
			]]
			module_2_upvr:destroy()
		end)
	end
	module_2_upvr.toggled:Connect(function(arg1) -- Line 415
		--[[ Upvalues[2]:
			[1]: module_2_upvr (readonly)
			[2]: module_3_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		module_2_upvr.noticeChanged:Fire(module_2_upvr.totalNotices)
		for i_8, _ in pairs(module_2_upvr.childIconsDict) do
			local any_getIconByUID_result1_3 = module_3_upvr.getIconByUID(i_8)
			any_getIconByUID_result1_3.noticeChanged:Fire(any_getIconByUID_result1_3.totalNotices)
			if not arg1 and any_getIconByUID_result1_3.isSelected then
				for _, _ in pairs(any_getIconByUID_result1_3.childIconsDict) do
					any_getIconByUID_result1_3:deselect("HideParentFeature", module_2_upvr)
				end
			end
		end
	end)
	module_2_upvr.selected:Connect(function() -- Line 438
		--[[ Upvalues[2]:
			[1]: module_2_upvr (readonly)
			[2]: StarterGui_upvr (copied, readonly)
		]]
		local var118
		if 0 >= #module_2_upvr.dropdownIcons then
			var118 = false
		else
			var118 = true
		end
		if var118 then
			if StarterGui_upvr:GetCore("ChatActive") and module_2_upvr.alignment ~= "Right" then
				module_2_upvr.chatWasPreviouslyActive = true
				StarterGui_upvr:SetCore("ChatActive", false)
			end
			if StarterGui_upvr:GetCoreGuiEnabled("PlayerList") and module_2_upvr.alignment ~= "Left" then
				module_2_upvr.playerlistWasPreviouslyActive = true
				StarterGui_upvr:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
			end
		end
	end)
	module_2_upvr.deselected:Connect(function() -- Line 451
		--[[ Upvalues[2]:
			[1]: module_2_upvr (readonly)
			[2]: StarterGui_upvr (copied, readonly)
		]]
		if module_2_upvr.chatWasPreviouslyActive then
			module_2_upvr.chatWasPreviouslyActive = nil
			StarterGui_upvr:SetCore("ChatActive", true)
		end
		if module_2_upvr.playerlistWasPreviouslyActive then
			module_2_upvr.playerlistWasPreviouslyActive = nil
			StarterGui_upvr:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true)
		end
	end)
	task.delay(0.1, function() -- Line 465
		--[[ Upvalues[1]:
			[1]: module_2_upvr (readonly)
		]]
		if module_2_upvr.activeState == "Deselected" then
			module_2_upvr.stateChanged:Fire("Deselected")
			module_2_upvr:refresh()
		end
	end)
	module_3_upvr.iconAdded:Fire(module_2_upvr)
	return module_2_upvr
end
function module_3_upvr.setName(arg1, arg2) -- Line 481
	arg1.widget.Name = arg2
	arg1.name = arg2
	return arg1
end
function module_3_upvr.setState(arg1, arg2, arg3, arg4) -- Line 487
	--[[ Upvalues[2]:
		[1]: Utility_upvr (readonly)
		[2]: any_new_result1_2_upvr (readonly)
	]]
	if not arg2 then
		if arg1.isSelected then
		else
		end
	end
	local any_formatStateName_result1 = Utility_upvr.formatStateName("Deselected")
	if arg1.activeState == any_formatStateName_result1 then
	else
		arg1.activeState = any_formatStateName_result1
		if any_formatStateName_result1 == "Deselected" then
			arg1.isSelected = false
			if arg1.isSelected then
				arg1.toggled:Fire(false, arg3, arg4)
				arg1.deselected:Fire(arg3, arg4)
			end
			arg1:_setToggleItemsVisible(false, arg3, arg4)
		elseif any_formatStateName_result1 == "Selected" then
			arg1.isSelected = true
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if not arg1.isSelected then
				arg1.toggled:Fire(true, arg3, arg4)
				arg1.selected:Fire(arg3, arg4)
				any_new_result1_2_upvr:Fire(arg1, arg3, arg4)
			end
			arg1:_setToggleItemsVisible(true, arg3, arg4)
		end
		arg1.stateChanged:Fire(any_formatStateName_result1, arg3, arg4)
	end
end
function module_3_upvr.getInstance(arg1, arg2) -- Line 520
	--[[ Upvalues[1]:
		[1]: Themes_upvr (readonly)
	]]
	local var122 = arg1.cachedNamesToInstances[arg2]
	if var122 then
		return var122
	end
	local function cacheInstance_upvr(arg1_2, arg2_2) -- Line 528, Named "cacheInstance"
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var123
		if not arg1.cachedInstances[arg2_2] then
			local Collective = arg2_2:GetAttribute("Collective")
			var123 = Collective
			if var123 then
				var123 = arg1.cachedCollectives[Collective]
			end
			if var123 then
				table.insert(var123, arg2_2)
			end
			arg1.cachedNamesToInstances[arg1_2] = arg2_2
			arg1.cachedInstances[arg2_2] = true
			arg2_2.Destroying:Once(function() -- Line 538
				--[[ Upvalues[3]:
					[1]: arg1 (copied, readonly)
					[2]: arg1_2 (readonly)
					[3]: arg2_2 (readonly)
				]]
				arg1.cachedNamesToInstances[arg1_2] = nil
				arg1.cachedInstances[arg2_2] = nil
			end)
		end
	end
	local widget = arg1.widget
	cacheInstance_upvr("Widget", widget)
	if arg2 == "Widget" then
		return widget
	end
	local var127_upvw
	local function scanChildren_upvr(arg1_3) -- Line 551, Named "scanChildren"
		--[[ Upvalues[6]:
			[1]: arg1 (readonly)
			[2]: Themes_upvr (copied, readonly)
			[3]: scanChildren_upvr (readonly)
			[4]: cacheInstance_upvr (readonly)
			[5]: arg2 (readonly)
			[6]: var127_upvw (read and write)
		]]
		for _, v_10 in pairs(arg1_3:GetChildren()) do
			local WidgetUID = v_10:GetAttribute("WidgetUID")
			if not WidgetUID or WidgetUID == arg1.UID then
				local any_getRealInstance_result1 = Themes_upvr.getRealInstance(v_10)
				if any_getRealInstance_result1 then
					v_10 = any_getRealInstance_result1
				end
				scanChildren_upvr(v_10)
				if v_10:IsA("GuiBase") or v_10:IsA("UIBase") or v_10:IsA("ValueBase") then
					local Name = v_10.Name
					cacheInstance_upvr(Name, v_10)
					if Name == arg2 then
						var127_upvw = v_10
					end
				end
			end
		end
	end
	scanChildren_upvr(widget)
	return var127_upvw
end
function module_3_upvr.getCollective(arg1, arg2) -- Line 580
	local var138 = arg1.cachedCollectives[arg2]
	if var138 then
		return var138
	end
	local module = {}
	for i_11, _ in pairs(arg1.cachedInstances) do
		if i_11:GetAttribute("Collective") == arg2 then
			table.insert(module, i_11)
		end
	end
	arg1.cachedCollectives[arg2] = module
	return module
end
function module_3_upvr.getInstanceOrCollective(arg1, arg2) -- Line 601
	local any_getInstance_result1 = arg1:getInstance(arg2)
	local var144
	if any_getInstance_result1 then
		table.insert(var144, any_getInstance_result1)
	end
	if #var144 == 0 then
		var144 = arg1:getCollective(arg2)
	end
	return var144
end
function module_3_upvr.getStateGroup(arg1, arg2) -- Line 615
	local var145 = arg2
	if not var145 then
		var145 = arg1.activeState
	end
	local var146 = arg1.appearance[var145]
	if not var146 then
		var146 = {}
		arg1.appearance[var145] = var146
	end
	return var146
end
function module_3_upvr.refreshAppearance(arg1, arg2, arg3) -- Line 625
	--[[ Upvalues[1]:
		[1]: Themes_upvr (readonly)
	]]
	Themes_upvr.refresh(arg1, arg2, arg3)
	return arg1
end
function module_3_upvr.refresh(arg1) -- Line 630
	arg1:refreshAppearance(arg1.widget)
	arg1.updateSize:Fire()
	return arg1
end
function module_3_upvr.updateParent(arg1) -- Line 636
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	local any_getIconByUID_result1_2 = module_3_upvr.getIconByUID(arg1.parentIconUID)
	if any_getIconByUID_result1_2 then
		any_getIconByUID_result1_2.updateSize:Fire()
	end
end
function module_3_upvr.setBehaviour(arg1, arg2, arg3, arg4, arg5) -- Line 643
	arg1.customBehaviours[arg2..'-'..arg3] = arg4
	if arg5 then
		for _, v_12 in pairs(arg1:getInstanceOrCollective(arg2)) do
			arg1:refreshAppearance(v_12, arg3)
		end
	end
end
function module_3_upvr.modifyTheme(arg1, arg2, arg3) -- Line 656
	--[[ Upvalues[1]:
		[1]: Themes_upvr (readonly)
	]]
	return arg1, Themes_upvr.modify(arg1, arg2, arg3)
end
function module_3_upvr.modifyChildTheme(arg1, arg2, arg3) -- Line 661
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	arg1.childModifications = arg2
	arg1.childModificationsUID = arg3
	for i_13, _ in pairs(arg1.childIconsDict) do
		module_3_upvr.getIconByUID(i_13):modifyTheme(arg2, arg3)
	end
	arg1.childThemeModified:Fire()
	return arg1
end
function module_3_upvr.removeModification(arg1, arg2) -- Line 674
	--[[ Upvalues[1]:
		[1]: Themes_upvr (readonly)
	]]
	Themes_upvr.remove(arg1, arg2)
	return arg1
end
function module_3_upvr.removeModificationWith(arg1, arg2, arg3, arg4) -- Line 679
	--[[ Upvalues[1]:
		[1]: Themes_upvr (readonly)
	]]
	Themes_upvr.removeWith(arg1, arg2, arg3, arg4)
	return arg1
end
function module_3_upvr.setTheme(arg1, arg2) -- Line 684
	--[[ Upvalues[1]:
		[1]: Themes_upvr (readonly)
	]]
	Themes_upvr.set(arg1, arg2)
	return arg1
end
function module_3_upvr.setEnabled(arg1, arg2) -- Line 689
	arg1.isEnabled = arg2
	arg1.enabled = arg1.isEnabled
	arg1.widget.Visible = arg2
	arg1:updateParent()
	return arg1
end
function module_3_upvr.select(arg1, arg2, arg3) -- Line 697
	arg1:setState("Selected", arg2, arg3)
	return arg1
end
function module_3_upvr.deselect(arg1, arg2, arg3) -- Line 702
	arg1:setState("Deselected", arg2, arg3)
	return arg1
end
function module_3_upvr.notify(arg1, arg2, arg3) -- Line 707
	--[[ Upvalues[2]:
		[1]: Elements_upvr (readonly)
		[2]: module_3_upvr (readonly)
	]]
	if not arg1.notice then
		arg1.notice = require(Elements_upvr.Notice)(arg1, module_3_upvr)
	end
	arg1.noticeStarted:Fire(arg2, arg3)
	return arg1
end
function module_3_upvr.clearNotices(arg1) -- Line 721
	arg1.endNotices:Fire()
	return arg1
end
function module_3_upvr.disableOverlay(arg1, arg2) -- Line 726
	arg1.overlayDisabled = arg2
	return arg1
end
module_3_upvr.disableStateOverlay = module_3_upvr.disableOverlay
local ContentProvider_upvr = game:GetService("ContentProvider")
function module_3_upvr.setImage(arg1, arg2, arg3) -- Line 732
	--[[ Upvalues[1]:
		[1]: ContentProvider_upvr (readonly)
	]]
	local tbl_5 = {"IconImage", "Image"}
	tbl_5[3] = arg2
	tbl_5[4] = arg3
	arg1:modifyTheme(tbl_5)
	task.spawn(function() -- Line 736
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: ContentProvider_upvr (copied, readonly)
		]]
		local var161
		if tonumber(arg2) then
			var161 = `rbxassetid://{arg2}`
		else
			var161 = arg2
		end
		if ContentProvider_upvr:GetAssetFetchStatus(var161) ~= Enum.AssetFetchStatus.Success then
			pcall(ContentProvider_upvr.PreloadAsync, ContentProvider_upvr, {var161})
		end
	end)
	return arg1
end
function module_3_upvr.setLabel(arg1, arg2, arg3) -- Line 748
	local tbl_13 = {"IconLabel", "Text"}
	tbl_13[3] = arg2
	tbl_13[4] = arg3
	arg1:modifyTheme(tbl_13)
	return arg1
end
function module_3_upvr.setOrder(arg1, arg2, arg3) -- Line 753
	local var164 = arg2 * 100
	local tbl_6 = {"IconSpot", "LayoutOrder", var164}
	tbl_6[4] = arg3
	arg1:modifyTheme(tbl_6)
	local tbl_8 = {"Widget", "LayoutOrder", var164}
	tbl_8[4] = arg3
	arg1:modifyTheme(tbl_8)
	return arg1
end
function module_3_upvr.setCornerRadius(arg1, arg2, arg3) -- Line 762
	local tbl_2 = {"IconCorners", "CornerRadius"}
	tbl_2[3] = arg2
	tbl_2[4] = arg3
	arg1:modifyTheme(tbl_2)
	return arg1
end
function module_3_upvr.align(arg1, arg2, arg3) -- Line 767
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_lower_result1 = tostring(arg2):lower()
	if any_lower_result1 == "mid" or any_lower_result1 == "centre" then
	end
	if "center" ~= "left" then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		if "center" ~= "center" and "center" ~= "right" then
		end
	end
	if "left" ~= "center" or not module_3_upvr.container.TopbarCentered then
		local TopbarStandard_2 = module_3_upvr.container.TopbarStandard
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
	local var174 = string.upper(string.sub("left", 1, 1))..string.sub("left", 2)
	if not arg3 then
		arg1.originalAlignment = var174
	end
	local var175 = TopbarStandard_2.Holders[var174]
	arg1.screenGui = TopbarStandard_2
	arg1.alignmentHolder = var175
	if not arg1.isDestroyed then
		arg1.widget.Parent = arg1.joinedFrame or var175
	end
	arg1.alignment = var174
	arg1.alignmentChanged:Fire(var174)
	module_3_upvr.iconChanged:Fire(arg1)
	return arg1
end
module_3_upvr.setAlignment = module_3_upvr.align
function module_3_upvr.setLeft(arg1) -- Line 796
	arg1:setAlignment("Left")
	return arg1
end
function module_3_upvr.setMid(arg1) -- Line 801
	arg1:setAlignment("Center")
	return arg1
end
function module_3_upvr.setRight(arg1) -- Line 806
	arg1:setAlignment("Right")
	return arg1
end
function module_3_upvr.setWidth(arg1, arg2, arg3) -- Line 811
	local tbl_7 = {"Widget", "DesiredWidth"}
	tbl_7[3] = arg2
	tbl_7[4] = arg3
	arg1:modifyTheme(tbl_7)
	return arg1
end
function module_3_upvr.setImageScale(arg1, arg2, arg3) -- Line 819
	local tbl_3 = {"IconImageScale", "Value"}
	tbl_3[3] = arg2
	tbl_3[4] = arg3
	arg1:modifyTheme(tbl_3)
	return arg1
end
function module_3_upvr.setImageRatio(arg1, arg2, arg3) -- Line 824
	local tbl_9 = {"IconImageRatio", "AspectRatio"}
	tbl_9[3] = arg2
	tbl_9[4] = arg3
	arg1:modifyTheme(tbl_9)
	return arg1
end
function module_3_upvr.setTextSize(arg1, arg2, arg3) -- Line 829
	local tbl = {"IconLabel", "TextSize"}
	tbl[3] = arg2
	tbl[4] = arg3
	arg1:modifyTheme(tbl)
	return arg1
end
function module_3_upvr.setTextFont(arg1, arg2, arg3, arg4, arg5) -- Line 834
	local var180
	if not var180 then
		var180 = Enum.FontWeight.Regular
	end
	var180 = arg4
	if not var180 then
		var180 = Enum.FontStyle.Normal
	end
	var180 = nil
	local typeof_result1 = typeof(arg2)
	if typeof_result1 == "number" then
		var180 = Font.fromId(arg2, var180, var180)
	elseif typeof_result1 == "EnumItem" then
		var180 = Font.fromEnum(arg2)
	elseif typeof_result1 == "string" and not arg2:match("rbxasset") then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		var180 = Font.fromName(arg2, var180, var180)
	end
	if not var180 then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		var180 = Font.new(arg2, var180, var180)
	end
	local tbl_12 = {"IconLabel", "FontFace", var180}
	tbl_12[4] = arg5
	arg1:modifyTheme(tbl_12)
	return arg1
end
function module_3_upvr.setTextColor(arg1, arg2, arg3) -- Line 855
	if arg2 == nil or arg2 == "" or type(arg2) ~= "userdata" or typeof(arg2) ~= "Color3" then
		if arg2 ~= nil and arg2 ~= "" then
			warn("setTextColor item must be a Color3 value! Changed the color to white.")
		end
	end
	local tbl_10 = {"IconLabel", "TextColor3", Color3.fromRGB(255, 255, 255)}
	tbl_10[4] = arg3
	arg1:modifyTheme(tbl_10)
	return arg1
end
function module_3_upvr.bindToggleItem(arg1, arg2) -- Line 867
	if not arg2:IsA("GuiObject") and not arg2:IsA("LayerCollector") then
		error("Toggle item must be a GuiObject or LayerCollector!")
	end
	arg1.toggleItems[arg2] = true
	arg1:_updateSelectionInstances()
	return arg1
end
function module_3_upvr.unbindToggleItem(arg1, arg2) -- Line 876
	arg1.toggleItems[arg2] = nil
	arg1:_updateSelectionInstances()
	return arg1
end
function module_3_upvr._updateSelectionInstances(arg1) -- Line 882
	for i_14, _ in pairs(arg1.toggleItems) do
		for _, v_15 in pairs(i_14:GetDescendants()) do
			if v_15:IsA("TextButton") or v_15:IsA("ImageButton") then
				if v_15.Active then
					table.insert({}, v_15)
				end
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg1.toggleItems[i_14] = {}
	end
end
function module_3_upvr._setToggleItemsVisible(arg1, arg2, arg3, arg4) -- Line 896
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local _
	for i_16, _ in pairs(arg1.toggleItems) do
		if not arg4 or arg4 == arg1 or arg4.toggleItems[i_16] == nil then
			if i_16:IsA("LayerCollector") then
			end
			i_16.Enabled = arg2
		end
	end
end
function module_3_upvr.bindEvent(arg1, arg2, arg3) -- Line 908
	local var209 = arg1[arg2]
	local var210
	if var210 then
		var210 = false
		if typeof(var209) == "table" then
			var210 = var209.Connect
		end
	end
	assert(var210, "argument[1] must be a valid topbarplus icon event name!")
	if typeof(arg3) ~= "function" then
		var210 = false
	else
		var210 = true
	end
	assert(var210, "argument[2] must be a function!")
	var210 = var209:Connect(function(...) -- Line 912
		--[[ Upvalues[2]:
			[1]: arg3 (readonly)
			[2]: arg1 (readonly)
		]]
		arg3(arg1, ...)
	end)
	arg1.bindedEvents[arg2] = var210
	return arg1
end
function module_3_upvr.unbindEvent(arg1, arg2) -- Line 918
	local var212 = arg1.bindedEvents[arg2]
	if var212 then
		var212:Disconnect()
		arg1.bindedEvents[arg2] = nil
	end
	return arg1
end
function module_3_upvr.bindToggleKey(arg1, arg2) -- Line 927
	local var213
	if typeof(arg2) ~= "EnumItem" then
		var213 = false
	else
		var213 = true
	end
	assert(var213, "argument[1] must be a KeyCode EnumItem!")
	var213 = true
	arg1.bindedToggleKeys[arg2] = var213
	arg1.toggleKeyAdded:Fire(arg2)
	arg1:setCaption("_hotkey_")
	return arg1
end
function module_3_upvr.unbindToggleKey(arg1, arg2) -- Line 935
	local var214
	if typeof(arg2) ~= "EnumItem" then
		var214 = false
	else
		var214 = true
	end
	assert(var214, "argument[1] must be a KeyCode EnumItem!")
	var214 = nil
	arg1.bindedToggleKeys[arg2] = var214
	return arg1
end
function module_3_upvr.call(arg1, arg2, ...) -- Line 941
	local packed_upvr = table.pack(...)
	task.spawn(function() -- Line 943
		--[[ Upvalues[3]:
			[1]: arg2 (readonly)
			[2]: arg1 (readonly)
			[3]: packed_upvr (readonly)
		]]
		arg2(arg1, table.unpack(packed_upvr))
	end)
	return arg1
end
function module_3_upvr.addToJanitor(arg1, arg2, arg3, arg4) -- Line 949
	arg1.janitor:add(arg2, arg3, arg4)
	return arg1
end
function module_3_upvr.lock(arg1) -- Line 954
	arg1:getInstance("ClickRegion").Visible = false
	arg1.locked = true
	return arg1
end
function module_3_upvr.unlock(arg1) -- Line 962
	arg1:getInstance("ClickRegion").Visible = true
	arg1.locked = false
	return arg1
end
function module_3_upvr.debounce(arg1, arg2) -- Line 969
	arg1:lock()
	task.wait(arg2)
	arg1:unlock()
	return arg1
end
function module_3_upvr.autoDeselect(arg1, arg2) -- Line 976
	if arg2 == nil then
	end
	arg1.deselectWhenOtherIconSelected = true
	return arg1
end
function module_3_upvr.oneClick(arg1, arg2) -- Line 986
	local singleClickJanitor = arg1.singleClickJanitor
	singleClickJanitor:clean()
	if arg2 or arg2 == nil then
		singleClickJanitor:add(arg1.selected:Connect(function() -- Line 992
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:deselect("OneClick", arg1)
		end))
	end
	arg1.oneClickEnabled = true
	return arg1
end
function module_3_upvr.setCaption(arg1, arg2) -- Line 1000
	--[[ Upvalues[1]:
		[1]: Elements_upvr (readonly)
	]]
	if arg2 == "_hotkey_" and arg1.captionText then
		return arg1
	end
	arg1.captionJanitor:clean()
	if not arg2 or arg2 == "" then
		arg1.caption = nil
		arg1.captionText = nil
		return arg1
	end
	local any_add_result1 = arg1.captionJanitor:add(require(Elements_upvr.Caption)(arg1))
	any_add_result1:SetAttribute("CaptionText", arg2)
	arg1.caption = any_add_result1
	arg1.captionText = arg2
	return arg1
end
function module_3_upvr.setCaptionHint(arg1, arg2) -- Line 1018
	local var220
	if typeof(arg2) ~= "EnumItem" then
		var220 = false
	else
		var220 = true
	end
	assert(var220, "argument[1] must be a KeyCode EnumItem!")
	arg1.fakeToggleKey = arg2
	arg1.fakeToggleKeyChanged:Fire(arg2)
	arg1:setCaption("_hotkey_")
	return arg1
end
function module_3_upvr.leave(arg1) -- Line 1026
	arg1.joinJanitor:clean()
	return arg1
end
function module_3_upvr.joinMenu(arg1, arg2) -- Line 1032
	--[[ Upvalues[1]:
		[1]: Utility_upvr (readonly)
	]]
	Utility_upvr.joinFeature(arg1, arg2, arg2.menuIcons, arg2:getInstance("Menu"))
	arg2.menuChildAdded:Fire(arg1)
	return arg1
end
function module_3_upvr.setMenu(arg1, arg2) -- Line 1038
	arg1.menuSet:Fire(arg2)
	return arg1
end
function module_3_upvr.setFixedMenu(arg1, arg2) -- Line 1043
	arg1:freezeMenu(arg2)
	arg1:setMenu(arg2)
end
module_3_upvr.setFrozenMenu = module_3_upvr.setFixedMenu
function module_3_upvr.freezeMenu(arg1) -- Line 1049
	arg1:select("FrozenMenu", arg1)
	arg1:bindEvent("deselected", function(arg1_4) -- Line 1053
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1_4:select("FrozenMenu", arg1)
	end)
	arg1:modifyTheme({"IconSpot", "Visible", false})
end
function module_3_upvr.joinDropdown(arg1, arg2) -- Line 1059
	--[[ Upvalues[1]:
		[1]: Utility_upvr (readonly)
	]]
	arg2:getDropdown()
	Utility_upvr.joinFeature(arg1, arg2, arg2.dropdownIcons, arg2:getInstance("DropdownScroller"))
	arg2.dropdownChildAdded:Fire(arg1)
	return arg1
end
function module_3_upvr.getDropdown(arg1) -- Line 1066
	--[[ Upvalues[1]:
		[1]: Elements_upvr (readonly)
	]]
	if not arg1.dropdown then
		local var223 = require(Elements_upvr.Dropdown)(arg1)
		arg1.dropdown = var223
		arg1:clipOutside(var223)
	end
	return var223
end
function module_3_upvr.setDropdown(arg1, arg2) -- Line 1076
	arg1:getDropdown()
	arg1.dropdownSet:Fire(arg2)
	return arg1
end
function module_3_upvr.clipOutside(arg1, arg2) -- Line 1082
	--[[ Upvalues[1]:
		[1]: Utility_upvr (readonly)
	]]
	arg1:refreshAppearance(arg2)
	return arg1, Utility_upvr.clipOutside(arg1, arg2)
end
function module_3_upvr.setIndicator(arg1, arg2) -- Line 1093
	--[[ Upvalues[2]:
		[1]: Elements_upvr (readonly)
		[2]: module_3_upvr (readonly)
	]]
	if not arg1.indicator then
		arg1.indicator = arg1.janitor:add(require(Elements_upvr.Indicator)(arg1, module_3_upvr))
	end
	arg1.indicatorSet:Fire(arg2)
end
function module_3_upvr.convertLabelToNumberSpinner(arg1, arg2, arg3) -- Line 1105
	task.defer(function() -- Line 1106
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: arg3 (readonly)
		]]
		local any_getInstance_result1_2_upvr = arg1:getInstance("IconLabel")
		any_getInstance_result1_2_upvr.Transparency = 1
		arg2.Parent = any_getInstance_result1_2_upvr.Parent
		arg2.Size = UDim2.fromScale(1, 1)
		arg2.AnchorPoint = Vector2.new(0.5, 0.5)
		arg2.Position = UDim2.new(0.5, 0, 0.5, 0)
		arg2.TextXAlignment = Enum.TextXAlignment.Center
		arg2.ClipsDescendants = false
		for _, v_17_upvr in ipairs({"FontFace", "BorderSizePixel", "BorderColor3", "Rotation", "TextStrokeTransparency", "TextStrokeColor3", "TextStrokeTransparency", "TextColor3"}) do
			arg2[v_17_upvr] = any_getInstance_result1_2_upvr[v_17_upvr]
			arg1:addToJanitor(any_getInstance_result1_2_upvr:GetPropertyChangedSignal(v_17_upvr):Connect(function() -- Line 1129
				--[[ Upvalues[3]:
					[1]: arg2 (copied, readonly)
					[2]: v_17_upvr (readonly)
					[3]: any_getInstance_result1_2_upvr (readonly)
				]]
				arg2[v_17_upvr] = any_getInstance_result1_2_upvr[v_17_upvr]
			end))
		end
		local function getSpinnerSizeAndDigitCount_upvr() -- Line 1136, Named "getSpinnerSizeAndDigitCount"
			--[[ Upvalues[1]:
				[1]: arg2 (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var246
			for _, v_18 in arg2.Frame:GetChildren() do
				local string_lower_result1 = string.lower(v_18.Name)
				if string_lower_result1 == "digit" then
					var246 += v_18.AbsoluteSize.X
				elseif string_lower_result1 == "prefix" or string_lower_result1 == "suffix" or string_lower_result1 == "comma" then
					if v_18.Text ~= "" then
						var246 += v_18.AbsoluteSize.X
					end
				end
			end
			return var246, 0 + 1 + 1
		end
		local function _() -- Line 1154, Named "getLabelParentContainerXSize"
			--[[ Upvalues[2]:
				[1]: any_getInstance_result1_2_upvr (readonly)
				[2]: arg2 (copied, readonly)
			]]
			local Parent = any_getInstance_result1_2_upvr.Parent
			local var249 = Parent
			if var249 then
				var249 = Parent.Parent
			end
			if var249 == nil then
				return 0
			end
			if var249.IconImage.Visible == true then
				return arg2.Frame.AbsoluteSize.X + any_getInstance_result1_2_upvr.Parent.Parent.IconImage.AbsoluteSize.X
			end
			return var249.AbsoluteSize.X
		end
		local function _() -- Line 1166, Named "getNumberSpinnerXSize"
			--[[ Upvalues[1]:
				[1]: arg2 (copied, readonly)
			]]
			return arg2.Frame.AbsoluteSize.X
		end
		local function adjustSize_upvr() -- Line 1170, Named "adjustSize"
			--[[ Upvalues[4]:
				[1]: getSpinnerSizeAndDigitCount_upvr (readonly)
				[2]: arg1 (copied, readonly)
				[3]: arg2 (copied, readonly)
				[4]: any_getInstance_result1_2_upvr (readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 38 start (CF ANALYSIS FAILED)
			local _, getSpinnerSizeAndDigitCount_upvr_result2 = getSpinnerSizeAndDigitCount_upvr()
			if getSpinnerSizeAndDigitCount_upvr_result2 < 18 then
				arg1:setLabel(arg2.Value)
			end
			-- KONSTANTERROR: [0] 1. Error Block 38 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [43] 30. Error Block 44 start (CF ANALYSIS FAILED)
			local var252 = arg2
			var252.TextSize += 1
			local getSpinnerSizeAndDigitCount_upvr_result1, _ = getSpinnerSizeAndDigitCount_upvr()
			-- KONSTANTERROR: [43] 30. Error Block 44 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [19] 14. Error Block 4 start (CF ANALYSIS FAILED)
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [60.198139]
			-- KONSTANTERROR: [19] 14. Error Block 4 end (CF ANALYSIS FAILED)
		end
		arg1:addToJanitor(arg2.Frame.ChildAdded:Connect(adjustSize_upvr))
		arg1:addToJanitor(arg2.Frame.ChildRemoved:Connect(adjustSize_upvr))
		arg1:addToJanitor(arg1.iconAdded:Connect(function() -- Line 1208
			--[[ Upvalues[1]:
				[1]: adjustSize_upvr (readonly)
			]]
			task.wait(1)
			adjustSize_upvr()
		end))
		arg1:updateParent()
		arg2.Name = "LabelSpinner"
		arg2.Prefix = '$'
		arg2.Commas = true
		arg2.Decimals = 0
		arg2.Duration = 0.25
		arg2.Value = 10
		task.wait(0.2)
		if typeof(arg3) == "function" then
			arg3()
		end
	end)
	return arg1
end
function module_3_upvr.destroy(arg1) -- Line 1235
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	if arg1.isDestroyed then
	else
		arg1:clearNotices()
		if arg1.parentIconUID then
			arg1:leave()
		end
		arg1.isDestroyed = true
		arg1.janitor:clean()
		module_3_upvr.iconRemoved:Fire(arg1)
	end
end
module_3_upvr.Destroy = module_3_upvr.destroy
return module_3_upvr