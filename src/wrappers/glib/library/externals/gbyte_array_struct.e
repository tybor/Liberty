-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GBYTE_ARRAY_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	GLIB_TYPES
feature {} -- Low-level setters

	gbyte_array_struct_set_data (a_structure: POINTER; a_value: POINTER) is
			-- Setter for data field of GBYTE_ARRAY_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gbyte_array_struct_set_data"
		}"
		end

	gbyte_array_struct_set_len (a_structure: POINTER; a_value: NATURAL) is
			-- Setter for len field of GBYTE_ARRAY_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gbyte_array_struct_set_len"
		}"
		end

feature {} -- Low-level queries

	gbyte_array_struct_get_data (a_structure: POINTER): POINTER is
			-- Query for data field of GBYTE_ARRAY_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gbyte_array_struct_get_data"
		}"
		end

	gbyte_array_struct_get_len (a_structure: POINTER): NATURAL is
			-- Query for len field of GBYTE_ARRAY_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gbyte_array_struct_get_len"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__GByteArray"
		}"
		end

end -- class GBYTE_ARRAY_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

