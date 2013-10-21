-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class XML_ATTRIBUTE_DEFAULT_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = fixed_low_level)  or else
				(a_value = implied_low_level)  or else
				(a_value = none_low_level)  or else
				(a_value = required_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_fixed is
		do
			value := fixed_low_level
		end

	set_implied is
		do
			value := implied_low_level
		end

	set_none is
		do
			value := none_low_level
		end

	set_required is
		do
			value := required_low_level
		end

feature {ANY} -- Queries
	is_fixed: BOOLEAN is
		do
			Result := (value=fixed_low_level)
		end

	is_implied: BOOLEAN is
		do
			Result := (value=implied_low_level)
		end

	is_none: BOOLEAN is
		do
			Result := (value=none_low_level)
		end

	is_required: BOOLEAN is
		do
			Result := (value=required_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	fixed_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ATTRIBUTE_FIXED"
 			}"
 		end

	implied_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ATTRIBUTE_IMPLIED"
 			}"
 		end

	none_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ATTRIBUTE_NONE"
 			}"
 		end

	required_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ATTRIBUTE_REQUIRED"
 			}"
 		end


end -- class XML_ATTRIBUTE_DEFAULT_ENUM
