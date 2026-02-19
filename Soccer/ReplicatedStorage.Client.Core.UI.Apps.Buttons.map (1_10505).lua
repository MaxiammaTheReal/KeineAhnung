-- Name: map
-- Path: game:GetService("ReplicatedStorage").Client.Core.UI.Apps.Buttons.map
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6550182999999379 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:12
-- Luau version 6, Types version 3
-- Time taken: 0.004428 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local any_GetByName_result1, any_GetByName_result2 = require(ReplicatedStorage.Shared.Modules.Libraries.Products):GetByName("2x Gold")
return {
	Shop = {
		image = "rbxassetid://136872871651651";
		order = 1;
		behaviour = {
			name = "toggleFrame";
			arguments = {"Shop"};
		};
		properties = {
			scale = 1;
			topbar = false;
			shake = true;
			sunburst = true;
			glow = true;
		};
	};
	Settings = {
		image = "rbxassetid://113062130870894";
		order = 2;
		behaviour = {
			name = "toggleFrame";
			arguments = {"Settings"};
		};
		properties = {
			scale = 1;
			topbar = true;
			shake = false;
			sunburst = false;
			glow = true;
		};
	};
	InviteFriends = {
		image = "rbxassetid://81909755662991";
		order = 2;
		behaviour = {
			name = "inviteFriends";
			arguments = {};
		};
		properties = {
			scale = 1;
			topbar = true;
			shake = false;
			sunburst = false;
			glow = true;
		};
	};
	["Auto Kick"] = {
		image = "rbxassetid://106760970686062";
		order = 3;
		behaviour = {
			name = "toggleFootballAuto";
			arguments = {"rbxassetid://98247556829503", "rbxassetid://106760970686062"};
		};
		properties = {
			scale = 1;
			topbar = false;
			shake = false;
			sunburst = false;
			glow = false;
			area = "Area1/Football";
		};
	};
	CashProducts = {
		image = "rbxassetid://136872871651651";
		order = 4;
		behaviour = {
			name = "productShuffle";
			arguments = {require(ReplicatedStorage.Shared.Modules.Libraries.Products.DevProduct.Cash)};
		};
		properties = {
			scale = 1;
			topbar = false;
			shake = true;
			sunburst = true;
			glow = true;
			area = {1};
		};
	};
	RedCardsProducts = {
		image = "rbxassetid://136872871651651";
		order = 4;
		behaviour = {
			name = "productShuffle";
			arguments = {require(ReplicatedStorage.Shared.Modules.Libraries.Products.DevProduct.RedCards)};
		};
		properties = {
			scale = 1;
			topbar = false;
			shake = true;
			sunburst = true;
			glow = true;
			area = {2};
		};
	};
	GoldProducts = {
		image = "rbxassetid://136872871651651";
		order = 4;
		behaviour = {
			name = "productShuffle";
			arguments = {require(ReplicatedStorage.Packages.Sift).Dictionary.join({
				[any_GetByName_result2] = any_GetByName_result1;
			}, require(ReplicatedStorage.Shared.Modules.Libraries.Products.DevProduct.Gold))};
		};
		properties = {
			scale = 1;
			topbar = false;
			shake = true;
			sunburst = true;
			glow = true;
			area = {3};
		};
	};
	GoalProducts = {
		image = "rbxassetid://136872871651651";
		order = 4;
		behaviour = {
			name = "productShuffle";
			arguments = {require(ReplicatedStorage.Shared.Modules.Libraries.Products.DevProduct.Goals)};
		};
		properties = {
			scale = 1;
			topbar = false;
			shake = true;
			sunburst = true;
			glow = true;
			area = {4};
			zone = {"Shooting"};
		};
	};
	SilverProducts = {
		image = "rbxassetid://136872871651651";
		order = 4;
		behaviour = {
			name = "productShuffle";
			arguments = {require(ReplicatedStorage.Shared.Modules.Libraries.Products.DevProduct.Silver)};
		};
		properties = {
			scale = 1;
			topbar = false;
			shake = true;
			sunburst = true;
			glow = true;
			area = {4};
		};
	};
}