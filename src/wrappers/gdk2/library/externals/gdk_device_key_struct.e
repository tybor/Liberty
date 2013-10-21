-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GDK_DEVICE_KEY_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	GDK_TYPES
feature {} -- Low-level setters

	gdk_device_key_struct_set_keyval (a_structure: POINTER; a_value: NATURAL) is
			-- Setter for keyval field of GDK_DEVICE_KEY_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_device_key_struct_set_keyval"
		}"
		end

	gdk_device_key_struct_set_modifiers (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for modifiers field of GDK_DEVICE_KEY_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_device_key_struct_set_modifiers"
		}"
		end

feature {} -- Low-level queries

	gdk_device_key_struct_get_keyval (a_structure: POINTER): NATURAL is
			-- Query for keyval field of GDK_DEVICE_KEY_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_device_key_struct_get_keyval"
		}"
		end

	gdk_device_key_struct_get_modifiers (a_structure: POINTER): INTEGER is
			-- Query for modifiers field of GDK_DEVICE_KEY_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_device_key_struct_get_modifiers"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__GdkDeviceKey"
		}"
		end

end -- class GDK_DEVICE_KEY_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

