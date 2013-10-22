-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GPASSWORD_SAVE_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = for_session_low_level)  or else
				(a_value = never_low_level)  or else
				(a_value = permanently_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_for_session is
		do
			value := for_session_low_level
		end

	set_never is
		do
			value := never_low_level
		end

	set_permanently is
		do
			value := permanently_low_level
		end

feature {ANY} -- Queries
	is_for_session: BOOLEAN is
		do
			Result := (value=for_session_low_level)
		end

	is_never: BOOLEAN is
		do
			Result := (value=never_low_level)
		end

	is_permanently: BOOLEAN is
		do
			Result := (value=permanently_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	for_session_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_PASSWORD_SAVE_FOR_SESSION"
 			}"
 		end

	never_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_PASSWORD_SAVE_NEVER"
 			}"
 		end

	permanently_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_PASSWORD_SAVE_PERMANENTLY"
 			}"
 		end


end -- class GPASSWORD_SAVE_ENUM
