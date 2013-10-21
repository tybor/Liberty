-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GDK_PIXMAP_OBJECT_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	GDK_TYPES
feature {} -- Low-level setters

	gdk_pixmap_object_struct_set_impl (a_structure: POINTER; a_value: POINTER) is
			-- Setter for impl field of GDK_PIXMAP_OBJECT_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pixmap_object_struct_set_impl"
		}"
		end

	gdk_pixmap_object_struct_set_depth (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for depth field of GDK_PIXMAP_OBJECT_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pixmap_object_struct_set_depth"
		}"
		end

feature {} -- Low-level queries

	-- Unwrappable field parent_instance.
	gdk_pixmap_object_struct_get_impl (a_structure: POINTER): POINTER is
			-- Query for impl field of GDK_PIXMAP_OBJECT_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pixmap_object_struct_get_impl"
		}"
		end

	gdk_pixmap_object_struct_get_depth (a_structure: POINTER): INTEGER is
			-- Query for depth field of GDK_PIXMAP_OBJECT_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_pixmap_object_struct_get_depth"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__GdkPixmapObject"
		}"
		end

end -- class GDK_PIXMAP_OBJECT_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

