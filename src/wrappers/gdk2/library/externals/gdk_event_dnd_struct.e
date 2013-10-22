-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GDK_EVENT_DND_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	GDK_TYPES
feature {} -- Low-level setters

	gdk_event_dnd_struct_set_type (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for type field of GDK_EVENT_DND_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_dnd_struct_set_type"
		}"
		end

	gdk_event_dnd_struct_set_window (a_structure: POINTER; a_value: POINTER) is
			-- Setter for window field of GDK_EVENT_DND_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_dnd_struct_set_window"
		}"
		end

	gdk_event_dnd_struct_set_send_event (a_structure: POINTER; a_value: CHARACTER) is
			-- Setter for send_event field of GDK_EVENT_DND_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_dnd_struct_set_send_event"
		}"
		end

	gdk_event_dnd_struct_set_context (a_structure: POINTER; a_value: POINTER) is
			-- Setter for context field of GDK_EVENT_DND_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_dnd_struct_set_context"
		}"
		end

	gdk_event_dnd_struct_set_time (a_structure: POINTER; a_value: NATURAL) is
			-- Setter for time field of GDK_EVENT_DND_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_dnd_struct_set_time"
		}"
		end

	gdk_event_dnd_struct_set_x_root (a_structure: POINTER; a_value: INTEGER_16) is
			-- Setter for x_root field of GDK_EVENT_DND_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_dnd_struct_set_x_root"
		}"
		end

	gdk_event_dnd_struct_set_y_root (a_structure: POINTER; a_value: INTEGER_16) is
			-- Setter for y_root field of GDK_EVENT_DND_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_dnd_struct_set_y_root"
		}"
		end

feature {} -- Low-level queries

	gdk_event_dnd_struct_get_type (a_structure: POINTER): INTEGER is
			-- Query for type field of GDK_EVENT_DND_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_dnd_struct_get_type"
		}"
		end

	gdk_event_dnd_struct_get_window (a_structure: POINTER): POINTER is
			-- Query for window field of GDK_EVENT_DND_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_dnd_struct_get_window"
		}"
		end

	gdk_event_dnd_struct_get_send_event (a_structure: POINTER): CHARACTER is
			-- Query for send_event field of GDK_EVENT_DND_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_dnd_struct_get_send_event"
		}"
		end

	gdk_event_dnd_struct_get_context (a_structure: POINTER): POINTER is
			-- Query for context field of GDK_EVENT_DND_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_dnd_struct_get_context"
		}"
		end

	gdk_event_dnd_struct_get_time (a_structure: POINTER): NATURAL is
			-- Query for time field of GDK_EVENT_DND_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_dnd_struct_get_time"
		}"
		end

	gdk_event_dnd_struct_get_x_root (a_structure: POINTER): INTEGER_16 is
			-- Query for x_root field of GDK_EVENT_DND_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_dnd_struct_get_x_root"
		}"
		end

	gdk_event_dnd_struct_get_y_root (a_structure: POINTER): INTEGER_16 is
			-- Query for y_root field of GDK_EVENT_DND_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_event_dnd_struct_get_y_root"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__GdkEventDND"
		}"
		end

end -- class GDK_EVENT_DND_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

