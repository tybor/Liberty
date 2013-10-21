-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GDK_DEVICE_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	GDK_TYPES
feature {} -- Low-level setters

	gdk_device_struct_set_name (a_structure: POINTER; a_value: POINTER) is
			-- Setter for name field of GDK_DEVICE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_device_struct_set_name"
		}"
		end

	gdk_device_struct_set_source (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for source field of GDK_DEVICE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_device_struct_set_source"
		}"
		end

	gdk_device_struct_set_mode (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for mode field of GDK_DEVICE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_device_struct_set_mode"
		}"
		end

	gdk_device_struct_set_has_cursor (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for has_cursor field of GDK_DEVICE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_device_struct_set_has_cursor"
		}"
		end

	gdk_device_struct_set_num_axes (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for num_axes field of GDK_DEVICE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_device_struct_set_num_axes"
		}"
		end

	gdk_device_struct_set_axes (a_structure: POINTER; a_value: POINTER) is
			-- Setter for axes field of GDK_DEVICE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_device_struct_set_axes"
		}"
		end

	gdk_device_struct_set_num_keys (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for num_keys field of GDK_DEVICE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_device_struct_set_num_keys"
		}"
		end

	gdk_device_struct_set_keys (a_structure: POINTER; a_value: POINTER) is
			-- Setter for keys field of GDK_DEVICE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_device_struct_set_keys"
		}"
		end

feature {} -- Low-level queries

	-- Unwrappable field parent_instance.
	gdk_device_struct_get_name (a_structure: POINTER): POINTER is
			-- Query for name field of GDK_DEVICE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_device_struct_get_name"
		}"
		end

	gdk_device_struct_get_source (a_structure: POINTER): INTEGER is
			-- Query for source field of GDK_DEVICE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_device_struct_get_source"
		}"
		end

	gdk_device_struct_get_mode (a_structure: POINTER): INTEGER is
			-- Query for mode field of GDK_DEVICE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_device_struct_get_mode"
		}"
		end

	gdk_device_struct_get_has_cursor (a_structure: POINTER): INTEGER is
			-- Query for has_cursor field of GDK_DEVICE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_device_struct_get_has_cursor"
		}"
		end

	gdk_device_struct_get_num_axes (a_structure: POINTER): INTEGER is
			-- Query for num_axes field of GDK_DEVICE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_device_struct_get_num_axes"
		}"
		end

	gdk_device_struct_get_axes (a_structure: POINTER): POINTER is
			-- Query for axes field of GDK_DEVICE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_device_struct_get_axes"
		}"
		end

	gdk_device_struct_get_num_keys (a_structure: POINTER): INTEGER is
			-- Query for num_keys field of GDK_DEVICE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_device_struct_get_num_keys"
		}"
		end

	gdk_device_struct_get_keys (a_structure: POINTER): POINTER is
			-- Query for keys field of GDK_DEVICE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_device_struct_get_keys"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__GdkDevice"
		}"
		end

end -- class GDK_DEVICE_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

