-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class PANGO_UNDERLINE_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = double_low_level)  or else
				(a_value = error_low_level)  or else
				(a_value = low_low_level)  or else
				(a_value = none_low_level)  or else
				(a_value = single_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_double is
		do
			value := double_low_level
		end

	set_error is
		do
			value := error_low_level
		end

	set_low is
		do
			value := low_low_level
		end

	set_none is
		do
			value := none_low_level
		end

	set_single is
		do
			value := single_low_level
		end

feature {ANY} -- Queries
	is_double: BOOLEAN is
		do
			Result := (value=double_low_level)
		end

	is_error: BOOLEAN is
		do
			Result := (value=error_low_level)
		end

	is_low: BOOLEAN is
		do
			Result := (value=low_low_level)
		end

	is_none: BOOLEAN is
		do
			Result := (value=none_low_level)
		end

	is_single: BOOLEAN is
		do
			Result := (value=single_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	double_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "PANGO_UNDERLINE_DOUBLE"
 			}"
 		end

	error_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "PANGO_UNDERLINE_ERROR"
 			}"
 		end

	low_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "PANGO_UNDERLINE_LOW"
 			}"
 		end

	none_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "PANGO_UNDERLINE_NONE"
 			}"
 		end

	single_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "PANGO_UNDERLINE_SINGLE"
 			}"
 		end


end -- class PANGO_UNDERLINE_ENUM
