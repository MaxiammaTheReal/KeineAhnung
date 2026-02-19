-- Name: findWhereLast
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Array.findWhereLast
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6011810999989393 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:54
-- Luau version 6, Types version 3
-- Time taken: 0.001156 seconds

return function(arg1, arg2, arg3) -- Line 25, Named "findWhereLast"
	-- KONSTANTERROR: [13] 11. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 11. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 18 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [13.4]
	if nil == "number" then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [13.197202]
		if arg3 < nil then
			-- KONSTANTWARNING: GOTO [15] #13
		end
	else
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [14.3]
	end
	-- KONSTANTERROR: [0] 1. Error Block 18 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 13. Error Block 14 start (CF ANALYSIS FAILED)
	for i = nil, 1, -1 do
		if arg2(arg1[i], i, arg1) then
			return i
		end
	end
	-- KONSTANTERROR: [15] 13. Error Block 14 end (CF ANALYSIS FAILED)
end