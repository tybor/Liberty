-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GFILE_ATTRIBUTE_TYPE_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = boolean_low_level)  or else
				(a_value = byte_string_low_level)  or else
				(a_value = int32_low_level)  or else
				(a_value = int64_low_level)  or else
				(a_value = invalid_low_level)  or else
				(a_value = object_low_level)  or else
				(a_value = string_low_level)  or else
				(a_value = stringv_low_level)  or else
				(a_value = uint32_low_level)  or else
				(a_value = uint64_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_boolean is
		do
			value := boolean_low_level
		end

	set_byte_string is
		do
			value := byte_string_low_level
		end

	set_int32 is
		do
			value := int32_low_level
		end

	set_int64 is
		do
			value := int64_low_level
		end

	set_invalid is
		do
			value := invalid_low_level
		end

	set_object is
		do
			value := object_low_level
		end

	set_string is
		do
			value := string_low_level
		end

	set_stringv is
		do
			value := stringv_low_level
		end

	set_uint32 is
		do
			value := uint32_low_level
		end

	set_uint64 is
		do
			value := uint64_low_level
		end

feature {ANY} -- Queries
	is_boolean: BOOLEAN is
		do
			Result := (value=boolean_low_level)
		end

	is_byte_string: BOOLEAN is
		do
			Result := (value=byte_string_low_level)
		end

	is_int32: BOOLEAN is
		do
			Result := (value=int32_low_level)
		end

	is_int64: BOOLEAN is
		do
			Result := (value=int64_low_level)
		end

	is_invalid: BOOLEAN is
		do
			Result := (value=invalid_low_level)
		end

	is_object: BOOLEAN is
		do
			Result := (value=object_low_level)
		end

	is_string: BOOLEAN is
		do
			Result := (value=string_low_level)
		end

	is_stringv: BOOLEAN is
		do
			Result := (value=stringv_low_level)
		end

	is_uint32: BOOLEAN is
		do
			Result := (value=uint32_low_level)
		end

	is_uint64: BOOLEAN is
		do
			Result := (value=uint64_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	boolean_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_FILE_ATTRIBUTE_TYPE_BOOLEAN"
 			}"
 		end

	byte_string_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_FILE_ATTRIBUTE_TYPE_BYTE_STRING"
 			}"
 		end

	int32_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_FILE_ATTRIBUTE_TYPE_INT32"
 			}"
 		end

	int64_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_FILE_ATTRIBUTE_TYPE_INT64"
 			}"
 		end

	invalid_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_FILE_ATTRIBUTE_TYPE_INVALID"
 			}"
 		end

	object_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_FILE_ATTRIBUTE_TYPE_OBJECT"
 			}"
 		end

	string_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_FILE_ATTRIBUTE_TYPE_STRING"
 			}"
 		end

	stringv_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_FILE_ATTRIBUTE_TYPE_STRINGV"
 			}"
 		end

	uint32_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_FILE_ATTRIBUTE_TYPE_UINT32"
 			}"
 		end

	uint64_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_FILE_ATTRIBUTE_TYPE_UINT64"
 			}"
 		end


end -- class GFILE_ATTRIBUTE_TYPE_ENUM
