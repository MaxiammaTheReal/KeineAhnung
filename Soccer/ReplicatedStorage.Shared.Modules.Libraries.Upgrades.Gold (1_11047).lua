-- Name: Gold
-- Path: game:GetService("ReplicatedStorage").Shared.Modules.Libraries.Upgrades.Gold
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 1.0043932000044151 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:32:53
-- Luau version 6, Types version 3
-- Time taken: 0.001696 seconds

return {
	Content = {{
		name = "Increase Gold Value";
		image = "rbxassetid://128600558604918";
		format = "%sx";
		currency = "Points";
		requirements = {
			area = 3;
			tree = "2/8";
		};
		properties = {
			type = "increment";
			tag = "GOLDVALUE_MULTIPLIER";
			start = 1;
			max = 50;
			increment = 0.05;
			priceBase = 1;
			priceMultiplier = 1;
			disablePayToWin = true;
		};
	}, {
		name = "Increase Gold Value";
		image = "rbxassetid://128600558604918";
		format = "%sx";
		currency = "Gold";
		requirements = {
			area = 3;
			tree = "2/5";
		};
		properties = {
			type = "increment";
			tag = "GOLDVALUE_MULTIPLIER";
			start = 1;
			max = 100;
			increment = 1;
			priceBase = 1;
			priceMultiplier = 1.14;
			disablePayToWin = true;
		};
	}};
}