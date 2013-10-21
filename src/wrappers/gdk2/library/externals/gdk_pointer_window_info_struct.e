-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GDK_POINTER_WINDOW_INFO_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	GDK_TYPES
feature {} -- Low-level setters

	gdk_pointer_window_info_struct_set_toplevel_under_pointer (a_structure: POINTER; a_value: POINTER) is
			-- Setter for toplevel_under_pointer field of GDK_POINTER_WINDOW_INFO_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pointer_window_info_struct_set_toplevel_under_pointer"
		}"
		end

	gdk_pointer_window_info_struct_set_window_under_pointer (a_structure: POINTER; a_value: POINTER) is
			-- Setter for window_under_pointer field of GDK_POINTER_WINDOW_INFO_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pointer_window_info_struct_set_window_under_pointer"
		}"
		end

	gdk_pointer_window_info_struct_set_toplevel_x (a_structure: POINTER; a_value: REAL) is
			-- Setter for toplevel_x field of GDK_POINTER_WINDOW_INFO_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pointer_window_info_struct_set_toplevel_x"
		}"
		end

	gdk_pointer_window_info_struct_set_toplevel_y (a_structure: POINTER; a_value: REAL) is
			-- Setter for toplevel_y field of GDK_POINTER_WINDOW_INFO_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pointer_window_info_struct_set_toplevel_y"
		}"
		end

	gdk_pointer_window_info_struct_set_state (a_structure: POINTER; a_value: NATURAL) is
			-- Setter for state field of GDK_POINTER_WINDOW_INFO_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pointer_window_info_struct_set_state"
		}"
		end

	gdk_pointer_window_info_struct_set_button (a_structure: POINTER; a_value: NATURAL) is
			-- Setter for button field of GDK_POINTER_WINDOW_INFO_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pointer_window_info_struct_set_button"
		}"
		end

	gdk_pointer_window_info_struct_set_motion_hint_serial (a_structure: POINTER; a_value: like long_unsigned) is
			-- Setter for motion_hint_serial field of GDK_POINTER_WINDOW_INFO_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pointer_window_info_struct_set_motion_hint_serial"
		}"
		end

feature {} -- Low-level queries

	gdk_pointer_window_info_struct_get_toplevel_under_pointer (a_structure: POINTER): POINTER is
			-- Query for toplevel_under_pointer field of GDK_POINTER_WINDOW_INFO_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pointer_window_info_struct_get_toplevel_under_pointer"
		}"
		end

	gdk_pointer_window_info_struct_get_window_under_pointer (a_structure: POINTER): POINTER is
			-- Query for window_under_pointer field of GDK_POINTER_WINDOW_INFO_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pointer_window_info_struct_get_window_under_pointer"
		}"
		end

	gdk_pointer_window_info_struct_get_toplevel_x (a_structure: POINTER): REAL is
			-- Query for toplevel_x field of GDK_POINTER_WINDOW_INFO_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pointer_window_info_struct_get_toplevel_x"
		}"
		end

	gdk_pointer_window_info_struct_get_toplevel_y (a_structure: POINTER): REAL is
			-- Query for toplevel_y field of GDK_POINTER_WINDOW_INFO_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pointer_window_info_struct_get_toplevel_y"
		}"
		end

	gdk_pointer_window_info_struct_get_state (a_structure: POINTER): NATURAL is
			-- Query for state field of GDK_POINTER_WINDOW_INFO_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pointer_window_info_struct_get_state"
		}"
		end

	gdk_pointer_window_info_struct_get_button (a_structure: POINTER): NATURAL is
			-- Query for button field of GDK_POINTER_WINDOW_INFO_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pointer_window_info_struct_get_button"
		}"
		end

	gdk_pointer_window_info_struct_get_motion_hint_serial (a_structure: POINTER): like long_unsigned is
			-- Query for motion_hint_serial field of GDK_POINTER_WINDOW_INFO_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pointer_window_info_struct_get_motion_hint_serial"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof_GdkPointerWindowInfo"
		}"
		end

end -- class GDK_POINTER_WINDOW_INFO_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

