-- Name: init.spec
-- Path: game:GetService("ReplicatedStorage").Packages._Index.sleitnick_ser@1.0.5.ser.init.spec
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7128035000059754 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:50
-- Luau version 6, Types version 3
-- Time taken: 0.002867 seconds

return function() -- Line 1
	local Parent_upvr = require(script.Parent)
	local Option_upvr = require(script.Parent.Parent.Option)
	describe("SerializeArgs", function() -- Line 5
		--[[ Upvalues[2]:
			[1]: Option_upvr (readonly)
			[2]: Parent_upvr (readonly)
		]]
		it("should serialize an option", function() -- Line 6
			--[[ Upvalues[2]:
				[1]: Option_upvr (copied, readonly)
				[2]: Parent_upvr (copied, readonly)
			]]
			local unpacked_value_1_2 = table.unpack(Parent_upvr.SerializeArgs(Option_upvr.Some(32)))
			expect(unpacked_value_1_2.ClassName).to.equal("Option")
			expect(unpacked_value_1_2.Value).to.equal(32)
		end)
	end)
	describe("SerializeArgsAndUnpack", function() -- Line 14
		--[[ Upvalues[2]:
			[1]: Option_upvr (readonly)
			[2]: Parent_upvr (readonly)
		]]
		it("should serialize an option", function() -- Line 15
			--[[ Upvalues[2]:
				[1]: Option_upvr (copied, readonly)
				[2]: Parent_upvr (copied, readonly)
			]]
			local any_SerializeArgsAndUnpack_result1 = Parent_upvr.SerializeArgsAndUnpack(Option_upvr.Some(32))
			expect(any_SerializeArgsAndUnpack_result1.ClassName).to.equal("Option")
			expect(any_SerializeArgsAndUnpack_result1.Value).to.equal(32)
		end)
	end)
	describe("DeserializeArgs", function() -- Line 23
		--[[ Upvalues[2]:
			[1]: Parent_upvr (readonly)
			[2]: Option_upvr (readonly)
		]]
		it("should deserialize args to option", function() -- Line 24
			--[[ Upvalues[2]:
				[1]: Parent_upvr (copied, readonly)
				[2]: Option_upvr (copied, readonly)
			]]
			local unpacked_value_1 = table.unpack(Parent_upvr.DeserializeArgs({
				ClassName = "Option";
				Value = 32;
			}))
			expect(Option_upvr.Is(unpacked_value_1)).to.equal(true)
			expect(unpacked_value_1:Contains(32)).to.equal(true)
		end)
	end)
	describe("DeserializeArgsAndUnpack", function() -- Line 35
		--[[ Upvalues[2]:
			[1]: Parent_upvr (readonly)
			[2]: Option_upvr (readonly)
		]]
		it("should deserialize args to option", function() -- Line 36
			--[[ Upvalues[2]:
				[1]: Parent_upvr (copied, readonly)
				[2]: Option_upvr (copied, readonly)
			]]
			local any_DeserializeArgsAndUnpack_result1 = Parent_upvr.DeserializeArgsAndUnpack({
				ClassName = "Option";
				Value = 32;
			})
			expect(Option_upvr.Is(any_DeserializeArgsAndUnpack_result1)).to.equal(true)
			expect(any_DeserializeArgsAndUnpack_result1:Contains(32)).to.equal(true)
		end)
	end)
end