-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GDK_COLORMAP_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	GDK_TYPES
feature {} -- Low-level setters

	gdk_colormap_struct_set_size (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for size field of GDK_COLORMAP_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_colormap_struct_set_size"
		}"
		end

	gdk_colormap_struct_set_colors (a_structure: POINTER; a_value: POINTER) is
			-- Setter for colors field of GDK_COLORMAP_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_colormap_struct_set_colors"
		}"
		end

	gdk_colormap_struct_set_visual (a_structure: POINTER; a_value: POINTER) is
			-- Setter for visual field of GDK_COLORMAP_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_colormap_struct_set_visual"
		}"
		end

	gdk_colormap_struct_set_windowing_data (a_structure: POINTER; a_value: POINTER) is
			-- Setter for windowing_data field of GDK_COLORMAP_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_colormap_struct_set_windowing_data"
		}"
		end

feature {} -- Low-level queries

	-- Unwrappable field parent_instance.
	gdk_colormap_struct_get_size (a_structure: POINTER): INTEGER is
			-- Query for size field of GDK_COLORMAP_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_colormap_struct_get_size"
		}"
		end

	gdk_colormap_struct_get_colors (a_structure: POINTER): POINTER is
			-- Query for colors field of GDK_COLORMAP_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_colormap_struct_get_colors"
		}"
		end

	gdk_colormap_struct_get_visual (a_structure: POINTER): POINTER is
			-- Query for visual field of GDK_COLORMAP_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_colormap_struct_get_visual"
		}"
		end

	gdk_colormap_struct_get_windowing_data (a_structure: POINTER): POINTER is
			-- Query for windowing_data field of GDK_COLORMAP_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_colormap_struct_get_windowing_data"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__GdkColormap"
		}"
		end

end -- class GDK_COLORMAP_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

