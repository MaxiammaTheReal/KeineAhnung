-- Name: compose.spec
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_remo@1.5.2.remo.utils.compose.spec
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5878330999985337 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:45
-- Luau version 6, Types version 3
-- Time taken: 0.007787 seconds

return function() -- Line 1
	local compose_upvr = require(script.Parent.compose)
	it("should combine the given middleware", function() -- Line 5
		--[[ Upvalues[1]:
			[1]: compose_upvr (readonly)
		]]
		local var4_upvw
		local var5_upvw
		local var6_upvw
		local function var7(arg1) -- Line 8
			return function(...) -- Line 9
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				return arg1(...) + 1
			end
		end
		expect(compose_upvr({var7, var7, var7})(function(...) -- Line 14
			--[[ Upvalues[3]:
				[1]: var4_upvw (read and write)
				[2]: var5_upvw (read and write)
				[3]: var6_upvw (read and write)
			]]
			local var11, var12, var13 = ...
			var4_upvw = var11
			var5_upvw = var12
			var6_upvw = var13
			return 0
		end, {})("foo", "bar", "baz")).to.equal(3)
		expect(var4_upvw).to.equal("foo")
		expect(var5_upvw).to.equal("bar")
		expect(var6_upvw).to.equal("baz")
	end)
	it("should work with no middleware", function() -- Line 25
		--[[ Upvalues[1]:
			[1]: compose_upvr (readonly)
		]]
		local var15_upvw
		local var16_upvw
		local var17_upvw
		expect(compose_upvr({})(function(...) -- Line 28
			--[[ Upvalues[3]:
				[1]: var15_upvw (read and write)
				[2]: var16_upvw (read and write)
				[3]: var17_upvw (read and write)
			]]
			local var19, var20, var21 = ...
			var15_upvw = var19
			var16_upvw = var20
			var17_upvw = var21
			return 123
		end, {})("foo", "bar", "baz")).to.equal(123)
		expect(var15_upvw).to.equal("foo")
		expect(var16_upvw).to.equal("bar")
		expect(var17_upvw).to.equal("baz")
	end)
	it("should be cancellable", function() -- Line 39
		--[[ Upvalues[1]:
			[1]: compose_upvr (readonly)
		]]
		local var23_upvw = 0
		local var28 = compose_upvr({function(arg1) -- Line 42
			return function(arg1_2) -- Line 43
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				if arg1_2 then
					return nil
				end
				return arg1()
			end
		end})(function() -- Line 48
			--[[ Upvalues[1]:
				[1]: var23_upvw (read and write)
			]]
			var23_upvw += 1
		end, {})
		var28(false)
		var28(true)
		var28(false)
		expect(var23_upvw).to.equal(2)
	end)
	it("should allow multiple return values", function() -- Line 59
		--[[ Upvalues[1]:
			[1]: compose_upvr (readonly)
		]]
		local function var30(arg1) -- Line 60
			return function(...) -- Line 61
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				return arg1(...)
			end
		end
		local var34, var35, var36 = compose_upvr({var30, var30, var30})(function() -- Line 66
			return "foo", "bar", "baz"
		end, {})("foo", "bar", "baz")
		expect(var34).to.equal("foo")
		expect(var35).to.equal("bar")
		expect(var36).to.equal("baz")
	end)
	it("should pass the correct arguments", function() -- Line 77
		--[[ Upvalues[1]:
			[1]: compose_upvr (readonly)
		]]
		local tbl_upvw_2 = {}
		local tbl_upvw_3 = {}
		local tbl_upvw = {}
		compose_upvr({function(arg1) -- Line 80
			--[[ Upvalues[1]:
				[1]: tbl_upvw_2 (read and write)
			]]
			return function(...) -- Line 81
				--[[ Upvalues[2]:
					[1]: tbl_upvw_2 (copied, read and write)
					[2]: arg1 (readonly)
				]]
				tbl_upvw_2 = {...}
				return arg1(...)
			end
		end, function(arg1) -- Line 87
			--[[ Upvalues[1]:
				[1]: tbl_upvw_3 (read and write)
			]]
			return function(...) -- Line 88
				--[[ Upvalues[2]:
					[1]: tbl_upvw_3 (copied, read and write)
					[2]: arg1 (readonly)
				]]
				tbl_upvw_3 = {...}
				return arg1(...)
			end
		end, function(arg1) -- Line 94
			--[[ Upvalues[1]:
				[1]: tbl_upvw (read and write)
			]]
			return function(...) -- Line 95
				--[[ Upvalues[2]:
					[1]: tbl_upvw (copied, read and write)
					[2]: arg1 (readonly)
				]]
				tbl_upvw = {...}
				return arg1(...)
			end
		end})(function(...) -- Line 101
			return ...
		end, {})("foo", "bar", "baz")
		for _, v in {tbl_upvw_2, tbl_upvw_3, tbl_upvw} do
			expect(v[1]).to.equal("foo")
			expect(v[2]).to.equal("bar")
			expect(v[3]).to.equal("baz")
		end
	end)
end