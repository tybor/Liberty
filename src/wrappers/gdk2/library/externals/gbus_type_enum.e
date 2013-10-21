-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GBUS_TYPE_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = none_low_level)  or else
				(a_value = session_low_level)  or else
				(a_value = starter_low_level)  or else
				(a_value = system_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_none is
		do
			value := none_low_level
		end

	set_session is
		do
			value := session_low_level
		end

	set_starter is
		do
			value := starter_low_level
		end

	set_system is
		do
			value := system_low_level
		end

feature {ANY} -- Queries
	is_none: BOOLEAN is
		do
			Result := (value=none_low_level)
		end

	is_session: BOOLEAN is
		do
			Result := (value=session_low_level)
		end

	is_starter: BOOLEAN is
		do
			Result := (value=starter_low_level)
		end

	is_system: BOOLEAN is
		do
			Result := (value=system_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	none_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_BUS_TYPE_NONE"
 			}"
 		end

	session_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_BUS_TYPE_SESSION"
 			}"
 		end

	starter_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_BUS_TYPE_STARTER"
 			}"
 		end

	system_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_BUS_TYPE_SYSTEM"
 			}"
 		end


end -- class GBUS_TYPE_ENUM
