class TEST_IS_DEEP_EQUAL
	-- Testing is_deep_equal, expectially the new pure-Eiffel implementation
inherit INTERNALS_HANDLER ANY EIFFELTEST_TOOLS
creation make
feature 
	make is
	do
		create {LINKED_LIST[ANY]} collection.make
		create la
		la.add_last(create {REFERENCE[INTEGER_32]}.set_item(12))
		la.add_last(create {REFERENCE[REAL_64]}.set_item(3.14))

		create lb
		lb.add_last(create {REFERENCE[INTEGER_32]}.set_item(12))
		lb.add_last(create {REFERENCE[REAL_64]}.set_item(3.14))

		assert (la.is_deep_equal(lb))

		lb.remove_first
		assert (not la.is_deep_equal(lb))

		create f.make(12,43,7) 
		create g.make(12,43,7)
		f.set_next(g); g.set_next(g)
		assert(f.is_deep_equal(g))
		create g.make(3,2,1)
		assert (not f.is_deep_equal(g))

		assert (1.is_deep_equal(1))
		assert (not 12.is_deep_equal(14))
		assert ("Foobar".is_deep_equal("Foobar"))
		assert (not "Foobar".is_deep_equal("Foo!"))

		-- print_run_time_stack
	end

	collection: COLLECTION[ANY]
	la, lb: LINKED_LIST[ANY]
	intref: REFERENCE[INTEGER_32]
	realref: REFERENCE[REAL_64]
	string: STRING
	f,g: FOO
	b,c: BAR
end

