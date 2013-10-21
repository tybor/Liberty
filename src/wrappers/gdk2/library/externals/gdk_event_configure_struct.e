-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GDK_EVENT_CONFIGURE_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	GDK_TYPES
feature {} -- Low-level setters

	gdk_event_configure_struct_set_type (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for type field of GDK_EVENT_CONFIGURE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_configure_struct_set_type"
		}"
		end

	gdk_event_configure_struct_set_window (a_structure: POINTER; a_value: POINTER) is
			-- Setter for window field of GDK_EVENT_CONFIGURE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_configure_struct_set_window"
		}"
		end

	gdk_event_configure_struct_set_send_event (a_structure: POINTER; a_value: CHARACTER) is
			-- Setter for send_event field of GDK_EVENT_CONFIGURE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_configure_struct_set_send_event"
		}"
		end

	gdk_event_configure_struct_set_x (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for x field of GDK_EVENT_CONFIGURE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_configure_struct_set_x"
		}"
		end

	gdk_event_configure_struct_set_y (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for y field of GDK_EVENT_CONFIGURE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_configure_struct_set_y"
		}"
		end

	gdk_event_configure_struct_set_width (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for width field of GDK_EVENT_CONFIGURE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_configure_struct_set_width"
		}"
		end

	gdk_event_configure_struct_set_height (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for height field of GDK_EVENT_CONFIGURE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_configure_struct_set_height"
		}"
		end

feature {} -- Low-level queries

	gdk_event_configure_struct_get_type (a_structure: POINTER): INTEGER is
			-- Query for type field of GDK_EVENT_CONFIGURE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_configure_struct_get_type"
		}"
		end

	gdk_event_configure_struct_get_window (a_structure: POINTER): POINTER is
			-- Query for window field of GDK_EVENT_CONFIGURE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_configure_struct_get_window"
		}"
		end

	gdk_event_configure_struct_get_send_event (a_structure: POINTER): CHARACTER is
			-- Query for send_event field of GDK_EVENT_CONFIGURE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_configure_struct_get_send_event"
		}"
		end

	gdk_event_configure_struct_get_x (a_structure: POINTER): INTEGER is
			-- Query for x field of GDK_EVENT_CONFIGURE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_configure_struct_get_x"
		}"
		end

	gdk_event_configure_struct_get_y (a_structure: POINTER): INTEGER is
			-- Query for y field of GDK_EVENT_CONFIGURE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_configure_struct_get_y"
		}"
		end

	gdk_event_configure_struct_get_width (a_structure: POINTER): INTEGER is
			-- Query for width field of GDK_EVENT_CONFIGURE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_configure_struct_get_width"
		}"
		end

	gdk_event_configure_struct_get_height (a_structure: POINTER): INTEGER is
			-- Query for height field of GDK_EVENT_CONFIGURE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_configure_struct_get_height"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__GdkEventConfigure"
		}"
		end

end -- class GDK_EVENT_CONFIGURE_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

