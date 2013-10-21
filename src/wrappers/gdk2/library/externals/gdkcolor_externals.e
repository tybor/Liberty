-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GDKCOLOR_EXTERNALS


insert ANY undefine is_equal, copy end

		STANDARD_C_LIBRARY_TYPES
feature {} -- External calls

	gdk_color_copy (a_color: POINTER): POINTER is
 		-- gdk_color_copy
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_color_copy"
		}"
		end

	gdk_color_equal (a_colora: POINTER; a_colorb: POINTER): INTEGER is
 		-- gdk_color_equal
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_color_equal"
		}"
		end

	gdk_color_free (a_color: POINTER) is
 		-- gdk_color_free
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_color_free"
		}"
		end

	gdk_color_get_type: like long_unsigned is
 		-- gdk_color_get_type
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_color_get_type()"
		}"
		end

	gdk_color_hash (a_colora: POINTER): NATURAL is
 		-- gdk_color_hash
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_color_hash"
		}"
		end

	gdk_color_parse (a_spec: POINTER; a_color: POINTER): INTEGER is
 		-- gdk_color_parse
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_color_parse"
		}"
		end

	gdk_color_to_string (a_color: POINTER): POINTER is
 		-- gdk_color_to_string
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_color_to_string"
		}"
		end

	gdk_colormap_alloc_color (a_colormap: POINTER; a_color: POINTER; a_writeable: INTEGER; a_best_match: INTEGER): INTEGER is
 		-- gdk_colormap_alloc_color
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_colormap_alloc_color"
		}"
		end

	gdk_colormap_alloc_colors (a_colormap: POINTER; a_colors: POINTER; a_n_colors: INTEGER; a_writeable: INTEGER; a_best_match: INTEGER; a_success: POINTER): INTEGER is
 		-- gdk_colormap_alloc_colors
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_colormap_alloc_colors"
		}"
		end

	gdk_colormap_free_colors (a_colormap: POINTER; a_colors: POINTER; a_n_colors: INTEGER) is
 		-- gdk_colormap_free_colors
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_colormap_free_colors"
		}"
		end

	gdk_colormap_get_screen (a_cmap: POINTER): POINTER is
 		-- gdk_colormap_get_screen
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_colormap_get_screen"
		}"
		end

	gdk_colormap_get_system: POINTER is
 		-- gdk_colormap_get_system
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_colormap_get_system()"
		}"
		end

	gdk_colormap_get_type: like long_unsigned is
 		-- gdk_colormap_get_type
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_colormap_get_type()"
		}"
		end

	gdk_colormap_get_visual (a_colormap: POINTER): POINTER is
 		-- gdk_colormap_get_visual
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_colormap_get_visual"
		}"
		end

	gdk_colormap_new (a_visual: POINTER; an_allocate: INTEGER): POINTER is
 		-- gdk_colormap_new
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_colormap_new"
		}"
		end

	gdk_colormap_query_color (a_colormap: POINTER; a_pixel: like long_unsigned; a_result: POINTER) is
 		-- gdk_colormap_query_color
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_colormap_query_color"
		}"
		end


end -- class GDKCOLOR_EXTERNALS
