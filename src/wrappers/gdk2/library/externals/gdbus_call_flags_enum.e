-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GDBUS_CALL_FLAGS_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = auto_start_low_level)  or else
				(a_value = ne_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_auto_start is
		do
			value := auto_start_low_level
		end

	set_ne is
		do
			value := ne_low_level
		end

feature {ANY} -- Queries
	is_auto_start: BOOLEAN is
		do
			Result := (value=auto_start_low_level)
		end

	is_ne: BOOLEAN is
		do
			Result := (value=ne_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	auto_start_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DBUS_CALL_FLAGS_NO_AUTO_START"
 			}"
 		end

	ne_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DBUS_CALL_FLAGS_NONE"
 			}"
 		end


end -- class GDBUS_CALL_FLAGS_ENUM
