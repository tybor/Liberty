-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class SQLITE3_INDEX_INFO_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	SQLITE_TYPES
feature {} -- Low-level setters

	sqlite3_index_info_struct_set_nconstraint (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for nConstraint field of SQLITE3_INDEX_INFO_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_index_info_struct_set_nconstraint"
		}"
		end

	sqlite3_index_info_struct_set_aconstraint (a_structure: POINTER; a_value: POINTER) is
			-- Setter for aConstraint field of SQLITE3_INDEX_INFO_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_index_info_struct_set_aconstraint"
		}"
		end

	sqlite3_index_info_struct_set_norderby (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for nOrderBy field of SQLITE3_INDEX_INFO_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_index_info_struct_set_norderby"
		}"
		end

	sqlite3_index_info_struct_set_aorderby (a_structure: POINTER; a_value: POINTER) is
			-- Setter for aOrderBy field of SQLITE3_INDEX_INFO_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_index_info_struct_set_aorderby"
		}"
		end

	sqlite3_index_info_struct_set_aconstraintusage (a_structure: POINTER; a_value: POINTER) is
			-- Setter for aConstraintUsage field of SQLITE3_INDEX_INFO_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_index_info_struct_set_aconstraintusage"
		}"
		end

	sqlite3_index_info_struct_set_idxnum (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for idxNum field of SQLITE3_INDEX_INFO_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_index_info_struct_set_idxnum"
		}"
		end

	sqlite3_index_info_struct_set_idxstr (a_structure: POINTER; a_value: POINTER) is
			-- Setter for idxStr field of SQLITE3_INDEX_INFO_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_index_info_struct_set_idxstr"
		}"
		end

	sqlite3_index_info_struct_set_needtofreeidxstr (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for needToFreeIdxStr field of SQLITE3_INDEX_INFO_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_index_info_struct_set_needtofreeidxstr"
		}"
		end

	sqlite3_index_info_struct_set_orderbyconsumed (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for orderByConsumed field of SQLITE3_INDEX_INFO_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_index_info_struct_set_orderbyconsumed"
		}"
		end

	sqlite3_index_info_struct_set_estimatedcost (a_structure: POINTER; a_value: REAL) is
			-- Setter for estimatedCost field of SQLITE3_INDEX_INFO_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_index_info_struct_set_estimatedcost"
		}"
		end

	sqlite3_index_info_struct_set_estimatedrows (a_structure: POINTER; a_value: INTEGER_64) is
			-- Setter for estimatedRows field of SQLITE3_INDEX_INFO_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_index_info_struct_set_estimatedrows"
		}"
		end

feature {} -- Low-level queries

	sqlite3_index_info_struct_get_nconstraint (a_structure: POINTER): INTEGER is
			-- Query for nConstraint field of SQLITE3_INDEX_INFO_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_index_info_struct_get_nconstraint"
		}"
		end

	sqlite3_index_info_struct_get_aconstraint (a_structure: POINTER): POINTER is
			-- Query for aConstraint field of SQLITE3_INDEX_INFO_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_index_info_struct_get_aconstraint"
		}"
		end

	sqlite3_index_info_struct_get_norderby (a_structure: POINTER): INTEGER is
			-- Query for nOrderBy field of SQLITE3_INDEX_INFO_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_index_info_struct_get_norderby"
		}"
		end

	sqlite3_index_info_struct_get_aorderby (a_structure: POINTER): POINTER is
			-- Query for aOrderBy field of SQLITE3_INDEX_INFO_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_index_info_struct_get_aorderby"
		}"
		end

	sqlite3_index_info_struct_get_aconstraintusage (a_structure: POINTER): POINTER is
			-- Query for aConstraintUsage field of SQLITE3_INDEX_INFO_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_index_info_struct_get_aconstraintusage"
		}"
		end

	sqlite3_index_info_struct_get_idxnum (a_structure: POINTER): INTEGER is
			-- Query for idxNum field of SQLITE3_INDEX_INFO_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_index_info_struct_get_idxnum"
		}"
		end

	sqlite3_index_info_struct_get_idxstr (a_structure: POINTER): POINTER is
			-- Query for idxStr field of SQLITE3_INDEX_INFO_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_index_info_struct_get_idxstr"
		}"
		end

	sqlite3_index_info_struct_get_needtofreeidxstr (a_structure: POINTER): INTEGER is
			-- Query for needToFreeIdxStr field of SQLITE3_INDEX_INFO_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_index_info_struct_get_needtofreeidxstr"
		}"
		end

	sqlite3_index_info_struct_get_orderbyconsumed (a_structure: POINTER): INTEGER is
			-- Query for orderByConsumed field of SQLITE3_INDEX_INFO_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_index_info_struct_get_orderbyconsumed"
		}"
		end

	sqlite3_index_info_struct_get_estimatedcost (a_structure: POINTER): REAL is
			-- Query for estimatedCost field of SQLITE3_INDEX_INFO_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_index_info_struct_get_estimatedcost"
		}"
		end

	sqlite3_index_info_struct_get_estimatedrows (a_structure: POINTER): INTEGER_64 is
			-- Query for estimatedRows field of SQLITE3_INDEX_INFO_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_index_info_struct_get_estimatedrows"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof_sqlite3_index_info"
		}"
		end

end -- class SQLITE3_INDEX_INFO_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

