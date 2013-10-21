-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GDK_SETTING_ACTION_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = changed_low_level)  or else
				(a_value = deleted_low_level)  or else
				(a_value = new_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_changed is
		do
			value := changed_low_level
		end

	set_deleted is
		do
			value := deleted_low_level
		end

	set_new is
		do
			value := new_low_level
		end

feature {ANY} -- Queries
	is_changed: BOOLEAN is
		do
			Result := (value=changed_low_level)
		end

	is_deleted: BOOLEAN is
		do
			Result := (value=deleted_low_level)
		end

	is_new: BOOLEAN is
		do
			Result := (value=new_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	changed_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_SETTING_ACTION_CHANGED"
 			}"
 		end

	deleted_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_SETTING_ACTION_DELETED"
 			}"
 		end

	new_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_SETTING_ACTION_NEW"
 			}"
 		end


end -- class GDK_SETTING_ACTION_ENUM
