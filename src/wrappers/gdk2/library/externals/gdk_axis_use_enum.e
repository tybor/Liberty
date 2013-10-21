-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GDK_AXIS_USE_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = ignore_low_level)  or else
				(a_value = last_low_level)  or else
				(a_value = pressure_low_level)  or else
				(a_value = wheel_low_level)  or else
				(a_value = x_low_level)  or else
				(a_value = xtilt_low_level)  or else
				(a_value = y_low_level)  or else
				(a_value = ytilt_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_ignore is
		do
			value := ignore_low_level
		end

	set_last is
		do
			value := last_low_level
		end

	set_pressure is
		do
			value := pressure_low_level
		end

	set_wheel is
		do
			value := wheel_low_level
		end

	set_x is
		do
			value := x_low_level
		end

	set_xtilt is
		do
			value := xtilt_low_level
		end

	set_y is
		do
			value := y_low_level
		end

	set_ytilt is
		do
			value := ytilt_low_level
		end

feature {ANY} -- Queries
	is_ignore: BOOLEAN is
		do
			Result := (value=ignore_low_level)
		end

	is_last: BOOLEAN is
		do
			Result := (value=last_low_level)
		end

	is_pressure: BOOLEAN is
		do
			Result := (value=pressure_low_level)
		end

	is_wheel: BOOLEAN is
		do
			Result := (value=wheel_low_level)
		end

	is_x: BOOLEAN is
		do
			Result := (value=x_low_level)
		end

	is_xtilt: BOOLEAN is
		do
			Result := (value=xtilt_low_level)
		end

	is_y: BOOLEAN is
		do
			Result := (value=y_low_level)
		end

	is_ytilt: BOOLEAN is
		do
			Result := (value=ytilt_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	ignore_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_AXIS_IGNORE"
 			}"
 		end

	last_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_AXIS_LAST"
 			}"
 		end

	pressure_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_AXIS_PRESSURE"
 			}"
 		end

	wheel_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_AXIS_WHEEL"
 			}"
 		end

	x_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_AXIS_X"
 			}"
 		end

	xtilt_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_AXIS_XTILT"
 			}"
 		end

	y_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_AXIS_Y"
 			}"
 		end

	ytilt_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_AXIS_YTILT"
 			}"
 		end


end -- class GDK_AXIS_USE_ENUM
