-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GIUNIONINFO_EXTERNALS


insert ANY undefine is_equal, copy end

		STANDARD_C_LIBRARY_TYPES
feature {} -- External calls

	g_union_info_find_method (an_info: POINTER; a_name: POINTER): POINTER
 		-- g_union_info_find_method
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_union_info_find_method"
		}"
		end

	g_union_info_get_alignment (an_info: POINTER): like long_unsigned 
 		-- g_union_info_get_alignment
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_union_info_get_alignment"
		}"
		end

	g_union_info_get_discriminator (an_info: POINTER; a_n: INTEGER): POINTER
 		-- g_union_info_get_discriminator
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_union_info_get_discriminator"
		}"
		end

	g_union_info_get_discriminator_offset (an_info: POINTER): INTEGER
 		-- g_union_info_get_discriminator_offset
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_union_info_get_discriminator_offset"
		}"
		end

	g_union_info_get_discriminator_type (an_info: POINTER): POINTER
 		-- g_union_info_get_discriminator_type
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_union_info_get_discriminator_type"
		}"
		end

	g_union_info_get_field (an_info: POINTER; a_n: INTEGER): POINTER
 		-- g_union_info_get_field
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_union_info_get_field"
		}"
		end

	g_union_info_get_method (an_info: POINTER; a_n: INTEGER): POINTER
 		-- g_union_info_get_method
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_union_info_get_method"
		}"
		end

	g_union_info_get_n_fields (an_info: POINTER): INTEGER
 		-- g_union_info_get_n_fields
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_union_info_get_n_fields"
		}"
		end

	g_union_info_get_n_methods (an_info: POINTER): INTEGER
 		-- g_union_info_get_n_methods
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_union_info_get_n_methods"
		}"
		end

<<<<<<< HEAD:src/tools/leggow/gobject-introspection/library/externals/giunioninfo_externals.e
	g_union_info_get_size (an_info: POINTER): like long_unsigned is
=======
	g_union_info_get_size (an_info: POINTER): NATURAL
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757:src/wrappers/gobject-introspection/library/externals/giunioninfo_externals.e
 		-- g_union_info_get_size
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_union_info_get_size"
		}"
		end

	g_union_info_is_discriminated (an_info: POINTER): INTEGER
 		-- g_union_info_is_discriminated
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_union_info_is_discriminated"
		}"
		end


end -- class GIUNIONINFO_EXTERNALS
