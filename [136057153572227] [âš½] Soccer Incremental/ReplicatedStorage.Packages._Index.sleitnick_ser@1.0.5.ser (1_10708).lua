-- Name: ser
-- Path: game:GetService("ReplicatedStorage").Packages._Index.sleitnick_ser@1.0.5.ser
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5514896000022418 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:50
-- Luau version 6, Types version 3
-- Time taken: 0.004081 seconds

local module_upvr = {}
local tbl = {}
local tbl_2 = {}
local function Serialize(arg1) -- Line 73
	return arg1:Serialize()
end
tbl_2.Serialize = Serialize
tbl_2.Deserialize = require(script.Parent.Option).Deserialize
tbl.Option = tbl_2
module_upvr.Classes = tbl
function module_upvr.SerializeArgs(...) -- Line 85
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local packed_2 = table.pack(...)
	for i, v in ipairs(packed_2) do
		if type(v) == "table" then
			local var17 = module_upvr.Classes[v.ClassName]
			if var17 then
				packed_2[i] = var17.Serialize(v)
			end
		end
	end
	return packed_2
end
function module_upvr.SerializeArgsAndUnpack(...) -- Line 103
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local any_SerializeArgs_result1 = module_upvr.SerializeArgs(...)
	return table.unpack(any_SerializeArgs_result1, 1, any_SerializeArgs_result1.n)
end
function module_upvr.DeserializeArgs(...) -- Line 113
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local packed_3 = table.pack(...)
	for i_2, v_2 in ipairs(packed_3) do
		if type(v_2) == "table" then
			local var25 = module_upvr.Classes[v_2.ClassName]
			if var25 then
				packed_3[i_2] = var25.Deserialize(v_2)
			end
		end
	end
	return packed_3
end
function module_upvr.DeserializeArgsAndUnpack(...) -- Line 131
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local any_DeserializeArgs_result1 = module_upvr.DeserializeArgs(...)
	return table.unpack(any_DeserializeArgs_result1, 1, any_DeserializeArgs_result1.n)
end
function module_upvr.Serialize(arg1) -- Line 141
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var29
	if type(arg1) == "table" then
		local var30 = module_upvr.Classes[var29.ClassName]
		if var30 then
			var29 = var30.Serialize(var29)
		end
	end
	return var29
end
function module_upvr.Deserialize(arg1) -- Line 156
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var31
	if type(arg1) == "table" then
		local var32 = module_upvr.Classes[var31.ClassName]
		if var32 then
			var31 = var32.Deserialize(var31)
		end
	end
	return var31
end
function module_upvr.UnpackArgs(arg1) -- Line 171
	return table.unpack(arg1, 1, arg1.n)
end
return module_upvr