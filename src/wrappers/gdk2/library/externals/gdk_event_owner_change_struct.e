-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GDK_EVENT_OWNER_CHANGE_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	GDK_TYPES
feature {} -- Low-level setters

	gdk_event_owner_change_struct_set_type (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for type field of GDK_EVENT_OWNER_CHANGE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_owner_change_struct_set_type"
		}"
		end

	gdk_event_owner_change_struct_set_window (a_structure: POINTER; a_value: POINTER) is
			-- Setter for window field of GDK_EVENT_OWNER_CHANGE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_owner_change_struct_set_window"
		}"
		end

	gdk_event_owner_change_struct_set_send_event (a_structure: POINTER; a_value: CHARACTER) is
			-- Setter for send_event field of GDK_EVENT_OWNER_CHANGE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_owner_change_struct_set_send_event"
		}"
		end

	gdk_event_owner_change_struct_set_owner (a_structure: POINTER; a_value: NATURAL) is
			-- Setter for owner field of GDK_EVENT_OWNER_CHANGE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_owner_change_struct_set_owner"
		}"
		end

	gdk_event_owner_change_struct_set_reason (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for reason field of GDK_EVENT_OWNER_CHANGE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_owner_change_struct_set_reason"
		}"
		end

	gdk_event_owner_change_struct_set_selection (a_structure: POINTER; a_value: POINTER) is
			-- Setter for selection field of GDK_EVENT_OWNER_CHANGE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_owner_change_struct_set_selection"
		}"
		end

	gdk_event_owner_change_struct_set_time (a_structure: POINTER; a_value: NATURAL) is
			-- Setter for time field of GDK_EVENT_OWNER_CHANGE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_owner_change_struct_set_time"
		}"
		end

	gdk_event_owner_change_struct_set_selection_time (a_structure: POINTER; a_value: NATURAL) is
			-- Setter for selection_time field of GDK_EVENT_OWNER_CHANGE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_owner_change_struct_set_selection_time"
		}"
		end

feature {} -- Low-level queries

	gdk_event_owner_change_struct_get_type (a_structure: POINTER): INTEGER is
			-- Query for type field of GDK_EVENT_OWNER_CHANGE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_owner_change_struct_get_type"
		}"
		end

	gdk_event_owner_change_struct_get_window (a_structure: POINTER): POINTER is
			-- Query for window field of GDK_EVENT_OWNER_CHANGE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_owner_change_struct_get_window"
		}"
		end

	gdk_event_owner_change_struct_get_send_event (a_structure: POINTER): CHARACTER is
			-- Query for send_event field of GDK_EVENT_OWNER_CHANGE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_owner_change_struct_get_send_event"
		}"
		end

	gdk_event_owner_change_struct_get_owner (a_structure: POINTER): NATURAL is
			-- Query for owner field of GDK_EVENT_OWNER_CHANGE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_owner_change_struct_get_owner"
		}"
		end

	gdk_event_owner_change_struct_get_reason (a_structure: POINTER): INTEGER is
			-- Query for reason field of GDK_EVENT_OWNER_CHANGE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_owner_change_struct_get_reason"
		}"
		end

	gdk_event_owner_change_struct_get_selection (a_structure: POINTER): POINTER is
			-- Query for selection field of GDK_EVENT_OWNER_CHANGE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_owner_change_struct_get_selection"
		}"
		end

	gdk_event_owner_change_struct_get_time (a_structure: POINTER): NATURAL is
			-- Query for time field of GDK_EVENT_OWNER_CHANGE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_owner_change_struct_get_time"
		}"
		end

	gdk_event_owner_change_struct_get_selection_time (a_structure: POINTER): NATURAL is
			-- Query for selection_time field of GDK_EVENT_OWNER_CHANGE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_owner_change_struct_get_selection_time"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__GdkEventOwnerChange"
		}"
		end

end -- class GDK_EVENT_OWNER_CHANGE_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

