-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GDK_DISPLAY_MANAGER_CLASS_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	GDK_TYPES
feature {} -- Low-level setters

	gdk_display_manager_class_struct_set_display_opened (a_structure: POINTER; a_value: POINTER) is
			-- Setter for display_opened field of GDK_DISPLAY_MANAGER_CLASS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_display_manager_class_struct_set_display_opened"
		}"
		end

feature {} -- Low-level queries

	-- Unwrappable field parent_class.
	gdk_display_manager_class_struct_get_display_opened (a_structure: POINTER): POINTER is
			-- Query for display_opened field of GDK_DISPLAY_MANAGER_CLASS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_display_manager_class_struct_get_display_opened"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__GdkDisplayManagerClass"
		}"
		end

end -- class GDK_DISPLAY_MANAGER_CLASS_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

