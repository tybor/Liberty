-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GTLS_INTERACTION_RESULT_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = failed_low_level)  or else
				(a_value = handled_low_level)  or else
				(a_value = unhandled_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_failed is
		do
			value := failed_low_level
		end

	set_handled is
		do
			value := handled_low_level
		end

	set_unhandled is
		do
			value := unhandled_low_level
		end

feature {ANY} -- Queries
	is_failed: BOOLEAN is
		do
			Result := (value=failed_low_level)
		end

	is_handled: BOOLEAN is
		do
			Result := (value=handled_low_level)
		end

	is_unhandled: BOOLEAN is
		do
			Result := (value=unhandled_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	failed_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_TLS_INTERACTION_FAILED"
 			}"
 		end

	handled_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_TLS_INTERACTION_HANDLED"
 			}"
 		end

	unhandled_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_TLS_INTERACTION_UNHANDLED"
 			}"
 		end


end -- class GTLS_INTERACTION_RESULT_ENUM
