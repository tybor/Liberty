-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class SQLITE3_INDEX_CONSTRAINT_USAGE_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	SQLITE_TYPES
feature {} -- Low-level setters

	sqlite3_index_constraint_usage_struct_set_argvindex (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for argvIndex field of SQLITE3_INDEX_CONSTRAINT_USAGE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_index_constraint_usage_struct_set_argvindex"
		}"
		end

	sqlite3_index_constraint_usage_struct_set_omit (a_structure: POINTER; a_value: CHARACTER) is
			-- Setter for omit field of SQLITE3_INDEX_CONSTRAINT_USAGE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_index_constraint_usage_struct_set_omit"
		}"
		end

feature {} -- Low-level queries

	sqlite3_index_constraint_usage_struct_get_argvindex (a_structure: POINTER): INTEGER is
			-- Query for argvIndex field of SQLITE3_INDEX_CONSTRAINT_USAGE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_index_constraint_usage_struct_get_argvindex"
		}"
		end

	sqlite3_index_constraint_usage_struct_get_omit (a_structure: POINTER): CHARACTER is
			-- Query for omit field of SQLITE3_INDEX_CONSTRAINT_USAGE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_index_constraint_usage_struct_get_omit"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof_sqlite3_index_constraint_usage"
		}"
		end

end -- class SQLITE3_INDEX_CONSTRAINT_USAGE_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.
