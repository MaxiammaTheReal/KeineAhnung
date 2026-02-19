-- Name: constants
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_remo@1.5.2.remo.constants
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6549710000035702 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:33
-- Luau version 6, Types version 3
-- Time taken: 0.000782 seconds

local RunService = game:GetService("RunService")
local module = {}
local any_IsStudio_result1 = RunService:IsStudio()
if any_IsStudio_result1 then
	any_IsStudio_result1 = not RunService:IsRunning()
end
module.IS_EDIT = any_IsStudio_result1
module.IS_STUDIO = RunService:IsStudio()
module.IS_CLIENT = RunService:IsClient()
module.IS_SERVER = RunService:IsServer()
module.IS_TEST = false
return module