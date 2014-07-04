-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class XML_LINK_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	LIBXML2_TYPES
	-- Fieldless structure
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
			feature_name: "sizeof__xmlLink"
		}"
		end

end -- class XML_LINK_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

