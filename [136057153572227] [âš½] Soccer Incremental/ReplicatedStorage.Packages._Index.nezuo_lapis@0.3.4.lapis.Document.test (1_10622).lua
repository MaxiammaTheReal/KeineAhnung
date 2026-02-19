-- Name: Document.test
-- Path: game:GetService("ReplicatedStorage").Packages._Index.nezuo_lapis@0.3.4.lapis.Document.test
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.8466803000046639 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:45
-- Luau version 6, Types version 3
-- Time taken: 0.033146 seconds

local function defaultOptions_upvr() -- Line 5, Named "defaultOptions"
	return {
		validate = function(arg1) -- Line 7, Named "validate"
			local var2
			if typeof(arg1.foo) ~= "string" then
				var2 = false
			else
				var2 = true
			end
			return var2, "foo must be a string"
		end;
		defaultData = {
			foo = "bar";
		};
	}
end
local Promise_upvr = require(game:GetService("ReplicatedStorage").Packages.Promise)
return function(arg1) -- Line 14
	--[[ Upvalues[2]:
		[1]: defaultOptions_upvr (readonly)
		[2]: Promise_upvr (readonly)
	]]
	local assertEqual_upvr = arg1.assertEqual
	local shouldThrow_upvr = arg1.shouldThrow
	arg1.test("it should not merge close into save when save is running", function(arg1_2) -- Line 18
		--[[ Upvalues[2]:
			[1]: defaultOptions_upvr (copied, readonly)
			[2]: Promise_upvr (copied, readonly)
		]]
		local any_expect_result1_10 = arg1_2.lapis.createCollection("collection", defaultOptions_upvr()):load("doc"):expect()
		arg1_2.dataStoreService.yield:startYield()
		any_expect_result1_10:write({
			foo = "new";
		})
		arg1_2.dataStoreService.yield:stopYield()
		Promise_upvr.all({any_expect_result1_10:save(), any_expect_result1_10:close()}):expect()
		local var12 = "doc"
		if arg1_2.read("collection", var12).data.foo ~= "new" then
			var12 = false
		else
			var12 = true
		end
		assert(var12, "")
	end)
	arg1.test("it should merge pending saves", function(arg1_3) -- Line 39
		--[[ Upvalues[2]:
			[1]: defaultOptions_upvr (copied, readonly)
			[2]: Promise_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local any_expect_result1_24 = arg1_3.lapis.createCollection("collection", defaultOptions_upvr()):load("doc"):expect()
		arg1_3.dataStoreService.yield:startYield()
		arg1_3.dataStoreService.yield:stopYield()
		arg1_3.dataStoreService.yield:startYield()
		task.wait()
		any_expect_result1_24:close():now("save and close didn't merge"):expect()
		local var16
		if #Promise_upvr.all({any_expect_result1_24:save(), any_expect_result1_24:save()}):expect() ~= 0 then
			var16 = false
		else
			var16 = true
		end
		assert(var16, "")
		var16 = "collection"
		if arg1_3.read(var16, "doc").lockId ~= nil then
		else
		end
		var16 = assert
		var16(true, "")
	end)
	arg1.test("saves data", function(arg1_4) -- Line 70
		--[[ Upvalues[1]:
			[1]: defaultOptions_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
		local any_expect_result1_2 = arg1_4.lapis.createCollection("12345", defaultOptions_upvr()):load("doc"):expect()
		local tbl = {
			foo = "new value";
		}
		any_expect_result1_2:write(tbl)
		any_expect_result1_2:save():expect()
		tbl = "doc"
		local var20 = tbl
		local any_read_result1 = arg1_4.read("12345", var20)
		if typeof(any_read_result1) ~= "table" then
			var20 = false
		else
			var20 = true
		end
		assert(var20, "")
		if typeof(any_read_result1.lockId) ~= "string" then
			var20 = false
			-- KONSTANTWARNING: GOTO [58] #43
		end
		-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [57] 42. Error Block 22 start (CF ANALYSIS FAILED)
		var20 = true
		assert(var20, "")
		if any_read_result1.data.foo ~= "new value" then
			var20 = false
		else
			var20 = true
		end
		assert(var20, "")
		-- KONSTANTERROR: [57] 42. Error Block 22 end (CF ANALYSIS FAILED)
	end)
	arg1.test("writes the data", function(arg1_5) -- Line 86
		--[[ Upvalues[1]:
			[1]: defaultOptions_upvr (copied, readonly)
		]]
		local any_expect_result1_5 = arg1_5.lapis.createCollection('1', defaultOptions_upvr()):load("doc"):expect()
		any_expect_result1_5:write({
			foo = "baz";
		})
		local var25
		if any_expect_result1_5:read().foo ~= "baz" then
			var25 = false
		else
			var25 = true
		end
		assert(var25, "")
	end)
	arg1.test("write throws if data doesn't validate", function(arg1_6) -- Line 96
		--[[ Upvalues[2]:
			[1]: defaultOptions_upvr (copied, readonly)
			[2]: shouldThrow_upvr (readonly)
		]]
		local any_expect_result1_18_upvr = arg1_6.lapis.createCollection('2', defaultOptions_upvr()):load("doc"):expect()
		shouldThrow_upvr(function() -- Line 99
			--[[ Upvalues[1]:
				[1]: any_expect_result1_18_upvr (readonly)
			]]
			any_expect_result1_18_upvr:write({
				foo = 5;
			})
		end, "foo must be a string")
	end)
	arg1.test("methods throw when called on a closed document", function(arg1_7) -- Line 106
		--[[ Upvalues[2]:
			[1]: defaultOptions_upvr (copied, readonly)
			[2]: shouldThrow_upvr (readonly)
		]]
		local any_expect_result1_15_upvr = arg1_7.lapis.createCollection('5', defaultOptions_upvr()):load("doc"):expect()
		shouldThrow_upvr(function() -- Line 111
			--[[ Upvalues[1]:
				[1]: any_expect_result1_15_upvr (readonly)
			]]
			any_expect_result1_15_upvr:write({})
		end, "Cannot write to a closed document")
		shouldThrow_upvr(function() -- Line 115
			--[[ Upvalues[1]:
				[1]: any_expect_result1_15_upvr (readonly)
			]]
			any_expect_result1_15_upvr:save()
		end, "Cannot save a closed document")
		shouldThrow_upvr(function() -- Line 119
			--[[ Upvalues[1]:
				[1]: any_expect_result1_15_upvr (readonly)
			]]
			any_expect_result1_15_upvr:addUserId(1234)
		end, "Cannot add user id to a closed document")
		shouldThrow_upvr(function() -- Line 123
			--[[ Upvalues[1]:
				[1]: any_expect_result1_15_upvr (readonly)
			]]
			any_expect_result1_15_upvr:removeUserId(1234)
		end, "Cannot remove user id from a closed document")
		any_expect_result1_15_upvr:close():expect()
	end)
	arg1.test("close returns first promise when called again", function(arg1_8) -- Line 130
		--[[ Upvalues[2]:
			[1]: defaultOptions_upvr (copied, readonly)
			[2]: assertEqual_upvr (readonly)
		]]
		local any_expect_result1_11 = arg1_8.lapis.createCollection("col", defaultOptions_upvr()):load("doc"):expect()
		assertEqual_upvr(any_expect_result1_11:close(), any_expect_result1_11:close())
	end)
	arg1.test("loads with default data", function(arg1_9) -- Line 138
		--[[ Upvalues[1]:
			[1]: defaultOptions_upvr (copied, readonly)
		]]
		local var39 = 'a'
		if arg1_9.lapis.createCollection('o', defaultOptions_upvr()):load(var39):expect():read().foo ~= "bar" then
			var39 = false
		else
			var39 = true
		end
		assert(var39, "")
	end)
	arg1.test("loads with existing data", function(arg1_10) -- Line 144
		--[[ Upvalues[1]:
			[1]: defaultOptions_upvr (copied, readonly)
		]]
		arg1_10.write("xyz", "xyz", {
			foo = "existing";
		})
		local var42 = "xyz"
		if arg1_10.lapis.createCollection("xyz", defaultOptions_upvr()):load(var42):expect():read().foo ~= "existing" then
			var42 = false
		else
			var42 = true
		end
		assert(var42, "")
	end)
	arg1.test("freezes document data", function(arg1_11) -- Line 156
		--[[ Upvalues[1]:
			[1]: shouldThrow_upvr (readonly)
		]]
		arg1_11.write("collection", "document", {
			a = {
				b = 1;
			};
		})
		local any_expect_result1_14_upvr = arg1_11.lapis.createCollection("collection", {
			defaultData = {};
		}):load("document"):expect()
		shouldThrow_upvr(function() -- Line 165
			--[[ Upvalues[1]:
				[1]: any_expect_result1_14_upvr (readonly)
			]]
			any_expect_result1_14_upvr:read().a.b = 2
		end)
		any_expect_result1_14_upvr:write({
			a = {
				b = 2;
			};
		})
		shouldThrow_upvr(function() -- Line 171
			--[[ Upvalues[1]:
				[1]: any_expect_result1_14_upvr (readonly)
			]]
			any_expect_result1_14_upvr:read().a.b = 3
		end)
	end)
	arg1.test("doesn't save data when the lock was stolen", function(arg1_12) -- Line 176
		--[[ Upvalues[2]:
			[1]: defaultOptions_upvr (copied, readonly)
			[2]: shouldThrow_upvr (readonly)
		]]
		local any_expect_result1_7_upvr = arg1_12.lapis.createCollection("hi", defaultOptions_upvr()):load("hi"):expect()
		arg1_12.write("hi", "hi", {
			foo = "stolen";
		}, "stolenLockId")
		any_expect_result1_7_upvr:write({
			foo = "qux";
		})
		local function var57() -- Line 189
			--[[ Upvalues[1]:
				[1]: any_expect_result1_7_upvr (readonly)
			]]
			any_expect_result1_7_upvr:save():expect()
		end
		shouldThrow_upvr(var57, "The session lock was stolen")
		if arg1_12.read("hi", "hi").data.foo ~= "stolen" then
			var57 = false
		else
			var57 = true
		end
		assert(var57, "")
		function var57() -- Line 195
			--[[ Upvalues[1]:
				[1]: any_expect_result1_7_upvr (readonly)
			]]
			any_expect_result1_7_upvr:close():expect()
		end
		shouldThrow_upvr(var57, "The session lock was stolen")
		if arg1_12.read("hi", "hi").data.foo ~= "stolen" then
			var57 = false
		else
			var57 = true
		end
		assert(var57, "")
	end)
	arg1.test("doesn't throw when the budget is exhausted", function(arg1_13) -- Line 202
		--[[ Upvalues[1]:
			[1]: defaultOptions_upvr (copied, readonly)
		]]
		arg1_13.lapis.setConfig({
			loadAttempts = 1;
		})
		arg1_13.dataStoreService.budget.budgets[Enum.DataStoreRequestType.GetAsync] = 0
		arg1_13.dataStoreService.budget.budgets[Enum.DataStoreRequestType.SetIncrementAsync] = 0
		arg1_13.dataStoreService.budget.budgets[Enum.DataStoreRequestType.UpdateAsync] = 0
		task.wait(0.1)
		arg1_13.dataStoreService.budget:update()
		arg1_13.lapis.createCollection("bye", defaultOptions_upvr()):load("bye"):expect():save():expect()
	end)
	arg1.test(":save doesn't resolve with any value", function(arg1_14) -- Line 222
		--[[ Upvalues[1]:
			[1]: defaultOptions_upvr (copied, readonly)
		]]
		local any_expect_result1_9, any_expect_result2 = arg1_14.lapis.createCollection("12345", defaultOptions_upvr()):load("doc"):expect():save():expect()
		local var63
		if any_expect_result1_9 ~= nil then
			var63 = false
		else
			var63 = true
		end
		assert(var63, "")
		if any_expect_result2 ~= nil then
			var63 = false
		else
			var63 = true
		end
		assert(var63, "")
	end)
	arg1.test(":close doesn't resolve with any value", function(arg1_15) -- Line 231
		--[[ Upvalues[1]:
			[1]: defaultOptions_upvr (copied, readonly)
		]]
		local any_expect_result1, any_expect_result2_2 = arg1_15.lapis.createCollection("12345", defaultOptions_upvr()):load("doc"):expect():close():expect()
		local var67
		if any_expect_result1 ~= nil then
			var67 = false
		else
			var67 = true
		end
		assert(var67, "")
		if any_expect_result2_2 ~= nil then
			var67 = false
		else
			var67 = true
		end
		assert(var67, "")
	end)
	arg1.nested("Document:beforeSave", function() -- Line 240
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: defaultOptions_upvr (copied, readonly)
			[3]: shouldThrow_upvr (readonly)
			[4]: assertEqual_upvr (readonly)
		]]
		arg1.test("throws when yielding", function(arg1_16) -- Line 241
			--[[ Upvalues[2]:
				[1]: defaultOptions_upvr (copied, readonly)
				[2]: shouldThrow_upvr (copied, readonly)
			]]
			local any_expect_result1_8_upvr = arg1_16.lapis.createCollection("collection", defaultOptions_upvr()):load("document"):expect()
			any_expect_result1_8_upvr:beforeSave(function() -- Line 244
				task.wait()
			end)
			shouldThrow_upvr(function() -- Line 248
				--[[ Upvalues[1]:
					[1]: any_expect_result1_8_upvr (readonly)
				]]
				any_expect_result1_8_upvr:save():expect()
			end, "beforeSave callback threw error: thread is not yieldable")
		end)
		arg1.test("throws when setting twice", function(arg1_17) -- Line 253
			--[[ Upvalues[2]:
				[1]: defaultOptions_upvr (copied, readonly)
				[2]: shouldThrow_upvr (copied, readonly)
			]]
			local any_expect_result1_21_upvr = arg1_17.lapis.createCollection("collection", defaultOptions_upvr()):load("document"):expect()
			any_expect_result1_21_upvr:beforeSave(function() -- Line 256
			end)
			shouldThrow_upvr(function() -- Line 258
				--[[ Upvalues[1]:
					[1]: any_expect_result1_21_upvr (readonly)
				]]
				any_expect_result1_21_upvr:beforeSave(function() -- Line 259
				end)
			end, "Document:beforeSave can only be called once")
		end)
		arg1.test("throws when calling close in callback", function(arg1_18) -- Line 263
			--[[ Upvalues[2]:
				[1]: defaultOptions_upvr (copied, readonly)
				[2]: shouldThrow_upvr (copied, readonly)
			]]
			local any_expect_result1_17_upvr = arg1_18.lapis.createCollection("collection", defaultOptions_upvr()):load("document"):expect()
			any_expect_result1_17_upvr:beforeSave(function() -- Line 266
				--[[ Upvalues[1]:
					[1]: any_expect_result1_17_upvr (readonly)
				]]
				any_expect_result1_17_upvr:close()
			end)
			shouldThrow_upvr(function() -- Line 270
				--[[ Upvalues[1]:
					[1]: any_expect_result1_17_upvr (readonly)
				]]
				any_expect_result1_17_upvr:close():expect()
			end, "beforeSave callback threw error")
		end)
		arg1.test("throws when calling save in callback", function(arg1_19) -- Line 275
			--[[ Upvalues[2]:
				[1]: defaultOptions_upvr (copied, readonly)
				[2]: shouldThrow_upvr (copied, readonly)
			]]
			local any_expect_result1_25_upvr = arg1_19.lapis.createCollection("collection", defaultOptions_upvr()):load("document"):expect()
			any_expect_result1_25_upvr:beforeSave(function() -- Line 278
				--[[ Upvalues[1]:
					[1]: any_expect_result1_25_upvr (readonly)
				]]
				any_expect_result1_25_upvr:save()
			end)
			shouldThrow_upvr(function() -- Line 282
				--[[ Upvalues[1]:
					[1]: any_expect_result1_25_upvr (readonly)
				]]
				any_expect_result1_25_upvr:close():expect()
			end, "beforeSave callback threw error")
		end)
		arg1.test("saves new data in document:save", function(arg1_20) -- Line 287
			--[[ Upvalues[2]:
				[1]: defaultOptions_upvr (copied, readonly)
				[2]: assertEqual_upvr (copied, readonly)
			]]
			local any_expect_result1_12_upvr = arg1_20.lapis.createCollection("collection", defaultOptions_upvr()):load("document"):expect()
			any_expect_result1_12_upvr:beforeSave(function() -- Line 290
				--[[ Upvalues[1]:
					[1]: any_expect_result1_12_upvr (readonly)
				]]
				any_expect_result1_12_upvr:read()
				any_expect_result1_12_upvr:write({
					foo = "new";
				})
			end)
			any_expect_result1_12_upvr:save():expect()
			assertEqual_upvr(arg1_20.read("collection", "document").data.foo, "new")
		end)
		arg1.test("saves new data in document:close", function(arg1_21) -- Line 300
			--[[ Upvalues[2]:
				[1]: defaultOptions_upvr (copied, readonly)
				[2]: assertEqual_upvr (copied, readonly)
			]]
			local any_expect_result1_16_upvr = arg1_21.lapis.createCollection("collection", defaultOptions_upvr()):load("document"):expect()
			any_expect_result1_16_upvr:beforeSave(function() -- Line 303
				--[[ Upvalues[1]:
					[1]: any_expect_result1_16_upvr (readonly)
				]]
				any_expect_result1_16_upvr:write({
					foo = "new";
				})
			end)
			any_expect_result1_16_upvr:close():expect()
			assertEqual_upvr(arg1_21.read("collection", "document").data.foo, "new")
		end)
	end)
	arg1.nested("Document:beforeClose", function() -- Line 313
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: defaultOptions_upvr (copied, readonly)
			[3]: shouldThrow_upvr (readonly)
			[4]: assertEqual_upvr (readonly)
		]]
		arg1.test("throws when yielding", function(arg1_22) -- Line 314
			--[[ Upvalues[2]:
				[1]: defaultOptions_upvr (copied, readonly)
				[2]: shouldThrow_upvr (copied, readonly)
			]]
			local any_expect_result1_27_upvr = arg1_22.lapis.createCollection("collection", defaultOptions_upvr()):load("document"):expect()
			any_expect_result1_27_upvr:beforeClose(function() -- Line 317
				task.wait()
			end)
			shouldThrow_upvr(function() -- Line 321
				--[[ Upvalues[1]:
					[1]: any_expect_result1_27_upvr (readonly)
				]]
				any_expect_result1_27_upvr:close():expect()
			end, "beforeClose callback threw error: thread is not yieldable")
		end)
		arg1.test("throws when setting twice", function(arg1_23) -- Line 326
			--[[ Upvalues[2]:
				[1]: defaultOptions_upvr (copied, readonly)
				[2]: shouldThrow_upvr (copied, readonly)
			]]
			local any_expect_result1_3_upvr = arg1_23.lapis.createCollection("collection", defaultOptions_upvr()):load("document"):expect()
			any_expect_result1_3_upvr:beforeClose(function() -- Line 329
			end)
			shouldThrow_upvr(function() -- Line 331
				--[[ Upvalues[1]:
					[1]: any_expect_result1_3_upvr (readonly)
				]]
				any_expect_result1_3_upvr:beforeClose(function() -- Line 332
				end)
			end, "Document:beforeClose can only be called once")
		end)
		arg1.test("throws when calling close in callback", function(arg1_24) -- Line 336
			--[[ Upvalues[2]:
				[1]: defaultOptions_upvr (copied, readonly)
				[2]: shouldThrow_upvr (copied, readonly)
			]]
			local any_expect_result1_6_upvr = arg1_24.lapis.createCollection("collection", defaultOptions_upvr()):load("document"):expect()
			any_expect_result1_6_upvr:beforeClose(function() -- Line 339
				--[[ Upvalues[1]:
					[1]: any_expect_result1_6_upvr (readonly)
				]]
				any_expect_result1_6_upvr:close()
			end)
			shouldThrow_upvr(function() -- Line 343
				--[[ Upvalues[1]:
					[1]: any_expect_result1_6_upvr (readonly)
				]]
				any_expect_result1_6_upvr:close():expect()
			end, "beforeClose callback threw error")
		end)
		arg1.test("throws when calling save in callback", function(arg1_25) -- Line 348
			--[[ Upvalues[2]:
				[1]: defaultOptions_upvr (copied, readonly)
				[2]: shouldThrow_upvr (copied, readonly)
			]]
			local any_expect_result1_23_upvr = arg1_25.lapis.createCollection("collection", defaultOptions_upvr()):load("document"):expect()
			any_expect_result1_23_upvr:beforeClose(function() -- Line 351
				--[[ Upvalues[1]:
					[1]: any_expect_result1_23_upvr (readonly)
				]]
				any_expect_result1_23_upvr:save()
			end)
			shouldThrow_upvr(function() -- Line 355
				--[[ Upvalues[1]:
					[1]: any_expect_result1_23_upvr (readonly)
				]]
				any_expect_result1_23_upvr:close():expect()
			end, "beforeClose callback threw error")
		end)
		arg1.test("closes document even if beforeClose errors", function(arg1_26) -- Line 360
			--[[ Upvalues[2]:
				[1]: defaultOptions_upvr (copied, readonly)
				[2]: shouldThrow_upvr (copied, readonly)
			]]
			local any_createCollection_result1 = arg1_26.lapis.createCollection("collection", defaultOptions_upvr())
			local any_load_result1 = any_createCollection_result1:load("document")
			local any_expect_result1_26_upvr = any_load_result1:expect()
			local function var116() -- Line 366
				error("error")
			end
			any_expect_result1_26_upvr:beforeClose(var116)
			shouldThrow_upvr(function() -- Line 370
				--[[ Upvalues[1]:
					[1]: any_expect_result1_26_upvr (readonly)
				]]
				any_expect_result1_26_upvr:close():expect()
			end)
			var116 = "document"
			local var118 = var116
			local any_load_result1_2 = any_createCollection_result1:load(var118)
			if any_load_result1_2 == any_load_result1 then
				var118 = false
			else
				var118 = true
			end
			assert(var118, "collection:load should return a new promise")
			shouldThrow_upvr(function() -- Line 378
				--[[ Upvalues[1]:
					[1]: any_expect_result1_26_upvr (readonly)
				]]
				any_expect_result1_26_upvr:write({
					foo = "baz";
				})
			end, "Cannot write to a closed document")
			any_load_result1_2:catch(function() -- Line 383
			end)
		end)
		arg1.test("saves new data", function(arg1_27) -- Line 386
			--[[ Upvalues[2]:
				[1]: defaultOptions_upvr (copied, readonly)
				[2]: assertEqual_upvr (copied, readonly)
			]]
			local any_expect_result1_4_upvr = arg1_27.lapis.createCollection("collection", defaultOptions_upvr()):load("document"):expect()
			any_expect_result1_4_upvr:beforeClose(function() -- Line 389
				--[[ Upvalues[1]:
					[1]: any_expect_result1_4_upvr (readonly)
				]]
				any_expect_result1_4_upvr:read()
				any_expect_result1_4_upvr:write({
					foo = "new";
				})
			end)
			any_expect_result1_4_upvr:close():expect()
			assertEqual_upvr(arg1_27.read("collection", "document").data.foo, "new")
		end)
		arg1.test("beforeSave runs before beforeClose", function(arg1_28) -- Line 400
			--[[ Upvalues[2]:
				[1]: defaultOptions_upvr (copied, readonly)
				[2]: assertEqual_upvr (copied, readonly)
			]]
			local any_expect_result1_22 = arg1_28.lapis.createCollection("collection", defaultOptions_upvr()):load("document"):expect()
			local var129_upvw = ""
			any_expect_result1_22:beforeSave(function() -- Line 405
				--[[ Upvalues[1]:
					[1]: var129_upvw (read and write)
				]]
				var129_upvw = var129_upvw..'s'
			end)
			any_expect_result1_22:beforeClose(function() -- Line 409
				--[[ Upvalues[1]:
					[1]: var129_upvw (read and write)
				]]
				var129_upvw = var129_upvw..'c'
			end)
			any_expect_result1_22:close():expect()
			assertEqual_upvr(var129_upvw, "sc")
		end)
		arg1.nested("keyInfo", function() -- Line 418
			--[[ Upvalues[3]:
				[1]: arg1 (copied, readonly)
				[2]: defaultOptions_upvr (copied, readonly)
				[3]: assertEqual_upvr (copied, readonly)
			]]
			arg1.test("gets load key info", function(arg1_29) -- Line 419
				--[[ Upvalues[1]:
					[1]: defaultOptions_upvr (copied, readonly)
				]]
				-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
				local any_keyInfo_result1_2 = arg1_29.lapis.createCollection("collection", defaultOptions_upvr()):load("document"):expect():keyInfo()
				local var135
				if arg1_29.getKeyInfo("collection", "document") == any_keyInfo_result1_2 then
					var135 = false
				else
					var135 = true
				end
				assert(var135, "")
				if typeof(any_keyInfo_result1_2) ~= "table" then
					var135 = false
					-- KONSTANTWARNING: GOTO [42] #32
				end
				-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [41] 31. Error Block 22 start (CF ANALYSIS FAILED)
				var135 = true
				assert(var135, "")
				if any_keyInfo_result1_2.Version ~= '0' then
					var135 = false
				else
					var135 = true
				end
				assert(var135, "")
				-- KONSTANTERROR: [41] 31. Error Block 22 end (CF ANALYSIS FAILED)
			end)
			arg1.test("updating user ids shouldn't affect key info", function(arg1_30) -- Line 431
				--[[ Upvalues[2]:
					[1]: defaultOptions_upvr (copied, readonly)
					[2]: assertEqual_upvr (copied, readonly)
				]]
				local any_expect_result1_20 = arg1_30.lapis.createCollection("collection", defaultOptions_upvr()):load("document"):expect()
				any_expect_result1_20:addUserId(123)
				assertEqual_upvr(#any_expect_result1_20:keyInfo():GetUserIds(), 0)
			end)
			arg1.test("key info is updated after :save", function(arg1_31) -- Line 442
				--[[ Upvalues[1]:
					[1]: defaultOptions_upvr (copied, readonly)
				]]
				local any_expect_result1_19 = arg1_31.lapis.createCollection("collection", defaultOptions_upvr()):load("document"):expect()
				any_expect_result1_19:save():expect()
				local any_keyInfo_result1 = any_expect_result1_19:keyInfo()
				local var141
				if any_expect_result1_19:keyInfo() == any_keyInfo_result1 then
					var141 = false
				else
					var141 = true
				end
				assert(var141, "")
				if any_keyInfo_result1.Version ~= '1' then
					var141 = false
				else
					var141 = true
				end
				assert(var141, "")
			end)
			arg1.test("key info is updated after :close", function(arg1_32) -- Line 455
				--[[ Upvalues[1]:
					[1]: defaultOptions_upvr (copied, readonly)
				]]
				local any_expect_result1_13 = arg1_32.lapis.createCollection("collection", defaultOptions_upvr()):load("document"):expect()
				any_expect_result1_13:close():expect()
				local any_keyInfo_result1_3 = any_expect_result1_13:keyInfo()
				local var145
				if any_expect_result1_13:keyInfo() == any_keyInfo_result1_3 then
					var145 = false
				else
					var145 = true
				end
				assert(var145, "")
				if any_keyInfo_result1_3.Version ~= '1' then
					var145 = false
				else
					var145 = true
				end
				assert(var145, "")
			end)
		end)
	end)
end