-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GISTRUCTINFO_EXTERNALS


insert ANY undefine is_equal, copy end

		STANDARD_C_LIBRARY_TYPES
feature {} -- External calls

	g_struct_info_find_method (an_info: POINTER; a_name: POINTER): POINTER
 		-- g_struct_info_find_method
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_struct_info_find_method"
		}"
		end

	g_struct_info_get_alignment (an_info: POINTER): like long_unsigned 
 		-- g_struct_info_get_alignment
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_struct_info_get_alignment"
		}"
		end

	g_struct_info_get_field (an_info: POINTER; a_n: INTEGER): POINTER
 		-- g_struct_info_get_field
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_struct_info_get_field"
		}"
		end

	g_struct_info_get_method (an_info: POINTER; a_n: INTEGER): POINTER
 		-- g_struct_info_get_method
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_struct_info_get_method"
		}"
		end

	g_struct_info_get_n_fields (an_info: POINTER): INTEGER
 		-- g_struct_info_get_n_fields
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_struct_info_get_n_fields"
		}"
		end

	g_struct_info_get_n_methods (an_info: POINTER): INTEGER
 		-- g_struct_info_get_n_methods
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_struct_info_get_n_methods"
		}"
		end

	g_struct_info_get_size (an_info: POINTER): like long_unsigned 
 		-- g_struct_info_get_size
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_struct_info_get_size"
		}"
		end

	g_struct_info_is_foreign (an_info: POINTER): INTEGER
 		-- g_struct_info_is_foreign
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_struct_info_is_foreign"
		}"
		end

	g_struct_info_is_gtype_struct (an_info: POINTER): INTEGER
 		-- g_struct_info_is_gtype_struct
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_struct_info_is_gtype_struct"
		}"
		end


end -- class GISTRUCTINFO_EXTERNALS
