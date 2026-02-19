-- Name: createSelector.spec
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_reflex@4.3.1.reflex.createSelector.spec
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.8003670000034617 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:23
-- Luau version 6, Types version 3
-- Time taken: 0.015630 seconds

return function() -- Line 1
	local createSelector_upvr = require(script.Parent.createSelector)
	local function selectFoo_upvr(arg1) -- Line 4, Named "selectFoo"
		return arg1.foo
	end
	local function selectBar_upvr(arg1) -- Line 8, Named "selectBar"
		return arg1.bar
	end
	it("should return a function", function() -- Line 12
		--[[ Upvalues[2]:
			[1]: createSelector_upvr (readonly)
			[2]: selectFoo_upvr (readonly)
		]]
		expect(createSelector_upvr({selectFoo_upvr}, function() -- Line 13
		end)).to.be.a("function")
	end)
	it("should return the selected state", function() -- Line 17
		--[[ Upvalues[3]:
			[1]: createSelector_upvr (readonly)
			[2]: selectFoo_upvr (readonly)
			[3]: selectBar_upvr (readonly)
		]]
		expect(createSelector_upvr({selectFoo_upvr, selectBar_upvr}, function(arg1, arg2) -- Line 18
			return arg1..arg2
		end)({
			foo = 1;
			bar = 2;
		})).to.equal("12")
	end)
	it("should memoize the result by comparing arguments", function() -- Line 24
		--[[ Upvalues[3]:
			[1]: createSelector_upvr (readonly)
			[2]: selectFoo_upvr (readonly)
			[3]: selectBar_upvr (readonly)
		]]
		local createSelector_upvr_result1_4 = createSelector_upvr({selectFoo_upvr, selectBar_upvr}, function(arg1, arg2) -- Line 25
			return {}
		end)
		local tbl_3 = {
			foo = 1;
			bar = 2;
		}
		expect(createSelector_upvr_result1_4(tbl_3)).to.equal(createSelector_upvr_result1_4(tbl_3))
		expect(createSelector_upvr_result1_4(tbl_3)).to.never.equal(createSelector_upvr_result1_4({
			foo = 3;
			bar = 4;
		}))
	end)
	it("should memoize the result by comparing dependencies", function() -- Line 33
		--[[ Upvalues[3]:
			[1]: createSelector_upvr (readonly)
			[2]: selectFoo_upvr (readonly)
			[3]: selectBar_upvr (readonly)
		]]
		local createSelector_upvr_result1_7 = createSelector_upvr({selectFoo_upvr, selectBar_upvr}, function(arg1, arg2) -- Line 34
			return {}
		end)
		expect(createSelector_upvr_result1_7({
			foo = 1;
			bar = 2;
		})).to.equal(createSelector_upvr_result1_7({
			foo = 1;
			bar = 2;
		}))
		expect(createSelector_upvr_result1_7({
			foo = 1;
			bar = 2;
		})).to.never.equal(createSelector_upvr_result1_7({
			foo = 3;
			bar = 4;
		}))
	end)
	it("should not call a dependency unless arguments have changed", function() -- Line 41
		--[[ Upvalues[1]:
			[1]: createSelector_upvr (readonly)
		]]
		local var25_upvw = 0
		local function dependency(arg1) -- Line 44
			--[[ Upvalues[1]:
				[1]: var25_upvw (read and write)
			]]
			var25_upvw += 1
			return arg1.foo
		end
		local createSelector_upvr_result1_5 = createSelector_upvr({dependency}, function(arg1) -- Line 49
			return arg1
		end)
		local tbl = {
			foo = 1;
		}
		createSelector_upvr_result1_5(tbl)
		createSelector_upvr_result1_5(tbl)
		expect(var25_upvw).to.equal(1)
		createSelector_upvr_result1_5({
			foo = 1;
		})
		expect(var25_upvw).to.equal(2)
	end)
	it("should not call the selector unless dependencies have changed", function() -- Line 63
		--[[ Upvalues[3]:
			[1]: createSelector_upvr (readonly)
			[2]: selectFoo_upvr (readonly)
			[3]: selectBar_upvr (readonly)
		]]
		local var32_upvw = 0
		local createSelector_upvr_result1_3 = createSelector_upvr({selectFoo_upvr, selectBar_upvr}, function(arg1, arg2) -- Line 66
			--[[ Upvalues[1]:
				[1]: var32_upvw (read and write)
			]]
			var32_upvw += 1
		end)
		local tbl_2 = {
			foo = 1;
			bar = 2;
		}
		createSelector_upvr_result1_3(tbl_2)
		createSelector_upvr_result1_3(tbl_2)
		expect(var32_upvw).to.equal(1)
		createSelector_upvr_result1_3({
			foo = 1;
			bar = 2;
		})
		expect(var32_upvw).to.equal(1)
		createSelector_upvr_result1_3({
			foo = 3;
			bar = 4;
		})
		expect(var32_upvw).to.equal(2)
	end)
	it("should allow nil dependencies and keep order", function() -- Line 83
		--[[ Upvalues[3]:
			[1]: createSelector_upvr (readonly)
			[2]: selectFoo_upvr (readonly)
			[3]: selectBar_upvr (readonly)
		]]
		local createSelector_upvr_result1_6 = createSelector_upvr({selectFoo_upvr, selectBar_upvr}, function(arg1, arg2) -- Line 84
			return (arg1 or "nil")..(arg2 or "nil")
		end)
		expect(createSelector_upvr_result1_6({
			foo = 1;
			bar = 2;
		})).to.equal("12")
		expect(createSelector_upvr_result1_6({
			foo = 1;
		})).to.equal("1nil")
		expect(createSelector_upvr_result1_6({
			foo = 1;
			bar = 2;
		})).to.equal("12")
		expect(createSelector_upvr_result1_6({
			bar = 2;
		})).to.equal("nil2")
		expect(createSelector_upvr_result1_6({})).to.equal("nilnil")
		expect(createSelector_upvr_result1_6({
			foo = 1;
			bar = 2;
		})).to.equal("12")
	end)
	it("should allow nil arguments and keep order", function() -- Line 95
		--[[ Upvalues[1]:
			[1]: createSelector_upvr (readonly)
		]]
		local var49_upvw = 0
		local createSelector_upvr_result1_8 = createSelector_upvr({function(arg1, arg2, arg3) -- Line 99, Named "dependency"
			return (arg1 or "nil")..(arg2 or "nil")..(arg3 or "nil")
		end}, function(arg1) -- Line 103
			--[[ Upvalues[1]:
				[1]: var49_upvw (read and write)
			]]
			var49_upvw += 1
			return arg1
		end)
		createSelector_upvr_result1_8()
		expect(createSelector_upvr_result1_8()).to.equal("nilnilnil")
		expect(var49_upvw).to.equal(1)
		createSelector_upvr_result1_8(nil, 1, nil)
		expect(createSelector_upvr_result1_8(nil, 1, nil)).to.equal("nil1nil")
		expect(var49_upvw).to.equal(2)
		createSelector_upvr_result1_8(nil, nil, nil)
		expect(createSelector_upvr_result1_8(nil, nil, nil)).to.equal("nilnilnil")
		expect(var49_upvw).to.equal(3)
		createSelector_upvr_result1_8(1, nil, 1)
		expect(createSelector_upvr_result1_8(1, nil, 1)).to.equal("1nil1")
		expect(var49_upvw).to.equal(4)
		createSelector_upvr_result1_8(1, 1, nil)
		expect(createSelector_upvr_result1_8(1, 1, nil)).to.equal("11nil")
		expect(var49_upvw).to.equal(5)
	end)
	it("should receive an equalityCheck option", function() -- Line 138
		--[[ Upvalues[2]:
			[1]: createSelector_upvr (readonly)
			[2]: selectFoo_upvr (readonly)
		]]
		local var2_result1 = createSelector_upvr({selectFoo_upvr}, function(arg1) -- Line 141
			return {
				value = arg1.value;
			}
		end, {
			equalityCheck = function(arg1, arg2) -- Line 144, Named "equalityCheck"
				local var58
				if arg1.value ~= arg2.value then
					var58 = false
				else
					var58 = true
				end
				return var58
			end;
		})
		local var59_result1 = var2_result1({
			foo = {
				value = 1;
			};
		})
		expect(var59_result1).to.be.a("table")
		expect(var59_result1.value).to.equal(1)
		local var59_result1_2 = var2_result1({
			foo = {
				value = 1;
			};
		})
		expect(var59_result1_2).to.equal(var59_result1)
		local var2_result1_result1 = var2_result1({
			foo = {
				value = 2;
			};
		})
		expect(var2_result1_result1).to.never.equal(var59_result1_2)
		expect(var2_result1_result1.value).to.equal(2)
		expect(var2_result1({
			foo = {
				value = 2;
			};
		})).to.equal(var2_result1_result1)
	end)
	it("should receive a resultEqualityCheck option", function() -- Line 164
		--[[ Upvalues[2]:
			[1]: createSelector_upvr (readonly)
			[2]: selectFoo_upvr (readonly)
		]]
		local tbl_4 = {}
		local function resultEqualityCheck(arg1, arg2) -- Line 170
			local var76
			if arg1.value ~= arg2.value then
				var76 = false
			else
				var76 = true
			end
			return var76
		end
		tbl_4.resultEqualityCheck = resultEqualityCheck
		local createSelector_upvr_result1_2 = createSelector_upvr({selectFoo_upvr}, function(arg1) -- Line 167
			return {
				value = arg1.value;
			}
		end, tbl_4)
		local createSelector_upvr_result1_2_result1 = createSelector_upvr_result1_2({
			foo = {
				value = 1;
			};
		})
		expect(createSelector_upvr_result1_2_result1).to.be.a("table")
		expect(createSelector_upvr_result1_2_result1.value).to.equal(1)
		local createSelector_upvr_result1_2_result1_2 = createSelector_upvr_result1_2({
			foo = {
				value = 1;
			};
		})
		expect(createSelector_upvr_result1_2_result1_2).to.equal(createSelector_upvr_result1_2_result1)
		local var77_result1 = createSelector_upvr_result1_2({
			foo = {
				value = 2;
			};
		})
		expect(var77_result1).to.never.equal(createSelector_upvr_result1_2_result1_2)
		expect(var77_result1.value).to.equal(2)
		expect(createSelector_upvr_result1_2({
			foo = {
				value = 2;
			};
		})).to.equal(var77_result1)
	end)
	it("should receive an equalityCheck as options", function() -- Line 190
		--[[ Upvalues[2]:
			[1]: createSelector_upvr (readonly)
			[2]: selectFoo_upvr (readonly)
		]]
		local var2_result1_2 = createSelector_upvr({selectFoo_upvr}, function(arg1) -- Line 193
			return {
				value = arg1.value;
			}
		end, function(arg1, arg2) -- Line 195
			local var94
			if arg1.value ~= arg2.value then
				var94 = false
			else
				var94 = true
			end
			return var94
		end)
		local var95_result1 = var2_result1_2({
			foo = {
				value = 1;
			};
		})
		expect(var95_result1).to.be.a("table")
		expect(var95_result1.value).to.equal(1)
		local var95_result1_2 = var2_result1_2({
			foo = {
				value = 1;
			};
		})
		expect(var95_result1_2).to.equal(var95_result1)
		local var2_result1_2_result1 = var2_result1_2({
			foo = {
				value = 2;
			};
		})
		expect(var2_result1_2_result1).to.never.equal(var95_result1_2)
		expect(var2_result1_2_result1.value).to.equal(2)
		expect(var2_result1_2({
			foo = {
				value = 2;
			};
		})).to.equal(var2_result1_2_result1)
	end)
	it("should receive dependencies directly as parameters", function() -- Line 214
		--[[ Upvalues[3]:
			[1]: createSelector_upvr (readonly)
			[2]: selectFoo_upvr (readonly)
			[3]: selectBar_upvr (readonly)
		]]
		local var2_result1_3 = createSelector_upvr(selectFoo_upvr, selectBar_upvr, function(arg1, arg2) -- Line 217
			return {
				value = arg1 + arg2;
			}
		end)
		local var2_result1_3_result1_4 = var2_result1_3({
			foo = 1;
			bar = 1;
		})
		expect(var2_result1_3_result1_4).to.be.a("table")
		expect(var2_result1_3_result1_4.value).to.equal(2)
		local var2_result1_3_result1 = var2_result1_3({
			foo = 1;
			bar = 1;
		})
		expect(var2_result1_3_result1).to.equal(var2_result1_3_result1_4)
		local var110_result1 = var2_result1_3({
			foo = 2;
			bar = 1;
		})
		expect(var110_result1).to.never.equal(var2_result1_3_result1)
		expect(var110_result1.value).to.equal(3)
		local var2_result1_3_result1_3 = var2_result1_3({
			foo = 2;
			bar = 1;
		})
		expect(var2_result1_3_result1_3).to.equal(var110_result1)
		local var2_result1_3_result1_2 = var2_result1_3({
			foo = 2;
			bar = 2;
		})
		expect(var2_result1_3_result1_2).to.never.equal(var2_result1_3_result1_3)
		expect(var2_result1_3_result1_2.value).to.equal(4)
	end)
	it("should receive equality options when passing dependencies directly", function() -- Line 240
		--[[ Upvalues[3]:
			[1]: createSelector_upvr (readonly)
			[2]: selectFoo_upvr (readonly)
			[3]: selectBar_upvr (readonly)
		]]
		local createSelector_upvr_result1 = createSelector_upvr(selectFoo_upvr, selectBar_upvr, function(arg1, arg2) -- Line 243
			return {
				value = arg1.value;
			}
		end, {
			resultEqualityCheck = function(arg1, arg2) -- Line 246, Named "resultEqualityCheck"
				local var125
				if arg1.value ~= arg2.value then
					var125 = false
				else
					var125 = true
				end
				return var125
			end;
		})
		local var126_result1 = createSelector_upvr_result1({
			foo = {
				value = 1;
			};
		})
		expect(var126_result1).to.be.a("table")
		expect(var126_result1.value).to.equal(1)
		local createSelector_upvr_result1_result1 = createSelector_upvr_result1({
			foo = {
				value = 1;
			};
		})
		expect(createSelector_upvr_result1_result1).to.equal(var126_result1)
		local createSelector_upvr_result1_result1_2 = createSelector_upvr_result1({
			foo = {
				value = 2;
			};
		})
		expect(createSelector_upvr_result1_result1_2).to.never.equal(createSelector_upvr_result1_result1)
		expect(createSelector_upvr_result1_result1_2.value).to.equal(2)
		expect(createSelector_upvr_result1({
			foo = {
				value = 2;
			};
		})).to.equal(createSelector_upvr_result1_result1_2)
	end)
end