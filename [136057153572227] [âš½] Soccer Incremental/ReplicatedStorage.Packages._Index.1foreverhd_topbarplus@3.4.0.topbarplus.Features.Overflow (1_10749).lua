-- Name: Overflow
-- Path: game:GetService("ReplicatedStorage").Packages._Index.1foreverhd_topbarplus@3.4.0.topbarplus.Features.Overflow
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.830449499997485 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:23
-- Luau version 6, Types version 3
-- Time taken: 0.049072 seconds

local module_upvr = {}
local tbl_upvr_2 = {}
local tbl_upvr_3 = {}
local var4_upvw
local tbl_upvr_4 = {}
local Utility_upvr = require(script.Parent.Parent.Utility)
local var7_upvw = false
local var8_upvw
local CurrentCamera_upvr = workspace.CurrentCamera
function module_upvr.start(arg1) -- Line 25
	--[[ Upvalues[7]:
		[1]: var8_upvw (read and write)
		[2]: var4_upvw (read and write)
		[3]: tbl_upvr_2 (readonly)
		[4]: Utility_upvr (readonly)
		[5]: module_upvr (readonly)
		[6]: var7_upvw (read and write)
		[7]: CurrentCamera_upvr (readonly)
	]]
	var8_upvw = arg1
	var4_upvw = var8_upvw.iconsDictionary
	local var21
	for _, v in pairs(var8_upvw.container) do
		if var21 == nil and v.ScreenInsets == Enum.ScreenInsets.TopbarSafeInsets then
			var21 = v
		end
		for _, v_2 in pairs(v.Holders:GetChildren()) do
			if v_2:GetAttribute("IsAHolder") then
				tbl_upvr_2[v_2.Name] = v_2
			end
		end
	end
	local var25_upvw = false
	local any_createStagger_result1_upvr = Utility_upvr.createStagger(0.1, function(arg1_2) -- Line 43
		--[[ Upvalues[2]:
			[1]: var25_upvw (read and write)
			[2]: module_upvr (copied, readonly)
		]]
		if not var25_upvw then
		else
			if not arg1_2 then
				module_upvr.updateAvailableIcons("Center")
			end
			module_upvr.updateBoundary("Left")
			module_upvr.updateBoundary("Right")
		end
	end)
	task.delay(0.5, function() -- Line 53
		--[[ Upvalues[2]:
			[1]: var25_upvw (read and write)
			[2]: any_createStagger_result1_upvr (readonly)
		]]
		var25_upvw = true
		any_createStagger_result1_upvr()
	end)
	task.delay(2, function() -- Line 57
		--[[ Upvalues[2]:
			[1]: var7_upvw (copied, read and write)
			[2]: any_createStagger_result1_upvr (readonly)
		]]
		var7_upvw = true
		any_createStagger_result1_upvr()
	end)
	var8_upvw.iconAdded:Connect(any_createStagger_result1_upvr)
	var8_upvw.iconRemoved:Connect(any_createStagger_result1_upvr)
	var8_upvw.iconChanged:Connect(any_createStagger_result1_upvr)
	CurrentCamera_upvr:GetPropertyChangedSignal("ViewportSize"):Connect(function() -- Line 67
		--[[ Upvalues[1]:
			[1]: any_createStagger_result1_upvr (readonly)
		]]
		any_createStagger_result1_upvr(true)
	end)
	var21:GetPropertyChangedSignal("AbsoluteSize"):Connect(function() -- Line 70
		--[[ Upvalues[1]:
			[1]: any_createStagger_result1_upvr (readonly)
		]]
		any_createStagger_result1_upvr(true)
	end)
end
function module_upvr.getWidth(arg1, arg2) -- Line 75
	local widget = arg1.widget
	local TargetWidth = widget:GetAttribute("TargetWidth")
	if not TargetWidth then
		TargetWidth = widget.AbsoluteSize.X
	end
	return TargetWidth
end
function module_upvr.getAvailableIcons(arg1) -- Line 80
	--[[ Upvalues[2]:
		[1]: tbl_upvr_3 (readonly)
		[2]: module_upvr (readonly)
	]]
	local var34 = tbl_upvr_3[arg1]
	if not var34 then
		var34 = module_upvr.updateAvailableIcons(arg1)
	end
	return var34
end
function module_upvr.updateAvailableIcons(arg1) -- Line 88
	--[[ Upvalues[3]:
		[1]: var4_upvw (read and write)
		[2]: tbl_upvr_4 (readonly)
		[3]: tbl_upvr_3 (readonly)
	]]
	local module_2 = {}
	local var43
	for _, v_3 in pairs(var4_upvw) do
		local var45
		if not var45 then
			var45 = tbl_upvr_4[v_3.parentIconUID]
		end
		if var45 and v_3.alignment == arg1 and not tbl_upvr_4[v_3.UID] and v_3.isEnabled then
			table.insert(module_2, v_3)
			var43 += 1
		end
	end
	if var43 <= 0 then
		return {}
	end
	table.sort(module_2, function(arg1_3, arg2) -- Line 110
		local LayoutOrder_2 = arg1_3.widget.LayoutOrder
		local LayoutOrder = arg2.widget.LayoutOrder
		local parentIconUID = arg1_3.parentIconUID
		local parentIconUID_2 = arg2.parentIconUID
		local var51
		if parentIconUID == parentIconUID_2 then
			if LayoutOrder_2 < LayoutOrder then
				var51 = true
				return var51
			end
			if LayoutOrder < LayoutOrder_2 then
				var51 = false
				return var51
			end
			if arg1_3.widget.AbsolutePosition.X >= arg2.widget.AbsolutePosition.X then
				var51 = false
			else
				var51 = true
			end
			return var51
		end
		if parentIconUID_2 then
			var51 = false
			return var51
		end
		if parentIconUID then
			var51 = true
			return var51
		end
		return nil
	end)
	tbl_upvr_3[arg1] = module_2
	return module_2
end
function module_upvr.getRealXPositions(arg1, arg2) -- Line 137
	--[[ Upvalues[3]:
		[1]: tbl_upvr_2 (readonly)
		[2]: Utility_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	if arg1 ~= "Left" then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
	end
	local var55 = tbl_upvr_2[arg1]
	local Offset_3 = var55.UIListLayout.Padding.Offset
	if not true or not var55.AbsolutePosition.X then
	end
	local module = {}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if true then
		Utility_upvr.reverseTable(arg2)
	end
	for i_4 = #arg2, 1, -1 do
		local var59 = arg2[i_4]
		local any_getWidth_result1 = module_upvr.getWidth(var59)
		local var61
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if not true then
			var61 -= any_getWidth_result1
		end
		module[var59.UID] = var61
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if true then
			var61 += any_getWidth_result1
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if not true or not Offset_3 then
		end
		var61 += -Offset_3
	end
	return module
end
local tbl_upvr = {}
local var63_upvw = false
function module_upvr.updateBoundary(arg1) -- Line 166
	--[[ Upvalues[8]:
		[1]: tbl_upvr_2 (readonly)
		[2]: module_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: var8_upvw (read and write)
		[5]: tbl_upvr_4 (readonly)
		[6]: var63_upvw (read and write)
		[7]: var7_upvw (read and write)
		[8]: Utility_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var140 = tbl_upvr_2[arg1]
	local UIListLayout = var140.UIListLayout
	local X_12 = var140.AbsolutePosition.X
	local X_2 = var140.AbsoluteSize.X
	local Offset_2_upvr = UIListLayout.Padding.Offset
	local Offset = UIListLayout.Padding.Offset
	local any_updateAvailableIcons_result1_2_upvr = module_upvr.updateAvailableIcons(arg1)
	local var147 = 0
	local var148 = 0
	for i_5, v_4 in pairs(any_updateAvailableIcons_result1_2_upvr) do
		var147 += module_upvr.getWidth(v_4) + Offset
		var148 += 1
	end
	if var148 <= 0 then
		do
			return
		end
		local var152_upvr
	end
	if arg1 ~= "Center" then
	else
	end
	if arg1 ~= "Left" then
		var152_upvr = false
	else
		var152_upvr = true
	end
	local var153_upvr = not var152_upvr
	v_4 = tbl_upvr
	i_5 = v_4[arg1]
	if not i_5 and not true then
		v_4 = #any_updateAvailableIcons_result1_2_upvr
		if 0 < v_4 then
			if var152_upvr then
				v_4 = -9999999
			else
				v_4 = 9999999
			end
			i_5 = var8_upvw.new()
			i_5:setImage(6069276526, "Deselected")
			i_5:setName("Overflow"..arg1)
			i_5:setOrder(v_4)
			i_5:setAlignment(arg1)
			i_5:autoDeselect(false)
			i_5.isAnOverflow = true
			i_5:select("OverflowStart", i_5)
			i_5:setEnabled(false)
			tbl_upvr[arg1] = i_5
			tbl_upvr_4[i_5.UID] = true
			if not var8_upvw.closeableOverflowMenus then
				i_5:getInstance("IconSpot").Visible = false
			end
		end
	end
	if arg1 == "Left" then
		v_4 = "Right"
	else
		v_4 = "Left"
	end
	local any_updateAvailableIcons_result1 = module_upvr.updateAvailableIcons(v_4)
	if not var152_upvr or not any_updateAvailableIcons_result1[1] or var153_upvr then
		local var155 = any_updateAvailableIcons_result1[#any_updateAvailableIcons_result1]
	end
	local var156 = tbl_upvr[v_4]
	if not var152_upvr or not (X_12 + X_2) then
		local var157
	end
	if var155 then
		local var158 = module_upvr.getRealXPositions(v_4, any_updateAvailableIcons_result1)[var155.UID]
		var157 = module_upvr
		var157 = var155
		local function INLINED_9() -- Internal function, doesn't exist in bytecode
			var157 = var158 - Offset_2_upvr
			return var157
		end
		if not var152_upvr or not INLINED_9() then
			var157 = var158 + var157.getWidth(var157) + Offset_2_upvr
		end
		local var159 = var157
	end
	local var160_upvw = 0
	local function checkToShiftCentralIcon_upvr() -- Line 233, Named "checkToShiftCentralIcon"
		--[[ Upvalues[10]:
			[1]: module_upvr (copied, readonly)
			[2]: var152_upvr (readonly)
			[3]: var63_upvw (copied, read and write)
			[4]: arg1 (readonly)
			[5]: any_updateAvailableIcons_result1_2_upvr (readonly)
			[6]: var153_upvr (readonly)
			[7]: Offset_2_upvr (readonly)
			[8]: var7_upvw (copied, read and write)
			[9]: var160_upvw (read and write)
			[10]: checkToShiftCentralIcon_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var161 = "Center"
		local any_getAvailableIcons_result1 = module_upvr.getAvailableIcons(var161)
		if var152_upvr then
			var161 = 1
		else
			var161 = #any_getAvailableIcons_result1
		end
		local var163 = any_getAvailableIcons_result1[var161]
		local function _() -- Line 237, Named "secondaryCheck"
			--[[ Upvalues[3]:
				[1]: var63_upvw (copied, read and write)
				[2]: module_upvr (copied, readonly)
				[3]: arg1 (copied, readonly)
			]]
			if not var63_upvw then
				var63_upvw = true
				task.delay(3, module_upvr.updateBoundary, arg1)
			end
		end
		if var163 then
			local var164
			if not var164 then
				local function INLINED_10() -- Internal function, doesn't exist in bytecode
					var164 = any_updateAvailableIcons_result1_2_upvr[#any_updateAvailableIcons_result1_2_upvr]
					return var164
				end
				local function INLINED_11() -- Internal function, doesn't exist in bytecode
					var164 = var153_upvr
					return var164
				end
				if not var152_upvr or not INLINED_10() or INLINED_11() then
					var164 = any_updateAvailableIcons_result1_2_upvr[1]
				end
				local X_3 = var163.widget.AbsolutePosition.X
				local X_5 = var164.widget.AbsolutePosition.X
				if not var152_upvr or not (X_3 - Offset_2_upvr) then
				end
				if not var152_upvr or not (X_5 + module_upvr.getWidth(var164)) then
					local var167 = X_5
				end
				if var152_upvr then
					if X_3 + module_upvr.getWidth(var163) + Offset_2_upvr < var167 then
						if not var7_upvw then
							if not var63_upvw then
								var63_upvw = true
								task.delay(3, module_upvr.updateBoundary, arg1)
							end
							return
						end
						var163:align("Left")
						var163.hasRelocatedInOverflow = true
						-- KONSTANTWARNING: GOTO [124] #104
					end
				elseif var153_upvr then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					if var167 < X_3 + module_upvr.getWidth(var163) + Offset_2_upvr then
						if not var7_upvw or var167 < 0 then
							if not var63_upvw then
								var63_upvw = true
								task.delay(3, module_upvr.updateBoundary, arg1)
							end
							return
						end
						var163:align("Right")
						var163.hasRelocatedInOverflow = true
					end
				end
				if true then
					var160_upvw += 1
					if var160_upvw <= 4 then
						module_upvr.updateAvailableIcons("Center")
						checkToShiftCentralIcon_upvr()
					end
				end
			end
		end
	end
	checkToShiftCentralIcon_upvr()
	if i_5 then
		var157 = i_5:getInstance("Menu")
		local var168
		local var169
		if var157 and var156 then
			local X_4 = var156.widget.AbsolutePosition.X
			if not var152_upvr or not (X_4 - Offset_2_upvr) then
			end
			var169 = var157.AbsoluteCanvasSize
			var169 = var156:getInstance("Menu").AbsoluteCanvasSize.X
			if var169 > var169.X then
			else
			end
			var169 = X_2 / 2
			local var171 = X_12 + var169
			local function INLINED_12() -- Internal function, doesn't exist in bytecode
				var169 = var171 - Offset_2_upvr / 2
				return var169
			end
			if not var152_upvr or not INLINED_12() then
				var169 = var171 + Offset_2_upvr / 2
			end
			local var172 = var169
			if true then
				var172 = X_4 + module_upvr.getWidth(var156) + Offset_2_upvr
			end
			if not var152_upvr or not (var172 - X_12) then
			end
			var168 = X_12 + X_2 - var172
		end
		if var157 then
		end
		var168 = Utility_upvr.round(var168)
		if var157 and var157:GetAttribute("MaxWidth") ~= var168 then
			var157:SetAttribute("MaxWidth", var168)
		end
	end
	for i_6 = #any_updateAvailableIcons_result1_2_upvr, 1, -1 do
		local var173 = any_updateAvailableIcons_result1_2_upvr[i_6]
		local var174 = module_upvr.getRealXPositions(arg1, any_updateAvailableIcons_result1_2_upvr)[var173.UID]
		if var152_upvr and var159 <= var174 + module_upvr.getWidth(var173) or var153_upvr and var174 <= var159 then
			local var175 = true
		end
	end
	for i_7 = #any_updateAvailableIcons_result1_2_upvr, 1, -1 do
		local var176 = any_updateAvailableIcons_result1_2_upvr[i_7]
		if not tbl_upvr_4[var176.UID] then
			if var175 and not var176.parentIconUID then
				var176:joinMenu(i_5)
			elseif not var175 and var176.parentIconUID then
				var176:leave()
			end
		end
	end
	if i_5.isEnabled ~= var175 then
		i_7 = var175
		i_5:setEnabled(i_7)
	end
	if i_5.isEnabled and not i_5.overflowAlreadyOpened then
		i_5.overflowAlreadyOpened = true
		i_5:select()
	end
end
return module_upvr