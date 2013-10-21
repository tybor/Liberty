-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GDK_POINT_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	GDK_TYPES
feature {} -- Low-level setters

	gdk_point_struct_set_x (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for x field of GDK_POINT_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_point_struct_set_x"
		}"
		end

	gdk_point_struct_set_y (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for y field of GDK_POINT_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_point_struct_set_y"
		}"
		end

feature {} -- Low-level queries

	gdk_point_struct_get_x (a_structure: POINTER): INTEGER is
			-- Query for x field of GDK_POINT_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_point_struct_get_x"
		}"
		end

	gdk_point_struct_get_y (a_structure: POINTER): INTEGER is
			-- Query for y field of GDK_POINT_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_point_struct_get_y"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__GdkPoint"
		}"
		end

end -- class GDK_POINT_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

