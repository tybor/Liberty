-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GFILE_ATTRIBUTE_STATUS_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = error_setting_low_level)  or else
				(a_value = set_low_level)  or else
				(a_value = unset_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_error_setting is
		do
			value := error_setting_low_level
		end

	set_set is
		do
			value := set_low_level
		end

	set_unset is
		do
			value := unset_low_level
		end

feature {ANY} -- Queries
	is_error_setting: BOOLEAN is
		do
			Result := (value=error_setting_low_level)
		end

	is_set: BOOLEAN is
		do
			Result := (value=set_low_level)
		end

	is_unset: BOOLEAN is
		do
			Result := (value=unset_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	error_setting_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_FILE_ATTRIBUTE_STATUS_ERROR_SETTING"
 			}"
 		end

	set_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_FILE_ATTRIBUTE_STATUS_SET"
 			}"
 		end

	unset_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_FILE_ATTRIBUTE_STATUS_UNSET"
 			}"
 		end


end -- class GFILE_ATTRIBUTE_STATUS_ENUM
