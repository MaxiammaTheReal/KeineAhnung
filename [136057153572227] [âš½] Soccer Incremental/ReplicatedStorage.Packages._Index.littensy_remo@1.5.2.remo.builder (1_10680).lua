-- Name: builder
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_remo@1.5.2.remo.builder
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6661306000023615 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:28
-- Luau version 6, Types version 3
-- Time taken: 0.001834 seconds

return {
	remote = function(...) -- Line 3, Named "remote"
		local tbl_upvr = {
			parameters = {...};
			returns = {};
			middleware = {};
			unreliable = false;
		}
		local module_upvr = {
			type = "event";
			metadata = tbl_upvr;
		}
		function module_upvr.returns(...) -- Line 16
			--[[ Upvalues[2]:
				[1]: module_upvr (readonly)
				[2]: tbl_upvr (readonly)
			]]
			module_upvr.type = "function"
			tbl_upvr.returns = {...}
			return module_upvr
		end
		function module_upvr.middleware(...) -- Line 22
			--[[ Upvalues[2]:
				[1]: tbl_upvr (readonly)
				[2]: module_upvr (readonly)
			]]
			for i = 1, select('#', ...) do
				table.insert(tbl_upvr.middleware, select(i, ...))
			end
			return module_upvr
		end
		function module_upvr.unreliable() -- Line 29
			--[[ Upvalues[2]:
				[1]: tbl_upvr (readonly)
				[2]: module_upvr (readonly)
			]]
			tbl_upvr.unreliable = true
			return module_upvr
		end
		return module_upvr
	end;
	namespace = function(arg1) -- Line 37, Named "namespace"
		local module = {
			type = "namespace";
		}
		module.remotes = arg1
		return module
	end;
}