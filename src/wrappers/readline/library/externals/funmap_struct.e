-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class FUNMAP_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	READLINE_TYPES
feature {} -- Low-level setters

	funmap_struct_set_name (a_structure: POINTER; a_value: POINTER) is
			-- Setter for name field of FUNMAP_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "funmap_struct_set_name"
		}"
		end

	funmap_struct_set_function (a_structure: POINTER; a_value: POINTER) is
			-- Setter for function field of FUNMAP_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "funmap_struct_set_function"
		}"
		end

feature {} -- Low-level queries

	funmap_struct_get_name (a_structure: POINTER): POINTER is
			-- Query for name field of FUNMAP_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "funmap_struct_get_name"
		}"
		end

	funmap_struct_get_function (a_structure: POINTER): POINTER is
			-- Query for function field of FUNMAP_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "funmap_struct_get_function"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__funmap"
		}"
		end

end -- class FUNMAP_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

