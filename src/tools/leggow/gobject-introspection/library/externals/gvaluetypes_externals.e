-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GVALUETYPES_EXTERNALS


insert ANY undefine is_equal, copy end

		STANDARD_C_LIBRARY_TYPES
feature {} -- External calls

	g_gtype_get_type: like long_unsigned is
 		-- g_gtype_get_type
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_gtype_get_type()"
		}"
		end

	g_pointer_type_register_static (a_name: POINTER): like long_unsigned is
 		-- g_pointer_type_register_static
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_pointer_type_register_static"
		}"
		end

	g_strdup_value_contents (a_value: POINTER): POINTER is
 		-- g_strdup_value_contents
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_strdup_value_contents"
		}"
		end

	g_value_dup_string (a_value: POINTER): POINTER is
 		-- g_value_dup_string
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_dup_string"
		}"
		end

	g_value_dup_variant (a_value: POINTER): POINTER is
 		-- g_value_dup_variant
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_dup_variant"
		}"
		end

	g_value_get_boolean (a_value: POINTER): INTEGER is
 		-- g_value_get_boolean
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_get_boolean"
		}"
		end

	g_value_get_char (a_value: POINTER): CHARACTER is
 		-- g_value_get_char
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_get_char"
		}"
		end

	g_value_get_double (a_value: POINTER): REAL is
 		-- g_value_get_double
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_get_double"
		}"
		end

	g_value_get_float (a_value: POINTER): REAL_32 is
 		-- g_value_get_float
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_get_float"
		}"
		end

	g_value_get_gtype (a_value: POINTER): like long_unsigned is
 		-- g_value_get_gtype
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_get_gtype"
		}"
		end

	g_value_get_int (a_value: POINTER): INTEGER is
 		-- g_value_get_int
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_get_int"
		}"
		end

	g_value_get_int64 (a_value: POINTER): like long is
 		-- g_value_get_int64
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_get_int64"
		}"
		end

	g_value_get_long (a_value: POINTER): like long is
 		-- g_value_get_long
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_get_long"
		}"
		end

	g_value_get_pointer (a_value: POINTER): POINTER is
 		-- g_value_get_pointer
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_get_pointer"
		}"
		end

	g_value_get_schar (a_value: POINTER): CHARACTER is
 		-- g_value_get_schar
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_get_schar"
		}"
		end

	g_value_get_string (a_value: POINTER): POINTER is
 		-- g_value_get_string
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_get_string"
		}"
		end

	g_value_get_uchar (a_value: POINTER): CHARACTER is
 		-- g_value_get_uchar
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_get_uchar"
		}"
		end

	g_value_get_uint (a_value: POINTER): NATURAL is
 		-- g_value_get_uint
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_get_uint"
		}"
		end

	g_value_get_uint64 (a_value: POINTER): like long_unsigned is
 		-- g_value_get_uint64
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_get_uint64"
		}"
		end

	g_value_get_ulong (a_value: POINTER): like long_unsigned is
 		-- g_value_get_ulong
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_get_ulong"
		}"
		end

	g_value_get_variant (a_value: POINTER): POINTER is
 		-- g_value_get_variant
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_get_variant"
		}"
		end

	g_value_set_boolean (a_value: POINTER; a_v_boolean: INTEGER) is
 		-- g_value_set_boolean
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_set_boolean"
		}"
		end

	g_value_set_char (a_value: POINTER; a_v_char: CHARACTER) is
 		-- g_value_set_char
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_set_char"
		}"
		end

	g_value_set_double (a_value: POINTER; a_v_double: REAL) is
 		-- g_value_set_double
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_set_double"
		}"
		end

	g_value_set_float (a_value: POINTER; a_v_float: REAL_32) is
 		-- g_value_set_float
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_set_float"
		}"
		end

	g_value_set_gtype (a_value: POINTER; a_v_gtype: like long_unsigned) is
 		-- g_value_set_gtype
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_set_gtype"
		}"
		end

	g_value_set_int (a_value: POINTER; a_v_int: INTEGER) is
 		-- g_value_set_int
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_set_int"
		}"
		end

	g_value_set_int64 (a_value: POINTER; a_v_int64: like long) is
 		-- g_value_set_int64
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_set_int64"
		}"
		end

	g_value_set_long (a_value: POINTER; a_v_long: like long) is
 		-- g_value_set_long
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_set_long"
		}"
		end

	g_value_set_pointer (a_value: POINTER; a_v_pointer: POINTER) is
 		-- g_value_set_pointer
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_set_pointer"
		}"
		end

	g_value_set_schar (a_value: POINTER; a_v_char: CHARACTER) is
 		-- g_value_set_schar
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_set_schar"
		}"
		end

	g_value_set_static_string (a_value: POINTER; a_v_string: POINTER) is
 		-- g_value_set_static_string
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_set_static_string"
		}"
		end

	g_value_set_string (a_value: POINTER; a_v_string: POINTER) is
 		-- g_value_set_string
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_set_string"
		}"
		end

	g_value_set_string_take_ownership (a_value: POINTER; a_v_string: POINTER) is
 		-- g_value_set_string_take_ownership
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_set_string_take_ownership"
		}"
		end

	g_value_set_uchar (a_value: POINTER; a_v_uchar: CHARACTER) is
 		-- g_value_set_uchar
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_set_uchar"
		}"
		end

	g_value_set_uint (a_value: POINTER; a_v_uint: NATURAL) is
 		-- g_value_set_uint
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_set_uint"
		}"
		end

	g_value_set_uint64 (a_value: POINTER; a_v_uint64: like long_unsigned) is
 		-- g_value_set_uint64
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_set_uint64"
		}"
		end

	g_value_set_ulong (a_value: POINTER; a_v_ulong: like long_unsigned) is
 		-- g_value_set_ulong
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_set_ulong"
		}"
		end

	g_value_set_variant (a_value: POINTER; a_variant_external: POINTER) is
 		-- g_value_set_variant
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_set_variant"
		}"
		end

	g_value_take_string (a_value: POINTER; a_v_string: POINTER) is
 		-- g_value_take_string
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_take_string"
		}"
		end

	g_value_take_variant (a_value: POINTER; a_variant_external: POINTER) is
 		-- g_value_take_variant
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_take_variant"
		}"
		end


end -- class GVALUETYPES_EXTERNALS
