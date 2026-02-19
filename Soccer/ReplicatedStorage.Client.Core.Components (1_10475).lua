-- Name: Components
-- Path: game:GetService("ReplicatedStorage").Client.Core.Components
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6036023999986355 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:15:49
-- Luau version 6, Types version 3
-- Time taken: 0.002059 seconds

local setmetatable_result1 = setmetatable({
	Name = script.Name;
}, require(game:GetService("ReplicatedStorage").Shared.Util).framework.client)
function setmetatable_result1.Init(arg1) -- Line 16
end
function setmetatable_result1.Start(arg1) -- Line 20
	local function recur_upvr(arg1_2) -- Line 21, Named "recur"
		--[[ Upvalues[1]:
			[1]: recur_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local children, NONE_2, NONE = arg1_2:GetChildren()
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [28] 24. Error Block 8 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [28] 24. Error Block 8 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [4] 4. Error Block 13 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [28.6]
		if nil then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if not nil then
				-- KONSTANTWARNING: GOTO [28] #24
			end
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil then
			end
		end
		-- KONSTANTERROR: [4] 4. Error Block 13 end (CF ANALYSIS FAILED)
	end
	recur_upvr(script)
	script.ChildAdded:Connect(recur_upvr)
	return {}
end
return setmetatable_result1