-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class XLINK_TYPE_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = extended_low_level)  or else
				(a_value = extended_set_low_level)  or else
				(a_value = none_low_level)  or else
				(a_value = simple_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_extended is
		do
			value := extended_low_level
		end

	set_extended_set is
		do
			value := extended_set_low_level
		end

	set_none is
		do
			value := none_low_level
		end

	set_simple is
		do
			value := simple_low_level
		end

feature {ANY} -- Queries
	is_extended: BOOLEAN is
		do
			Result := (value=extended_low_level)
		end

	is_extended_set: BOOLEAN is
		do
			Result := (value=extended_set_low_level)
		end

	is_none: BOOLEAN is
		do
			Result := (value=none_low_level)
		end

	is_simple: BOOLEAN is
		do
			Result := (value=simple_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	extended_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XLINK_TYPE_EXTENDED"
 			}"
 		end

	extended_set_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XLINK_TYPE_EXTENDED_SET"
 			}"
 		end

	none_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XLINK_TYPE_NONE"
 			}"
 		end

	simple_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XLINK_TYPE_SIMPLE"
 			}"
 		end


end -- class XLINK_TYPE_ENUM
