-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GSTRING_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	GLIB_TYPES
feature {} -- Low-level setters

	gstring_struct_set_str (a_structure: POINTER; a_value: POINTER) is
			-- Setter for str field of GSTRING_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gstring_struct_set_str"
		}"
		end

	gstring_struct_set_len (a_structure: POINTER; a_value: NATURAL) is
			-- Setter for len field of GSTRING_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gstring_struct_set_len"
		}"
		end

	gstring_struct_set_allocated_len (a_structure: POINTER; a_value: NATURAL) is
			-- Setter for allocated_len field of GSTRING_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gstring_struct_set_allocated_len"
		}"
		end

feature {} -- Low-level queries

	gstring_struct_get_str (a_structure: POINTER): POINTER is
			-- Query for str field of GSTRING_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gstring_struct_get_str"
		}"
		end

	gstring_struct_get_len (a_structure: POINTER): NATURAL is
			-- Query for len field of GSTRING_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gstring_struct_get_len"
		}"
		end

	gstring_struct_get_allocated_len (a_structure: POINTER): NATURAL is
			-- Query for allocated_len field of GSTRING_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gstring_struct_get_allocated_len"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__GString"
		}"
		end

end -- class GSTRING_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

