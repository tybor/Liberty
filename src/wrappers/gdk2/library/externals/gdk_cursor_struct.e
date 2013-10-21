-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GDK_CURSOR_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	GDK_TYPES
feature {} -- Low-level setters

	gdk_cursor_struct_set_type (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for type field of GDK_CURSOR_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_cursor_struct_set_type"
		}"
		end

	gdk_cursor_struct_set_ref_count (a_structure: POINTER; a_value: NATURAL) is
			-- Setter for ref_count field of GDK_CURSOR_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_cursor_struct_set_ref_count"
		}"
		end

feature {} -- Low-level queries

	gdk_cursor_struct_get_type (a_structure: POINTER): INTEGER is
			-- Query for type field of GDK_CURSOR_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_cursor_struct_get_type"
		}"
		end

	gdk_cursor_struct_get_ref_count (a_structure: POINTER): NATURAL is
			-- Query for ref_count field of GDK_CURSOR_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_cursor_struct_get_ref_count"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__GdkCursor"
		}"
		end

end -- class GDK_CURSOR_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

