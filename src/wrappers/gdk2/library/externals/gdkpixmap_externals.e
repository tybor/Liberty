-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GDKPIXMAP_EXTERNALS


insert ANY undefine is_equal, copy end

		STANDARD_C_LIBRARY_TYPES
feature {} -- External calls

	gdk_pixmap_foreign_new (an_anid: NATURAL): POINTER is
 		-- gdk_pixmap_foreign_new
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pixmap_foreign_new"
		}"
		end

	gdk_pixmap_foreign_new_for_display (a_display: POINTER; an_anid: NATURAL): POINTER is
 		-- gdk_pixmap_foreign_new_for_display
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pixmap_foreign_new_for_display"
		}"
		end

	gdk_pixmap_foreign_new_for_screen (a_screen: POINTER; an_anid: NATURAL; a_width: INTEGER; a_height: INTEGER; a_depth: INTEGER): POINTER is
 		-- gdk_pixmap_foreign_new_for_screen
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pixmap_foreign_new_for_screen"
		}"
		end

	gdk_pixmap_get_size (a_pixmap: POINTER; a_width: POINTER; a_height: POINTER) is
 		-- gdk_pixmap_get_size
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pixmap_get_size"
		}"
		end

	gdk_pixmap_get_type: like long_unsigned is
 		-- gdk_pixmap_get_type
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pixmap_get_type()"
		}"
		end

	gdk_pixmap_lookup (an_anid: NATURAL): POINTER is
 		-- gdk_pixmap_lookup
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pixmap_lookup"
		}"
		end

	gdk_pixmap_lookup_for_display (a_display: POINTER; an_anid: NATURAL): POINTER is
 		-- gdk_pixmap_lookup_for_display
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pixmap_lookup_for_display"
		}"
		end

	gdk_pixmap_new (a_drawable: POINTER; a_width: INTEGER; a_height: INTEGER; a_depth: INTEGER): POINTER is
 		-- gdk_pixmap_new
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pixmap_new"
		}"
		end


end -- class GDKPIXMAP_EXTERNALS
