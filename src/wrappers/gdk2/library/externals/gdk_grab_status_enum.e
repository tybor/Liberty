-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GDK_GRAB_STATUS_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = already_grabbed_low_level)  or else
				(a_value = frozen_low_level)  or else
				(a_value = invalid_time_low_level)  or else
				(a_value = not_viewable_low_level)  or else
				(a_value = success_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_already_grabbed is
		do
			value := already_grabbed_low_level
		end

	set_frozen is
		do
			value := frozen_low_level
		end

	set_invalid_time is
		do
			value := invalid_time_low_level
		end

	set_not_viewable is
		do
			value := not_viewable_low_level
		end

	set_success is
		do
			value := success_low_level
		end

feature {ANY} -- Queries
	is_already_grabbed: BOOLEAN is
		do
			Result := (value=already_grabbed_low_level)
		end

	is_frozen: BOOLEAN is
		do
			Result := (value=frozen_low_level)
		end

	is_invalid_time: BOOLEAN is
		do
			Result := (value=invalid_time_low_level)
		end

	is_not_viewable: BOOLEAN is
		do
			Result := (value=not_viewable_low_level)
		end

	is_success: BOOLEAN is
		do
			Result := (value=success_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	already_grabbed_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_GRAB_ALREADY_GRABBED"
 			}"
 		end

	frozen_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_GRAB_FROZEN"
 			}"
 		end

	invalid_time_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_GRAB_INVALID_TIME"
 			}"
 		end

	not_viewable_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_GRAB_NOT_VIEWABLE"
 			}"
 		end

	success_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_GRAB_SUCCESS"
 			}"
 		end


end -- class GDK_GRAB_STATUS_ENUM
