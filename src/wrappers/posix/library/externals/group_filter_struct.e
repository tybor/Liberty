-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GROUP_FILTER_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	POSIX_TYPES
feature {} -- Low-level setters

	group_filter_struct_set_gf_interface (a_structure: POINTER; a_value: like uint32_t) is
			-- Setter for gf_interface field of GROUP_FILTER_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "group_filter_struct_set_gf_interface"
		}"
		end

	group_filter_struct_set_gf_fmode (a_structure: POINTER; a_value: like uint32_t) is
			-- Setter for gf_fmode field of GROUP_FILTER_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "group_filter_struct_set_gf_fmode"
		}"
		end

	group_filter_struct_set_gf_numsrc (a_structure: POINTER; a_value: like uint32_t) is
			-- Setter for gf_numsrc field of GROUP_FILTER_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "group_filter_struct_set_gf_numsrc"
		}"
		end

	group_filter_struct_set_gf_slist (a_structure: POINTER; a_value: POINTER) is
			-- Setter for gf_slist field of GROUP_FILTER_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "group_filter_struct_set_gf_slist"
		}"
		end

feature {} -- Low-level queries

	group_filter_struct_get_gf_interface (a_structure: POINTER): like uint32_t is
			-- Query for gf_interface field of GROUP_FILTER_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "group_filter_struct_get_gf_interface"
		}"
		end

	-- Unwrappable field gf_group.
	group_filter_struct_get_gf_fmode (a_structure: POINTER): like uint32_t is
			-- Query for gf_fmode field of GROUP_FILTER_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "group_filter_struct_get_gf_fmode"
		}"
		end

	group_filter_struct_get_gf_numsrc (a_structure: POINTER): like uint32_t is
			-- Query for gf_numsrc field of GROUP_FILTER_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "group_filter_struct_get_gf_numsrc"
		}"
		end

	group_filter_struct_get_gf_slist (a_structure: POINTER): POINTER is
			-- Query for gf_slist field of GROUP_FILTER_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "group_filter_struct_get_gf_slist"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof_group_filter"
		}"
		end

end -- class GROUP_FILTER_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

