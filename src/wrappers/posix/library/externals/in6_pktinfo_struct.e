-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class IN6_PKTINFO_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	POSIX_TYPES
feature {} -- Low-level setters

	in6_pktinfo_struct_set_ipi6_ifindex (a_structure: POINTER; a_value: NATURAL)
			-- Setter for ipi6_ifindex field of IN6_PKTINFO_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "in6_pktinfo_struct_set_ipi6_ifindex"
		}"
		end

feature {} -- Low-level queries

	-- Unwrappable field ipi6_addr.
	in6_pktinfo_struct_get_ipi6_ifindex (a_structure: POINTER): NATURAL
			-- Query for ipi6_ifindex field of IN6_PKTINFO_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "in6_pktinfo_struct_get_ipi6_ifindex"
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
			feature_name: "sizeof_in6_pktinfo"
		}"
		end

end -- class IN6_PKTINFO_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

