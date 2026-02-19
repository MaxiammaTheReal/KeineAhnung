-- Name: createSelectArrayDiffs.spec
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_reflex@4.3.1.reflex.utils.createSelectArrayDiffs.spec
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.591834499995457 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:34
-- Luau version 6, Types version 3
-- Time taken: 0.011003 seconds

return function() -- Line 1
	local createSelectArrayDiffs_upvr = require(script.Parent.createSelectArrayDiffs)
	local function forward_upvr(arg1) -- Line 4, Named "forward"
		return arg1
	end
	local function discriminator(arg1) -- Line 8
		return arg1.id
	end
	local function _(arg1) -- Line 12, Named "new"
		local module = {}
		module.id = arg1
		return module
	end
	local function _(arg1, arg2, arg3) -- Line 16, Named "hasEntry"
		for _, v in ipairs(arg1) do
			if v.id == arg2 and (arg3 == nil or arg3 == v.key) then
				return true
			end
		end
		return false
	end
	it("should return initial additions and deletions", function() -- Line 26
		--[[ Upvalues[2]:
			[1]: createSelectArrayDiffs_upvr (readonly)
			[2]: forward_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local var11 = createSelectArrayDiffs_upvr(forward_upvr)({1, 2, 3})
		expect(var11.additions).to.be.a("table")
		expect(var11.deletions).to.be.a("table")
		local ipairs_result1_5, ipairs_result2_2, ipairs_result3_2 = ipairs(var11.additions)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [53] 37. Error Block 4 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [53] 37. Error Block 4 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [47] 33. Error Block 19 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [53.12]
		if nil == 1 then
			-- KONSTANTWARNING: GOTO [56] #39
		end
		-- KONSTANTERROR: [47] 33. Error Block 19 end (CF ANALYSIS FAILED)
	end)
	it("should track additions and deletions", function() -- Line 37
		--[[ Upvalues[2]:
			[1]: createSelectArrayDiffs_upvr (readonly)
			[2]: forward_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 41 start (CF ANALYSIS FAILED)
		local var23 = createSelectArrayDiffs_upvr(forward_upvr)({
			a = 1;
			b = 2;
			c = 3;
		})
		for _, v_2 in ipairs(var23.additions) do
			if v_2.id == 1 then
				if v_2.key == 'a' then
					-- KONSTANTWARNING: GOTO [37] #27
				end
			end
		end
		-- KONSTANTERROR: [0] 1. Error Block 41 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [37] 27. Error Block 7 start (CF ANALYSIS FAILED)
		expect(false).to.equal(true)
		local _, _, _ = ipairs(var23.additions)
		-- KONSTANTERROR: [37] 27. Error Block 7 end (CF ANALYSIS FAILED)
	end)
	it("should receive a discriminator parameter", function() -- Line 51
		--[[ Upvalues[3]:
			[1]: createSelectArrayDiffs_upvr (readonly)
			[2]: forward_upvr (readonly)
			[3]: discriminator (readonly)
		]]
		local var2_result1 = createSelectArrayDiffs_upvr(forward_upvr, discriminator)
		local var2_result1_result1 = var2_result1({{
			id = 1;
		}, {
			id = 2;
		}, {
			id = 3;
		}})
		expect(#var2_result1_result1.additions).to.equal(3)
		expect(#var2_result1_result1.deletions).to.equal(0)
		expect(var2_result1_result1.additions[1].value.id).to.equal(1)
		expect(var2_result1_result1.additions[2].value.id).to.equal(2)
		expect(var2_result1_result1.additions[3].value.id).to.equal(3)
		local var2_result1_result1_2 = var2_result1({{
			id = 1;
		}, {
			id = 3;
		}, {
			id = 4;
		}})
		expect(#var2_result1_result1_2.additions).to.equal(1)
		expect(#var2_result1_result1_2.deletions).to.equal(1)
		expect(var2_result1_result1_2.additions[1].value.id).to.equal(4)
		expect(var2_result1_result1_2.deletions[1].value.id).to.equal(2)
	end)
	it("should track new items with the same discriminator", function() -- Line 68
		--[[ Upvalues[3]:
			[1]: createSelectArrayDiffs_upvr (readonly)
			[2]: forward_upvr (readonly)
			[3]: discriminator (readonly)
		]]
		local var2_result1_3 = createSelectArrayDiffs_upvr(forward_upvr, discriminator)
		local var43_result1 = var2_result1_3({{
			id = 1;
		}, {
			id = 2;
		}, {
			id = 3;
		}})
		expect(#var43_result1.additions).to.equal(3)
		expect(#var43_result1.deletions).to.equal(0)
		local var43_result1_2 = var2_result1_3({{
			id = 1;
		}, {
			id = 2;
		}, {
			id = 3;
		}})
		expect(#var43_result1_2.additions).to.equal(0)
		expect(#var43_result1_2.deletions).to.equal(0)
	end)
	it("should allow tracking items by index", function() -- Line 80
		--[[ Upvalues[2]:
			[1]: createSelectArrayDiffs_upvr (readonly)
			[2]: forward_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 41 start (CF ANALYSIS FAILED)
		local function discriminator(arg1, arg2) -- Line 81
			return arg2
		end
		local var58 = createSelectArrayDiffs_upvr(forward_upvr, discriminator)({1, 2, 3})
		for _, v_3 in ipairs(var58.additions) do
			if v_3.id == 1 then
				if v_3.key == 1 then
					-- KONSTANTWARNING: GOTO [36] #27
				end
			end
		end
		-- KONSTANTERROR: [0] 1. Error Block 41 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [36] 27. Error Block 7 start (CF ANALYSIS FAILED)
		expect(false).to.equal(true)
		local _, _, _ = ipairs(var58.additions)
		-- KONSTANTERROR: [36] 27. Error Block 7 end (CF ANALYSIS FAILED)
	end)
	it("should pass the correct index", function() -- Line 103
		--[[ Upvalues[2]:
			[1]: createSelectArrayDiffs_upvr (readonly)
			[2]: forward_upvr (readonly)
		]]
		local tbl_upvr = {}
		local var2_result1_2 = createSelectArrayDiffs_upvr(forward_upvr, function(arg1, arg2) -- Line 106, Named "discriminator"
			--[[ Upvalues[1]:
				[1]: tbl_upvr (readonly)
			]]
			table.insert(tbl_upvr, arg2)
			return arg2
		end)
		var2_result1_2({
			a = 1;
			b = 2;
			c = 3;
		})
		var2_result1_2({})
		expect(table.find(tbl_upvr, 'a')).to.be.ok()
		expect(table.find(tbl_upvr, 'b')).to.be.ok()
		expect(table.find(tbl_upvr, 'c')).to.be.ok()
		expect(table.find(tbl_upvr, 1)).to.never.be.ok()
		expect(table.find(tbl_upvr, 2)).to.never.be.ok()
		expect(table.find(tbl_upvr, 3)).to.never.be.ok()
	end)
end