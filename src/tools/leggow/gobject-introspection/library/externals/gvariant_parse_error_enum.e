-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GVARIANT_PARSE_ERROR_ENUM

insert ENUM

create {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = basic_type_expected_low_level)  or else
				(a_value = cannot_infer_type_low_level)  or else
				(a_value = definite_type_expected_low_level)  or else
				(a_value = failed_low_level)  or else
				(a_value = input_not_at_end_low_level)  or else
				(a_value = invalid_character_low_level)  or else
				(a_value = invalid_format_string_low_level)  or else
				(a_value = invalid_object_path_low_level)  or else
				(a_value = invalid_signature_low_level)  or else
				(a_value = invalid_type_string_low_level)  or else
				(a_value = no_common_type_low_level)  or else
				(a_value = number_out_of_range_low_level)  or else
				(a_value = number_too_big_low_level)  or else
				(a_value = type_error_low_level)  or else
				(a_value = unexpected_token_low_level)  or else
				(a_value = unknown_keyword_low_level)  or else
				(a_value = unterminated_string_constant_low_level)  or else
				(a_value = value_expected_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_basic_type_expected is
		do
			value := basic_type_expected_low_level
		end

	set_cannot_infer_type is
		do
			value := cannot_infer_type_low_level
		end

	set_definite_type_expected is
		do
			value := definite_type_expected_low_level
		end

	set_failed is
		do
			value := failed_low_level
		end

	set_input_not_at_end is
		do
			value := input_not_at_end_low_level
		end

	set_invalid_character is
		do
			value := invalid_character_low_level
		end

	set_invalid_format_string is
		do
			value := invalid_format_string_low_level
		end

	set_invalid_object_path is
		do
			value := invalid_object_path_low_level
		end

	set_invalid_signature is
		do
			value := invalid_signature_low_level
		end

	set_invalid_type_string is
		do
			value := invalid_type_string_low_level
		end

	set_no_common_type is
		do
			value := no_common_type_low_level
		end

	set_number_out_of_range is
		do
			value := number_out_of_range_low_level
		end

	set_number_too_big is
		do
			value := number_too_big_low_level
		end

	set_type_error is
		do
			value := type_error_low_level
		end

	set_unexpected_token is
		do
			value := unexpected_token_low_level
		end

	set_unknown_keyword is
		do
			value := unknown_keyword_low_level
		end

	set_unterminated_string_constant is
		do
			value := unterminated_string_constant_low_level
		end

	set_value_expected is
		do
			value := value_expected_low_level
		end

feature {ANY} -- Queries
	is_basic_type_expected: BOOLEAN is
		do
			Result := (value=basic_type_expected_low_level)
		end

	is_cannot_infer_type: BOOLEAN is
		do
			Result := (value=cannot_infer_type_low_level)
		end

	is_definite_type_expected: BOOLEAN is
		do
			Result := (value=definite_type_expected_low_level)
		end

	is_failed: BOOLEAN is
		do
			Result := (value=failed_low_level)
		end

	is_input_not_at_end: BOOLEAN is
		do
			Result := (value=input_not_at_end_low_level)
		end

	is_invalid_character: BOOLEAN is
		do
			Result := (value=invalid_character_low_level)
		end

	is_invalid_format_string: BOOLEAN is
		do
			Result := (value=invalid_format_string_low_level)
		end

	is_invalid_object_path: BOOLEAN is
		do
			Result := (value=invalid_object_path_low_level)
		end

	is_invalid_signature: BOOLEAN is
		do
			Result := (value=invalid_signature_low_level)
		end

	is_invalid_type_string: BOOLEAN is
		do
			Result := (value=invalid_type_string_low_level)
		end

	is_no_common_type: BOOLEAN is
		do
			Result := (value=no_common_type_low_level)
		end

	is_number_out_of_range: BOOLEAN is
		do
			Result := (value=number_out_of_range_low_level)
		end

	is_number_too_big: BOOLEAN is
		do
			Result := (value=number_too_big_low_level)
		end

	is_type_error: BOOLEAN is
		do
			Result := (value=type_error_low_level)
		end

	is_unexpected_token: BOOLEAN is
		do
			Result := (value=unexpected_token_low_level)
		end

	is_unknown_keyword: BOOLEAN is
		do
			Result := (value=unknown_keyword_low_level)
		end

	is_unterminated_string_constant: BOOLEAN is
		do
			Result := (value=unterminated_string_constant_low_level)
		end

	is_value_expected: BOOLEAN is
		do
			Result := (value=value_expected_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	basic_type_expected_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_VARIANT_PARSE_ERROR_BASIC_TYPE_EXPECTED"
 			}"
 		end

	cannot_infer_type_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_VARIANT_PARSE_ERROR_CANNOT_INFER_TYPE"
 			}"
 		end

	definite_type_expected_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_VARIANT_PARSE_ERROR_DEFINITE_TYPE_EXPECTED"
 			}"
 		end

	failed_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_VARIANT_PARSE_ERROR_FAILED"
 			}"
 		end

	input_not_at_end_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_VARIANT_PARSE_ERROR_INPUT_NOT_AT_END"
 			}"
 		end

	invalid_character_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_VARIANT_PARSE_ERROR_INVALID_CHARACTER"
 			}"
 		end

	invalid_format_string_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_VARIANT_PARSE_ERROR_INVALID_FORMAT_STRING"
 			}"
 		end

	invalid_object_path_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_VARIANT_PARSE_ERROR_INVALID_OBJECT_PATH"
 			}"
 		end

	invalid_signature_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_VARIANT_PARSE_ERROR_INVALID_SIGNATURE"
 			}"
 		end

	invalid_type_string_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_VARIANT_PARSE_ERROR_INVALID_TYPE_STRING"
 			}"
 		end

	no_common_type_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_VARIANT_PARSE_ERROR_NO_COMMON_TYPE"
 			}"
 		end

	number_out_of_range_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_VARIANT_PARSE_ERROR_NUMBER_OUT_OF_RANGE"
 			}"
 		end

	number_too_big_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_VARIANT_PARSE_ERROR_NUMBER_TOO_BIG"
 			}"
 		end

	type_error_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_VARIANT_PARSE_ERROR_TYPE_ERROR"
 			}"
 		end

	unexpected_token_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_VARIANT_PARSE_ERROR_UNEXPECTED_TOKEN"
 			}"
 		end

	unknown_keyword_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_VARIANT_PARSE_ERROR_UNKNOWN_KEYWORD"
 			}"
 		end

	unterminated_string_constant_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_VARIANT_PARSE_ERROR_UNTERMINATED_STRING_CONSTANT"
 			}"
 		end

	value_expected_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_VARIANT_PARSE_ERROR_VALUE_EXPECTED"
 			}"
 		end


end -- class GVARIANT_PARSE_ERROR_ENUM
