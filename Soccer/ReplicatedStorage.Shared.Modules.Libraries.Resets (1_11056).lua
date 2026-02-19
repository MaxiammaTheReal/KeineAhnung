-- Name: Resets
-- Path: game:GetService("ReplicatedStorage").Shared.Modules.Libraries.Resets
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 1.0257648999977391 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:32:54
-- Luau version 6, Types version 3
-- Time taken: 0.008733 seconds

return {
	Content = {{
		name = {"Rebirths", "Rebirth"};
		image = "rbxassetid://130753270138316";
		path = "leaderstats/Rebirths";
		requirements = {
			level = 5;
		};
		properties = {
			price = 1000;
			bulkable = true;
			round = false;
			amount = 1;
			currency = "Money";
			multiplier = "Rebirths";
		};
		playerLoopAtomsToReset = {"Footballs"};
		playerDataStatsToReset = {{"leaderstats/Money", 0}, {"inventory/Upgrades", 0, "Football/1"}, {"inventory/Upgrades", 0, "Football/2"}, {"inventory/Upgrades", 0, "Football/3"}};
	}, {
		name = {"Points", "Points"};
		image = "rbxassetid://82669126906570";
		requirements = {
			area = 3;
		};
		properties = {
			price = 0;
			cooldown = 300;
			cooldownProduct = "Stat Points Skip Timer";
			bulkable = true;
			round = false;
			amount = 1;
			currency = "Points";
			refund = true;
		};
		playerLoopAtomsToReset = {};
		playerDataStatsToReset = {{"inventory/Upgrades", 0, "Football/9"}, {"inventory/Upgrades", 0, "Football/10"}, {"inventory/Upgrades", 0, "Football/11"}, {"inventory/Upgrades", 0, "Gold/1"}};
	}, {
		name = {"Gold", ""};
		path = "privatestats/Gold";
		description = "Reset Progress (except Tiers and Leveel) for one Gold";
		requirements = {
			area = 3;
		};
		properties = {
			price = 1000000000000000;
			bulkable = false;
			round = false;
			amount = 1;
			currency = "Rebirths";
			multiplier = "Gold";
		};
		playerTreesToReset = {1};
		playerLoopAtomsToReset = {"Footballs"};
		playerDataStatsToReset = {{"leaderstats/Money", 0}, {"leaderstats/Rebirths", 0}, {"privatestats/Siu", 0}, {"privatestats/Red Cards", 0}, {"inventory/Upgrades", 0, "Football/1"}, {"inventory/Upgrades", 0, "Football/2"}, {"inventory/Upgrades", 0, "Football/3"}, {"inventory/Upgrades", 0, "Football/4"}, {"inventory/Upgrades", 0, "Football/5"}, {"inventory/Upgrades", 0, "Football/6"}, {"inventory/Upgrades", 0, "Football/7"}, {"inventory/Upgrades", 0, "Football/8"}, {"inventory/Upgrades", 0, "Siu/1"}, {"inventory/Upgrades", 0, "Siu/2"}, {"inventory/Upgrades", 0, "Rebirth/1"}, {"inventory/Upgrades", 0, "Rebirth/2"}, {"inventory/Upgrades", 0, "Clicker/1"}};
	}, {
		name = {"Prestige", "Prestige"};
		image = "rbxassetid://130753270138316";
		path = "privatestats/Prestige";
		requirements = {
			area = 5;
		};
		properties = {
			price = 0;
			bulkable = false;
			round = false;
			amount = 0.1;
			currency = "Goals";
			multiplier = "Prestige";
			increment = "PrestigeCount";
		};
		playerTreesToReset = {1, 2, 3};
		playerMerchantReset = true;
		playerRefundPoints = true;
		playerLoopAtomsToReset = {"Footballs"};
		playerDataStatsToReset = {{"leaderstats/Money", 0}, {"leaderstats/Rebirths", 0}, {"privatestats/Siu", 0}, {"privatestats/Red Cards", 0}, {"privatestats/Gold", 0}, {"privatestats/Silver", 0}, {"privatestats/PenaltyGoals", 0}, {"privatestats/LegStrength", 0}, {"inventory/Areas", {1}}, {"inventory/Upgrades", 0, "Football/1"}, {"inventory/Upgrades", 0, "Football/2"}, {"inventory/Upgrades", 0, "Football/3"}, {"inventory/Upgrades", 0, "Football/4"}, {"inventory/Upgrades", 0, "Football/5"}, {"inventory/Upgrades", 0, "Football/6"}, {"inventory/Upgrades", 0, "Football/7"}, {"inventory/Upgrades", 0, "Football/8"}, {"inventory/Upgrades", 0, "Football/9"}, {"inventory/Upgrades", 0, "Football/10"}, {"inventory/Upgrades", 0, "Football/11"}, {"inventory/Upgrades", 0, "Football/12"}, {"inventory/Upgrades", 0, "Siu/1"}, {"inventory/Upgrades", 0, "Siu/2"}, {"inventory/Upgrades", 0, "Rebirth/1"}, {"inventory/Upgrades", 0, "Rebirth/2"}, {"inventory/Upgrades", 0, "Clicker/1"}, {"inventory/Upgrades", 0, "Gold/1"}, {"inventory/Upgrades", 0, "Gold/2"}, {"inventory/Upgrades", 0, "Silver/1"}, {"inventory/Upgrades", 0, "Penalty/1"}, {"inventory/Upgrades", 0, "Penalty/2"}, {"inventory/Ascensions", 0, 1}};
	}};
}