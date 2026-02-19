-- Name: Merchant
-- Path: game:GetService("ReplicatedStorage").Shared.Modules.Libraries.Merchant
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 1.037557099996775 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:32:54
-- Luau version 6, Types version 3
-- Time taken: 0.005006 seconds

local module = {}
local tbl = {{
	name = "+5% Experience";
	image = "rbxassetid://108958252885204";
	max = 25;
	price = 1;
	robux = {
		single = "+5% EXP";
		multiple = "+5% EXP x5";
	};
	stock = {3, 5};
	currency = "Silver";
	rarity = "Common";
	requirements = nil;
	effects = {
		values = {{"ExperienceMultiplier", 1.05, "Multipliers"}};
	};
}, {
	name = "+10% Red Cards";
	image = "rbxassetid://87467310681141";
	max = 20;
	price = 5;
	robux = {
		single = "+10% Red Cards";
		multiple = "+10% Red Cards x5";
	};
	stock = {1, 3};
	currency = "Silver";
	rarity = "Uncommon";
	requirements = nil;
	effects = {
		values = {{"RedCardsAuto", 1.1, "Multipliers"}, {"RedCardsManual", 1.1, "Multipliers"}};
	};
}, {
	name = "+5% Muscle";
	image = "rbxassetid://137190215031188";
	max = 15;
	price = 10;
	chance = 65;
	robux = {
		single = "+5% Muscle";
		multiple = "+5% Muscle x5";
	};
	stock = {1, 2};
	currency = "Silver";
	rarity = "Rare";
	requirements = nil;
	effects = {
		values = {{"TreadmillMultiplier", 1.05, "Multipliers"}};
	};
}, {
	name = "+5% Spawn Rate";
	image = "rbxassetid://139987512627993";
	max = 10;
	price = 50;
	chance = 12;
	robux = {
		single = "+5% Ball Spawn Rate";
		multiple = "+5% Ball Spawn Rate x5";
	};
	stock = {0, 3};
	currency = "Silver";
	rarity = "Rare";
	requirements = nil;
	effects = {
		values = {{"SpawnRate", 1.05, "Multipliers"}};
	};
}, {
	name = "+0.25% Silver Chance";
	image = "rbxassetid://78408464300794";
	max = 20;
	price = 100;
	chance = 4;
	robux = {
		single = "+0.25% Silver Chance";
		multiple = "+0.25% Silver Chance x5";
	};
	stock = {0, 2};
	currency = "Silver";
	rarity = "Legendary";
	requirements = nil;
	effects = {
		values = {{"SilverChance", 0.25, "Increments"}};
	};
}, {
	name = "Free Auto Collect";
	image = "rbxassetid://106760970686062";
	max = 1;
	price = 10000;
	chance = 2;
	currency = "Silver";
	stock = {0, 1};
	rarity = "Mythical";
	requirements = {
		area = 4;
	};
	effects = {
		rewards = {{
			name = "Gamepass";
			arguments = {"Auto"};
		}};
	};
}}
module.Content = tbl
tbl = {}
local var45 = tbl
for i, v in module.Content do
	table.insert(var45, {i, v.weight})
end
return module