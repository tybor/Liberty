-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class IP_MSFILTER_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	POSIX_TYPES
feature {} -- Low-level setters

	ip_msfilter_struct_set_imsf_fmode (a_structure: POINTER; a_value: like uint32_t)
			-- Setter for imsf_fmode field of IP_MSFILTER_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "ip_msfilter_struct_set_imsf_fmode"
		}"
		end

	ip_msfilter_struct_set_imsf_numsrc (a_structure: POINTER; a_value: like uint32_t)
			-- Setter for imsf_numsrc field of IP_MSFILTER_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "ip_msfilter_struct_set_imsf_numsrc"
		}"
		end

	ip_msfilter_struct_set_imsf_slist (a_structure: POINTER; a_value: POINTER)
			-- Setter for imsf_slist field of IP_MSFILTER_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "ip_msfilter_struct_set_imsf_slist"
		}"
		end

feature {} -- Low-level queries

	-- Unwrappable field imsf_multiaddr.
	-- Unwrappable field imsf_interface.
	ip_msfilter_struct_get_imsf_fmode (a_structure: POINTER): like uint32_t
			-- Query for imsf_fmode field of IP_MSFILTER_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "ip_msfilter_struct_get_imsf_fmode"
		}"
		end

	ip_msfilter_struct_get_imsf_numsrc (a_structure: POINTER): like uint32_t
			-- Query for imsf_numsrc field of IP_MSFILTER_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "ip_msfilter_struct_get_imsf_numsrc"
		}"
		end

	ip_msfilter_struct_get_imsf_slist (a_structure: POINTER): POINTER
			-- Query for imsf_slist field of IP_MSFILTER_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "ip_msfilter_struct_get_imsf_slist"
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
			feature_name: "sizeof_ip_msfilter"
		}"
		end

end -- class IP_MSFILTER_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

