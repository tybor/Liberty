class TEST_DEEP_TWIN
	-- Testing deep twin, expectially the new pure-Eiffel implementation
inherit INTERNALS_HANDLER ANY EIFFELTEST_TOOLS
creation make
feature 
	make is
		local x: INTEGER
	do
		integer := 42
		create foo
		string := "Foo bar"
		create {LINKED_LIST[ANY]} list.make
		create ir.set_item(12); create rr.set_item(3.14)
		list.add_last(ir); list.add_last(rr)
		--any := list
		-- x := integer.deep_twin
		-- to_internals.self_inspect 
		another := list.deep_twin
		assert(another/=Void)
		assert(list /= another)
		assert(list.is_equal(another)) -- TODO: should be is_deep_equal but currently the builtin is_deep_equal is not compiled in anymore because the built in deep_twin is not used. So avoid using it for a while		
		assert(list.first.is_equal(another.first))
		assert(another.first.is_equal(ir))
		assert(another.last.is_equal(rr))
		assert(list.last.is_equal(another.last))
		-- print_run_time_stack
	end

	any: ANY
	integer: INTEGER
	list, another: COLLECTION[ANY]
	ir:REFERENCE[INTEGER_32]
	rr: REFERENCE[REAL_64]
	string: STRING
	foo: FOO
end

