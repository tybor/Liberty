-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GDK_TIME_COORD_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	GDK_TYPES
feature {} -- Low-level setters

	gdk_time_coord_struct_set_time (a_structure: POINTER; a_value: NATURAL) is
			-- Setter for time field of GDK_TIME_COORD_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_time_coord_struct_set_time"
		}"
		end

	gdk_time_coord_struct_set_axes (a_structure: POINTER; a_value: POINTER) is
			-- Setter for axes field of GDK_TIME_COORD_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_time_coord_struct_set_axes"
		}"
		end

feature {} -- Low-level queries

	gdk_time_coord_struct_get_time (a_structure: POINTER): NATURAL is
			-- Query for time field of GDK_TIME_COORD_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_time_coord_struct_get_time"
		}"
		end

	gdk_time_coord_struct_get_axes (a_structure: POINTER): POINTER is
			-- Query for axes field of GDK_TIME_COORD_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_time_coord_struct_get_axes"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__GdkTimeCoord"
		}"
		end

end -- class GDK_TIME_COORD_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

