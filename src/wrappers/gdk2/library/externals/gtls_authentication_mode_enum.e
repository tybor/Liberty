-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GTLS_AUTHENTICATION_MODE_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = none_low_level)  or else
				(a_value = requested_low_level)  or else
				(a_value = required_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_none is
		do
			value := none_low_level
		end

	set_requested is
		do
			value := requested_low_level
		end

	set_required is
		do
			value := required_low_level
		end

feature {ANY} -- Queries
	is_none: BOOLEAN is
		do
			Result := (value=none_low_level)
		end

	is_requested: BOOLEAN is
		do
			Result := (value=requested_low_level)
		end

	is_required: BOOLEAN is
		do
			Result := (value=required_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	none_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_TLS_AUTHENTICATION_NONE"
 			}"
 		end

	requested_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_TLS_AUTHENTICATION_REQUESTED"
 			}"
 		end

	required_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_TLS_AUTHENTICATION_REQUIRED"
 			}"
 		end


end -- class GTLS_AUTHENTICATION_MODE_ENUM
