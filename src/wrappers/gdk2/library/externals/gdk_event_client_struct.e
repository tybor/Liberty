-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GDK_EVENT_CLIENT_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	GDK_TYPES
feature {} -- Low-level setters

	gdk_event_client_struct_set_type (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for type field of GDK_EVENT_CLIENT_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_client_struct_set_type"
		}"
		end

	gdk_event_client_struct_set_window (a_structure: POINTER; a_value: POINTER) is
			-- Setter for window field of GDK_EVENT_CLIENT_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_client_struct_set_window"
		}"
		end

	gdk_event_client_struct_set_send_event (a_structure: POINTER; a_value: CHARACTER) is
			-- Setter for send_event field of GDK_EVENT_CLIENT_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_client_struct_set_send_event"
		}"
		end

	gdk_event_client_struct_set_message_type (a_structure: POINTER; a_value: POINTER) is
			-- Setter for message_type field of GDK_EVENT_CLIENT_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_client_struct_set_message_type"
		}"
		end

	gdk_event_client_struct_set_data_format (a_structure: POINTER; a_value: NATURAL_16) is
			-- Setter for data_format field of GDK_EVENT_CLIENT_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_client_struct_set_data_format"
		}"
		end

feature {} -- Low-level queries

	gdk_event_client_struct_get_type (a_structure: POINTER): INTEGER is
			-- Query for type field of GDK_EVENT_CLIENT_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_client_struct_get_type"
		}"
		end

	gdk_event_client_struct_get_window (a_structure: POINTER): POINTER is
			-- Query for window field of GDK_EVENT_CLIENT_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_client_struct_get_window"
		}"
		end

	gdk_event_client_struct_get_send_event (a_structure: POINTER): CHARACTER is
			-- Query for send_event field of GDK_EVENT_CLIENT_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_client_struct_get_send_event"
		}"
		end

	gdk_event_client_struct_get_message_type (a_structure: POINTER): POINTER is
			-- Query for message_type field of GDK_EVENT_CLIENT_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_client_struct_get_message_type"
		}"
		end

	gdk_event_client_struct_get_data_format (a_structure: POINTER): NATURAL_16 is
			-- Query for data_format field of GDK_EVENT_CLIENT_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_client_struct_get_data_format"
		}"
		end

	-- Unwrappable field data.
feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__GdkEventClient"
		}"
		end

end -- class GDK_EVENT_CLIENT_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

