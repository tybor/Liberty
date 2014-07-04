-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GOPTION_ERROR_ENUM

insert ENUM

create {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN
        do
            Result := ((a_value = g_option_error_bad_value_low_level)  or else
				(a_value = g_option_error_failed_low_level)  or else
				(a_value = g_option_error_unknown_option_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_g_option_error_bad_value
		do
			value := g_option_error_bad_value_low_level
		end

	set_g_option_error_failed
		do
			value := g_option_error_failed_low_level
		end

	set_g_option_error_unknown_option
		do
			value := g_option_error_unknown_option_low_level
		end

feature {ANY} -- Queries
	is_g_option_error_bad_value: BOOLEAN
		do
			Result := (value=g_option_error_bad_value_low_level)
		end

	is_g_option_error_failed: BOOLEAN
		do
			Result := (value=g_option_error_failed_low_level)
		end

	is_g_option_error_unknown_option: BOOLEAN
		do
			Result := (value=g_option_error_unknown_option_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	g_option_error_bad_value_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_OPTION_ERROR_BAD_VALUE"
 			}"
 		end

	g_option_error_failed_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_OPTION_ERROR_FAILED"
 			}"
 		end

	g_option_error_unknown_option_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_OPTION_ERROR_UNKNOWN_OPTION"
 			}"
 		end


end -- class GOPTION_ERROR_ENUM
