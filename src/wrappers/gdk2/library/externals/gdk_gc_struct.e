-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GDK_GC_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	GDK_TYPES
feature {} -- Low-level setters

	gdk_gc_struct_set_clip_x_origin (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for clip_x_origin field of GDK_GC_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_gc_struct_set_clip_x_origin"
		}"
		end

	gdk_gc_struct_set_clip_y_origin (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for clip_y_origin field of GDK_GC_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_gc_struct_set_clip_y_origin"
		}"
		end

	gdk_gc_struct_set_ts_x_origin (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for ts_x_origin field of GDK_GC_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_gc_struct_set_ts_x_origin"
		}"
		end

	gdk_gc_struct_set_ts_y_origin (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for ts_y_origin field of GDK_GC_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_gc_struct_set_ts_y_origin"
		}"
		end

	gdk_gc_struct_set_colormap (a_structure: POINTER; a_value: POINTER) is
			-- Setter for colormap field of GDK_GC_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_gc_struct_set_colormap"
		}"
		end

feature {} -- Low-level queries

	-- Unwrappable field parent_instance.
	gdk_gc_struct_get_clip_x_origin (a_structure: POINTER): INTEGER is
			-- Query for clip_x_origin field of GDK_GC_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_gc_struct_get_clip_x_origin"
		}"
		end

	gdk_gc_struct_get_clip_y_origin (a_structure: POINTER): INTEGER is
			-- Query for clip_y_origin field of GDK_GC_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_gc_struct_get_clip_y_origin"
		}"
		end

	gdk_gc_struct_get_ts_x_origin (a_structure: POINTER): INTEGER is
			-- Query for ts_x_origin field of GDK_GC_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_gc_struct_get_ts_x_origin"
		}"
		end

	gdk_gc_struct_get_ts_y_origin (a_structure: POINTER): INTEGER is
			-- Query for ts_y_origin field of GDK_GC_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_gc_struct_get_ts_y_origin"
		}"
		end

	gdk_gc_struct_get_colormap (a_structure: POINTER): POINTER is
			-- Query for colormap field of GDK_GC_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_gc_struct_get_colormap"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__GdkGC"
		}"
		end

end -- class GDK_GC_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

