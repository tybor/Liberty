-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class PANGO_RENDER_PART_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = background_low_level)  or else
				(a_value = foreground_low_level)  or else
				(a_value = strikethrough_low_level)  or else
				(a_value = underline_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_background is
		do
			value := background_low_level
		end

	set_foreground is
		do
			value := foreground_low_level
		end

	set_strikethrough is
		do
			value := strikethrough_low_level
		end

	set_underline is
		do
			value := underline_low_level
		end

feature {ANY} -- Queries
	is_background: BOOLEAN is
		do
			Result := (value=background_low_level)
		end

	is_foreground: BOOLEAN is
		do
			Result := (value=foreground_low_level)
		end

	is_strikethrough: BOOLEAN is
		do
			Result := (value=strikethrough_low_level)
		end

	is_underline: BOOLEAN is
		do
			Result := (value=underline_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	background_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "PANGO_RENDER_PART_BACKGROUND"
 			}"
 		end

	foreground_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "PANGO_RENDER_PART_FOREGROUND"
 			}"
 		end

	strikethrough_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "PANGO_RENDER_PART_STRIKETHROUGH"
 			}"
 		end

	underline_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "PANGO_RENDER_PART_UNDERLINE"
 			}"
 		end


end -- class PANGO_RENDER_PART_ENUM
