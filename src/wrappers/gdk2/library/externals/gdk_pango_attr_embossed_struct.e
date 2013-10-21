-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GDK_PANGO_ATTR_EMBOSSED_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	GDK_TYPES
feature {} -- Low-level setters

	gdk_pango_attr_embossed_struct_set_embossed (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for embossed field of GDK_PANGO_ATTR_EMBOSSED_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pango_attr_embossed_struct_set_embossed"
		}"
		end

feature {} -- Low-level queries

	-- Unwrappable field attr.
	gdk_pango_attr_embossed_struct_get_embossed (a_structure: POINTER): INTEGER is
			-- Query for embossed field of GDK_PANGO_ATTR_EMBOSSED_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pango_attr_embossed_struct_get_embossed"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__GdkPangoAttrEmbossed"
		}"
		end

end -- class GDK_PANGO_ATTR_EMBOSSED_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

