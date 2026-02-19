-- Name: applyMiddleware.spec
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_reflex@4.3.1.reflex.applyMiddleware.spec
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6166091000050073 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:14
-- Luau version 6, Types version 3
-- Time taken: 0.006808 seconds

return function() -- Line 1
	local applyMiddleware_upvr = require(script.Parent.applyMiddleware)
	local var3_upvw
	local createProducer_upvr = require(script.Parent.createProducer)
	beforeEach(function() -- Line 7
		--[[ Upvalues[2]:
			[1]: var3_upvw (read and write)
			[2]: createProducer_upvr (readonly)
		]]
		var3_upvw = createProducer_upvr({
			count = 0;
		}, {
			increment = function(arg1, arg2) -- Line 9, Named "increment"
				return {
					count = arg1.count + arg2;
				}
			end;
		})
	end)
	afterEach(function() -- Line 15
		--[[ Upvalues[1]:
			[1]: var3_upvw (read and write)
		]]
		var3_upvw:destroy()
	end)
	it("should call middleware with the right parameters", function() -- Line 19
		--[[ Upvalues[2]:
			[1]: var3_upvw (read and write)
			[2]: applyMiddleware_upvr (readonly)
		]]
		local function middleware(arg1) -- Line 20
			--[[ Upvalues[1]:
				[1]: var3_upvw (copied, read and write)
			]]
			expect(arg1).to.equal(var3_upvw)
			return function(arg1_2, arg2) -- Line 23
				--[[ Upvalues[1]:
					[1]: var3_upvw (copied, read and write)
				]]
				expect(arg1_2).to.be.a("function")
				expect(var3_upvw[arg2]).to.equal(arg1_2)
				return function(...) -- Line 27
					--[[ Upvalues[2]:
						[1]: arg2 (readonly)
						[2]: arg1_2 (readonly)
					]]
					expect(arg2).to.equal("increment")
					expect(select('#', ...)).to.equal(2)
					expect(select(1, ...)).to.equal(1)
					expect(select(2, ...)).to.equal(2)
					return arg1_2(...)
				end
			end
		end
		applyMiddleware_upvr(middleware)(var3_upvw)
		expect(var3_upvw.increment(1, 2)).to.equal(var3_upvw:getState())
	end)
	it("should call middleware in order", function() -- Line 42
		--[[ Upvalues[2]:
			[1]: applyMiddleware_upvr (readonly)
			[2]: var3_upvw (read and write)
		]]
		local var14_upvw = ""
		local function _(arg1) -- Line 45, Named "create"
			--[[ Upvalues[1]:
				[1]: var14_upvw (read and write)
			]]
			return function(arg1_3) -- Line 46
				--[[ Upvalues[2]:
					[1]: var14_upvw (copied, read and write)
					[2]: arg1 (readonly)
				]]
				return function(arg1_4) -- Line 47
					--[[ Upvalues[2]:
						[1]: var14_upvw (copied, read and write)
						[2]: arg1 (copied, readonly)
					]]
					return function(...) -- Line 48
						--[[ Upvalues[3]:
							[1]: var14_upvw (copied, read and write)
							[2]: arg1 (copied, readonly)
							[3]: arg1_4 (readonly)
						]]
						var14_upvw = var14_upvw..arg1
						return arg1_4(...)
					end
				end
			end
		end
		local var22_upvr = 1
		local var26_upvr = 2
		function var22_upvr(arg1) -- Line 46
			--[[ Upvalues[2]:
				[1]: var14_upvw (read and write)
				[2]: var26_upvr (readonly)
			]]
			return function(arg1_6) -- Line 47
				--[[ Upvalues[2]:
					[1]: var14_upvw (copied, read and write)
					[2]: var26_upvr (copied, readonly)
				]]
				return function(...) -- Line 48
					--[[ Upvalues[3]:
						[1]: var14_upvw (copied, read and write)
						[2]: var26_upvr (copied, readonly)
						[3]: arg1_6 (readonly)
					]]
					var14_upvw = var14_upvw..var26_upvr
					return arg1_6(...)
				end
			end
		end
		local const_number_upvr = 3
		function var26_upvr(arg1) -- Line 46
			--[[ Upvalues[2]:
				[1]: var14_upvw (read and write)
				[2]: const_number_upvr (readonly)
			]]
			return function(arg1_7) -- Line 47
				--[[ Upvalues[2]:
					[1]: var14_upvw (copied, read and write)
					[2]: const_number_upvr (copied, readonly)
				]]
				return function(...) -- Line 48
					--[[ Upvalues[3]:
						[1]: var14_upvw (copied, read and write)
						[2]: const_number_upvr (copied, readonly)
						[3]: arg1_7 (readonly)
					]]
					var14_upvw = var14_upvw..const_number_upvr
					return arg1_7(...)
				end
			end
		end
		applyMiddleware_upvr(function(arg1) -- Line 46
			--[[ Upvalues[2]:
				[1]: var14_upvw (read and write)
				[2]: var22_upvr (readonly)
			]]
			return function(arg1_5) -- Line 47
				--[[ Upvalues[2]:
					[1]: var14_upvw (copied, read and write)
					[2]: var22_upvr (copied, readonly)
				]]
				return function(...) -- Line 48
					--[[ Upvalues[3]:
						[1]: var14_upvw (copied, read and write)
						[2]: var22_upvr (copied, readonly)
						[3]: arg1_5 (readonly)
					]]
					var14_upvw = var14_upvw..var22_upvr
					return arg1_5(...)
				end
			end
		end, var22_upvr, var26_upvr)(var3_upvw)
		var3_upvw.increment(1)
		var22_upvr = expect
		var26_upvr = var14_upvw
		var22_upvr = var22_upvr(var26_upvr)
		var22_upvr.to.equal("123")
	end)
	it("should pass forward the result of the middleware", function() -- Line 62
		--[[ Upvalues[2]:
			[1]: applyMiddleware_upvr (readonly)
			[2]: var3_upvw (read and write)
		]]
		applyMiddleware_upvr(function(arg1) -- Line 63, Named "middleware"
			return function(arg1_8) -- Line 64
				return function(...) -- Line 65
					--[[ Upvalues[1]:
						[1]: arg1_8 (readonly)
					]]
					arg1_8(...)
					return 1
				end
			end
		end)(var3_upvw)
		expect(var3_upvw.increment(1)).to.equal(1)
	end)
end