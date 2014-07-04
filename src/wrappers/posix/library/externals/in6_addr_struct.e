-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class IN6_ADDR_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	POSIX_TYPES
feature {} -- Low-level setters

feature {} -- Low-level queries

	-- Unwrappable field __in6_u.
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
			feature_name: "sizeof_in6_addr"
		}"
		end

end -- class IN6_ADDR_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

