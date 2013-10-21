-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GDK_COLOR_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	GDK_TYPES
feature {} -- Low-level setters

	gdk_color_struct_set_pixel (a_structure: POINTER; a_value: NATURAL) is
			-- Setter for pixel field of GDK_COLOR_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_color_struct_set_pixel"
		}"
		end

	gdk_color_struct_set_red (a_structure: POINTER; a_value: NATURAL_16) is
			-- Setter for red field of GDK_COLOR_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_color_struct_set_red"
		}"
		end

	gdk_color_struct_set_green (a_structure: POINTER; a_value: NATURAL_16) is
			-- Setter for green field of GDK_COLOR_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_color_struct_set_green"
		}"
		end

	gdk_color_struct_set_blue (a_structure: POINTER; a_value: NATURAL_16) is
			-- Setter for blue field of GDK_COLOR_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_color_struct_set_blue"
		}"
		end

feature {} -- Low-level queries

	gdk_color_struct_get_pixel (a_structure: POINTER): NATURAL is
			-- Query for pixel field of GDK_COLOR_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_color_struct_get_pixel"
		}"
		end

	gdk_color_struct_get_red (a_structure: POINTER): NATURAL_16 is
			-- Query for red field of GDK_COLOR_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_color_struct_get_red"
		}"
		end

	gdk_color_struct_get_green (a_structure: POINTER): NATURAL_16 is
			-- Query for green field of GDK_COLOR_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_color_struct_get_green"
		}"
		end

	gdk_color_struct_get_blue (a_structure: POINTER): NATURAL_16 is
			-- Query for blue field of GDK_COLOR_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_color_struct_get_blue"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__GdkColor"
		}"
		end

end -- class GDK_COLOR_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

