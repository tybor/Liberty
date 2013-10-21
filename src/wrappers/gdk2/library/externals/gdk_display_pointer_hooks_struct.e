-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GDK_DISPLAY_POINTER_HOOKS_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	GDK_TYPES
feature {} -- Low-level setters

	gdk_display_pointer_hooks_struct_set_get_pointer (a_structure: POINTER; a_value: POINTER) is
			-- Setter for get_pointer field of GDK_DISPLAY_POINTER_HOOKS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_display_pointer_hooks_struct_set_get_pointer"
		}"
		end

	gdk_display_pointer_hooks_struct_set_window_get_pointer (a_structure: POINTER; a_value: POINTER) is
			-- Setter for window_get_pointer field of GDK_DISPLAY_POINTER_HOOKS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_display_pointer_hooks_struct_set_window_get_pointer"
		}"
		end

	gdk_display_pointer_hooks_struct_set_window_at_pointer (a_structure: POINTER; a_value: POINTER) is
			-- Setter for window_at_pointer field of GDK_DISPLAY_POINTER_HOOKS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_display_pointer_hooks_struct_set_window_at_pointer"
		}"
		end

feature {} -- Low-level queries

	gdk_display_pointer_hooks_struct_get_get_pointer (a_structure: POINTER): POINTER is
			-- Query for get_pointer field of GDK_DISPLAY_POINTER_HOOKS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_display_pointer_hooks_struct_get_get_pointer"
		}"
		end

	gdk_display_pointer_hooks_struct_get_window_get_pointer (a_structure: POINTER): POINTER is
			-- Query for window_get_pointer field of GDK_DISPLAY_POINTER_HOOKS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_display_pointer_hooks_struct_get_window_get_pointer"
		}"
		end

	gdk_display_pointer_hooks_struct_get_window_at_pointer (a_structure: POINTER): POINTER is
			-- Query for window_at_pointer field of GDK_DISPLAY_POINTER_HOOKS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_display_pointer_hooks_struct_get_window_at_pointer"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__GdkDisplayPointerHooks"
		}"
		end

end -- class GDK_DISPLAY_POINTER_HOOKS_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

