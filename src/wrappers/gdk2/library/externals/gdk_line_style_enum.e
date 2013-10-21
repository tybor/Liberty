-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GDK_LINE_STYLE_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = double_dash_low_level)  or else
				(a_value = on_off_dash_low_level)  or else
				(a_value = solid_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_double_dash is
		do
			value := double_dash_low_level
		end

	set_on_off_dash is
		do
			value := on_off_dash_low_level
		end

	set_solid is
		do
			value := solid_low_level
		end

feature {ANY} -- Queries
	is_double_dash: BOOLEAN is
		do
			Result := (value=double_dash_low_level)
		end

	is_on_off_dash: BOOLEAN is
		do
			Result := (value=on_off_dash_low_level)
		end

	is_solid: BOOLEAN is
		do
			Result := (value=solid_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	double_dash_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_LINE_DOUBLE_DASH"
 			}"
 		end

	on_off_dash_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_LINE_ON_OFF_DASH"
 			}"
 		end

	solid_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_LINE_SOLID"
 			}"
 		end


end -- class GDK_LINE_STYLE_ENUM
