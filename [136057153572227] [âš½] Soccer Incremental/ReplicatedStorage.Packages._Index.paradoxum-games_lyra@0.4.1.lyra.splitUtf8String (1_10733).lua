-- Name: splitUtf8String
-- Path: game:GetService("ReplicatedStorage").Packages._Index['paradoxum-games_lyra@0'].4.1.lyra.splitUtf8String
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6620092000011937 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:10
-- Luau version 6, Types version 3
-- Time taken: 0.005045 seconds

return function(arg1, arg2) -- Line 3, Named "splitUtf8String"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 49 start (CF ANALYSIS FAILED)
	local var1
	if typeof(arg1) ~= "string" then
		var1 = false
	else
		var1 = true
	end
	assert(var1, `splitUtf8String: expected string for 'str', got {typeof(arg1)}`)
	if typeof(arg2) ~= "number" then
		var1 = false
		-- KONSTANTWARNING: GOTO [33] #26
	end
	-- KONSTANTERROR: [0] 1. Error Block 49 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [32] 25. Error Block 53 start (CF ANALYSIS FAILED)
	var1 = true
	assert(var1, `splitUtf8String: expected number for 'maxSizeBytes', got {typeof(arg2)}`)
	if 0 >= arg2 then
		var1 = false
	else
		var1 = true
	end
	assert(var1, `splitUtf8String: expected maxSizeBytes to be greater than 0, got {arg2}`)
	if arg1 == "" then
		return {}
	end
	local module = {}
	var1 = 1
	repeat
		local var3 = var1
		local utf8_len_result1 = utf8.len(arg1, var3, math.min(#arg1, var1 + arg2))
		local var5
		if utf8_len_result1 == nil then
			var3 = false
		else
			var3 = true
		end
		var5 = `splitUtf8String: invalid UTF-8 sequence detected at offset {var1}`
		assert(var3, var5)
		var5 = utf8_len_result1 + 1
		local utf8_offset_result1_2 = utf8.offset(arg1, var5, var1)
		if utf8_offset_result1_2 == nil then
			var5 = false
		else
			var5 = true
		end
		assert(var5, `splitUtf8String: malformed UTF-8 sequence at index {utf8_len_result1}`)
		var5 = (utf8_offset_result1_2) - (var1 - 1)
		if arg2 < var5 - 1 then
		end
		var5 = arg1
		local var7 = utf8_len_result1 - 1 + 1
		local utf8_offset_result1 = utf8.offset(var5, var7, var1)
		if utf8_offset_result1 == nil then
			var7 = false
		else
			var7 = true
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var5 = assert
		var5(var7, `splitUtf8String: UTF-8 boundary error at index {utf8_len_result1 - 1}`)
		local var9 = utf8_offset_result1 - 1
		var5 = table.insert
		var5(module, string.sub(arg1, var1, var9))
		var1 = var9 + 1
		var5 = #arg1
	until var5 < var1
	do
		return module
	end
	-- KONSTANTERROR: [32] 25. Error Block 53 end (CF ANALYSIS FAILED)
end