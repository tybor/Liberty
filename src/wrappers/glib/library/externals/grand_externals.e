-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GRAND_EXTERNALS


insert ANY undefine is_equal, copy end

		STANDARD_C_LIBRARY_TYPES
feature {} -- External calls

	g_rand_copy (a_rand: POINTER): POINTER is
 		-- g_rand_copy
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_rand_copy"
		}"
		end

	g_rand_double (a_rand: POINTER): REAL is
 		-- g_rand_double
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_rand_double"
		}"
		end

	g_rand_double_range (a_rand: POINTER; a_begin: REAL; an_end_external: REAL): REAL is
 		-- g_rand_double_range
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_rand_double_range"
		}"
		end

	g_rand_free (a_rand: POINTER) is
 		-- g_rand_free
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_rand_free"
		}"
		end

	g_rand_int (a_rand: POINTER): NATURAL is
 		-- g_rand_int
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_rand_int"
		}"
		end

	g_rand_int_range (a_rand: POINTER; a_begin: INTEGER; an_end_external: INTEGER): INTEGER is
 		-- g_rand_int_range
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_rand_int_range"
		}"
		end

	g_rand_new: POINTER is
 		-- g_rand_new
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_rand_new()"
		}"
		end

	g_rand_new_with_seed (a_seed: NATURAL): POINTER is
 		-- g_rand_new_with_seed
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_rand_new_with_seed"
		}"
		end

	g_rand_new_with_seed_array (a_seed: POINTER; a_seed_length: NATURAL): POINTER is
 		-- g_rand_new_with_seed_array
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_rand_new_with_seed_array"
		}"
		end

	g_rand_set_seed (a_rand: POINTER; a_seed: NATURAL) is
 		-- g_rand_set_seed
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_rand_set_seed"
		}"
		end

	g_rand_set_seed_array (a_rand: POINTER; a_seed: POINTER; a_seed_length: NATURAL) is
 		-- g_rand_set_seed_array
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_rand_set_seed_array"
		}"
		end

	g_random_double: REAL is
 		-- g_random_double
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_random_double()"
		}"
		end

	g_random_double_range (a_begin: REAL; an_end_external: REAL): REAL is
 		-- g_random_double_range
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_random_double_range"
		}"
		end

	g_random_int: NATURAL is
 		-- g_random_int
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_random_int()"
		}"
		end

	g_random_int_range (a_begin: INTEGER; an_end_external: INTEGER): INTEGER is
 		-- g_random_int_range
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_random_int_range"
		}"
		end

	g_random_set_seed (a_seed: NATURAL) is
 		-- g_random_set_seed
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_random_set_seed"
		}"
		end


end -- class GRAND_EXTERNALS
