-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GDK_PIXBUF_ROTATION_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = clockwise_low_level)  or else
				(a_value = counterclockwise_low_level)  or else
				(a_value = none_low_level)  or else
				(a_value = upsidedown_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_clockwise is
		do
			value := clockwise_low_level
		end

	set_counterclockwise is
		do
			value := counterclockwise_low_level
		end

	set_none is
		do
			value := none_low_level
		end

	set_upsidedown is
		do
			value := upsidedown_low_level
		end

feature {ANY} -- Queries
	is_clockwise: BOOLEAN is
		do
			Result := (value=clockwise_low_level)
		end

	is_counterclockwise: BOOLEAN is
		do
			Result := (value=counterclockwise_low_level)
		end

	is_none: BOOLEAN is
		do
			Result := (value=none_low_level)
		end

	is_upsidedown: BOOLEAN is
		do
			Result := (value=upsidedown_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	clockwise_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_PIXBUF_ROTATE_CLOCKWISE"
 			}"
 		end

	counterclockwise_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_PIXBUF_ROTATE_COUNTERCLOCKWISE"
 			}"
 		end

	none_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_PIXBUF_ROTATE_NONE"
 			}"
 		end

	upsidedown_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_PIXBUF_ROTATE_UPSIDEDOWN"
 			}"
 		end


end -- class GDK_PIXBUF_ROTATION_ENUM
