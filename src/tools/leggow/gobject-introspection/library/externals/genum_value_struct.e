-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GENUM_VALUE_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	GOBJECT_INTROSPECTION_TYPES
feature {} -- Low-level setters

	genum_value_struct_set_value (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for value field of GENUM_VALUE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "genum_value_struct_set_value"
		}"
		end

	genum_value_struct_set_value_name (a_structure: POINTER; a_value: POINTER) is
			-- Setter for value_name field of GENUM_VALUE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "genum_value_struct_set_value_name"
		}"
		end

	genum_value_struct_set_value_nick (a_structure: POINTER; a_value: POINTER) is
			-- Setter for value_nick field of GENUM_VALUE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "genum_value_struct_set_value_nick"
		}"
		end

feature {} -- Low-level queries

	genum_value_struct_get_value (a_structure: POINTER): INTEGER is
			-- Query for value field of GENUM_VALUE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "genum_value_struct_get_value"
		}"
		end

	genum_value_struct_get_value_name (a_structure: POINTER): POINTER is
			-- Query for value_name field of GENUM_VALUE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "genum_value_struct_get_value_name"
		}"
		end

	genum_value_struct_get_value_nick (a_structure: POINTER): POINTER is
			-- Query for value_nick field of GENUM_VALUE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "genum_value_struct_get_value_nick"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__GEnumValue"
		}"
		end

end -- class GENUM_VALUE_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

