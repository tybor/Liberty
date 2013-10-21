-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GDK_KEYBOARD_GRAB_INFO_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	GDK_TYPES
feature {} -- Low-level setters

	gdk_keyboard_grab_info_struct_set_window (a_structure: POINTER; a_value: POINTER) is
			-- Setter for window field of GDK_KEYBOARD_GRAB_INFO_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_keyboard_grab_info_struct_set_window"
		}"
		end

	gdk_keyboard_grab_info_struct_set_native_window (a_structure: POINTER; a_value: POINTER) is
			-- Setter for native_window field of GDK_KEYBOARD_GRAB_INFO_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_keyboard_grab_info_struct_set_native_window"
		}"
		end

	gdk_keyboard_grab_info_struct_set_serial (a_structure: POINTER; a_value: like long_unsigned) is
			-- Setter for serial field of GDK_KEYBOARD_GRAB_INFO_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_keyboard_grab_info_struct_set_serial"
		}"
		end

	gdk_keyboard_grab_info_struct_set_owner_events (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for owner_events field of GDK_KEYBOARD_GRAB_INFO_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_keyboard_grab_info_struct_set_owner_events"
		}"
		end

	gdk_keyboard_grab_info_struct_set_time (a_structure: POINTER; a_value: NATURAL) is
			-- Setter for time field of GDK_KEYBOARD_GRAB_INFO_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_keyboard_grab_info_struct_set_time"
		}"
		end

feature {} -- Low-level queries

	gdk_keyboard_grab_info_struct_get_window (a_structure: POINTER): POINTER is
			-- Query for window field of GDK_KEYBOARD_GRAB_INFO_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_keyboard_grab_info_struct_get_window"
		}"
		end

	gdk_keyboard_grab_info_struct_get_native_window (a_structure: POINTER): POINTER is
			-- Query for native_window field of GDK_KEYBOARD_GRAB_INFO_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_keyboard_grab_info_struct_get_native_window"
		}"
		end

	gdk_keyboard_grab_info_struct_get_serial (a_structure: POINTER): like long_unsigned is
			-- Query for serial field of GDK_KEYBOARD_GRAB_INFO_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_keyboard_grab_info_struct_get_serial"
		}"
		end

	gdk_keyboard_grab_info_struct_get_owner_events (a_structure: POINTER): INTEGER is
			-- Query for owner_events field of GDK_KEYBOARD_GRAB_INFO_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_keyboard_grab_info_struct_get_owner_events"
		}"
		end

	gdk_keyboard_grab_info_struct_get_time (a_structure: POINTER): NATURAL is
			-- Query for time field of GDK_KEYBOARD_GRAB_INFO_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_keyboard_grab_info_struct_get_time"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof_GdkKeyboardGrabInfo"
		}"
		end

end -- class GDK_KEYBOARD_GRAB_INFO_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

