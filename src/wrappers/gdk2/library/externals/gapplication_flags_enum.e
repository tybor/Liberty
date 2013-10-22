-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GAPPLICATION_FLAGS_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = flags_none_low_level)  or else
				(a_value = handles_command_line_low_level)  or else
				(a_value = handles_open_low_level)  or else
				(a_value = is_launcher_low_level)  or else
				(a_value = is_service_low_level)  or else
				(a_value = non_unique_low_level)  or else
				(a_value = send_environment_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_flags_none is
		do
			value := flags_none_low_level
		end

	set_handles_command_line is
		do
			value := handles_command_line_low_level
		end

	set_handles_open is
		do
			value := handles_open_low_level
		end

	set_is_launcher is
		do
			value := is_launcher_low_level
		end

	set_is_service is
		do
			value := is_service_low_level
		end

	set_non_unique is
		do
			value := non_unique_low_level
		end

	set_send_environment is
		do
			value := send_environment_low_level
		end

feature {ANY} -- Queries
	is_flags_none: BOOLEAN is
		do
			Result := (value=flags_none_low_level)
		end

	is_handles_command_line: BOOLEAN is
		do
			Result := (value=handles_command_line_low_level)
		end

	is_handles_open: BOOLEAN is
		do
			Result := (value=handles_open_low_level)
		end

	is_is_launcher: BOOLEAN is
		do
			Result := (value=is_launcher_low_level)
		end

	is_is_service: BOOLEAN is
		do
			Result := (value=is_service_low_level)
		end

	is_non_unique: BOOLEAN is
		do
			Result := (value=non_unique_low_level)
		end

	is_send_environment: BOOLEAN is
		do
			Result := (value=send_environment_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	flags_none_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_APPLICATION_FLAGS_NONE"
 			}"
 		end

	handles_command_line_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_APPLICATION_HANDLES_COMMAND_LINE"
 			}"
 		end

	handles_open_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_APPLICATION_HANDLES_OPEN"
 			}"
 		end

	is_launcher_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_APPLICATION_IS_LAUNCHER"
 			}"
 		end

	is_service_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_APPLICATION_IS_SERVICE"
 			}"
 		end

	non_unique_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_APPLICATION_NON_UNIQUE"
 			}"
 		end

	send_environment_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_APPLICATION_SEND_ENVIRONMENT"
 			}"
 		end


end -- class GAPPLICATION_FLAGS_ENUM
