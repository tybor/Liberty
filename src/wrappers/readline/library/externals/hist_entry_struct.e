-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class HIST_ENTRY_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	READLINE_TYPES
feature {} -- Low-level setters

	hist_entry_struct_set_line (a_structure: POINTER; a_value: POINTER)
			-- Setter for line field of HIST_ENTRY_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "hist_entry_struct_set_line"
		}"
		end

	hist_entry_struct_set_timestamp (a_structure: POINTER; a_value: POINTER)
			-- Setter for timestamp field of HIST_ENTRY_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "hist_entry_struct_set_timestamp"
		}"
		end

	hist_entry_struct_set_data (a_structure: POINTER; a_value: POINTER)
			-- Setter for data field of HIST_ENTRY_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "hist_entry_struct_set_data"
		}"
		end

feature {} -- Low-level queries

	hist_entry_struct_get_line (a_structure: POINTER): POINTER
			-- Query for line field of HIST_ENTRY_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "hist_entry_struct_get_line"
		}"
		end

	hist_entry_struct_get_timestamp (a_structure: POINTER): POINTER
			-- Query for timestamp field of HIST_ENTRY_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "hist_entry_struct_get_timestamp"
		}"
		end

	hist_entry_struct_get_data (a_structure: POINTER): POINTER
			-- Query for data field of HIST_ENTRY_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "hist_entry_struct_get_data"
		}"
		end

<<<<<<< HEAD
feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
=======
feature -- Structure size
	struct_size: like size_t
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__hist_entry"
		}"
		end

end -- class HIST_ENTRY_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

