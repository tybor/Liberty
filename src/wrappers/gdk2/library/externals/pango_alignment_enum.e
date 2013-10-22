-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class PANGO_ALIGNMENT_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = center_low_level)  or else
				(a_value = left_low_level)  or else
				(a_value = right_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_center is
		do
			value := center_low_level
		end

	set_left is
		do
			value := left_low_level
		end

	set_right is
		do
			value := right_low_level
		end

feature {ANY} -- Queries
	is_center: BOOLEAN is
		do
			Result := (value=center_low_level)
		end

	is_left: BOOLEAN is
		do
			Result := (value=left_low_level)
		end

	is_right: BOOLEAN is
		do
			Result := (value=right_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	center_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "PANGO_ALIGN_CENTER"
 			}"
 		end

	left_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "PANGO_ALIGN_LEFT"
 			}"
 		end

	right_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "PANGO_ALIGN_RIGHT"
 			}"
 		end


end -- class PANGO_ALIGNMENT_ENUM
