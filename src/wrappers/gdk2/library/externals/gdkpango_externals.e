-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GDKPANGO_EXTERNALS


insert ANY undefine is_equal, copy end

		STANDARD_C_LIBRARY_TYPES
feature {} -- External calls

	gdk_pango_attr_emboss_color_new (a_color: POINTER): POINTER is
 		-- gdk_pango_attr_emboss_color_new
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pango_attr_emboss_color_new"
		}"
		end

	gdk_pango_attr_embossed_new (an_embossed: INTEGER): POINTER is
 		-- gdk_pango_attr_embossed_new
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pango_attr_embossed_new"
		}"
		end

	gdk_pango_attr_stipple_new (a_stipple: POINTER): POINTER is
 		-- gdk_pango_attr_stipple_new
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pango_attr_stipple_new"
		}"
		end

	gdk_pango_context_get: POINTER is
 		-- gdk_pango_context_get
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pango_context_get()"
		}"
		end

	gdk_pango_context_get_for_screen (a_screen: POINTER): POINTER is
 		-- gdk_pango_context_get_for_screen
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pango_context_get_for_screen"
		}"
		end

	gdk_pango_layout_get_clip_region (a_layout: POINTER; a_x_origin: INTEGER; a_y_origin: INTEGER; an_index_ranges: POINTER; a_n_ranges: INTEGER): POINTER is
 		-- gdk_pango_layout_get_clip_region
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pango_layout_get_clip_region"
		}"
		end

	gdk_pango_layout_line_get_clip_region (a_line: POINTER; a_x_origin: INTEGER; a_y_origin: INTEGER; an_index_ranges: POINTER; a_n_ranges: INTEGER): POINTER is
 		-- gdk_pango_layout_line_get_clip_region
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pango_layout_line_get_clip_region"
		}"
		end

	gdk_pango_renderer_get_default (a_screen: POINTER): POINTER is
 		-- gdk_pango_renderer_get_default
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pango_renderer_get_default"
		}"
		end

	gdk_pango_renderer_get_type: like long_unsigned is
 		-- gdk_pango_renderer_get_type
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pango_renderer_get_type()"
		}"
		end

	gdk_pango_renderer_new (a_screen: POINTER): POINTER is
 		-- gdk_pango_renderer_new
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pango_renderer_new"
		}"
		end

	gdk_pango_renderer_set_drawable (a_gdk_renderer: POINTER; a_drawable: POINTER) is
 		-- gdk_pango_renderer_set_drawable
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pango_renderer_set_drawable"
		}"
		end

	gdk_pango_renderer_set_gc (a_gdk_renderer: POINTER; a_gc: POINTER) is
 		-- gdk_pango_renderer_set_gc
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pango_renderer_set_gc"
		}"
		end

	gdk_pango_renderer_set_override_color (a_gdk_renderer: POINTER; a_part: INTEGER; a_color: POINTER) is
 		-- gdk_pango_renderer_set_override_color
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pango_renderer_set_override_color"
		}"
		end

	gdk_pango_renderer_set_stipple (a_gdk_renderer: POINTER; a_part: INTEGER; a_stipple: POINTER) is
 		-- gdk_pango_renderer_set_stipple
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pango_renderer_set_stipple"
		}"
		end


end -- class GDKPANGO_EXTERNALS
