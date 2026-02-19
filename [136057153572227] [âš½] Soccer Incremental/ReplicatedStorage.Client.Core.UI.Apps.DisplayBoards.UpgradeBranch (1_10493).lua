-- Name: UpgradeBranch
-- Path: game:GetService("ReplicatedStorage").Client.Core.UI.Apps.DisplayBoards.UpgradeBranch
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7129133999987971 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:03
-- Luau version 6, Types version 3
-- Time taken: 0.020861 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage_upvr.Packages.Vide)
local Util_upvr = require(ReplicatedStorage_upvr.Shared.Util)
local _ = require(ReplicatedStorage_upvr.Client.Core.Loop)
local Upgrades_upvr = require(ReplicatedStorage_upvr.Client.Core.Upgrades)
local derive_upvr = Vide.derive
local Trees_upvr = require(ReplicatedStorage_upvr.Shared.Modules.Libraries.Trees)
local Currencies_upvr = require(ReplicatedStorage_upvr.Shared.Modules.Libraries.Currencies)
local useAtom_upvr = require(ReplicatedStorage_upvr.Packages.VideCharm).useAtom
local Values_upvr = require(ReplicatedStorage_upvr.Client.Core.Values)
local UI_upvr = require(ReplicatedStorage_upvr.Client.Core.UI)
local Sounds_upvr = require(ReplicatedStorage_upvr.Shared.Assets.Sounds)
local Upgrades_upvr_2 = Upgrades_upvr:GetService("Upgrades")
local Players_upvr = game:GetService("Players")
local apply_upvr = Vide.apply
local cleanup_upvr = Vide.cleanup
local RunService_upvr = game:GetService("RunService")
local effect_upvr = Vide.effect
local RichFormat_upvr = require(ReplicatedStorage_upvr.Packages.RichFormat)
return function(arg1, arg2, arg3) -- Line 39
	--[[ Upvalues[17]:
		[1]: derive_upvr (readonly)
		[2]: Trees_upvr (readonly)
		[3]: Currencies_upvr (readonly)
		[4]: Util_upvr (readonly)
		[5]: useAtom_upvr (readonly)
		[6]: Values_upvr (readonly)
		[7]: UI_upvr (readonly)
		[8]: Sounds_upvr (readonly)
		[9]: ReplicatedStorage_upvr (readonly)
		[10]: Upgrades_upvr_2 (readonly)
		[11]: Upgrades_upvr (readonly)
		[12]: Players_upvr (readonly)
		[13]: apply_upvr (readonly)
		[14]: cleanup_upvr (readonly)
		[15]: RunService_upvr (readonly)
		[16]: effect_upvr (readonly)
		[17]: RichFormat_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tonumber_result1_upvr_2 = tonumber(arg2:GetAttribute("ID"))
	local tonumber_result1_upvr = tonumber(arg2:GetAttribute("Area"))
	local function var23() -- Line 43
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: tonumber_result1_upvr (readonly)
		]]
		local any_playerData_result1_3 = arg1.playerData()
		local var25
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var25 = any_playerData_result1_3.inventory.Tree[tonumber_result1_upvr]
			return var25
		end
		if not any_playerData_result1_3 or not INLINED() then
			var25 = {}
		end
		return var25
	end
	local var7_result1_upvr_4 = derive_upvr(var23)
	var23 = Trees_upvr.Content[tonumber_result1_upvr]
	local var27_upvr = var23
	if var27_upvr then
		var27_upvr = Trees_upvr.Content[tonumber_result1_upvr][tonumber_result1_upvr_2]
	end
	if not var27_upvr or not var27_upvr.currency then
	end
	local Money_upvr = Currencies_upvr.Money
	local var7_result1_upvr_3 = derive_upvr(function() -- Line 53
		--[[ Upvalues[2]:
			[1]: var7_result1_upvr_4 (readonly)
			[2]: tonumber_result1_upvr_2 (readonly)
		]]
		local var30
		if table.find(var7_result1_upvr_4(), tonumber_result1_upvr_2) == nil then
			var30 = false
		else
			var30 = true
		end
		return var30
	end)
	local var7_result1_upvr_2 = derive_upvr(function() -- Line 57
		--[[ Upvalues[4]:
			[1]: Util_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Money_upvr (readonly)
			[4]: var27_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var33
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var33 = var27_upvr.price
			return var33
		end
		if not var27_upvr or not INLINED_2() then
			var33 = 0
		end
		if var33 > Util_upvr.table.navigatePath(arg1.playerData(), Money_upvr.path) then
		else
		end
		return true
	end)
	if not arg1.shared.TreeUpgradesAutoBuyControl then
		arg1.shared.LastAutoBuy = os.clock()
		arg1.shared.TreeUpgradesAutoBuyControl = useAtom_upvr(Values_upvr:ReadControl("TreeUpgradesAutoBuy", false))
	end
	if not arg1.shared.RedCards then
		arg1.shared.RedCards = derive_upvr(function() -- Line 67
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local any_playerData_result1 = arg1.playerData()
			local var37
			local function INLINED_3() -- Internal function, doesn't exist in bytecode
				var37 = any_playerData_result1.privatestats["Red Cards"]
				return var37
			end
			if not any_playerData_result1 or not INLINED_3() then
				var37 = 0
			end
			return var37
		end)
	end
	if not arg1.shared.Rebirths then
		arg1.shared.Rebirths = derive_upvr(function() -- Line 74
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local any_playerData_result1_4 = arg1.playerData()
			local var40
			local function INLINED_4() -- Internal function, doesn't exist in bytecode
				var40 = any_playerData_result1_4.leaderstats.Rebirths
				return var40
			end
			if not any_playerData_result1_4 or not INLINED_4() then
				var40 = 0
			end
			return var40
		end)
	end
	if not arg1.shared.PlaytimeSeconds then
		arg1.shared.PlaytimeSeconds = derive_upvr(function() -- Line 81
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local any_playerData_result1_2 = arg1.playerData()
			local var43
			local function INLINED_5() -- Internal function, doesn't exist in bytecode
				var43 = any_playerData_result1_2.privatestats.Seconds
				return var43
			end
			if not any_playerData_result1_2 or not INLINED_5() then
				var43 = 0
			end
			return var43
		end)
	end
	local var7_result1_upvr = derive_upvr(function() -- Line 92
		--[[ Upvalues[6]:
			[1]: var27_upvr (readonly)
			[2]: var7_result1_upvr_3 (readonly)
			[3]: var7_result1_upvr_4 (readonly)
			[4]: Trees_upvr (copied, readonly)
			[5]: tonumber_result1_upvr (readonly)
			[6]: tonumber_result1_upvr_2 (readonly)
		]]
		if not var27_upvr then
			return false
		end
		if var27_upvr.disabled then
			return false
		end
		if var7_result1_upvr_3() or var27_upvr.starter then
			return true
		end
		local var53 = Trees_upvr.Content[tonumber_result1_upvr]
		if not var53 then
			return false
		end
		if var27_upvr.needs then
			for _, v in ipairs(var27_upvr.needs) do
				if not table.find(var7_result1_upvr_4(), v) then
					return false
				end
			end
		end
		for _, v_2 in var7_result1_upvr_4(), nil do
			local var57
			if var57 then
				var57 = var53[v_2].unlocks
			end
			if var57 and table.find(var57, tonumber_result1_upvr_2) then
				return true
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		end
		return false
	end)
	local function buy_upvr(arg1_2) -- Line 125, Named "buy"
		--[[ Upvalues[9]:
			[1]: var7_result1_upvr_3 (readonly)
			[2]: var7_result1_upvr_2 (readonly)
			[3]: UI_upvr (copied, readonly)
			[4]: Sounds_upvr (copied, readonly)
			[5]: ReplicatedStorage_upvr (copied, readonly)
			[6]: Upgrades_upvr_2 (copied, readonly)
			[7]: tonumber_result1_upvr (readonly)
			[8]: tonumber_result1_upvr_2 (readonly)
			[9]: Upgrades_upvr (copied, readonly)
		]]
		if var7_result1_upvr_3() then
		else
			if not var7_result1_upvr_2() then
				task.spawn(function() -- Line 128
					--[[ Upvalues[4]:
						[1]: arg1_2 (readonly)
						[2]: UI_upvr (copied, readonly)
						[3]: Sounds_upvr (copied, readonly)
						[4]: ReplicatedStorage_upvr (copied, readonly)
					]]
					if arg1_2 then
					else
						UI_upvr.Frames.Notifications:alert("You can not afford this yet!", 3, ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("#ff0059")), ColorSequenceKeypoint.new(1, Color3.fromHex("#ff0000"))}))
						Sounds_upvr.playSound(ReplicatedStorage_upvr.Shared.Assets.SoundInstances.Error)
					end
				end)
				return
			end
			Upgrades_upvr_2:BuyBranch(`{tonumber_result1_upvr}/{tonumber_result1_upvr_2}`):andThen(function(arg1_3, arg2_2) -- Line 139
				--[[ Upvalues[4]:
					[1]: arg1_2 (readonly)
					[2]: Upgrades_upvr (copied, readonly)
					[3]: Sounds_upvr (copied, readonly)
					[4]: ReplicatedStorage_upvr (copied, readonly)
				]]
				-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [3] 4. Error Block 3 start (CF ANALYSIS FAILED)
				Upgrades_upvr:Log(print, `[{script.Name}]: {arg2_2}`)
				do
					return
				end
				-- KONSTANTERROR: [3] 4. Error Block 3 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [20] 16. Error Block 7 start (CF ANALYSIS FAILED)
				if not arg1_2 then
					Sounds_upvr.playSound(ReplicatedStorage_upvr.Shared.Assets.SoundInstances.Cash)
				end
				-- KONSTANTERROR: [20] 16. Error Block 7 end (CF ANALYSIS FAILED)
			end):catch(warn)
		end
	end
	local var62_upvw = 0
	local tbl = {}
	local Parent_upvr = arg2.Parent
	tbl.Parent = derive_upvr(function() -- Line 164
		--[[ Upvalues[3]:
			[1]: var7_result1_upvr (readonly)
			[2]: Parent_upvr (readonly)
			[3]: ReplicatedStorage_upvr (copied, readonly)
		]]
		local var66
		local function INLINED_6() -- Internal function, doesn't exist in bytecode
			var66 = Parent_upvr
			return var66
		end
		if not var7_result1_upvr() or not INLINED_6() then
			var66 = ReplicatedStorage_upvr.BranchStorage
		end
		return var66
	end)
	apply_upvr(arg2)(tbl)
	apply_upvr(arg2.PrimaryPart)({
		Touched = function(arg1_4) -- Line 152, Named "touched"
			--[[ Upvalues[3]:
				[1]: var62_upvw (read and write)
				[2]: Players_upvr (copied, readonly)
				[3]: buy_upvr (readonly)
			]]
			if tick() - var62_upvw < 0.5 then
			else
				if not arg1_4:IsDescendantOf(Players_upvr.LocalPlayer.Character) then return end
				var62_upvw = tick()
				buy_upvr()
			end
		end;
	})
	local TreeUpgradesAutoBuyControl_upvr = arg1.shared.TreeUpgradesAutoBuyControl
	cleanup_upvr(RunService_upvr.Heartbeat:Connect(function(arg1_5) -- Line 174
		--[[ Upvalues[8]:
			[1]: arg1 (readonly)
			[2]: var7_result1_upvr_3 (readonly)
			[3]: var7_result1_upvr (readonly)
			[4]: var27_upvr (readonly)
			[5]: TreeUpgradesAutoBuyControl_upvr (readonly)
			[6]: tonumber_result1_upvr (readonly)
			[7]: tonumber_result1_upvr_2 (readonly)
			[8]: buy_upvr (readonly)
		]]
		if os.clock() - arg1.shared.LastAutoBuy < 2 then
		else
			if var7_result1_upvr_3() then return end
			if not var7_result1_upvr() then return end
			if var27_upvr.disabled then return end
			if not table.find(TreeUpgradesAutoBuyControl_upvr(), `{tonumber_result1_upvr}/{tonumber_result1_upvr_2}`) then return end
			buy_upvr(true)
			arg1.shared.LastAutoBuy = os.clock()
		end
	end))
	local clone = ReplicatedStorage_upvr.Shared.Assets.DisplayBoards.UpgradePadDisplay:Clone()
	clone.Parent = arg2:WaitForChild("Pad")
	clone.Price.TextLabel.UIGradient.Color = Money_upvr.gradient
	local PointLight_upvr = Instance.new("PointLight")
	task.spawn(function() -- Line 190
		--[[ Upvalues[2]:
			[1]: PointLight_upvr (readonly)
			[2]: arg2 (readonly)
		]]
		PointLight_upvr.Range = 3
		PointLight_upvr.Brightness = 50
		PointLight_upvr.Parent = arg2:FindFirstChild("Pad")
		PointLight_upvr.Color = arg2:FindFirstChild("Pad").Color
		PointLight_upvr.Enabled = false
	end)
	effect_upvr(function() -- Line 199
		--[[ Upvalues[4]:
			[1]: var7_result1_upvr_3 (readonly)
			[2]: arg2 (readonly)
			[3]: PointLight_upvr (readonly)
			[4]: var7_result1_upvr_2 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		for _, v_3 in arg2:GetDescendants() do
			local var85
			if var85 and (v_3.Material == Enum.Material.SmoothPlastic or v_3.Material == Enum.Material.Plastic) then
				if not v_3:GetAttribute("Color") then
					v_3:SetAttribute("Color", v_3.Color)
				end
				if not var7_result1_upvr_3() or not v_3:GetAttribute("Color") then
				end
				v_3.Color = v_3:GetAttribute("Color"):Lerp(Color3.fromRGB(90, 90, 90), 1)
			end
		end
		local var34_result1 = var7_result1_upvr_2()
		if var34_result1 then
			var34_result1 = not var7_result1_upvr_3()
		end
		PointLight_upvr.Enabled = var34_result1
	end)
	local tbl_2 = {}
	local RedCards_upvr = arg1.shared.RedCards
	local Rebirths_upvr = arg1.shared.Rebirths
	local PlaytimeSeconds_upvr = arg1.shared.PlaytimeSeconds
	tbl_2.Text = derive_upvr(function() -- Line 216
		--[[ Upvalues[7]:
			[1]: var7_result1_upvr_3 (readonly)
			[2]: var27_upvr (readonly)
			[3]: Money_upvr (readonly)
			[4]: RichFormat_upvr (copied, readonly)
			[5]: RedCards_upvr (readonly)
			[6]: Rebirths_upvr (readonly)
			[7]: PlaytimeSeconds_upvr (readonly)
		]]
		if not var7_result1_upvr_3() then
			local var96 = var27_upvr
			if var96 then
				var96 = var27_upvr.price
			end
			if var96 == math.huge then
				return "inf"
			end
			return string.format(Money_upvr.format or "", RichFormat_upvr.number.Abbreviate(var96 or 0))
		end
		if var27_upvr and var27_upvr.flags then
			for _, v_4 in var27_upvr.flags do
				local _2 = v_4[2]
				local var98 = 1
				if _2 == "BoostedByRedCards" then
					var98 = math.max(1, (1 + RedCards_upvr()) ^ v_4[3])
				elseif _2 == "BoostedByRebirths" then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					var98 = math.max(1, (1 + Rebirths_upvr()) ^ v_4[3])
				elseif _2 == "BoostedByPlaytime" then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					var98 = math.max(1, (1 + PlaytimeSeconds_upvr()) ^ v_4[3])
				end
				local var99
				if var99 < var98 then
					local function INLINED_7() -- Internal function, doesn't exist in bytecode
						var99 = RichFormat_upvr.number.Abbreviate(var98)
						return var99
					end
					if 1000 > var98 or not INLINED_7() then
						var99 = tostring(math.floor(var98 * 100) / 100)
					end
					return `{var99}x`
				end
			end
		end
		return "Owned"
	end)
	apply_upvr(clone.Price.TextLabel)(tbl_2)
	apply_upvr(clone.NameLabel)({
		Text = derive_upvr(function() -- Line 256
			--[[ Upvalues[2]:
				[1]: tonumber_result1_upvr (readonly)
				[2]: tonumber_result1_upvr_2 (readonly)
			]]
			return `Upgrade {tonumber_result1_upvr}-{tonumber_result1_upvr_2}`
		end);
	})
	apply_upvr(clone.TextLabel)({
		Text = derive_upvr(function() -- Line 262
			--[[ Upvalues[1]:
				[1]: var27_upvr (readonly)
			]]
			local var104
			local function INLINED_8() -- Internal function, doesn't exist in bytecode
				var104 = var27_upvr.text
				return var104
			end
			if not var27_upvr or not INLINED_8() then
				var104 = ""
			end
			return var104
		end);
	})
end