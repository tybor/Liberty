-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class PANGO_ELLIPSIZE_MODE_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = end_external_low_level)  or else
				(a_value = middle_low_level)  or else
				(a_value = none_low_level)  or else
				(a_value = start_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_end_external is
		do
			value := end_external_low_level
		end

	set_middle is
		do
			value := middle_low_level
		end

	set_none is
		do
			value := none_low_level
		end

	set_start is
		do
			value := start_low_level
		end

feature {ANY} -- Queries
	is_end_external: BOOLEAN is
		do
			Result := (value=end_external_low_level)
		end

	is_middle: BOOLEAN is
		do
			Result := (value=middle_low_level)
		end

	is_none: BOOLEAN is
		do
			Result := (value=none_low_level)
		end

	is_start: BOOLEAN is
		do
			Result := (value=start_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	end_external_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "PANGO_ELLIPSIZE_END"
 			}"
 		end

	middle_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "PANGO_ELLIPSIZE_MIDDLE"
 			}"
 		end

	none_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "PANGO_ELLIPSIZE_NONE"
 			}"
 		end

	start_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "PANGO_ELLIPSIZE_START"
 			}"
 		end


end -- class PANGO_ELLIPSIZE_MODE_ENUM
