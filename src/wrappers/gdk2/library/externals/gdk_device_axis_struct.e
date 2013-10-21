-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GDK_DEVICE_AXIS_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	GDK_TYPES
feature {} -- Low-level setters

	gdk_device_axis_struct_set_use (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for use field of GDK_DEVICE_AXIS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_device_axis_struct_set_use"
		}"
		end

	gdk_device_axis_struct_set_min (a_structure: POINTER; a_value: REAL) is
			-- Setter for min field of GDK_DEVICE_AXIS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_device_axis_struct_set_min"
		}"
		end

	gdk_device_axis_struct_set_max (a_structure: POINTER; a_value: REAL) is
			-- Setter for max field of GDK_DEVICE_AXIS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_device_axis_struct_set_max"
		}"
		end

feature {} -- Low-level queries

	gdk_device_axis_struct_get_use (a_structure: POINTER): INTEGER is
			-- Query for use field of GDK_DEVICE_AXIS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_device_axis_struct_get_use"
		}"
		end

	gdk_device_axis_struct_get_min (a_structure: POINTER): REAL is
			-- Query for min field of GDK_DEVICE_AXIS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_device_axis_struct_get_min"
		}"
		end

	gdk_device_axis_struct_get_max (a_structure: POINTER): REAL is
			-- Query for max field of GDK_DEVICE_AXIS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_device_axis_struct_get_max"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__GdkDeviceAxis"
		}"
		end

end -- class GDK_DEVICE_AXIS_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

