-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GDKPROPERTY_EXTERNALS


insert ANY undefine is_equal, copy end

		STANDARD_C_LIBRARY_TYPES
feature {} -- External calls

	gdk_atom_intern (an_atom_name: POINTER; an_only_if_exists: INTEGER): POINTER is
 		-- gdk_atom_intern
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_atom_intern"
		}"
		end

	gdk_atom_intern_static_string (an_atom_name: POINTER): POINTER is
 		-- gdk_atom_intern_static_string
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_atom_intern_static_string"
		}"
		end

	gdk_atom_name (an_atom: POINTER): POINTER is
 		-- gdk_atom_name
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_atom_name"
		}"
		end

	gdk_property_change (a_window: POINTER; a_property: POINTER; a_type: POINTER; a_format: INTEGER; a_mode: INTEGER; a_data: POINTER; a_nelements: INTEGER) is
 		-- gdk_property_change
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_property_change"
		}"
		end

	gdk_property_delete (a_window: POINTER; a_property: POINTER) is
 		-- gdk_property_delete
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_property_delete"
		}"
		end

	gdk_property_get (a_window: POINTER; a_property: POINTER; a_type: POINTER; an_offset: like long_unsigned; a_length: like long_unsigned; a_pdelete: INTEGER; an_actual_property_type: POINTER; an_actual_format: POINTER; an_actual_length: POINTER; a_data: POINTER): INTEGER is
 		-- gdk_property_get
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_property_get"
		}"
		end

	gdk_text_property_to_utf8_list_for_display (a_display: POINTER; an_encoding: POINTER; a_format: INTEGER; a_text: POINTER; a_length: INTEGER; a_list: POINTER): INTEGER is
 		-- gdk_text_property_to_utf8_list_for_display
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_text_property_to_utf8_list_for_display"
		}"
		end

	gdk_utf8_to_string_target (a_str: POINTER): POINTER is
 		-- gdk_utf8_to_string_target
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_utf8_to_string_target"
		}"
		end


end -- class GDKPROPERTY_EXTERNALS
