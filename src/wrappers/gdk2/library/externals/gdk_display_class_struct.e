-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GDK_DISPLAY_CLASS_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	GDK_TYPES
feature {} -- Low-level setters

	gdk_display_class_struct_set_get_display_name (a_structure: POINTER; a_value: POINTER) is
			-- Setter for get_display_name field of GDK_DISPLAY_CLASS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_display_class_struct_set_get_display_name"
		}"
		end

	gdk_display_class_struct_set_get_n_screens (a_structure: POINTER; a_value: POINTER) is
			-- Setter for get_n_screens field of GDK_DISPLAY_CLASS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_display_class_struct_set_get_n_screens"
		}"
		end

	gdk_display_class_struct_set_get_screen (a_structure: POINTER; a_value: POINTER) is
			-- Setter for get_screen field of GDK_DISPLAY_CLASS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_display_class_struct_set_get_screen"
		}"
		end

	gdk_display_class_struct_set_get_default_screen (a_structure: POINTER; a_value: POINTER) is
			-- Setter for get_default_screen field of GDK_DISPLAY_CLASS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_display_class_struct_set_get_default_screen"
		}"
		end

	gdk_display_class_struct_set_closed (a_structure: POINTER; a_value: POINTER) is
			-- Setter for closed field of GDK_DISPLAY_CLASS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_display_class_struct_set_closed"
		}"
		end

feature {} -- Low-level queries

	-- Unwrappable field parent_class.
	gdk_display_class_struct_get_get_display_name (a_structure: POINTER): POINTER is
			-- Query for get_display_name field of GDK_DISPLAY_CLASS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_display_class_struct_get_get_display_name"
		}"
		end

	gdk_display_class_struct_get_get_n_screens (a_structure: POINTER): POINTER is
			-- Query for get_n_screens field of GDK_DISPLAY_CLASS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_display_class_struct_get_get_n_screens"
		}"
		end

	gdk_display_class_struct_get_get_screen (a_structure: POINTER): POINTER is
			-- Query for get_screen field of GDK_DISPLAY_CLASS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_display_class_struct_get_get_screen"
		}"
		end

	gdk_display_class_struct_get_get_default_screen (a_structure: POINTER): POINTER is
			-- Query for get_default_screen field of GDK_DISPLAY_CLASS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_display_class_struct_get_get_default_screen"
		}"
		end

	gdk_display_class_struct_get_closed (a_structure: POINTER): POINTER is
			-- Query for closed field of GDK_DISPLAY_CLASS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_display_class_struct_get_closed"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__GdkDisplayClass"
		}"
		end

end -- class GDK_DISPLAY_CLASS_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

