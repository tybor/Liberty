-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class HIST_STATE_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	READLINE_TYPES
feature {} -- Low-level setters

	hist_state_struct_set_entries (a_structure: POINTER; a_value: POINTER) is
			-- Setter for entries field of HIST_STATE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "hist_state_struct_set_entries"
		}"
		end

	hist_state_struct_set_offset (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for offset field of HIST_STATE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "hist_state_struct_set_offset"
		}"
		end

	hist_state_struct_set_length (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for length field of HIST_STATE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "hist_state_struct_set_length"
		}"
		end

	hist_state_struct_set_size (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for size field of HIST_STATE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "hist_state_struct_set_size"
		}"
		end

	hist_state_struct_set_flags (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for flags field of HIST_STATE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "hist_state_struct_set_flags"
		}"
		end

feature {} -- Low-level queries

	hist_state_struct_get_entries (a_structure: POINTER): POINTER is
			-- Query for entries field of HIST_STATE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "hist_state_struct_get_entries"
		}"
		end

	hist_state_struct_get_offset (a_structure: POINTER): INTEGER is
			-- Query for offset field of HIST_STATE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "hist_state_struct_get_offset"
		}"
		end

	hist_state_struct_get_length (a_structure: POINTER): INTEGER is
			-- Query for length field of HIST_STATE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "hist_state_struct_get_length"
		}"
		end

	hist_state_struct_get_size (a_structure: POINTER): INTEGER is
			-- Query for size field of HIST_STATE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "hist_state_struct_get_size"
		}"
		end

	hist_state_struct_get_flags (a_structure: POINTER): INTEGER is
			-- Query for flags field of HIST_STATE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "hist_state_struct_get_flags"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__hist_state"
		}"
		end

end -- class HIST_STATE_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

