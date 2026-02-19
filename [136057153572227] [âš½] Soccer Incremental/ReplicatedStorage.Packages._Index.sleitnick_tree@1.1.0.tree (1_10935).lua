-- Name: tree
-- Path: game:GetService("ReplicatedStorage").Packages._Index.sleitnick_tree@1.1.0.tree
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 1.0128983999966295 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:32:47
-- Luau version 6, Types version 3
-- Time taken: 0.003998 seconds

local function _(arg1) -- Line 3, Named "FullNameToPath"
	return arg1:GetFullName():gsub("%.", '/')
end
return {
	Find = function(arg1, arg2, arg3) -- Line 29, Named "Find"
		local var6
		for _, v in arg2:split('/'), nil do
			if v == "" then
				error(`Invalid path: {arg2}`, 2)
			end
			var6 = var6:FindFirstChild(v)
			if var6 == nil then
				error(`Failed to find {arg2} in {arg1:GetFullName():gsub("%.", '/')}`, 2)
			end
		end
		if arg3 and not var6:IsA(arg3) then
			v = var6.ClassName
			error(`Got class {v}; expected to be of type {arg3}`, 2)
		end
		return var6
	end;
	Exists = function(arg1, arg2, arg3) -- Line 69, Named "Exists"
		local var11
		for _, v_2 in arg2:split('/'), nil do
			if v_2 == "" then
				error(`Invalid path: {arg2}`, 2)
			end
			var11 = var11:FindFirstChild(v_2)
			if var11 == nil then
				return false
			end
		end
		if arg3 and not var11:IsA(arg3) then
			return false
		end
		return true
	end;
	Await = function(arg1, arg2, arg3, arg4) -- Line 111, Named "Await"
		local var16
		for _, v_3 in arg2:split('/'), nil do
			if v_3 == "" then
				error(`Invalid path: {arg2}`, 2)
			end
			var16 = var16:WaitForChild(v_3, arg3)
			if var16 == nil then
				error(`Failed to await {arg2} in {arg1:GetFullName():gsub("%.", '/')} (timeout reached)`, 2)
			end
		end
		if arg4 and not var16:IsA(arg4) then
			v_3 = var16.ClassName
			error(`Got class {v_3}; expected to be of type {arg4}`, 2)
		end
		return var16
	end;
}