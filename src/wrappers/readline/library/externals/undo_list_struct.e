-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class UNDO_LIST_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	READLINE_TYPES
feature {} -- Low-level setters

	undo_list_struct_set_next (a_structure: POINTER; a_value: POINTER) is
			-- Setter for next field of UNDO_LIST_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "undo_list_struct_set_next"
		}"
		end

	undo_list_struct_set_start (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for start field of UNDO_LIST_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "undo_list_struct_set_start"
		}"
		end

	undo_list_struct_set_end_field (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for end field of UNDO_LIST_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "undo_list_struct_set_end_field"
		}"
		end

	undo_list_struct_set_text (a_structure: POINTER; a_value: POINTER) is
			-- Setter for text field of UNDO_LIST_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "undo_list_struct_set_text"
		}"
		end

	undo_list_struct_set_what (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for what field of UNDO_LIST_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "undo_list_struct_set_what"
		}"
		end

feature {} -- Low-level queries

	undo_list_struct_get_next (a_structure: POINTER): POINTER is
			-- Query for next field of UNDO_LIST_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "undo_list_struct_get_next"
		}"
		end

	undo_list_struct_get_start (a_structure: POINTER): INTEGER is
			-- Query for start field of UNDO_LIST_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "undo_list_struct_get_start"
		}"
		end

	undo_list_struct_get_end_field (a_structure: POINTER): INTEGER is
			-- Query for end field of UNDO_LIST_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "undo_list_struct_get_end_field"
		}"
		end

	undo_list_struct_get_text (a_structure: POINTER): POINTER is
			-- Query for text field of UNDO_LIST_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "undo_list_struct_get_text"
		}"
		end

	undo_list_struct_get_what (a_structure: POINTER): INTEGER is
			-- Query for what field of UNDO_LIST_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "undo_list_struct_get_what"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof_undo_list"
		}"
		end

end -- class UNDO_LIST_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

