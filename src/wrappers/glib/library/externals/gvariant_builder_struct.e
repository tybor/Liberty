-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GVARIANT_BUILDER_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	GLIB_TYPES
feature {} -- Low-level setters

	gvariant_builder_struct_set_x (a_structure: POINTER; a_value: POINTER) is
			-- Setter for x field of GVARIANT_BUILDER_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gvariant_builder_struct_set_x"
		}"
		end

feature {} -- Low-level queries

	gvariant_builder_struct_get_x (a_structure: POINTER): POINTER is
			-- Query for x field of GVARIANT_BUILDER_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gvariant_builder_struct_get_x"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__GVariantBuilder"
		}"
		end

end -- class GVARIANT_BUILDER_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

