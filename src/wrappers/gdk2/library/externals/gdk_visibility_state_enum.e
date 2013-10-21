-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GDK_VISIBILITY_STATE_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = fully_obscured_low_level)  or else
				(a_value = partial_low_level)  or else
				(a_value = unobscured_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_fully_obscured is
		do
			value := fully_obscured_low_level
		end

	set_partial is
		do
			value := partial_low_level
		end

	set_unobscured is
		do
			value := unobscured_low_level
		end

feature {ANY} -- Queries
	is_fully_obscured: BOOLEAN is
		do
			Result := (value=fully_obscured_low_level)
		end

	is_partial: BOOLEAN is
		do
			Result := (value=partial_low_level)
		end

	is_unobscured: BOOLEAN is
		do
			Result := (value=unobscured_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	fully_obscured_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_VISIBILITY_FULLY_OBSCURED"
 			}"
 		end

	partial_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_VISIBILITY_PARTIAL"
 			}"
 		end

	unobscured_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_VISIBILITY_UNOBSCURED"
 			}"
 		end


end -- class GDK_VISIBILITY_STATE_ENUM
