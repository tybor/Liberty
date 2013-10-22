-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GDRIVE_START_FLAGS_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = g_drive_start_none_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_g_drive_start_none is
		do
			value := g_drive_start_none_low_level
		end

feature {ANY} -- Queries
	is_g_drive_start_none: BOOLEAN is
		do
			Result := (value=g_drive_start_none_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	g_drive_start_none_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DRIVE_START_NONE"
 			}"
 		end


end -- class GDRIVE_START_FLAGS_ENUM
