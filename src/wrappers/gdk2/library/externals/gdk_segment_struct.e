-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GDK_SEGMENT_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	GDK_TYPES
feature {} -- Low-level setters

	gdk_segment_struct_set_x1 (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for x1 field of GDK_SEGMENT_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_segment_struct_set_x1"
		}"
		end

	gdk_segment_struct_set_y1 (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for y1 field of GDK_SEGMENT_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_segment_struct_set_y1"
		}"
		end

	gdk_segment_struct_set_x2 (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for x2 field of GDK_SEGMENT_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_segment_struct_set_x2"
		}"
		end

	gdk_segment_struct_set_y2 (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for y2 field of GDK_SEGMENT_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_segment_struct_set_y2"
		}"
		end

feature {} -- Low-level queries

	gdk_segment_struct_get_x1 (a_structure: POINTER): INTEGER is
			-- Query for x1 field of GDK_SEGMENT_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_segment_struct_get_x1"
		}"
		end

	gdk_segment_struct_get_y1 (a_structure: POINTER): INTEGER is
			-- Query for y1 field of GDK_SEGMENT_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_segment_struct_get_y1"
		}"
		end

	gdk_segment_struct_get_x2 (a_structure: POINTER): INTEGER is
			-- Query for x2 field of GDK_SEGMENT_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_segment_struct_get_x2"
		}"
		end

	gdk_segment_struct_get_y2 (a_structure: POINTER): INTEGER is
			-- Query for y2 field of GDK_SEGMENT_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_segment_struct_get_y2"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__GdkSegment"
		}"
		end

end -- class GDK_SEGMENT_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

