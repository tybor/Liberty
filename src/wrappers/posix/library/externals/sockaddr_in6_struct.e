-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class SOCKADDR_IN6_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	POSIX_TYPES
feature {} -- Low-level setters

	sockaddr_in6_struct_set_sin6_family (a_structure: POINTER; a_value: NATURAL_16)
			-- Setter for sin6_family field of SOCKADDR_IN6_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sockaddr_in6_struct_set_sin6_family"
		}"
		end

	sockaddr_in6_struct_set_sin6_port (a_structure: POINTER; a_value: like uint16_t)
			-- Setter for sin6_port field of SOCKADDR_IN6_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sockaddr_in6_struct_set_sin6_port"
		}"
		end

	sockaddr_in6_struct_set_sin6_flowinfo (a_structure: POINTER; a_value: like uint32_t)
			-- Setter for sin6_flowinfo field of SOCKADDR_IN6_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sockaddr_in6_struct_set_sin6_flowinfo"
		}"
		end

	sockaddr_in6_struct_set_sin6_scope_id (a_structure: POINTER; a_value: like uint32_t)
			-- Setter for sin6_scope_id field of SOCKADDR_IN6_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sockaddr_in6_struct_set_sin6_scope_id"
		}"
		end

feature {} -- Low-level queries

	sockaddr_in6_struct_get_sin6_family (a_structure: POINTER): NATURAL_16
			-- Query for sin6_family field of SOCKADDR_IN6_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sockaddr_in6_struct_get_sin6_family"
		}"
		end

	sockaddr_in6_struct_get_sin6_port (a_structure: POINTER): like uint16_t
			-- Query for sin6_port field of SOCKADDR_IN6_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sockaddr_in6_struct_get_sin6_port"
		}"
		end

	sockaddr_in6_struct_get_sin6_flowinfo (a_structure: POINTER): like uint32_t
			-- Query for sin6_flowinfo field of SOCKADDR_IN6_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sockaddr_in6_struct_get_sin6_flowinfo"
		}"
		end

	-- Unwrappable field sin6_addr.
	sockaddr_in6_struct_get_sin6_scope_id (a_structure: POINTER): like uint32_t
			-- Query for sin6_scope_id field of SOCKADDR_IN6_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sockaddr_in6_struct_get_sin6_scope_id"
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
			feature_name: "sizeof_sockaddr_in6"
		}"
		end

end -- class SOCKADDR_IN6_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

