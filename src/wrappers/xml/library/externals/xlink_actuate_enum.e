-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class XLINK_ACTUATE_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = auto_low_level)  or else
				(a_value = none_low_level)  or else
				(a_value = onrequest_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_auto is
		do
			value := auto_low_level
		end

	set_none is
		do
			value := none_low_level
		end

	set_onrequest is
		do
			value := onrequest_low_level
		end

feature {ANY} -- Queries
	is_auto: BOOLEAN is
		do
			Result := (value=auto_low_level)
		end

	is_none: BOOLEAN is
		do
			Result := (value=none_low_level)
		end

	is_onrequest: BOOLEAN is
		do
			Result := (value=onrequest_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	auto_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XLINK_ACTUATE_AUTO"
 			}"
 		end

	none_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XLINK_ACTUATE_NONE"
 			}"
 		end

	onrequest_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XLINK_ACTUATE_ONREQUEST"
 			}"
 		end


end -- class XLINK_ACTUATE_ENUM
