-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GDK_CROSSING_MODE_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = grab_low_level)  or else
				(a_value = gtk_grab_low_level)  or else
				(a_value = gtk_ungrab_low_level)  or else
				(a_value = normal_low_level)  or else
				(a_value = state_changed_low_level)  or else
				(a_value = ungrab_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_grab is
		do
			value := grab_low_level
		end

	set_gtk_grab is
		do
			value := gtk_grab_low_level
		end

	set_gtk_ungrab is
		do
			value := gtk_ungrab_low_level
		end

	set_normal is
		do
			value := normal_low_level
		end

	set_state_changed is
		do
			value := state_changed_low_level
		end

	set_ungrab is
		do
			value := ungrab_low_level
		end

feature {ANY} -- Queries
	is_grab: BOOLEAN is
		do
			Result := (value=grab_low_level)
		end

	is_gtk_grab: BOOLEAN is
		do
			Result := (value=gtk_grab_low_level)
		end

	is_gtk_ungrab: BOOLEAN is
		do
			Result := (value=gtk_ungrab_low_level)
		end

	is_normal: BOOLEAN is
		do
			Result := (value=normal_low_level)
		end

	is_state_changed: BOOLEAN is
		do
			Result := (value=state_changed_low_level)
		end

	is_ungrab: BOOLEAN is
		do
			Result := (value=ungrab_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	grab_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_CROSSING_GRAB"
 			}"
 		end

	gtk_grab_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_CROSSING_GTK_GRAB"
 			}"
 		end

	gtk_ungrab_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_CROSSING_GTK_UNGRAB"
 			}"
 		end

	normal_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_CROSSING_NORMAL"
 			}"
 		end

	state_changed_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_CROSSING_STATE_CHANGED"
 			}"
 		end

	ungrab_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_CROSSING_UNGRAB"
 			}"
 		end


end -- class GDK_CROSSING_MODE_ENUM
