-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GDKPIXBUF_EXTERNALS


insert ANY undefine is_equal, copy end

		STANDARD_C_LIBRARY_TYPES
feature {} -- External calls

	gdk_pixbuf_get_from_drawable (a_dest: POINTER; a_src: POINTER; a_cmap: POINTER; a_src_x: INTEGER; a_src_y: INTEGER; a_dest_x: INTEGER; a_dest_y: INTEGER; a_width: INTEGER; a_height: INTEGER): POINTER is
 		-- gdk_pixbuf_get_from_drawable
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pixbuf_get_from_drawable"
		}"
		end

	gdk_pixbuf_get_from_image (a_dest: POINTER; a_src: POINTER; a_cmap: POINTER; a_src_x: INTEGER; a_src_y: INTEGER; a_dest_x: INTEGER; a_dest_y: INTEGER; a_width: INTEGER; a_height: INTEGER): POINTER is
 		-- gdk_pixbuf_get_from_image
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pixbuf_get_from_image"
		}"
		end

	gdk_pixbuf_render_pixmap_and_mask (a_pixbuf: POINTER; a_pixmap_return: POINTER; a_mask_return: POINTER; an_alpha_threshold: INTEGER) is
 		-- gdk_pixbuf_render_pixmap_and_mask
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pixbuf_render_pixmap_and_mask"
		}"
		end

	gdk_pixbuf_render_pixmap_and_mask_for_colormap (a_pixbuf: POINTER; a_colormap: POINTER; a_pixmap_return: POINTER; a_mask_return: POINTER; an_alpha_threshold: INTEGER) is
 		-- gdk_pixbuf_render_pixmap_and_mask_for_colormap
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pixbuf_render_pixmap_and_mask_for_colormap"
		}"
		end

	gdk_pixbuf_render_threshold_alpha (a_pixbuf: POINTER; a_bitmap: POINTER; a_src_x: INTEGER; a_src_y: INTEGER; a_dest_x: INTEGER; a_dest_y: INTEGER; a_width: INTEGER; a_height: INTEGER; an_alpha_threshold: INTEGER) is
 		-- gdk_pixbuf_render_threshold_alpha
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pixbuf_render_threshold_alpha"
		}"
		end


end -- class GDKPIXBUF_EXTERNALS
