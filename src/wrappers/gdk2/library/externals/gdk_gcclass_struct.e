-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GDK_GCCLASS_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	GDK_TYPES
feature {} -- Low-level setters

	gdk_gcclass_struct_set_get_values (a_structure: POINTER; a_value: POINTER) is
			-- Setter for get_values field of GDK_GCCLASS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_gcclass_struct_set_get_values"
		}"
		end

	gdk_gcclass_struct_set_set_values (a_structure: POINTER; a_value: POINTER) is
			-- Setter for set_values field of GDK_GCCLASS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_gcclass_struct_set_set_values"
		}"
		end

	gdk_gcclass_struct_set_set_dashes (a_structure: POINTER; a_value: POINTER) is
			-- Setter for set_dashes field of GDK_GCCLASS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_gcclass_struct_set_set_dashes"
		}"
		end

feature {} -- Low-level queries

	-- Unwrappable field parent_class.
	gdk_gcclass_struct_get_get_values (a_structure: POINTER): POINTER is
			-- Query for get_values field of GDK_GCCLASS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_gcclass_struct_get_get_values"
		}"
		end

	gdk_gcclass_struct_get_set_values (a_structure: POINTER): POINTER is
			-- Query for set_values field of GDK_GCCLASS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_gcclass_struct_get_set_values"
		}"
		end

	gdk_gcclass_struct_get_set_dashes (a_structure: POINTER): POINTER is
			-- Query for set_dashes field of GDK_GCCLASS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_gcclass_struct_get_set_dashes"
		}"
		end

	-- Unwrappable field _gdk_reserved1.
	-- Unwrappable field _gdk_reserved2.
	-- Unwrappable field _gdk_reserved3.
	-- Unwrappable field _gdk_reserved4.
feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__GdkGCClass"
		}"
		end

end -- class GDK_GCCLASS_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

