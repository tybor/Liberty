-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class SQLITE3_INDEX_CONSTRAINT_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	SQLITE_TYPES
feature {} -- Low-level setters

	sqlite3_index_constraint_struct_set_icolumn (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for iColumn field of SQLITE3_INDEX_CONSTRAINT_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_index_constraint_struct_set_icolumn"
		}"
		end

	sqlite3_index_constraint_struct_set_op (a_structure: POINTER; a_value: CHARACTER) is
			-- Setter for op field of SQLITE3_INDEX_CONSTRAINT_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_index_constraint_struct_set_op"
		}"
		end

	sqlite3_index_constraint_struct_set_usable (a_structure: POINTER; a_value: CHARACTER) is
			-- Setter for usable field of SQLITE3_INDEX_CONSTRAINT_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_index_constraint_struct_set_usable"
		}"
		end

	sqlite3_index_constraint_struct_set_itermoffset (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for iTermOffset field of SQLITE3_INDEX_CONSTRAINT_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_index_constraint_struct_set_itermoffset"
		}"
		end

feature {} -- Low-level queries

	sqlite3_index_constraint_struct_get_icolumn (a_structure: POINTER): INTEGER is
			-- Query for iColumn field of SQLITE3_INDEX_CONSTRAINT_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_index_constraint_struct_get_icolumn"
		}"
		end

	sqlite3_index_constraint_struct_get_op (a_structure: POINTER): CHARACTER is
			-- Query for op field of SQLITE3_INDEX_CONSTRAINT_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_index_constraint_struct_get_op"
		}"
		end

	sqlite3_index_constraint_struct_get_usable (a_structure: POINTER): CHARACTER is
			-- Query for usable field of SQLITE3_INDEX_CONSTRAINT_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_index_constraint_struct_get_usable"
		}"
		end

	sqlite3_index_constraint_struct_get_itermoffset (a_structure: POINTER): INTEGER is
			-- Query for iTermOffset field of SQLITE3_INDEX_CONSTRAINT_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_index_constraint_struct_get_itermoffset"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof_sqlite3_index_constraint"
		}"
		end

end -- class SQLITE3_INDEX_CONSTRAINT_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.
