-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GDK_KEYMAP_KEY_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	GDK_TYPES
feature {} -- Low-level setters

	gdk_keymap_key_struct_set_keycode (a_structure: POINTER; a_value: NATURAL) is
			-- Setter for keycode field of GDK_KEYMAP_KEY_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_keymap_key_struct_set_keycode"
		}"
		end

	gdk_keymap_key_struct_set_group (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for group field of GDK_KEYMAP_KEY_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_keymap_key_struct_set_group"
		}"
		end

	gdk_keymap_key_struct_set_level (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for level field of GDK_KEYMAP_KEY_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_keymap_key_struct_set_level"
		}"
		end

feature {} -- Low-level queries

	gdk_keymap_key_struct_get_keycode (a_structure: POINTER): NATURAL is
			-- Query for keycode field of GDK_KEYMAP_KEY_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_keymap_key_struct_get_keycode"
		}"
		end

	gdk_keymap_key_struct_get_group (a_structure: POINTER): INTEGER is
			-- Query for group field of GDK_KEYMAP_KEY_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_keymap_key_struct_get_group"
		}"
		end

	gdk_keymap_key_struct_get_level (a_structure: POINTER): INTEGER is
			-- Query for level field of GDK_KEYMAP_KEY_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_keymap_key_struct_get_level"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__GdkKeymapKey"
		}"
		end

end -- class GDK_KEYMAP_KEY_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

