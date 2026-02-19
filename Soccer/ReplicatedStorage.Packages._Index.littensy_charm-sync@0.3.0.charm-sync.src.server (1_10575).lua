-- Name: server
-- Path: game:GetService("ReplicatedStorage").Packages._Index['littensy_charm-sync@0'].3.0['charm-sync'].src.server
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6834308000034071 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:08
-- Luau version 6, Types version 3
-- Time taken: 0.012505 seconds

local charm_upvr = require(script.Parent.Parent.Parent.charm)
local interval_upvr = require(script.Parent.interval)
local patch_upvr = require(script.Parent.patch)
local Players_upvr = game:GetService("Players")
return function(arg1) -- Line 70, Named "server"
	--[[ Upvalues[4]:
		[1]: charm_upvr (readonly)
		[2]: interval_upvr (readonly)
		[3]: patch_upvr (readonly)
		[4]: Players_upvr (readonly)
	]]
	local atoms_upvr = arg1.atoms
	local var14_upvr
	if arg1.autoSerialize == false then
		var14_upvr = false
	else
		var14_upvr = true
	end
	local var15_upvr = arg1.interval or 0
	local module_2 = {}
	local var17_upvw
	local function _() -- Line 79, Named "createSnapshot"
		--[[ Upvalues[1]:
			[1]: atoms_upvr (readonly)
		]]
		local module = {}
		for i, v in next, atoms_upvr do
			module[i] = v()
		end
		return module
	end
	function module_2.hydrate(arg1_2, arg2) -- Line 90
		--[[ Upvalues[2]:
			[1]: var17_upvw (read and write)
			[2]: atoms_upvr (readonly)
		]]
		assert(var17_upvw, "connect() must be called before hydrate()")
		local tbl_3 = {
			type = "init";
		}
		local tbl = {}
		for i_2, v_2 in next, atoms_upvr do
			tbl[i_2] = v_2()
		end
		tbl_3.data = tbl
		var17_upvw(arg2, tbl_3)
	end
	if arg1.preserveHistory then
		local tbl_2_upvw = {}
		for i_3, v_3 in next, atoms_upvr do
			({})[i_3] = v_3()
			local var31
		end
		tbl_2_upvw[1] = var31
		local var32_upvw = false
		local function connect(arg1_3, arg2) -- Line 105
			--[[ Upvalues[10]:
				[1]: var17_upvw (read and write)
				[2]: tbl_2_upvw (read and write)
				[3]: atoms_upvr (readonly)
				[4]: charm_upvr (copied, readonly)
				[5]: var32_upvw (read and write)
				[6]: interval_upvr (copied, readonly)
				[7]: patch_upvr (copied, readonly)
				[8]: var14_upvr (readonly)
				[9]: Players_upvr (copied, readonly)
				[10]: var15_upvr (readonly)
			]]
			local tbl_4_upvr = {}
			var17_upvw = arg2
			local function _(arg1_4, arg2_2, arg3) -- Line 110, Named "pushSnapshot"
				--[[ Upvalues[1]:
					[1]: tbl_2_upvw (copied, read and write)
				]]
				local var38 = tbl_2_upvw[#tbl_2_upvw]
				local var39 = tbl_2_upvw[#tbl_2_upvw - 1]
				if var39 and var39[arg1_4] == arg3 and var38[arg1_4] == arg3 then
					var38[arg1_4] = arg2_2
				else
					local clone_2 = table.clone(var38)
					clone_2[arg1_4] = arg2_2
					table.insert(tbl_2_upvw, clone_2)
				end
			end
			for i_4_upvr, v_4 in next, atoms_upvr do
				tbl_4_upvr[i_4_upvr] = charm_upvr.subscribe(v_4, function(arg1_5, arg2_3) -- Line 129
					--[[ Upvalues[3]:
						[1]: i_4_upvr (readonly)
						[2]: tbl_2_upvw (copied, read and write)
						[3]: var32_upvw (copied, read and write)
					]]
					local var42 = i_4_upvr
					local var43 = tbl_2_upvw[#tbl_2_upvw - 1]
					if var43 and var43[var42] == arg2_3 and tbl_2_upvw[#tbl_2_upvw][var42] == arg2_3 then
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						tbl_2_upvw[#tbl_2_upvw][var42] = arg1_5
					else
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						local clone = table.clone(tbl_2_upvw[#tbl_2_upvw])
						clone[var42] = arg1_5
						table.insert(tbl_2_upvw, clone)
					end
					var32_upvw = true
				end)
			end
			local var2_result1_upvr_2 = interval_upvr(function() -- Line 135
				--[[ Upvalues[6]:
					[1]: var32_upvw (copied, read and write)
					[2]: tbl_2_upvw (copied, read and write)
					[3]: patch_upvr (copied, readonly)
					[4]: var14_upvr (copied, readonly)
					[5]: Players_upvr (copied, readonly)
					[6]: arg2 (readonly)
				]]
				-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
				local var62
				if not var32_upvw then
				else
					var62 = nil
					for i_9, v_9 in next, tbl_2_upvw do
						var62 = v_9
						if i_9 ~= 1 then
							table.insert({}, {
								type = "patch";
								data = patch_upvr.diff(tbl_2_upvw[i_9 - 1], v_9, var14_upvr);
							})
						end
					end
					tbl_2_upvw = {var62}
					var32_upvw = false
					for _, v_10 in next, Players_upvr:GetPlayers() do
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						arg2(v_10, unpack({}))
						local _
					end
				end
			end, var15_upvr)
			return function() -- Line 164
				--[[ Upvalues[2]:
					[1]: var2_result1_upvr_2 (readonly)
					[2]: tbl_4_upvr (readonly)
				]]
				var2_result1_upvr_2()
				for _, v_5 in next, tbl_4_upvr do
					v_5()
				end
			end
		end
		module_2.connect = connect
		local function _sendPatch(arg1_6, arg2) -- Line 173
			--[[ Upvalues[5]:
				[1]: var17_upvw (read and write)
				[2]: var32_upvw (read and write)
				[3]: tbl_2_upvw (read and write)
				[4]: patch_upvr (copied, readonly)
				[5]: var14_upvr (readonly)
			]]
			assert(var17_upvw, "connect() must be called before _sendPatch()")
			if not var32_upvw then
			else
				for i_11, v_11 in next, tbl_2_upvw do
					if i_11 ~= 1 then
						table.insert({}, {
							type = "patch";
							data = patch_upvr.diff(tbl_2_upvw[i_11 - 1], v_11, var14_upvr);
						})
					end
				end
				tbl_2_upvw = {tbl_2_upvw[#tbl_2_upvw]}
				var32_upvw = false
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				var17_upvw(arg2, unpack({}))
			end
		end
		module_2._sendPatch = _sendPatch
		return module_2
	end
	for i_6, v_6 in next, atoms_upvr do
		({})[i_6] = v_6()
		local var77
	end
	local var78_upvw = var77
	local clone_upvr = table.clone(var78_upvw)
	local var80_upvw = false
	function module_2.connect(arg1_7, arg2) -- Line 206
		--[[ Upvalues[11]:
			[1]: var17_upvw (read and write)
			[2]: atoms_upvr (readonly)
			[3]: charm_upvr (copied, readonly)
			[4]: clone_upvr (readonly)
			[5]: var80_upvw (read and write)
			[6]: interval_upvr (copied, readonly)
			[7]: patch_upvr (copied, readonly)
			[8]: var78_upvw (read and write)
			[9]: var14_upvr (readonly)
			[10]: Players_upvr (copied, readonly)
			[11]: var15_upvr (readonly)
		]]
		local tbl_5_upvr = {}
		var17_upvw = arg2
		for i_7_upvr, v_7 in next, atoms_upvr do
			tbl_5_upvr[i_7_upvr] = charm_upvr.subscribe(v_7, function(arg1_8) -- Line 213
				--[[ Upvalues[3]:
					[1]: clone_upvr (copied, readonly)
					[2]: i_7_upvr (readonly)
					[3]: var80_upvw (copied, read and write)
				]]
				clone_upvr[i_7_upvr] = arg1_8
				var80_upvw = true
			end)
		end
		local var2_result1_upvr = interval_upvr(function() -- Line 219
			--[[ Upvalues[7]:
				[1]: var80_upvw (copied, read and write)
				[2]: patch_upvr (copied, readonly)
				[3]: var78_upvw (copied, read and write)
				[4]: clone_upvr (copied, readonly)
				[5]: var14_upvr (copied, readonly)
				[6]: Players_upvr (copied, readonly)
				[7]: arg2 (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			if not var80_upvw then
			else
				var78_upvw = table.clone(clone_upvr)
				var80_upvw = false
				for _, v_12 in next, Players_upvr:GetPlayers() do
					arg2(v_12, {
						type = "patch";
						data = patch_upvr.diff(var78_upvw, clone_upvr, var14_upvr);
					})
					local _
				end
			end
		end, var15_upvr)
		return function() -- Line 237
			--[[ Upvalues[2]:
				[1]: var2_result1_upvr (readonly)
				[2]: tbl_5_upvr (readonly)
			]]
			var2_result1_upvr()
			for _, v_8 in next, tbl_5_upvr do
				v_8()
			end
		end
	end
	function module_2._sendPatch(arg1_9, arg2) -- Line 246
		--[[ Upvalues[6]:
			[1]: var17_upvw (read and write)
			[2]: var80_upvw (read and write)
			[3]: patch_upvr (copied, readonly)
			[4]: var78_upvw (read and write)
			[5]: clone_upvr (readonly)
			[6]: var14_upvr (readonly)
		]]
		assert(var17_upvw, "connect() must be called before _sendPatch()")
		if not var80_upvw then
		else
			var78_upvw = table.clone(clone_upvr)
			var80_upvw = false
			var17_upvw(arg2, {
				type = "patch";
				data = patch_upvr.diff(var78_upvw, clone_upvr, var14_upvr);
			})
		end
	end
	return module_2
end