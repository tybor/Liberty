-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class KEYMAP_ENTRY_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	READLINE_TYPES
feature {} -- Low-level setters

	keymap_entry_struct_set_type (a_structure: POINTER; a_value: CHARACTER) is
			-- Setter for type field of KEYMAP_ENTRY_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "keymap_entry_struct_set_type"
		}"
		end

	keymap_entry_struct_set_function (a_structure: POINTER; a_value: POINTER) is
			-- Setter for function field of KEYMAP_ENTRY_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "keymap_entry_struct_set_function"
		}"
		end

feature {} -- Low-level queries

	keymap_entry_struct_get_type (a_structure: POINTER): CHARACTER is
			-- Query for type field of KEYMAP_ENTRY_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "keymap_entry_struct_get_type"
		}"
		end

	keymap_entry_struct_get_function (a_structure: POINTER): POINTER is
			-- Query for function field of KEYMAP_ENTRY_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "keymap_entry_struct_get_function"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__keymap_entry"
		}"
		end

end -- class KEYMAP_ENTRY_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

