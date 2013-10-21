-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GDK_DRAG_CONTEXT_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	GDK_TYPES
feature {} -- Low-level setters

	gdk_drag_context_struct_set_protocol (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for protocol field of GDK_DRAG_CONTEXT_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_drag_context_struct_set_protocol"
		}"
		end

	gdk_drag_context_struct_set_is_source (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for is_source field of GDK_DRAG_CONTEXT_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_drag_context_struct_set_is_source"
		}"
		end

	gdk_drag_context_struct_set_source_window (a_structure: POINTER; a_value: POINTER) is
			-- Setter for source_window field of GDK_DRAG_CONTEXT_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_drag_context_struct_set_source_window"
		}"
		end

	gdk_drag_context_struct_set_dest_window (a_structure: POINTER; a_value: POINTER) is
			-- Setter for dest_window field of GDK_DRAG_CONTEXT_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_drag_context_struct_set_dest_window"
		}"
		end

	gdk_drag_context_struct_set_targets (a_structure: POINTER; a_value: POINTER) is
			-- Setter for targets field of GDK_DRAG_CONTEXT_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_drag_context_struct_set_targets"
		}"
		end

	gdk_drag_context_struct_set_actions (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for actions field of GDK_DRAG_CONTEXT_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_drag_context_struct_set_actions"
		}"
		end

	gdk_drag_context_struct_set_suggested_action (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for suggested_action field of GDK_DRAG_CONTEXT_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_drag_context_struct_set_suggested_action"
		}"
		end

	gdk_drag_context_struct_set_action (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for action field of GDK_DRAG_CONTEXT_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_drag_context_struct_set_action"
		}"
		end

	gdk_drag_context_struct_set_start_time (a_structure: POINTER; a_value: NATURAL) is
			-- Setter for start_time field of GDK_DRAG_CONTEXT_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_drag_context_struct_set_start_time"
		}"
		end

	gdk_drag_context_struct_set_windowing_data (a_structure: POINTER; a_value: POINTER) is
			-- Setter for windowing_data field of GDK_DRAG_CONTEXT_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_drag_context_struct_set_windowing_data"
		}"
		end

feature {} -- Low-level queries

	-- Unwrappable field parent_instance.
	gdk_drag_context_struct_get_protocol (a_structure: POINTER): INTEGER is
			-- Query for protocol field of GDK_DRAG_CONTEXT_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_drag_context_struct_get_protocol"
		}"
		end

	gdk_drag_context_struct_get_is_source (a_structure: POINTER): INTEGER is
			-- Query for is_source field of GDK_DRAG_CONTEXT_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_drag_context_struct_get_is_source"
		}"
		end

	gdk_drag_context_struct_get_source_window (a_structure: POINTER): POINTER is
			-- Query for source_window field of GDK_DRAG_CONTEXT_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_drag_context_struct_get_source_window"
		}"
		end

	gdk_drag_context_struct_get_dest_window (a_structure: POINTER): POINTER is
			-- Query for dest_window field of GDK_DRAG_CONTEXT_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_drag_context_struct_get_dest_window"
		}"
		end

	gdk_drag_context_struct_get_targets (a_structure: POINTER): POINTER is
			-- Query for targets field of GDK_DRAG_CONTEXT_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_drag_context_struct_get_targets"
		}"
		end

	gdk_drag_context_struct_get_actions (a_structure: POINTER): INTEGER is
			-- Query for actions field of GDK_DRAG_CONTEXT_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_drag_context_struct_get_actions"
		}"
		end

	gdk_drag_context_struct_get_suggested_action (a_structure: POINTER): INTEGER is
			-- Query for suggested_action field of GDK_DRAG_CONTEXT_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_drag_context_struct_get_suggested_action"
		}"
		end

	gdk_drag_context_struct_get_action (a_structure: POINTER): INTEGER is
			-- Query for action field of GDK_DRAG_CONTEXT_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_drag_context_struct_get_action"
		}"
		end

	gdk_drag_context_struct_get_start_time (a_structure: POINTER): NATURAL is
			-- Query for start_time field of GDK_DRAG_CONTEXT_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_drag_context_struct_get_start_time"
		}"
		end

	gdk_drag_context_struct_get_windowing_data (a_structure: POINTER): POINTER is
			-- Query for windowing_data field of GDK_DRAG_CONTEXT_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_drag_context_struct_get_windowing_data"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__GdkDragContext"
		}"
		end

end -- class GDK_DRAG_CONTEXT_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

