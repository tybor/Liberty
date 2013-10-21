-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GDK_WINDOW_CLASS_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = nly_low_level)  or else
				(a_value = utput_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_nly is
		do
			value := nly_low_level
		end

	set_utput is
		do
			value := utput_low_level
		end

feature {ANY} -- Queries
	is_nly: BOOLEAN is
		do
			Result := (value=nly_low_level)
		end

	is_utput: BOOLEAN is
		do
			Result := (value=utput_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	nly_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_INPUT_ONLY"
 			}"
 		end

	utput_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_INPUT_OUTPUT"
 			}"
 		end


end -- class GDK_WINDOW_CLASS_ENUM
