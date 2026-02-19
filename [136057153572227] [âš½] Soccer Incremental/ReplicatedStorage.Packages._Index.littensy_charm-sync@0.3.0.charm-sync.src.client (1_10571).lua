-- Name: client
-- Path: game:GetService("ReplicatedStorage").Packages._Index['littensy_charm-sync@0'].3.0['charm-sync'].src.client
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6164720000015222 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:04
-- Luau version 6, Types version 3
-- Time taken: 0.002909 seconds

local patch_upvr = require(script.Parent.patch)
local charm_upvr = require(script.Parent.Parent.Parent.charm)
return function(arg1) -- Line 36, Named "client"
	--[[ Upvalues[2]:
		[1]: patch_upvr (readonly)
		[2]: charm_upvr (readonly)
	]]
	local atoms_upvr = arg1.atoms
	local var4_upvr
	if arg1.ignoreUnhydrated == false then
		var4_upvr = false
	else
		var4_upvr = true
	end
	local module = {}
	local var6_upvw = false
	local function _(arg1_2) -- Line 43, Named "hydrate"
		--[[ Upvalues[2]:
			[1]: var6_upvw (read and write)
			[2]: atoms_upvr (readonly)
		]]
		var6_upvw = true
		for i, v in next, arg1_2 do
			atoms_upvr[i](v)
		end
	end
	local function apply_upvr(arg1_3) -- Line 52, Named "apply"
		--[[ Upvalues[2]:
			[1]: atoms_upvr (readonly)
			[2]: patch_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local tbl = {}
		for i_2, v_2 in next, atoms_upvr do
			tbl[i_2] = v_2()
		end
		for i_3, v_3 in next, atoms_upvr do
			v_3(patch_upvr.apply(tbl, arg1_3)[i_3])
			local _
		end
	end
	function module.sync(arg1_4, ...) -- Line 66
		--[[ Upvalues[5]:
			[1]: charm_upvr (copied, readonly)
			[2]: var6_upvw (read and write)
			[3]: atoms_upvr (readonly)
			[4]: var4_upvr (readonly)
			[5]: apply_upvr (readonly)
		]]
		for i_4 = 1, select('#', ...) do
			local selected_arg_upvr = select(i_4, ...)
			charm_upvr.batch(function() -- Line 70
				--[[ Upvalues[5]:
					[1]: selected_arg_upvr (readonly)
					[2]: var6_upvw (copied, read and write)
					[3]: atoms_upvr (copied, readonly)
					[4]: var4_upvr (copied, readonly)
					[5]: apply_upvr (copied, readonly)
				]]
				if selected_arg_upvr.type == "init" then
					var6_upvw = true
					for i_5, v_4 in next, selected_arg_upvr.data do
						atoms_upvr[i_5](v_4)
					end
				elseif not var4_upvr or var6_upvw then
					apply_upvr(selected_arg_upvr.data)
				end
			end)
		end
	end
	return module
end