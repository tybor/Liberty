-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GKEY_FILE_ERROR_ENUM

insert ENUM

create {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = group_not_found_low_level)  or else
				(a_value = invalid_value_low_level)  or else
				(a_value = key_not_found_low_level)  or else
				(a_value = not_found_low_level)  or else
				(a_value = parse_low_level)  or else
				(a_value = unknown_encoding_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_group_not_found is
		do
			value := group_not_found_low_level
		end

	set_invalid_value is
		do
			value := invalid_value_low_level
		end

	set_key_not_found is
		do
			value := key_not_found_low_level
		end

	set_not_found is
		do
			value := not_found_low_level
		end

	set_parse is
		do
			value := parse_low_level
		end

	set_unknown_encoding is
		do
			value := unknown_encoding_low_level
		end

feature {ANY} -- Queries
	is_group_not_found: BOOLEAN is
		do
			Result := (value=group_not_found_low_level)
		end

	is_invalid_value: BOOLEAN is
		do
			Result := (value=invalid_value_low_level)
		end

	is_key_not_found: BOOLEAN is
		do
			Result := (value=key_not_found_low_level)
		end

	is_not_found: BOOLEAN is
		do
			Result := (value=not_found_low_level)
		end

	is_parse: BOOLEAN is
		do
			Result := (value=parse_low_level)
		end

	is_unknown_encoding: BOOLEAN is
		do
			Result := (value=unknown_encoding_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	group_not_found_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_KEY_FILE_ERROR_GROUP_NOT_FOUND"
 			}"
 		end

	invalid_value_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_KEY_FILE_ERROR_INVALID_VALUE"
 			}"
 		end

	key_not_found_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_KEY_FILE_ERROR_KEY_NOT_FOUND"
 			}"
 		end

	not_found_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_KEY_FILE_ERROR_NOT_FOUND"
 			}"
 		end

	parse_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_KEY_FILE_ERROR_PARSE"
 			}"
 		end

	unknown_encoding_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_KEY_FILE_ERROR_UNKNOWN_ENCODING"
 			}"
 		end


end -- class GKEY_FILE_ERROR_ENUM
