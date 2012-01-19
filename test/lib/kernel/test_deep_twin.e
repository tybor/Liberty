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
		list.add_last( create {REFERENCE[INTEGER_32]}.set_item(12))
		list.add_last( create {REFERENCE[REAL_64]}.set_item(3.14)) 
		--any := list
		-- x := integer.deep_twin
		-- to_internals.self_inspect 
		another := list.deep_twin
		assert(another/=Void)
		-- Currently builton is_deep_equal is not compiled in anymore because the built in deep_twin is not used. So avoid using it for a while
		assert(list.is_equal(another)) -- TODO: should be is_deep_equal
		assert(list.first.is_equal(another.first))
		assert(list.last.is_equal(another.last))
	end

	any: ANY
	integer: INTEGER
	list, another: COLLECTION[ANY]
	string: STRING
	foo: FOO
end

