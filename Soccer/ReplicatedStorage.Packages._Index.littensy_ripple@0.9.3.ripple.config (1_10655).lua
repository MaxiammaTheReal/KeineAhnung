-- Name: config
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_ripple@0.9.3.ripple.config
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7083911999943666 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:09
-- Luau version 6, Types version 3
-- Time taken: 0.001138 seconds

return {
	spring = {
		default = {
			tension = 170;
			friction = 26;
		};
		gentle = {
			tension = 120;
			friction = 14;
		};
		wobbly = {
			tension = 180;
			friction = 12;
		};
		stiff = {
			tension = 210;
			friction = 20;
		};
		slow = {
			tension = 280;
			friction = 60;
		};
		molasses = {
			tension = 280;
			friction = 120;
		};
	};
	linear = {
		default = {
			speed = 1;
		};
	};
	tween = {
		default = {
			time = 1;
			style = Enum.EasingStyle.Quad;
			direction = Enum.EasingDirection.Out;
			repeatCount = 0;
			reverses = false;
			delayTime = 0;
		};
	};
}