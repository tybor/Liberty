-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GBUS_NAME_OWNER_FLAGS_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = allow_replacement_low_level)  or else
				(a_value = none_low_level)  or else
				(a_value = replace_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_allow_replacement is
		do
			value := allow_replacement_low_level
		end

	set_none is
		do
			value := none_low_level
		end

	set_replace is
		do
			value := replace_low_level
		end

feature {ANY} -- Queries
	is_allow_replacement: BOOLEAN is
		do
			Result := (value=allow_replacement_low_level)
		end

	is_none: BOOLEAN is
		do
			Result := (value=none_low_level)
		end

	is_replace: BOOLEAN is
		do
			Result := (value=replace_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	allow_replacement_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_BUS_NAME_OWNER_FLAGS_ALLOW_REPLACEMENT"
 			}"
 		end

	none_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_BUS_NAME_OWNER_FLAGS_NONE"
 			}"
 		end

	replace_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_BUS_NAME_OWNER_FLAGS_REPLACE"
 			}"
 		end


end -- class GBUS_NAME_OWNER_FLAGS_ENUM
