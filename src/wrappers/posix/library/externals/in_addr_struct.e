-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class IN_ADDR_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	POSIX_TYPES
feature {} -- Low-level setters

	in_addr_struct_set_s_addr (a_structure: POINTER; a_value: like uint32_t)
			-- Setter for s_addr field of IN_ADDR_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "in_addr_struct_set_s_addr"
		}"
		end

feature {} -- Low-level queries

	in_addr_struct_get_s_addr (a_structure: POINTER): like uint32_t
			-- Query for s_addr field of IN_ADDR_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "in_addr_struct_get_s_addr"
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
			feature_name: "sizeof_in_addr"
		}"
		end

end -- class IN_ADDR_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

