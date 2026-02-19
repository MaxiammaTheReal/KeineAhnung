-- Name: map
-- Path: game:GetService("ReplicatedStorage").Client.Core.UI.Apps.Stats.map
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5459835000001476 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:15:59
-- Luau version 6, Types version 3
-- Time taken: 0.003313 seconds

local Currencies = require(game.ReplicatedStorage.Shared.Modules.Libraries.Currencies)
return {{
	name = "Money";
	image = Currencies.Money.image;
	display = "Cash";
	order = 1;
	path = Currencies.Money.path;
	format = Currencies.Money.format;
	gradient = Currencies.Money.gradient;
}, {
	name = "Rebirths";
	image = Currencies.Rebirths.image;
	order = 2;
	path = Currencies.Rebirths.path;
	format = Currencies.Rebirths.format;
	gradient = Currencies.Rebirths.gradient;
}, {
	name = "Siu";
	image = Currencies.Siu.image;
	areas = {"Area2"};
	order = 3;
	path = Currencies.Siu.path;
	format = Currencies.Siu.format;
	gradient = Currencies.Siu.gradient;
}, {
	name = "Red Cards";
	image = Currencies["Red Cards"].image;
	areas = {"Area2"};
	order = 4;
	path = Currencies["Red Cards"].path;
	format = Currencies["Red Cards"].format;
	gradient = Currencies["Red Cards"].gradient;
}, {
	name = "Gold";
	image = Currencies.Gold.image;
	areas = {"Area3"};
	order = 5;
	path = Currencies.Gold.path;
	format = Currencies.Gold.format;
	gradient = Currencies.Gold.gradient;
}, {
	name = "Points";
	image = Currencies.Points.image;
	areas = {"Area3"};
	order = 6;
	path = Currencies.Points.path;
	format = Currencies.Points.format;
	gradient = Currencies.Points.gradient;
}, {
	name = "Silver";
	image = Currencies.Silver.image;
	areas = {"Area4", "Area1"};
	areasNeeded = {4};
	order = 7;
	path = Currencies.Silver.path;
	format = Currencies.Silver.format;
	gradient = Currencies.Silver.gradient;
}, {
	name = "Goals";
	image = Currencies.Goals.image;
	areas = {"Area4"};
	order = 8;
	path = Currencies.Goals.path;
	format = Currencies.Goals.format;
	formatShort = Currencies.Goals.formatShort;
	gradient = Currencies.Goals.gradient;
}}