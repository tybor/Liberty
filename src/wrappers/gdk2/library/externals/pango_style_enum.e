-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class PANGO_STYLE_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = italic_low_level)  or else
				(a_value = normal_low_level)  or else
				(a_value = oblique_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_italic is
		do
			value := italic_low_level
		end

	set_normal is
		do
			value := normal_low_level
		end

	set_oblique is
		do
			value := oblique_low_level
		end

feature {ANY} -- Queries
	is_italic: BOOLEAN is
		do
			Result := (value=italic_low_level)
		end

	is_normal: BOOLEAN is
		do
			Result := (value=normal_low_level)
		end

	is_oblique: BOOLEAN is
		do
			Result := (value=oblique_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	italic_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "PANGO_STYLE_ITALIC"
 			}"
 		end

	normal_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "PANGO_STYLE_NORMAL"
 			}"
 		end

	oblique_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "PANGO_STYLE_OBLIQUE"
 			}"
 		end


end -- class PANGO_STYLE_ENUM
