-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GMOUNT_UNMOUNT_FLAGS_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = force_low_level)  or else
				(a_value = none_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_force is
		do
			value := force_low_level
		end

	set_none is
		do
			value := none_low_level
		end

feature {ANY} -- Queries
	is_force: BOOLEAN is
		do
			Result := (value=force_low_level)
		end

	is_none: BOOLEAN is
		do
			Result := (value=none_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	force_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_MOUNT_UNMOUNT_FORCE"
 			}"
 		end

	none_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_MOUNT_UNMOUNT_NONE"
 			}"
 		end


end -- class GMOUNT_UNMOUNT_FLAGS_ENUM
