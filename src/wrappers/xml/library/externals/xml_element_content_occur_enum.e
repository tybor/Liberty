-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class XML_ELEMENT_CONTENT_OCCUR_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = mult_low_level)  or else
				(a_value = once_external_low_level)  or else
				(a_value = opt_low_level)  or else
				(a_value = plus_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_mult is
		do
			value := mult_low_level
		end

	set_once_external is
		do
			value := once_external_low_level
		end

	set_opt is
		do
			value := opt_low_level
		end

	set_plus is
		do
			value := plus_low_level
		end

feature {ANY} -- Queries
	is_mult: BOOLEAN is
		do
			Result := (value=mult_low_level)
		end

	is_once_external: BOOLEAN is
		do
			Result := (value=once_external_low_level)
		end

	is_opt: BOOLEAN is
		do
			Result := (value=opt_low_level)
		end

	is_plus: BOOLEAN is
		do
			Result := (value=plus_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	mult_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ELEMENT_CONTENT_MULT"
 			}"
 		end

	once_external_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ELEMENT_CONTENT_ONCE"
 			}"
 		end

	opt_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ELEMENT_CONTENT_OPT"
 			}"
 		end

	plus_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ELEMENT_CONTENT_PLUS"
 			}"
 		end


end -- class XML_ELEMENT_CONTENT_OCCUR_ENUM
