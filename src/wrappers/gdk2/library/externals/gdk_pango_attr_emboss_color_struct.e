-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GDK_PANGO_ATTR_EMBOSS_COLOR_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	GDK_TYPES
feature {} -- Low-level setters

feature {} -- Low-level queries

	-- Unwrappable field attr.
	-- Unwrappable field color.
feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__GdkPangoAttrEmbossColor"
		}"
		end

end -- class GDK_PANGO_ATTR_EMBOSS_COLOR_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

