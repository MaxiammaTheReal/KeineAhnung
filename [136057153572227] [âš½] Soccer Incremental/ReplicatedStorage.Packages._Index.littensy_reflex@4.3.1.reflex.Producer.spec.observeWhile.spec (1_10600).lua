-- Name: observeWhile.spec
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_reflex@4.3.1.reflex.Producer.spec.observeWhile.spec
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6261647999999695 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:27
-- Luau version 6, Types version 3
-- Time taken: 0.011825 seconds

return function() -- Line 1
	local var2_upvw
	local createProducer_upvr = require(script.Parent.Parent.createProducer)
	beforeEach(function() -- Line 6
		--[[ Upvalues[2]:
			[1]: var2_upvw (read and write)
			[2]: createProducer_upvr (readonly)
		]]
		var2_upvw = createProducer_upvr({}, {})
	end)
	afterEach(function() -- Line 10
		--[[ Upvalues[1]:
			[1]: var2_upvw (read and write)
		]]
		var2_upvw:destroy()
	end)
	it("should observe while the value is truthy", function() -- Line 14
		--[[ Upvalues[1]:
			[1]: var2_upvw (read and write)
		]]
		local var7_upvw
		var2_upvw:observeWhile(function(arg1) -- Line 17
			return arg1.value
		end, function(arg1) -- Line 19
			--[[ Upvalues[1]:
				[1]: var7_upvw (read and write)
			]]
			var7_upvw = arg1
			return function() -- Line 22
				--[[ Upvalues[1]:
					[1]: var7_upvw (copied, read and write)
				]]
				var7_upvw = nil
			end
		end)
		expect(var7_upvw).to.never.be.ok()
		var2_upvw:setState({
			value = 1;
		})
		var2_upvw:flush()
		expect(var7_upvw).to.equal(1)
		var2_upvw:setState({})
		var2_upvw:flush()
		expect(var7_upvw).to.never.be.ok()
	end)
	it("should observe while the predicate returns true", function() -- Line 38
		--[[ Upvalues[1]:
			[1]: var2_upvw (read and write)
		]]
		local var13_upvw
		var2_upvw:observeWhile(function(arg1) -- Line 41
			return arg1.value
		end, function(arg1) -- Line 43
			local var16 = arg1
			if var16 then
				if 0 >= arg1 then
					var16 = false
				else
					var16 = true
				end
			end
			return var16
		end, function(arg1) -- Line 45
			--[[ Upvalues[1]:
				[1]: var13_upvw (read and write)
			]]
			var13_upvw = arg1
			return function() -- Line 48
				--[[ Upvalues[1]:
					[1]: var13_upvw (copied, read and write)
				]]
				var13_upvw = nil
			end
		end)
		expect(var13_upvw).to.never.be.ok()
		var2_upvw:setState({
			value = 1;
		})
		var2_upvw:flush()
		expect(var13_upvw).to.equal(1)
		var2_upvw:setState({
			value = -1;
		})
		var2_upvw:flush()
		expect(var13_upvw).to.never.be.ok()
	end)
	it("should observe if the initial value is already truthy", function() -- Line 64
		--[[ Upvalues[1]:
			[1]: var2_upvw (read and write)
		]]
		var2_upvw:setState({
			value = 1;
		})
		var2_upvw:flush()
		local var23_upvw
		var2_upvw:observeWhile(function(arg1) -- Line 70
			return arg1.value
		end, function(arg1) -- Line 72
			--[[ Upvalues[1]:
				[1]: var23_upvw (read and write)
			]]
			var23_upvw = arg1
			return function() -- Line 75
				--[[ Upvalues[1]:
					[1]: var23_upvw (copied, read and write)
				]]
				var23_upvw = nil
			end
		end)
		expect(var23_upvw).to.equal(1)
	end)
	it("should observe if the predicate returns true for the initial value", function() -- Line 83
		--[[ Upvalues[1]:
			[1]: var2_upvw (read and write)
		]]
		var2_upvw:setState({
			value = 1;
		})
		var2_upvw:flush()
		local var29_upvw
		var2_upvw:observeWhile(function(arg1) -- Line 89
			return arg1.value
		end, function(arg1) -- Line 91
			if arg1 ~= 1 then
			else
			end
			return true
		end, function(arg1) -- Line 93
			--[[ Upvalues[1]:
				[1]: var29_upvw (read and write)
			]]
			var29_upvw = arg1
			return function() -- Line 96
				--[[ Upvalues[1]:
					[1]: var29_upvw (copied, read and write)
				]]
				var29_upvw = nil
			end
		end)
		expect(var29_upvw).to.equal(1)
	end)
	it("should observe a nil value if the predicate returns true", function() -- Line 104
		--[[ Upvalues[1]:
			[1]: var2_upvw (read and write)
		]]
		local var35_upvw
		var2_upvw:observeWhile(function(arg1) -- Line 107
			return arg1.value
		end, function(arg1) -- Line 109
			if arg1 ~= nil then
			else
			end
			return true
		end, function(arg1) -- Line 111
			--[[ Upvalues[1]:
				[1]: var35_upvw (read and write)
			]]
			var35_upvw = arg1
		end)
		expect(var35_upvw).to.equal(nil)
	end)
	it("should not re-run until the value becomes falsy", function() -- Line 118
		--[[ Upvalues[1]:
			[1]: var2_upvw (read and write)
		]]
		local var40_upvw = 0
		local var41_upvw = 0
		var2_upvw:observeWhile(function(arg1) -- Line 122
			return arg1.value
		end, function(arg1) -- Line 124
			--[[ Upvalues[2]:
				[1]: var40_upvw (read and write)
				[2]: var41_upvw (read and write)
			]]
			var40_upvw += 1
			return function() -- Line 126
				--[[ Upvalues[1]:
					[1]: var41_upvw (copied, read and write)
				]]
				var41_upvw += 1
			end
		end)
		expect(var40_upvw).to.equal(0)
		expect(var41_upvw).to.equal(0)
		var2_upvw:setState({
			value = 1;
		})
		var2_upvw:flush()
		var2_upvw:setState({
			value = 1;
		})
		var2_upvw:flush()
		expect(var40_upvw).to.equal(1)
		expect(var41_upvw).to.equal(0)
		var2_upvw:setState({
			value = 2;
		})
		var2_upvw:flush()
		expect(var40_upvw).to.equal(1)
		expect(var41_upvw).to.equal(0)
		var2_upvw:setState({})
		var2_upvw:flush()
		var2_upvw:setState({})
		var2_upvw:flush()
		expect(var40_upvw).to.equal(1)
		expect(var41_upvw).to.equal(1)
		var2_upvw:setState({
			value = 3;
		})
		var2_upvw:flush()
		expect(var40_upvw).to.equal(2)
		expect(var41_upvw).to.equal(1)
	end)
	it("should not re-run until the predicate returns false", function() -- Line 159
		--[[ Upvalues[1]:
			[1]: var2_upvw (read and write)
		]]
		local var50_upvw = 0
		local var51_upvw = 0
		var2_upvw:observeWhile(function(arg1) -- Line 163
			return arg1.value
		end, function(arg1) -- Line 165
			if arg1 ~= 1 then
			else
			end
			return true
		end, function(arg1) -- Line 167
			--[[ Upvalues[2]:
				[1]: var50_upvw (read and write)
				[2]: var51_upvw (read and write)
			]]
			var50_upvw += 1
			return function() -- Line 169
				--[[ Upvalues[1]:
					[1]: var51_upvw (copied, read and write)
				]]
				var51_upvw += 1
			end
		end)
		expect(var50_upvw).to.equal(0)
		expect(var51_upvw).to.equal(0)
		var2_upvw:setState({
			value = 1;
		})
		var2_upvw:flush()
		var2_upvw:setState({
			value = 1;
		})
		var2_upvw:flush()
		expect(var50_upvw).to.equal(1)
		expect(var51_upvw).to.equal(0)
		var2_upvw:setState({
			value = 2;
		})
		var2_upvw:flush()
		var2_upvw:setState({
			value = 2;
		})
		var2_upvw:flush()
		expect(var50_upvw).to.equal(1)
		expect(var51_upvw).to.equal(1)
		var2_upvw:setState({
			value = 1;
		})
		var2_upvw:flush()
		expect(var50_upvw).to.equal(2)
		expect(var51_upvw).to.equal(1)
	end)
	it("should cleanup the observer when the cleanup function is called", function() -- Line 197
		--[[ Upvalues[1]:
			[1]: var2_upvw (read and write)
		]]
		local var62_upvw = 0
		local var63_upvw = 0
		var2_upvw:setState({
			value = 1;
		})
		var2_upvw:flush()
		expect(var62_upvw).to.equal(1)
		expect(var63_upvw).to.equal(0)
		var2_upvw:observeWhile(function(arg1) -- Line 201
			return arg1.value
		end, function(arg1) -- Line 203
			--[[ Upvalues[2]:
				[1]: var62_upvw (read and write)
				[2]: var63_upvw (read and write)
			]]
			var62_upvw += 1
			return function() -- Line 205
				--[[ Upvalues[1]:
					[1]: var63_upvw (copied, read and write)
				]]
				var63_upvw += 1
			end
		end)()
		expect(var62_upvw).to.equal(1)
		expect(var63_upvw).to.equal(1)
		var2_upvw:setState({
			value = 2;
		})
		var2_upvw:flush()
		expect(var62_upvw).to.equal(1)
		expect(var63_upvw).to.equal(1)
	end)
end