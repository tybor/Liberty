-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class XML_ERROR_LEVEL_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = error_low_level)  or else
				(a_value = fatal_low_level)  or else
				(a_value = none_low_level)  or else
				(a_value = warning_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_error is
		do
			value := error_low_level
		end

	set_fatal is
		do
			value := fatal_low_level
		end

	set_none is
		do
			value := none_low_level
		end

	set_warning is
		do
			value := warning_low_level
		end

feature {ANY} -- Queries
	is_error: BOOLEAN is
		do
			Result := (value=error_low_level)
		end

	is_fatal: BOOLEAN is
		do
			Result := (value=fatal_low_level)
		end

	is_none: BOOLEAN is
		do
			Result := (value=none_low_level)
		end

	is_warning: BOOLEAN is
		do
			Result := (value=warning_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	error_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_ERROR"
 			}"
 		end

	fatal_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_FATAL"
 			}"
 		end

	none_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_NONE"
 			}"
 		end

	warning_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_WARNING"
 			}"
 		end


end -- class XML_ERROR_LEVEL_ENUM
