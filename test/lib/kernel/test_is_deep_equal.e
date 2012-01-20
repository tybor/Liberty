class TEST_IS_DEEP_EQUAL
	-- Testing is_deep_equal, expectially the new pure-Eiffel implementation
inherit INTERNALS_HANDLER ANY EIFFELTEST_TOOLS
creation make
feature 
	make is
	do
		create {LINKED_LIST[ANY]} collection.make
		create list
		create intref.set_item(12)
        create realref.set_item(3.14)
		list.add_last(intref)
		list.add_last(realref)

		create another
		another.add_last(intref)
		another.add_last(realref)

		assert (list.is_equal(another))

		create f.make(12,43,7) 
		create g.make(12,43,7)
		f.set_next(g); g.set_next(g)
		assert(f.is_equal(g))
		-- print_run_time_stack
	end

	collection: COLLECTION[ANY]
	list, another: LINKED_LIST[ANY]
	intref: REFERENCE[INTEGER_32]
	realref: REFERENCE[REAL_64]
	string: STRING
	f,g: FOO
	b,c: BAR
end

