-- Name: observe.spec
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_reflex@4.3.1.reflex.Producer.spec.observe.spec
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.65017450000596 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:27
-- Luau version 6, Types version 3
-- Time taken: 0.015250 seconds

return function() -- Line 1
	local var2_upvw
	local function selector_upvr(arg1) -- Line 6, Named "selector"
		return arg1
	end
	local function discriminator(arg1) -- Line 10
		return arg1.id
	end
	local function _(arg1) -- Line 14, Named "create"
		local module = {}
		module.id = arg1
		return module
	end
	local function _(arg1, arg2) -- Line 18, Named "hasId"
		for _, v in arg1 do
			if v.id == arg2 then
				return true
			end
		end
		return false
	end
	local createProducer_upvr = require(script.Parent.Parent.createProducer)
	beforeEach(function() -- Line 28
		--[[ Upvalues[2]:
			[1]: var2_upvw (read and write)
			[2]: createProducer_upvr (readonly)
		]]
		var2_upvw = createProducer_upvr({}, {})
	end)
	afterEach(function() -- Line 32
		--[[ Upvalues[1]:
			[1]: var2_upvw (read and write)
		]]
		var2_upvw:destroy()
	end)
	it("should observe the initial items", function() -- Line 36
		--[[ Upvalues[3]:
			[1]: var2_upvw (read and write)
			[2]: selector_upvr (readonly)
			[3]: discriminator (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local tbl_upvr_2 = {}
		var2_upvw:setState({{
			id = 1;
		}, {
			id = 2;
		}})
		var2_upvw:flush()
		var2_upvw:observe(selector_upvr, discriminator, function(arg1) -- Line 42
			--[[ Upvalues[1]:
				[1]: tbl_upvr_2 (readonly)
			]]
			table.insert(tbl_upvr_2, arg1)
		end)
		expect(#tbl_upvr_2).to.equal(2)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [52] 39. Error Block 4 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [52] 39. Error Block 4 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [46] 35. Error Block 13 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [52.10]
		if nil == 1 then
			-- KONSTANTWARNING: GOTO [55] #41
		end
		-- KONSTANTERROR: [46] 35. Error Block 13 end (CF ANALYSIS FAILED)
	end)
	it("should observe additions", function() -- Line 51
		--[[ Upvalues[3]:
			[1]: var2_upvw (read and write)
			[2]: selector_upvr (readonly)
			[3]: discriminator (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local tbl_upvr_6 = {}
		var2_upvw:observe(selector_upvr, discriminator, function(arg1) -- Line 54
			--[[ Upvalues[1]:
				[1]: tbl_upvr_6 (readonly)
			]]
			table.insert(tbl_upvr_6, arg1)
		end)
		expect(#tbl_upvr_6).to.equal(0)
		var2_upvw:setState({{
			id = 1;
		}, {
			id = 2;
		}})
		var2_upvw:flush()
		expect(#tbl_upvr_6).to.equal(2)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [62] 46. Error Block 4 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [62] 46. Error Block 4 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [56] 42. Error Block 13 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [62.10]
		if nil == 1 then
			-- KONSTANTWARNING: GOTO [65] #48
		end
		-- KONSTANTERROR: [56] 42. Error Block 13 end (CF ANALYSIS FAILED)
	end)
	it("should observe additions to a set", function() -- Line 68
		--[[ Upvalues[2]:
			[1]: var2_upvw (read and write)
			[2]: selector_upvr (readonly)
		]]
		local tbl_upvr_4 = {}
		var2_upvw:observe(selector_upvr, function(arg1, arg2) -- Line 71
			return arg2
		end, function(arg1, arg2) -- Line 73
			--[[ Upvalues[1]:
				[1]: tbl_upvr_4 (readonly)
			]]
			table.insert(tbl_upvr_4, arg2)
		end)
		expect(#tbl_upvr_4).to.equal(0)
		var2_upvw:setState({
			a = true;
			b = true;
		})
		var2_upvw:flush()
		expect(#tbl_upvr_4).to.equal(2)
		expect(table.find(tbl_upvr_4, 'a')).to.be.ok()
		expect(table.find(tbl_upvr_4, 'b')).to.be.ok()
	end)
	it("should call the cleanup function when an item is deleted", function() -- Line 87
		--[[ Upvalues[3]:
			[1]: var2_upvw (read and write)
			[2]: selector_upvr (readonly)
			[3]: discriminator (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local tbl_upvr_7 = {}
		var2_upvw:setState({{
			id = 1;
		}, {
			id = 2;
		}, {
			id = 3;
		}})
		var2_upvw:flush()
		var2_upvw:observe(selector_upvr, discriminator, function(arg1) -- Line 93
			--[[ Upvalues[1]:
				[1]: tbl_upvr_7 (readonly)
			]]
			table.insert(tbl_upvr_7, arg1)
			return function() -- Line 95
				--[[ Upvalues[2]:
					[1]: tbl_upvr_7 (copied, readonly)
					[2]: arg1 (readonly)
				]]
				table.remove(tbl_upvr_7, table.find(tbl_upvr_7, arg1) or 0)
			end
		end)
		expect(#tbl_upvr_7).to.equal(3)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [56] 42. Error Block 4 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [56] 42. Error Block 4 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [50] 38. Error Block 55 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [56.10]
		if nil == 1 then
			-- KONSTANTWARNING: GOTO [59] #44
		end
		-- KONSTANTERROR: [50] 38. Error Block 55 end (CF ANALYSIS FAILED)
	end)
	it("should call the cleanup function when the observer is destroyed", function() -- Line 127
		--[[ Upvalues[3]:
			[1]: var2_upvw (read and write)
			[2]: selector_upvr (readonly)
			[3]: discriminator (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local tbl_upvr_3 = {}
		var2_upvw:setState({{
			id = 1;
		}, {
			id = 2;
		}, {
			id = 3;
		}})
		var2_upvw:flush()
		local function _(arg1) -- Line 133
			--[[ Upvalues[1]:
				[1]: tbl_upvr_3 (readonly)
			]]
			table.insert(tbl_upvr_3, arg1)
			return function() -- Line 135
				--[[ Upvalues[2]:
					[1]: tbl_upvr_3 (copied, readonly)
					[2]: arg1 (readonly)
				]]
				table.remove(tbl_upvr_3, table.find(tbl_upvr_3, arg1) or 0)
			end
		end
		expect(#tbl_upvr_3).to.equal(3)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [56] 42. Error Block 4 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [56] 42. Error Block 4 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [50] 38. Error Block 19 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [56.11]
		if nil == 1 then
			-- KONSTANTWARNING: GOTO [59] #44
		end
		-- KONSTANTERROR: [50] 38. Error Block 19 end (CF ANALYSIS FAILED)
	end)
	it("should track objects with a discriminator", function() -- Line 149
		--[[ Upvalues[3]:
			[1]: var2_upvw (read and write)
			[2]: selector_upvr (readonly)
			[3]: discriminator (readonly)
		]]
		local tbl_upvr_8 = {}
		local var44_upvw = 0
		local var45_upvw = 0
		var2_upvw:observe(selector_upvr, discriminator, function(arg1) -- Line 153
			--[[ Upvalues[3]:
				[1]: tbl_upvr_8 (readonly)
				[2]: var44_upvw (read and write)
				[3]: var45_upvw (read and write)
			]]
			table.insert(tbl_upvr_8, arg1)
			var44_upvw += 1
			return function() -- Line 156
				--[[ Upvalues[3]:
					[1]: tbl_upvr_8 (copied, readonly)
					[2]: arg1 (readonly)
					[3]: var45_upvw (copied, read and write)
				]]
				table.remove(tbl_upvr_8, table.find(tbl_upvr_8, arg1) or 0)
				var45_upvw += 1
			end
		end)
		expect(#tbl_upvr_8).to.equal(0)
		expect(var44_upvw).to.equal(0)
		expect(var45_upvw).to.equal(0)
		var2_upvw:setState({{
			id = 1;
		}, {
			id = 2;
		}, {
			id = 3;
		}, {
			id = 4;
		}, {
			id = 5;
		}})
		var2_upvw:flush()
		expect(#tbl_upvr_8).to.equal(5)
		expect(var44_upvw).to.equal(5)
		expect(var45_upvw).to.equal(0)
		var2_upvw:setState({{
			id = 5;
		}, {
			id = 4;
		}, {
			id = 3;
		}, {
			id = 2;
		}, {
			id = 1;
		}})
		var2_upvw:flush()
		expect(#tbl_upvr_8).to.equal(5)
		expect(var44_upvw).to.equal(5)
		expect(var45_upvw).to.equal(0)
	end)
	it("should fail at tracking objects with no discriminator", function() -- Line 181
		--[[ Upvalues[2]:
			[1]: var2_upvw (read and write)
			[2]: selector_upvr (readonly)
		]]
		local tbl_upvr_9 = {}
		local var62_upvw = 0
		local var63_upvw = 0
		var2_upvw:observe(selector_upvr, function(arg1) -- Line 185
			--[[ Upvalues[3]:
				[1]: tbl_upvr_9 (readonly)
				[2]: var62_upvw (read and write)
				[3]: var63_upvw (read and write)
			]]
			table.insert(tbl_upvr_9, arg1)
			var62_upvw += 1
			return function() -- Line 188
				--[[ Upvalues[3]:
					[1]: tbl_upvr_9 (copied, readonly)
					[2]: arg1 (readonly)
					[3]: var63_upvw (copied, read and write)
				]]
				table.remove(tbl_upvr_9, table.find(tbl_upvr_9, arg1) or 0)
				var63_upvw += 1
			end
		end)
		expect(#tbl_upvr_9).to.equal(0)
		expect(var62_upvw).to.equal(0)
		expect(var63_upvw).to.equal(0)
		var2_upvw:setState({{
			id = 1;
		}, {
			id = 2;
		}, {
			id = 3;
		}, {
			id = 4;
		}, {
			id = 5;
		}})
		var2_upvw:flush()
		expect(#tbl_upvr_9).to.equal(5)
		expect(var62_upvw).to.equal(5)
		expect(var63_upvw).to.equal(0)
		var2_upvw:setState({{
			id = 5;
		}, {
			id = 4;
		}, {
			id = 3;
		}, {
			id = 2;
		}, {
			id = 1;
		}})
		var2_upvw:flush()
		expect(#tbl_upvr_9).to.equal(5)
		expect(var62_upvw).to.equal(10)
		expect(var63_upvw).to.equal(5)
	end)
	it("should allow tracking objects by index", function() -- Line 213
		--[[ Upvalues[2]:
			[1]: var2_upvw (read and write)
			[2]: selector_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local tbl_upvr_5 = {}
		local var80_upvw = 0
		local var81_upvw = 0
		var2_upvw:observe(selector_upvr, function(arg1, arg2) -- Line 217, Named "discriminator"
			return arg2
		end, function(arg1, arg2) -- Line 221
			--[[ Upvalues[3]:
				[1]: tbl_upvr_5 (readonly)
				[2]: var80_upvw (read and write)
				[3]: var81_upvw (read and write)
			]]
			table.insert(tbl_upvr_5, arg1)
			var80_upvw += 1
			return function() -- Line 224
				--[[ Upvalues[3]:
					[1]: tbl_upvr_5 (copied, readonly)
					[2]: arg1 (readonly)
					[3]: var81_upvw (copied, read and write)
				]]
				table.remove(tbl_upvr_5, table.find(tbl_upvr_5, arg1) or 0)
				var81_upvw += 1
			end
		end)
		var2_upvw:setState({
			a = {
				id = 1;
			};
			b = {
				id = 2;
			};
			c = {
				id = 3;
			};
		})
		var2_upvw:flush()
		expect(#tbl_upvr_5).to.equal(3)
		expect(var80_upvw).to.equal(3)
		expect(var81_upvw).to.equal(0)
		var2_upvw:setState({
			a = {
				id = 1;
			};
			b = {
				id = 2;
			};
			c = {
				id = 3;
			};
			d = {
				id = 4;
			};
		})
		var2_upvw:flush()
		expect(#tbl_upvr_5).to.equal(4)
		expect(var80_upvw).to.equal(4)
		expect(var81_upvw).to.equal(0)
		var2_upvw:setState({
			b = {
				id = 2;
			};
			c = {
				id = 3;
			};
			d = {
				id = 4;
			};
		})
		var2_upvw:flush()
		expect(#tbl_upvr_5).to.equal(3)
		expect(var80_upvw).to.equal(4)
		expect(var81_upvw).to.equal(1)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [204] 147. Error Block 4 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [204] 147. Error Block 4 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [198] 143. Error Block 7 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [204.13]
		if nil == 1 then
			-- KONSTANTWARNING: GOTO [207] #149
		end
		-- KONSTANTERROR: [198] 143. Error Block 7 end (CF ANALYSIS FAILED)
	end)
	it("should pass the index to the observer", function() -- Line 253
		--[[ Upvalues[2]:
			[1]: var2_upvw (read and write)
			[2]: selector_upvr (readonly)
		]]
		local tbl_upvr = {}
		var2_upvw:observe(selector_upvr, function(arg1, arg2) -- Line 256
			--[[ Upvalues[1]:
				[1]: tbl_upvr (readonly)
			]]
			table.insert(tbl_upvr, arg2)
		end)
		var2_upvw:setState({
			a = 1;
			b = 2;
			c = 3;
		})
		var2_upvw:flush()
		expect(#tbl_upvr).to.equal(3)
		expect(table.find(tbl_upvr, 'a')).to.be.ok()
		expect(table.find(tbl_upvr, 'b')).to.be.ok()
		expect(table.find(tbl_upvr, 'c')).to.be.ok()
		expect(table.find(tbl_upvr, 1)).to.never.be.ok()
		expect(table.find(tbl_upvr, 2)).to.never.be.ok()
		expect(table.find(tbl_upvr, 3)).to.never.be.ok()
	end)
end