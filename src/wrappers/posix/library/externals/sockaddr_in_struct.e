-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class SOCKADDR_IN_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	POSIX_TYPES
feature {} -- Low-level setters

	sockaddr_in_struct_set_sin_family (a_structure: POINTER; a_value: NATURAL_16)
			-- Setter for sin_family field of SOCKADDR_IN_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sockaddr_in_struct_set_sin_family"
		}"
		end

	sockaddr_in_struct_set_sin_port (a_structure: POINTER; a_value: like uint16_t)
			-- Setter for sin_port field of SOCKADDR_IN_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sockaddr_in_struct_set_sin_port"
		}"
		end

	sockaddr_in_struct_set_sin_zero (a_structure: POINTER; a_value: POINTER)
			-- Setter for sin_zero field of SOCKADDR_IN_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sockaddr_in_struct_set_sin_zero"
		}"
		end

feature {} -- Low-level queries

	sockaddr_in_struct_get_sin_family (a_structure: POINTER): NATURAL_16
			-- Query for sin_family field of SOCKADDR_IN_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sockaddr_in_struct_get_sin_family"
		}"
		end

	sockaddr_in_struct_get_sin_port (a_structure: POINTER): like uint16_t
			-- Query for sin_port field of SOCKADDR_IN_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sockaddr_in_struct_get_sin_port"
		}"
		end

	-- Unwrappable field sin_addr.
	sockaddr_in_struct_get_sin_zero (a_structure: POINTER): POINTER
			-- Query for sin_zero field of SOCKADDR_IN_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sockaddr_in_struct_get_sin_zero"
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
			feature_name: "sizeof_sockaddr_in"
		}"
		end

end -- class SOCKADDR_IN_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

