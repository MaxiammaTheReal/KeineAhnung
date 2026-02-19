-- Name: flatten
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Array.flatten
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7255575000017416 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:55
-- Luau version 6, Types version 3
-- Time taken: 0.002080 seconds

local function flatten_upvr(arg1, arg2) -- Line 24, Named "flatten"
	--[[ Upvalues[1]:
		[1]: flatten_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var17
	if type(arg2) == "number" then
	else
		var17 = math.huge
	end
	for _, v in ipairs(arg1) do
		if type(v) == "table" and 0 < var17 then
			for _, v_2 in ipairs(flatten_upvr(v, var17 - 1)) do
				table.insert({}, v_2)
				local var24
			end
		else
			table.insert(var24, v)
		end
	end
	return var24
end
return flatten_upvr