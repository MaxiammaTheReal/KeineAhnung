-- Name: init.test
-- Path: game:GetService("ReplicatedStorage").Packages._Index.nezuo_lapis@0.3.4.lapis.init.test
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 1.1517392000023392 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:50
-- Luau version 6, Types version 3
-- Time taken: 0.072576 seconds

local function defaultOptions_upvr() -- Line 8, Named "defaultOptions"
	local module = {}
	local function validate(arg1) -- Line 10
		local var2
		if typeof(arg1.apples) ~= "number" then
			var2 = false
		else
			var2 = true
		end
		return var2, "apples should be a number"
	end
	module.validate = validate
	module.defaultData = {
		apples = 20;
	}
	return module
end
local DataStoreServiceMock_upvr = require(game:GetService("ReplicatedStorage").DevPackages.DataStoreServiceMock)
local Internal_upvr = require(script.Parent.Internal)
local RunService_upvr = game:GetService("RunService")
local Promise_upvr = require(script.Parent.Parent.Promise)
return function(arg1) -- Line 19
	--[[ Upvalues[5]:
		[1]: DataStoreServiceMock_upvr (readonly)
		[2]: Internal_upvr (readonly)
		[3]: defaultOptions_upvr (readonly)
		[4]: RunService_upvr (readonly)
		[5]: Promise_upvr (readonly)
	]]
	local assertEqual_upvr = arg1.assertEqual
	local shouldThrow_upvr = arg1.shouldThrow
	arg1.beforeEach(function(arg1_2) -- Line 23
		--[[ Upvalues[2]:
			[1]: DataStoreServiceMock_upvr (copied, readonly)
			[2]: Internal_upvr (copied, readonly)
		]]
		local any_manual_result1_upvr = DataStoreServiceMock_upvr.manual()
		arg1_2.dataStoreService = any_manual_result1_upvr
		any_manual_result1_upvr.budget:setMaxThrottleQueueSize(0)
		arg1_2.lapis = Internal_upvr.new(false)
		arg1_2.lapis.setConfig({
			dataStoreService = any_manual_result1_upvr;
			showRetryWarnings = false;
		})
		function arg1_2.write(arg1_3, arg2, arg3, arg4, arg5, arg6) -- Line 34
			--[[ Upvalues[1]:
				[1]: any_manual_result1_upvr (readonly)
			]]
			local tbl_7 = {
				migrationVersion = 0;
			}
			tbl_7.lockId = arg4
			tbl_7.data = arg3
			any_manual_result1_upvr.dataStores[arg1_3].global:write(arg2, tbl_7, arg5, arg6)
		end
		function arg1_2.read(arg1_4, arg2) -- Line 44
			--[[ Upvalues[1]:
				[1]: any_manual_result1_upvr (readonly)
			]]
			return any_manual_result1_upvr.dataStores[arg1_4].global.data[arg2]
		end
		function arg1_2.expectUnlocked(arg1_5, arg2) -- Line 48
			--[[ Upvalues[1]:
				[1]: any_manual_result1_upvr (readonly)
			]]
			local var18 = any_manual_result1_upvr.dataStores[arg1_5].global.data[arg2]
			if var18 ~= nil and var18.lockId ~= nil then
				error("Document is locked")
			end
		end
		function arg1_2.expectLocked(arg1_6, arg2) -- Line 56
			--[[ Upvalues[1]:
				[1]: any_manual_result1_upvr (readonly)
			]]
			local var20 = any_manual_result1_upvr.dataStores[arg1_6].global.data[arg2]
			if var20 == nil or var20.lockId == nil then
				error("Document is not locked")
			end
		end
		function arg1_2.expectUserIds(arg1_7, arg2, arg3) -- Line 64
			--[[ Upvalues[1]:
				[1]: any_manual_result1_upvr (readonly)
			]]
			local keyInfos = any_manual_result1_upvr.dataStores[arg1_7].global.keyInfos
			if keyInfos[arg2] ~= nil then
				keyInfos = keyInfos[arg2]:GetUserIds()
			else
				keyInfos = {}
			end
			if #keyInfos ~= #arg3 then
				error("Incorrect user ids length")
			end
			for i, v in arg3 do
				if keyInfos[i] ~= v then
					error("Invalid user id")
				end
			end
		end
		function arg1_2.getKeyInfo(arg1_8, arg2) -- Line 80
			--[[ Upvalues[1]:
				[1]: any_manual_result1_upvr (readonly)
			]]
			return any_manual_result1_upvr.dataStores[arg1_8].global.keyInfos[arg2]
		end
	end)
	arg1.test("throws when setting invalid config key", function(arg1_9) -- Line 85
		--[[ Upvalues[1]:
			[1]: shouldThrow_upvr (readonly)
		]]
		shouldThrow_upvr(function() -- Line 86
			--[[ Upvalues[1]:
				[1]: arg1_9 (readonly)
			]]
			arg1_9.lapis.setConfig({
				foo = true;
			})
		end, "Invalid config key \"foo\"")
	end)
	arg1.test("throws when creating a duplicate collection", function(arg1_10) -- Line 93
		--[[ Upvalues[2]:
			[1]: defaultOptions_upvr (copied, readonly)
			[2]: shouldThrow_upvr (readonly)
		]]
		arg1_10.lapis.createCollection("foo", defaultOptions_upvr())
		shouldThrow_upvr(function() -- Line 96
			--[[ Upvalues[2]:
				[1]: arg1_10 (readonly)
				[2]: defaultOptions_upvr (copied, readonly)
			]]
			arg1_10.lapis.createCollection("foo", defaultOptions_upvr())
		end, "Collection \"foo\" already exists")
	end)
	arg1.test("freezes default data", function(arg1_11) -- Line 101
		--[[ Upvalues[1]:
			[1]: shouldThrow_upvr (readonly)
		]]
		local tbl_3_upvr = {
			a = {
				b = {
					c = 5;
				};
			};
		}
		arg1_11.lapis.createCollection("baz", {
			defaultData = tbl_3_upvr;
		})
		shouldThrow_upvr(function() -- Line 108
			--[[ Upvalues[1]:
				[1]: tbl_3_upvr (readonly)
			]]
			tbl_3_upvr.a.b.c = 8
		end)
	end)
	arg1.test("validates default data as a table", function(arg1_12) -- Line 113
		--[[ Upvalues[1]:
			[1]: shouldThrow_upvr (readonly)
		]]
		shouldThrow_upvr(function() -- Line 114
			--[[ Upvalues[1]:
				[1]: arg1_12 (readonly)
			]]
			local tbl_6 = {}
			local function validate() -- Line 116
				return false, "data is invalid"
			end
			tbl_6.validate = validate
			arg1_12.lapis.createCollection("bar", tbl_6)
		end, "data is invalid")
	end)
	arg1.test("handles default data erroring", function(arg1_13) -- Line 123
		--[[ Upvalues[1]:
			[1]: shouldThrow_upvr (readonly)
		]]
		local tbl_2 = {}
		local function defaultData() -- Line 125
			error("foo")
		end
		tbl_2.defaultData = defaultData
		local any_createCollection_result1_11_upvr = arg1_13.lapis.createCollection("collection", tbl_2)
		shouldThrow_upvr(function() -- Line 130
			--[[ Upvalues[1]:
				[1]: any_createCollection_result1_11_upvr (readonly)
			]]
			any_createCollection_result1_11_upvr:load("document"):expect()
		end, "'defaultData' threw an error", "foo")
	end)
	arg1.test("validates default data as a function", function(arg1_14) -- Line 135
		--[[ Upvalues[1]:
			[1]: shouldThrow_upvr (readonly)
		]]
		local tbl_11 = {}
		local function defaultData() -- Line 137
			return {}
		end
		tbl_11.defaultData = defaultData
		local function validate() -- Line 140
			return false, "foo"
		end
		tbl_11.validate = validate
		local any_createCollection_result1_18_upvr = arg1_14.lapis.createCollection("collection", tbl_11)
		shouldThrow_upvr(function() -- Line 145
			--[[ Upvalues[1]:
				[1]: any_createCollection_result1_18_upvr (readonly)
			]]
			any_createCollection_result1_18_upvr:load("document"):expect()
		end, "Invalid data:", "foo")
	end)
	arg1.test("default data function should set default data", function(arg1_15) -- Line 150
		--[[ Upvalues[1]:
			[1]: assertEqual_upvr (readonly)
		]]
		local tbl_8 = {}
		local function defaultData() -- Line 152
			return "default"
		end
		tbl_8.defaultData = defaultData
		assertEqual_upvr(arg1_15.lapis.createCollection("collection", tbl_8):load("document"):expect():read(), "default")
	end)
	arg1.test("should pass key to default data", function(arg1_16) -- Line 162
		--[[ Upvalues[1]:
			[1]: assertEqual_upvr (readonly)
		]]
		local var54_upvw
		local tbl_21 = {}
		local function defaultData(arg1_17) -- Line 165
			--[[ Upvalues[1]:
				[1]: var54_upvw (read and write)
			]]
			var54_upvw = arg1_17
			return {}
		end
		tbl_21.defaultData = defaultData
		arg1_16.lapis.createCollection("collection", tbl_21):load("document"):expect()
		assertEqual_upvr(var54_upvw, "document")
	end)
	arg1.test("default data function should deep copy data", function(arg1_18) -- Line 175
		local tbl_23_upvr = {{}}
		local tbl_14 = {}
		local function defaultData() -- Line 178
			--[[ Upvalues[1]:
				[1]: tbl_23_upvr (readonly)
			]]
			return tbl_23_upvr
		end
		tbl_14.defaultData = defaultData
		defaultData = "document"
		local var59 = defaultData
		local any_expect_result1_3 = arg1_18.lapis.createCollection("collection", tbl_14):load(var59):expect()
		if any_expect_result1_3:read() == tbl_23_upvr then
			var59 = false
		else
			var59 = true
		end
		assert(var59, "")
		if any_expect_result1_3:read()[1] == tbl_23_upvr[1] then
			var59 = false
		else
			var59 = true
		end
		assert(var59, "")
	end)
	arg1.test("default data function should freeze data", function(arg1_19) -- Line 189
		--[[ Upvalues[1]:
			[1]: shouldThrow_upvr (readonly)
		]]
		local any_expect_result1_9_upvr = arg1_19.lapis.createCollection("collection", {
			defaultData = function() -- Line 191, Named "defaultData"
				return {}
			end;
		}):load("document"):expect()
		shouldThrow_upvr(function() -- Line 198
			--[[ Upvalues[1]:
				[1]: any_expect_result1_9_upvr (readonly)
			]]
			any_expect_result1_9_upvr:read().foo = true
		end, "readonly")
	end)
	arg1.test("handles validate erroring", function(arg1_20) -- Line 203
		--[[ Upvalues[1]:
			[1]: shouldThrow_upvr (readonly)
		]]
		local tbl_19 = {}
		local var67_upvw = false
		local function validate() -- Line 207
			--[[ Upvalues[1]:
				[1]: var67_upvw (read and write)
			]]
			if var67_upvw then
				error("foo")
			else
				return true
			end
		end
		tbl_19.validate = validate
		var67_upvw = true
		arg1_20.write("collection", "document", {})
		local any_createCollection_result1_13_upvr = arg1_20.lapis.createCollection("collection", tbl_19)
		shouldThrow_upvr(function() -- Line 220
			--[[ Upvalues[1]:
				[1]: any_createCollection_result1_13_upvr (readonly)
			]]
			any_createCollection_result1_13_upvr:load("document"):expect()
		end, "'validate' threw an error", "foo")
	end)
	arg1.test("should not override data if validation fails", function(arg1_21) -- Line 225
		--[[ Upvalues[3]:
			[1]: defaultOptions_upvr (copied, readonly)
			[2]: shouldThrow_upvr (readonly)
			[3]: assertEqual_upvr (readonly)
		]]
		arg1_21.write("collection", "doc", {
			apples = "string";
		})
		local any_createCollection_result1_upvr_3 = arg1_21.lapis.createCollection("collection", defaultOptions_upvr())
		shouldThrow_upvr(function() -- Line 232
			--[[ Upvalues[1]:
				[1]: any_createCollection_result1_upvr_3 (readonly)
			]]
			any_createCollection_result1_upvr_3:load("doc"):expect()
		end, "apples should be a number")
		assertEqual_upvr(arg1_21.read("collection", "doc"), arg1_21.read("collection", "doc"))
	end)
	arg1.test("should session lock the document", function(arg1_22) -- Line 239
		--[[ Upvalues[3]:
			[1]: defaultOptions_upvr (copied, readonly)
			[2]: Internal_upvr (copied, readonly)
			[3]: shouldThrow_upvr (readonly)
		]]
		local any_expect_result1_2 = arg1_22.lapis.createCollection("collection", defaultOptions_upvr()):load("doc"):expect()
		local any_new_result1_4 = Internal_upvr.new(false)
		any_new_result1_4.setConfig({
			dataStoreService = arg1_22.dataStoreService;
			loadAttempts = 1;
		})
		local any_createCollection_result1_7_upvr = any_new_result1_4.createCollection("collection", defaultOptions_upvr())
		shouldThrow_upvr(function() -- Line 248
			--[[ Upvalues[1]:
				[1]: any_createCollection_result1_7_upvr (readonly)
			]]
			any_createCollection_result1_7_upvr:load("doc"):expect()
		end, "Could not acquire lock")
		any_expect_result1_2:save():expect()
		shouldThrow_upvr(function() -- Line 255
			--[[ Upvalues[1]:
				[1]: any_createCollection_result1_7_upvr (readonly)
			]]
			any_createCollection_result1_7_upvr:load("doc"):expect()
		end, "Could not acquire lock")
		any_expect_result1_2:close():expect()
		any_createCollection_result1_7_upvr:load("doc"):expect()
	end)
	arg1.test("load should retry when document is session locked", function(arg1_23) -- Line 265
		--[[ Upvalues[2]:
			[1]: defaultOptions_upvr (copied, readonly)
			[2]: Internal_upvr (copied, readonly)
		]]
		local any_new_result1_2 = Internal_upvr.new(false)
		any_new_result1_2.setConfig({
			dataStoreService = arg1_23.dataStoreService;
			loadAttempts = 4;
			loadRetryDelay = 0.5;
			showRetryWarnings = false;
		})
		task.wait(0.1)
		arg1_23.lapis.createCollection("collection", defaultOptions_upvr()):load("doc"):expect():close():expect()
		any_new_result1_2.createCollection("collection", defaultOptions_upvr()):load("doc"):expect()
	end)
	arg1.test("second load should fail because of session lock", function(arg1_24) -- Line 289
		--[[ Upvalues[2]:
			[1]: defaultOptions_upvr (copied, readonly)
			[2]: shouldThrow_upvr (readonly)
		]]
		local any_createCollection_result1_19 = arg1_24.lapis.createCollection("collection", defaultOptions_upvr())
		arg1_24.lapis.setConfig({
			loadAttempts = 1;
		})
		any_createCollection_result1_19:load("document"):expect()
		local any_load_result1_upvr = any_createCollection_result1_19:load("document")
		shouldThrow_upvr(function() -- Line 299
			--[[ Upvalues[1]:
				[1]: any_load_result1_upvr (readonly)
			]]
			any_load_result1_upvr:expect()
		end, "Could not acquire lock")
	end)
	arg1.test("load returns a new promise when first load fails", function(arg1_25) -- Line 304
		--[[ Upvalues[2]:
			[1]: defaultOptions_upvr (copied, readonly)
			[2]: shouldThrow_upvr (readonly)
		]]
		arg1_25.lapis.setConfig({
			loadAttempts = 1;
		})
		arg1_25.dataStoreService.errors:addSimulatedErrors(1)
		local any_createCollection_result1_14 = arg1_25.lapis.createCollection("ghi", defaultOptions_upvr())
		local any_load_result1_2_upvr = any_createCollection_result1_14:load("ghi")
		shouldThrow_upvr(function() -- Line 312
			--[[ Upvalues[1]:
				[1]: any_load_result1_2_upvr (readonly)
			]]
			any_load_result1_2_upvr:expect()
		end)
		local var94 = "ghi"
		local any_load_result1 = any_createCollection_result1_14:load(var94)
		if any_load_result1_2_upvr == any_load_result1 then
			var94 = false
		else
			var94 = true
		end
		assert(var94, "load should return new promise")
		any_load_result1:expect()
	end)
	arg1.nested("migrations", function() -- Line 323
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: assertEqual_upvr (readonly)
			[3]: shouldThrow_upvr (readonly)
			[4]: Internal_upvr (copied, readonly)
		]]
		arg1.test("migrates the data", function(arg1_26) -- Line 324
			--[[ Upvalues[1]:
				[1]: assertEqual_upvr (copied, readonly)
			]]
			local tbl_9 = {}
			local function validate(arg1_27) -- Line 326
				if arg1_27 ~= "newData" then
				else
				end
				return true, "value does not equal newData"
			end
			tbl_9.validate = validate
			tbl_9.defaultData = "newData"
			tbl_9.migrations = {function() -- Line 331
				return "newData"
			end}
			local any_createCollection_result1_9 = arg1_26.lapis.createCollection("migration", tbl_9)
			arg1_26.write("migration", "migration", "data")
			any_createCollection_result1_9:load("migration"):expect()
			assertEqual_upvr(any_createCollection_result1_9:read("migration"):expect(), "newData")
		end)
		arg1.test("error is thrown if a migration returns nil", function(arg1_28) -- Line 346
			--[[ Upvalues[1]:
				[1]: shouldThrow_upvr (copied, readonly)
			]]
			local any_createCollection_result1_15_upvr = arg1_28.lapis.createCollection("collection", {
				defaultData = {};
				migrations = {function() -- Line 350
				end};
			})
			arg1_28.write("collection", "document", {})
			shouldThrow_upvr(function() -- Line 356
				--[[ Upvalues[1]:
					[1]: any_createCollection_result1_15_upvr (readonly)
				]]
				any_createCollection_result1_15_upvr:load("document"):expect()
			end, "Migration 1 returned 'nil'")
			shouldThrow_upvr(function() -- Line 360
				--[[ Upvalues[1]:
					[1]: any_createCollection_result1_15_upvr (readonly)
				]]
				any_createCollection_result1_15_upvr:read("document"):expect()
			end, "Migration 1 returned 'nil'")
		end)
		arg1.test("passes key to migrations", function(arg1_29) -- Line 365
			--[[ Upvalues[1]:
				[1]: assertEqual_upvr (copied, readonly)
			]]
			local var110_upvw
			local any_createCollection_result1 = arg1_29.lapis.createCollection("collection", {
				defaultData = "newData";
				migrations = {function(arg1_30, arg2) -- Line 370
					--[[ Upvalues[1]:
						[1]: var110_upvw (read and write)
					]]
					var110_upvw = arg2
					return "newData"
				end};
			})
			arg1_29.write("collection", "key", "data")
			any_createCollection_result1:read("key"):expect()
			assertEqual_upvr(var110_upvw, "key")
			var110_upvw = nil
			any_createCollection_result1:load("key"):expect()
			assertEqual_upvr(var110_upvw, "key")
		end)
		arg1.test("migrations should allow mutable updates", function(arg1_31) -- Line 387
			--[[ Upvalues[1]:
				[1]: assertEqual_upvr (copied, readonly)
			]]
			local tbl_12 = {}
			local function validate(arg1_32) -- Line 389
				local var117
				if typeof(arg1_32.coins) ~= "number" then
					var117 = false
				else
					var117 = true
				end
				return var117
			end
			tbl_12.validate = validate
			tbl_12.defaultData = {
				coins = 0;
			}
			tbl_12.migrations = {function(arg1_33) -- Line 394
				arg1_33.coins = 0
				return arg1_33
			end, function(arg1_34) -- Line 399
				arg1_34.coins = 100
				return arg1_34
			end}
			arg1_31.write("collection", "document", {})
			assertEqual_upvr(arg1_31.lapis.createCollection("collection", tbl_12):load("document"):expect():read().coins, 100)
		end)
		arg1.test("data should be frozen after a migration", function(arg1_35) -- Line 414
			--[[ Upvalues[1]:
				[1]: shouldThrow_upvr (copied, readonly)
			]]
			local tbl_13 = {}
			local function validate(arg1_36) -- Line 416
				local var124
				if typeof(arg1_36.coins) ~= "number" then
					var124 = false
				else
					var124 = true
				end
				return var124
			end
			tbl_13.validate = validate
			tbl_13.defaultData = {
				coins = 0;
			}
			tbl_13.migrations = {function(arg1_37) -- Line 421
				arg1_37.coins = 0
				return arg1_37
			end}
			arg1_35.write("collection", "document", {})
			local any_expect_result1_upvr_3 = arg1_35.lapis.createCollection("collection", tbl_13):load("document"):expect()
			shouldThrow_upvr(function() -- Line 432
				--[[ Upvalues[1]:
					[1]: any_expect_result1_upvr_3 (readonly)
				]]
				any_expect_result1_upvr_3:read().coins = 100
			end, "readonly")
		end)
		arg1.test("migrations should work with tables and functions", function(arg1_38) -- Line 437
			local tbl_20 = {
				defaultData = 'a';
			}
			local tbl_5 = {}
			local tbl_17 = {
				backwardsCompatible = false;
			}
			local function migrate(arg1_39) -- Line 443
				return arg1_39
			end
			tbl_17.migrate = migrate
			tbl_5[1] = tbl_17
			tbl_5[2] = function(arg1_40) -- Line 447
				return arg1_40
			end
			tbl_20.migrations = tbl_5
			arg1_38.dataStoreService.dataStores.collection.global:write("document", {
				migrationVersion = 0;
				data = 'a';
			})
			arg1_38.lapis.createCollection("collection", tbl_20):load("document"):expect()
		end)
		arg1.nested("saved version ahead", function() -- Line 462
			--[[ Upvalues[4]:
				[1]: arg1 (copied, readonly)
				[2]: shouldThrow_upvr (copied, readonly)
				[3]: Internal_upvr (copied, readonly)
				[4]: assertEqual_upvr (copied, readonly)
			]]
			arg1.test("throws when migration version is ahead of latest version and is not backwards compatible", function(arg1_41) -- Line 465
				--[[ Upvalues[1]:
					[1]: shouldThrow_upvr (copied, readonly)
				]]
				local any_createCollection_result1_2_upvr = arg1_41.lapis.createCollection("collection", {
					defaultData = 'a';
					migrations = {function(arg1_42) -- Line 469
						return arg1_42
					end};
				})
				arg1_41.dataStoreService.dataStores.collection.global:write("document", {
					migrationVersion = 2;
					data = 'b';
				})
				shouldThrow_upvr(function() -- Line 481
					--[[ Upvalues[1]:
						[1]: any_createCollection_result1_2_upvr (readonly)
					]]
					any_createCollection_result1_2_upvr:load("document"):expect()
				end, "Saved migration version 2 is not backwards compatible with version 1")
				shouldThrow_upvr(function() -- Line 485
					--[[ Upvalues[1]:
						[1]: any_createCollection_result1_2_upvr (readonly)
					]]
					any_createCollection_result1_2_upvr:read("document"):expect()
				end, "Saved migration version 2 is not backwards compatible with version 1")
			end)
			arg1.test("default data gets lastCompatibleVersion", function(arg1_43) -- Line 491
				--[[ Upvalues[1]:
					[1]: Internal_upvr (copied, readonly)
				]]
				arg1_43.lapis.createCollection("collection", {
					defaultData = 'a';
					migrations = {{
						migrate = function(arg1_44) -- Line 492
							return arg1_44
						end;
						backwardsCompatible = true;
					}};
				}):load("document"):expect():close():expect()
				local any_new_result1 = Internal_upvr.new(false)
				any_new_result1.setConfig({
					dataStoreService = arg1_43.dataStoreService;
					loadAttempts = 1;
				})
				any_new_result1.createCollection("collection", {
					defaultData = 'a';
				}):load("document"):expect()
			end)
			arg1.test("handles lastCompatibleVersion == nil", function(arg1_45) -- Line 516
				--[[ Upvalues[1]:
					[1]: shouldThrow_upvr (copied, readonly)
				]]
				local any_createCollection_result1_upvr_2 = arg1_45.lapis.createCollection("collection", {
					defaultData = 'a';
				})
				arg1_45.dataStoreService.dataStores.collection.global:write("document", {
					migrationVersion = 1;
					data = 'b';
				})
				shouldThrow_upvr(function() -- Line 527
					--[[ Upvalues[1]:
						[1]: any_createCollection_result1_upvr_2 (readonly)
					]]
					any_createCollection_result1_upvr_2:load("document"):expect()
				end, "Saved migration version 1 is not backwards compatible with version 0")
				shouldThrow_upvr(function() -- Line 531
					--[[ Upvalues[1]:
						[1]: any_createCollection_result1_upvr_2 (readonly)
					]]
					any_createCollection_result1_upvr_2:read("document"):expect()
				end, "Saved migration version 1 is not backwards compatible with version 0")
			end)
			arg1.test("migration saves lastCompatibleVersion", function(arg1_46) -- Line 536
				--[[ Upvalues[2]:
					[1]: Internal_upvr (copied, readonly)
					[2]: shouldThrow_upvr (copied, readonly)
				]]
				local function migrate(arg1_47) -- Line 537
					return arg1_47
				end
				arg1_46.dataStoreService.dataStores.collection.global:write("document", {
					migrationVersion = 0;
					data = 'b';
				})
				arg1_46.lapis.createCollection("collection", {
					defaultData = 'a';
					migrations = {{
						migrate = migrate;
						backwardsCompatible = false;
					}, {
						migrate = migrate;
						backwardsCompatible = true;
					}, {
						migrate = migrate;
						backwardsCompatible = true;
					}};
				}):load("document"):expect():close():expect()
				local any_new_result1_3 = Internal_upvr.new(false)
				any_new_result1_3.setConfig({
					dataStoreService = arg1_46.dataStoreService;
					loadAttempts = 1;
				})
				local any_createCollection_result1_upvr = any_new_result1_3.createCollection("collection", {
					defaultData = 'a';
				})
				shouldThrow_upvr(function() -- Line 565
					--[[ Upvalues[1]:
						[1]: any_createCollection_result1_upvr (readonly)
					]]
					any_createCollection_result1_upvr:load("document"):expect()
				end, "Saved migration version 3 is not backwards compatible with version 0")
				local any_new_result1_5 = Internal_upvr.new(false)
				any_new_result1_5.setConfig({
					dataStoreService = arg1_46.dataStoreService;
					loadAttempts = 1;
				})
				any_new_result1_5.createCollection("collection", {
					defaultData = 'a';
					migrations = {{
						migrate = migrate;
						backwardsCompatible = false;
					}, {
						migrate = migrate;
						backwardsCompatible = true;
					}};
				}):load("document"):expect()
			end)
			arg1.test("keeps saved version", function(arg1_48) -- Line 584
				--[[ Upvalues[1]:
					[1]: assertEqual_upvr (copied, readonly)
				]]
				arg1_48.dataStoreService.dataStores.collection.global:write("document", {
					lastCompatibleVersion = 0;
					migrationVersion = 1;
					data = 'b';
				})
				local any_expect_result1_20 = arg1_48.lapis.createCollection("collection", {
					defaultData = 'a';
				}):load("document"):expect()
				assertEqual_upvr(arg1_48.read("collection", "document").migrationVersion, 1)
				any_expect_result1_20:save("document"):expect()
				assertEqual_upvr(arg1_48.read("collection", "document").migrationVersion, 1)
				any_expect_result1_20:close("document"):expect()
				assertEqual_upvr(arg1_48.read("collection", "document").migrationVersion, 1)
			end)
		end)
	end)
	arg1.test("closing and immediately opening should return a new document", function(arg1_49) -- Line 611
		--[[ Upvalues[1]:
			[1]: defaultOptions_upvr (copied, readonly)
		]]
		local any_createCollection_result1_16 = arg1_49.lapis.createCollection("ccc", defaultOptions_upvr())
		local any_expect_result1_17 = any_createCollection_result1_16:load("doc"):expect()
		any_expect_result1_17:close():expect()
		local var184
		if any_createCollection_result1_16:load("doc"):expect() == any_expect_result1_17 then
			var184 = false
		else
			var184 = true
		end
		assert(var184, "")
	end)
	arg1.test("closes all document on game:BindToClose", function(arg1_50) -- Line 626
		--[[ Upvalues[2]:
			[1]: defaultOptions_upvr (copied, readonly)
			[2]: shouldThrow_upvr (readonly)
		]]
		local any_createCollection_result1_17 = arg1_50.lapis.createCollection("collection", defaultOptions_upvr())
		arg1_50.dataStoreService.yield:startYield()
		local task_spawn_result1_3 = task.spawn(function() -- Line 635
			--[[ Upvalues[1]:
				[1]: arg1_50 (readonly)
			]]
			arg1_50.lapis.autoSave:onGameClose()
		end)
		local var193
		if coroutine.status(task_spawn_result1_3) ~= "suspended" then
			var193 = false
		else
			var193 = true
		end
		assert(var193, "onGameClose didn't wait for the documents to finish closing")
		var193 = nil
		for _, v_2_upvr in {any_createCollection_result1_17:load("one"):expect(), any_createCollection_result1_17:load("two"):expect(), any_createCollection_result1_17:load("three"):expect()}, var193 do
			shouldThrow_upvr(function() -- Line 643
				--[[ Upvalues[1]:
					[1]: v_2_upvr (readonly)
				]]
				v_2_upvr:save():expect()
			end, "Cannot save a closed document")
		end
		var193 = arg1_50.dataStoreService
		var193.yield:stopYield()
		var193 = 0.1
		task.wait(var193)
		if coroutine.status(task_spawn_result1_3) ~= "dead" then
			var193 = false
		else
			var193 = true
		end
		assert(var193, "")
	end)
	arg1.nested("user ids", function() -- Line 656
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: defaultOptions_upvr (copied, readonly)
		]]
		arg1.test("it uses defaultUserIds on first load", function(arg1_51) -- Line 657
			--[[ Upvalues[1]:
				[1]: defaultOptions_upvr (copied, readonly)
			]]
			local any_createCollection_result1_4 = arg1_51.lapis.createCollection("collection", defaultOptions_upvr())
			arg1_51.expectUserIds("collection", "document", {123})
			any_createCollection_result1_4:load("document", {123}):expect():close():expect()
			arg1_51.expectUserIds("collection", "document", {123})
			arg1_51.expectUserIds("collection", "document", {123})
			any_createCollection_result1_4:load("document", {321}):expect():close():expect()
			arg1_51.expectUserIds("collection", "document", {123})
		end)
		arg1.test("adds new user ids", function(arg1_52) -- Line 672
			--[[ Upvalues[1]:
				[1]: defaultOptions_upvr (copied, readonly)
			]]
			local any_expect_result1_18 = arg1_52.lapis.createCollection("collection", defaultOptions_upvr()):load("document", {}):expect()
			any_expect_result1_18:addUserId(111)
			any_expect_result1_18:addUserId(111)
			any_expect_result1_18:addUserId(222)
			arg1_52.expectUserIds("collection", "document", {})
			any_expect_result1_18:save():expect()
			arg1_52.expectUserIds("collection", "document", {111, 222})
			any_expect_result1_18:close():expect()
			arg1_52.expectUserIds("collection", "document", {111, 222})
		end)
		arg1.test("removes new user ids", function(arg1_53) -- Line 692
			--[[ Upvalues[1]:
				[1]: defaultOptions_upvr (copied, readonly)
			]]
			local any_expect_result1 = arg1_53.lapis.createCollection("collection", defaultOptions_upvr()):load("document", {333, 444, 555}):expect()
			any_expect_result1:removeUserId(111)
			any_expect_result1:removeUserId(444)
			arg1_53.expectUserIds("collection", "document", {333, 444, 555})
			any_expect_result1:save():expect()
			arg1_53.expectUserIds("collection", "document", {333, 555})
			any_expect_result1:close():expect()
			arg1_53.expectUserIds("collection", "document", {333, 555})
		end)
	end)
	arg1.nested("load during BindToClose", function() -- Line 712
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: defaultOptions_upvr (copied, readonly)
			[3]: shouldThrow_upvr (readonly)
			[4]: RunService_upvr (copied, readonly)
			[5]: Promise_upvr (copied, readonly)
		]]
		arg1.test("load infinitely yields after BindToClose", function(arg1_54) -- Line 713
			--[[ Upvalues[2]:
				[1]: defaultOptions_upvr (copied, readonly)
				[2]: shouldThrow_upvr (copied, readonly)
			]]
			task.spawn(function() -- Line 716
				--[[ Upvalues[1]:
					[1]: arg1_54 (readonly)
				]]
				arg1_54.lapis.autoSave:onGameClose()
			end)
			local any_createCollection_result1_10_upvr = arg1_54.lapis.createCollection("collection", defaultOptions_upvr())
			shouldThrow_upvr(function() -- Line 720
				--[[ Upvalues[1]:
					[1]: any_createCollection_result1_10_upvr (readonly)
				]]
				any_createCollection_result1_10_upvr:load("document"):timeout(0.5):expect()
			end, "Timed out")
		end)
		arg1.test("load just before BindToClose", function(arg1_55) -- Line 725
			--[[ Upvalues[2]:
				[1]: defaultOptions_upvr (copied, readonly)
				[2]: RunService_upvr (copied, readonly)
			]]
			arg1_55.dataStoreService.yield:startYield()
			arg1_55.lapis.createCollection("collection", defaultOptions_upvr()):load("document")
			local var221_upvw = false
			local var222_upvw = false
			local task_spawn_result1 = task.spawn(function() -- Line 734
				--[[ Upvalues[4]:
					[1]: RunService_upvr (copied, readonly)
					[2]: var221_upvw (read and write)
					[3]: arg1_55 (readonly)
					[4]: var222_upvw (read and write)
				]]
				RunService_upvr.PostSimulation:Wait()
				RunService_upvr.PostSimulation:Wait()
				var221_upvw = true
				arg1_55.lapis.autoSave:onGameClose()
				var222_upvw = true
			end)
			local var225
			while not var221_upvw do
				task.wait()
			end
			var225 = arg1_55.dataStoreService
			var225.yield:stopYield()
			var225 = arg1_55.dataStoreService
			var225.yield:startYield()
			if coroutine.status(task_spawn_result1) ~= "suspended" then
				var225 = false
			else
				var225 = true
			end
			assert(var225, "onGameClose didn't wait for the documents to finish closing")
			var225 = arg1_55.dataStoreService
			var225.yield:stopYield()
			while not var222_upvw do
				task.wait()
			end
			var225 = "collection"
			arg1_55.expectUnlocked(var225, "document")
			if coroutine.status(task_spawn_result1) ~= "dead" then
				var225 = false
			else
				var225 = true
			end
			assert(var225, "")
		end)
		arg1.test("BindToClose should finish if a document fails to load", function(arg1_56) -- Line 764
			--[[ Upvalues[2]:
				[1]: defaultOptions_upvr (copied, readonly)
				[2]: Promise_upvr (copied, readonly)
			]]
			arg1_56.write("collection", "document", "INVALID DATA")
			arg1_56.lapis.createCollection("collection", defaultOptions_upvr()):load("document"):catch(function() -- Line 768
			end)
			task.wait(0.1)
			Promise_upvr.try(function() -- Line 773
				--[[ Upvalues[1]:
					[1]: arg1_56 (readonly)
				]]
				arg1_56.lapis.autoSave:onGameClose()
			end):timeout(1):expect()
		end)
	end)
	arg1.nested("freezeData = false", function() -- Line 781
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: shouldThrow_upvr (readonly)
		]]
		arg1.test("default data should be deep copied", function(arg1_57) -- Line 782
			-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
			local tbl_16 = {
				foo = {};
			}
			local any_read_result1 = arg1_57.lapis.createCollection("collection", {
				freezeData = false;
				defaultData = tbl_16;
			}):load("document"):expect():read()
			local var234
			if any_read_result1 == tbl_16 then
				var234 = false
			else
				var234 = true
			end
			assert(var234, "")
			if any_read_result1.foo == tbl_16.foo then
				var234 = false
				-- KONSTANTWARNING: GOTO [45] #31
			end
			-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [44] 30. Error Block 22 start (CF ANALYSIS FAILED)
			var234 = true
			assert(var234, "")
			if typeof(any_read_result1.foo) ~= "table" then
				var234 = false
			else
				var234 = true
			end
			assert(var234, "")
			-- KONSTANTERROR: [44] 30. Error Block 22 end (CF ANALYSIS FAILED)
		end)
		arg1.test("data should not be frozen", function(arg1_58) -- Line 798
			local any_expect_result1_14 = arg1_58.lapis.createCollection("collection", {
				freezeData = false;
				defaultData = {};
			}):load("document"):expect()
			any_expect_result1_14:read().apples = 1
			any_expect_result1_14:write(any_expect_result1_14:read())
			any_expect_result1_14:read().apples = 1
		end)
		arg1.test("should validate data in save and close", function(arg1_59) -- Line 813
			--[[ Upvalues[1]:
				[1]: shouldThrow_upvr (copied, readonly)
			]]
			local tbl_18 = {
				freezeData = false;
			}
			local var240_upvw = true
			local function validate() -- Line 817
				--[[ Upvalues[1]:
					[1]: var240_upvw (read and write)
				]]
				return var240_upvw, "data is invalid"
			end
			tbl_18.validate = validate
			tbl_18.defaultData = {}
			local any_expect_result1_upvr_2 = arg1_59.lapis.createCollection("collection", tbl_18):load("document"):expect()
			var240_upvw = false
			shouldThrow_upvr(function() -- Line 827
				--[[ Upvalues[1]:
					[1]: any_expect_result1_upvr_2 (readonly)
				]]
				any_expect_result1_upvr_2:save():expect()
			end, "data is invalid")
			shouldThrow_upvr(function() -- Line 831
				--[[ Upvalues[1]:
					[1]: any_expect_result1_upvr_2 (readonly)
				]]
				any_expect_result1_upvr_2:close():expect()
			end, "data is invalid")
		end)
		arg1.test("should handle validate errors data in save and close", function(arg1_60) -- Line 836
			--[[ Upvalues[1]:
				[1]: shouldThrow_upvr (copied, readonly)
			]]
			local tbl = {
				freezeData = false;
			}
			local var246_upvw = false
			local function validate() -- Line 840
				--[[ Upvalues[1]:
					[1]: var246_upvw (read and write)
				]]
				if var246_upvw then
					error("foo")
				end
				return true
			end
			tbl.validate = validate
			tbl.defaultData = {}
			local any_expect_result1_13_upvr = arg1_60.lapis.createCollection("collection", tbl):load("document"):expect()
			var246_upvw = true
			shouldThrow_upvr(function() -- Line 854
				--[[ Upvalues[1]:
					[1]: any_expect_result1_13_upvr (readonly)
				]]
				any_expect_result1_13_upvr:save():expect()
			end, "'validate' threw an error", "foo")
			shouldThrow_upvr(function() -- Line 858
				--[[ Upvalues[1]:
					[1]: any_expect_result1_13_upvr (readonly)
				]]
				any_expect_result1_13_upvr:close():expect()
			end, "'validate' threw an error", "foo")
		end)
	end)
	arg1.nested("Collection:read", function() -- Line 864
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: assertEqual_upvr (readonly)
			[3]: shouldThrow_upvr (readonly)
		]]
		arg1.test("returns nil when there is no data", function(arg1_61) -- Line 865
			--[[ Upvalues[1]:
				[1]: assertEqual_upvr (copied, readonly)
			]]
			local any_expect_result1_5, any_expect_result2_2 = arg1_61.lapis.createCollection("collection", {
				defaultData = "data";
			}):read("key"):expect()
			assertEqual_upvr(any_expect_result1_5, nil)
			assertEqual_upvr(any_expect_result2_2, nil)
		end)
		arg1.test("returns existing data", function(arg1_62) -- Line 876
			--[[ Upvalues[1]:
				[1]: assertEqual_upvr (copied, readonly)
			]]
			local any_createCollection_result1_5 = arg1_62.lapis.createCollection("collection", {
				defaultData = "data";
			})
			any_createCollection_result1_5:load("key", {321}):expect()
			local any_expect_result1_15, any_expect_result2 = any_createCollection_result1_5:read("key"):expect()
			assertEqual_upvr(any_expect_result1_15, "data")
			assertEqual_upvr(any_expect_result2:GetUserIds()[1], 321)
		end)
		arg1.test("throws error when data is invalid", function(arg1_63) -- Line 889
			--[[ Upvalues[1]:
				[1]: shouldThrow_upvr (copied, readonly)
			]]
			local tbl_4 = {
				defaultData = "data";
			}
			local function validate(arg1_64) -- Line 892
				if arg1_64 ~= "data" then
				else
				end
				return true, "data was invalid"
			end
			tbl_4.validate = validate
			arg1_63.write("collection", "key", "INVALID DATA")
			local any_createCollection_result1_3_upvr = arg1_63.lapis.createCollection("collection", tbl_4)
			shouldThrow_upvr(function() -- Line 899
				--[[ Upvalues[1]:
					[1]: any_createCollection_result1_3_upvr (readonly)
				]]
				any_createCollection_result1_3_upvr:read("key"):expect()
			end, "Invalid data")
		end)
		arg1.test("throws error when validate throws", function(arg1_65) -- Line 904
			--[[ Upvalues[1]:
				[1]: shouldThrow_upvr (copied, readonly)
			]]
			local tbl_22 = {
				defaultData = "data";
			}
			local var267_upvw = false
			local function validate() -- Line 908
				--[[ Upvalues[1]:
					[1]: var267_upvw (read and write)
				]]
				if var267_upvw then
					error("validate error")
				else
					return true
				end
			end
			tbl_22.validate = validate
			var267_upvw = true
			arg1_65.write("collection", "key", "data")
			local any_createCollection_result1_12_upvr = arg1_65.lapis.createCollection("collection", tbl_22)
			shouldThrow_upvr(function() -- Line 920
				--[[ Upvalues[1]:
					[1]: any_createCollection_result1_12_upvr (readonly)
				]]
				any_createCollection_result1_12_upvr:read("key"):expect()
			end, "'validate' threw an error")
		end)
	end)
	arg1.nested("Collection:remove", function() -- Line 926
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: defaultOptions_upvr (copied, readonly)
			[3]: assertEqual_upvr (readonly)
			[4]: shouldThrow_upvr (readonly)
		]]
		arg1.test("should remove data", function(arg1_66) -- Line 927
			--[[ Upvalues[2]:
				[1]: defaultOptions_upvr (copied, readonly)
				[2]: assertEqual_upvr (copied, readonly)
			]]
			local any_createCollection_result1_8 = arg1_66.lapis.createCollection("collection", defaultOptions_upvr())
			any_createCollection_result1_8:load("document"):expect():close():expect()
			any_createCollection_result1_8:remove("document"):expect()
			assertEqual_upvr(arg1_66.read("collection", "document"), nil)
		end)
		arg1.test("documents open during remove should fail to save/close", function(arg1_67) -- Line 937
			--[[ Upvalues[2]:
				[1]: defaultOptions_upvr (copied, readonly)
				[2]: shouldThrow_upvr (copied, readonly)
			]]
			local any_createCollection_result1_6 = arg1_67.lapis.createCollection("collection", defaultOptions_upvr())
			local any_expect_result1_19_upvr = any_createCollection_result1_6:load("document"):expect()
			any_createCollection_result1_6:remove("document"):expect()
			shouldThrow_upvr(function() -- Line 944
				--[[ Upvalues[1]:
					[1]: any_expect_result1_19_upvr (readonly)
				]]
				any_expect_result1_19_upvr:save():expect()
			end, "The document was removed")
			shouldThrow_upvr(function() -- Line 948
				--[[ Upvalues[1]:
					[1]: any_expect_result1_19_upvr (readonly)
				]]
				any_expect_result1_19_upvr:close():expect()
			end, "The document was removed")
		end)
	end)
	arg1.nested("Document:close should still unlock after specific errors", function() -- Line 954
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: defaultOptions_upvr (copied, readonly)
			[3]: shouldThrow_upvr (readonly)
			[4]: assertEqual_upvr (readonly)
		]]
		arg1.test("shouldn't overwrite stolen lock", function(arg1_68) -- Line 955
			--[[ Upvalues[2]:
				[1]: defaultOptions_upvr (copied, readonly)
				[2]: shouldThrow_upvr (copied, readonly)
			]]
			local any_expect_result1_11_upvr = arg1_68.lapis.createCollection("collection", defaultOptions_upvr()):load("document"):expect()
			arg1_68.write("collection", "document", {
				apples = 20;
			}, "stolen lock")
			any_expect_result1_11_upvr:beforeSave(function() -- Line 961
				error("oh no")
			end)
			shouldThrow_upvr(function() -- Line 965
				--[[ Upvalues[1]:
					[1]: any_expect_result1_11_upvr (readonly)
				]]
				any_expect_result1_11_upvr:close("document"):expect()
			end)
			task.wait(0.1)
			arg1_68.expectLocked("collection", "document")
		end)
		arg1.test("doesn't work for session lock stolen error", function(arg1_69) -- Line 974
			--[[ Upvalues[3]:
				[1]: defaultOptions_upvr (copied, readonly)
				[2]: shouldThrow_upvr (copied, readonly)
				[3]: assertEqual_upvr (copied, readonly)
			]]
			local any_expect_result1_10_upvr = arg1_69.lapis.createCollection("collection", defaultOptions_upvr()):load("document"):expect()
			arg1_69.write("collection", "document", {
				apples = 20;
			}, "another lock id")
			any_expect_result1_10_upvr:write({
				apples = 100;
			})
			shouldThrow_upvr(function() -- Line 982
				--[[ Upvalues[1]:
					[1]: any_expect_result1_10_upvr (readonly)
				]]
				any_expect_result1_10_upvr:close("document"):expect()
			end)
			task.wait(0.1)
			arg1_69.expectLocked("collection", "document")
			assertEqual_upvr(arg1_69.read("collection", "document").data.apples, 20)
		end)
		arg1.test("beforeSave error", function(arg1_70) -- Line 992
			--[[ Upvalues[3]:
				[1]: defaultOptions_upvr (copied, readonly)
				[2]: shouldThrow_upvr (copied, readonly)
				[3]: assertEqual_upvr (copied, readonly)
			]]
			local any_expect_result1_upvr = arg1_70.lapis.createCollection("collection", defaultOptions_upvr()):load("document"):expect()
			any_expect_result1_upvr:write({
				apples = 100;
			})
			any_expect_result1_upvr:beforeSave(function() -- Line 999
				error("oh no")
			end)
			shouldThrow_upvr(function() -- Line 1003
				--[[ Upvalues[1]:
					[1]: any_expect_result1_upvr (readonly)
				]]
				any_expect_result1_upvr:close("document"):expect()
			end)
			task.wait(0.1)
			arg1_70.expectUnlocked("collection", "document")
			assertEqual_upvr(arg1_70.read("collection", "document").data.apples, 20)
		end)
		arg1.test("beforeClose error", function(arg1_71) -- Line 1013
			--[[ Upvalues[3]:
				[1]: defaultOptions_upvr (copied, readonly)
				[2]: shouldThrow_upvr (copied, readonly)
				[3]: assertEqual_upvr (copied, readonly)
			]]
			local any_expect_result1_8_upvr = arg1_71.lapis.createCollection("collection", defaultOptions_upvr()):load("document"):expect()
			any_expect_result1_8_upvr:write({
				apples = 100;
			})
			any_expect_result1_8_upvr:beforeClose(function() -- Line 1020
				error("oh no")
			end)
			shouldThrow_upvr(function() -- Line 1024
				--[[ Upvalues[1]:
					[1]: any_expect_result1_8_upvr (readonly)
				]]
				any_expect_result1_8_upvr:close("document"):expect()
			end)
			task.wait(0.1)
			arg1_71.expectUnlocked("collection", "document")
			assertEqual_upvr(arg1_71.read("collection", "document").data.apples, 20)
		end)
		arg1.test("validate error", function(arg1_72) -- Line 1034
			--[[ Upvalues[2]:
				[1]: shouldThrow_upvr (copied, readonly)
				[2]: assertEqual_upvr (copied, readonly)
			]]
			local tbl_15 = {}
			local function validate(arg1_73) -- Line 1036
				local var301
				if typeof(arg1_73.apples) ~= "number" then
					var301 = false
				else
					var301 = true
				end
				return var301, "apples should be a number"
			end
			tbl_15.validate = validate
			tbl_15.defaultData = {
				apples = 20;
			}
			tbl_15.freezeData = false
			local any_expect_result1_4_upvr = arg1_72.lapis.createCollection("collection", tbl_15):load("document"):expect()
			any_expect_result1_4_upvr:read().apples = nil
			shouldThrow_upvr(function() -- Line 1047
				--[[ Upvalues[1]:
					[1]: any_expect_result1_4_upvr (readonly)
				]]
				any_expect_result1_4_upvr:close("document"):expect()
			end)
			task.wait(0.1)
			arg1_72.expectUnlocked("collection", "document")
			assertEqual_upvr(arg1_72.read("collection", "document").data.apples, 20)
		end)
		arg1.test("validate threw error", function(arg1_74) -- Line 1057
			--[[ Upvalues[2]:
				[1]: shouldThrow_upvr (copied, readonly)
				[2]: assertEqual_upvr (copied, readonly)
			]]
			local tbl_10 = {}
			local var307_upvw = false
			function tbl_10.validate() -- Line 1060
				--[[ Upvalues[1]:
					[1]: var307_upvw (read and write)
				]]
				if var307_upvw then
					error("oh no")
				end
				return true
			end
			tbl_10.defaultData = {
				apples = 20;
			}
			tbl_10.freezeData = false
			var307_upvw = true
			local any_expect_result1_12_upvr = arg1_74.lapis.createCollection("collection", tbl_10):load("document"):expect()
			shouldThrow_upvr(function() -- Line 1074
				--[[ Upvalues[1]:
					[1]: any_expect_result1_12_upvr (readonly)
				]]
				any_expect_result1_12_upvr:close("document"):expect()
			end)
			task.wait(0.1)
			arg1_74.expectUnlocked("collection", "document")
			assertEqual_upvr(arg1_74.read("collection", "document").data.apples, 20)
		end)
		arg1.test("onGameClose should wait for the lock to remove", function(arg1_75) -- Line 1084
			--[[ Upvalues[2]:
				[1]: defaultOptions_upvr (copied, readonly)
				[2]: shouldThrow_upvr (copied, readonly)
			]]
			local any_expect_result1_7_upvr = arg1_75.lapis.createCollection("collection", defaultOptions_upvr()):load("document"):expect()
			local function var313() -- Line 1088
				error("oh no")
			end
			any_expect_result1_7_upvr:beforeSave(var313)
			arg1_75.dataStoreService.yield:startYield()
			shouldThrow_upvr(function() -- Line 1094
				--[[ Upvalues[1]:
					[1]: any_expect_result1_7_upvr (readonly)
				]]
				any_expect_result1_7_upvr:close("document"):expect()
			end)
			local task_spawn_result1_2 = task.spawn(function() -- Line 1098
				--[[ Upvalues[1]:
					[1]: arg1_75 (readonly)
				]]
				arg1_75.lapis.autoSave:onGameClose()
			end)
			if coroutine.status(task_spawn_result1_2) ~= "suspended" then
				var313 = false
			else
				var313 = true
			end
			assert(var313, "onGameClose didn't wait for locks to be removed")
			var313 = arg1_75.dataStoreService
			var313.yield:stopYield()
			var313 = 0.1
			task.wait(var313)
			if coroutine.status(task_spawn_result1_2) ~= "dead" then
				var313 = false
			else
				var313 = true
			end
			assert(var313, "")
		end)
		arg1.test("should preserve userids/metadata", function(arg1_76) -- Line 1112
			--[[ Upvalues[3]:
				[1]: defaultOptions_upvr (copied, readonly)
				[2]: shouldThrow_upvr (copied, readonly)
				[3]: assertEqual_upvr (copied, readonly)
			]]
			local any_expect_result1_6_upvr = arg1_76.lapis.createCollection("collection", defaultOptions_upvr()):load("document"):expect()
			any_expect_result1_6_upvr:beforeSave(function() -- Line 1116
				error("oh no")
			end)
			arg1_76.write("collection", "document", any_expect_result1_6_upvr:read(), arg1_76.read("collection", "document").lockId, {1234}, {
				foo = "bar";
			})
			shouldThrow_upvr(function() -- Line 1129
				--[[ Upvalues[1]:
					[1]: any_expect_result1_6_upvr (readonly)
				]]
				any_expect_result1_6_upvr:close("document"):expect()
			end)
			task.wait(0.1)
			local any_getKeyInfo_result1 = arg1_76.getKeyInfo("collection", "document")
			assertEqual_upvr(any_getKeyInfo_result1:GetUserIds()[1], 1234)
			assertEqual_upvr(any_getKeyInfo_result1:GetMetadata().foo, "bar")
		end)
	end)
	arg1.test("preserves metadata", function(arg1_77) -- Line 1142
		--[[ Upvalues[2]:
			[1]: defaultOptions_upvr (copied, readonly)
			[2]: assertEqual_upvr (readonly)
		]]
		arg1_77.write("collection", "document", {
			apples = 30;
		}, nil, nil, {
			foo = "bar";
		})
		local function _() -- Line 1147, Named "verifyMetadata"
			--[[ Upvalues[2]:
				[1]: arg1_77 (readonly)
				[2]: assertEqual_upvr (copied, readonly)
			]]
			assertEqual_upvr(arg1_77.getKeyInfo("collection", "document"):GetMetadata().foo, "bar")
		end
		local any_expect_result1_16 = arg1_77.lapis.createCollection("collection", defaultOptions_upvr()):load("document"):expect()
		assertEqual_upvr(arg1_77.getKeyInfo("collection", "document"):GetMetadata().foo, "bar")
		any_expect_result1_16:save():expect()
		assertEqual_upvr(arg1_77.getKeyInfo("collection", "document"):GetMetadata().foo, "bar")
		any_expect_result1_16:close():expect()
		assertEqual_upvr(arg1_77.getKeyInfo("collection", "document"):GetMetadata().foo, "bar")
	end)
end