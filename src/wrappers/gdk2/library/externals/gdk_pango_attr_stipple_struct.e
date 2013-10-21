-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GDK_PANGO_ATTR_STIPPLE_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	GDK_TYPES
feature {} -- Low-level setters

	gdk_pango_attr_stipple_struct_set_stipple (a_structure: POINTER; a_value: POINTER) is
			-- Setter for stipple field of GDK_PANGO_ATTR_STIPPLE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pango_attr_stipple_struct_set_stipple"
		}"
		end

feature {} -- Low-level queries

	-- Unwrappable field attr.
	gdk_pango_attr_stipple_struct_get_stipple (a_structure: POINTER): POINTER is
			-- Query for stipple field of GDK_PANGO_ATTR_STIPPLE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pango_attr_stipple_struct_get_stipple"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__GdkPangoAttrStipple"
		}"
		end

end -- class GDK_PANGO_ATTR_STIPPLE_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

