-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class IP_MREQ_SOURCE_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	POSIX_TYPES
feature {} -- Low-level setters

feature {} -- Low-level queries

	-- Unwrappable field imr_multiaddr.
	-- Unwrappable field imr_interface.
	-- Unwrappable field imr_sourceaddr.
feature -- Structure size
	struct_size: like size_t
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof_ip_mreq_source"
		}"
		end

end -- class IP_MREQ_SOURCE_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

