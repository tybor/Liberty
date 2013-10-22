-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GDBUS_PROXY_FLAGS_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = do_not_auto_start_low_level)  or else
				(a_value = do_not_connect_signals_low_level)  or else
				(a_value = do_not_load_properties_low_level)  or else
				(a_value = get_invalidated_properties_low_level)  or else
				(a_value = none_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_do_not_auto_start is
		do
			value := do_not_auto_start_low_level
		end

	set_do_not_connect_signals is
		do
			value := do_not_connect_signals_low_level
		end

	set_do_not_load_properties is
		do
			value := do_not_load_properties_low_level
		end

	set_get_invalidated_properties is
		do
			value := get_invalidated_properties_low_level
		end

	set_none is
		do
			value := none_low_level
		end

feature {ANY} -- Queries
	is_do_not_auto_start: BOOLEAN is
		do
			Result := (value=do_not_auto_start_low_level)
		end

	is_do_not_connect_signals: BOOLEAN is
		do
			Result := (value=do_not_connect_signals_low_level)
		end

	is_do_not_load_properties: BOOLEAN is
		do
			Result := (value=do_not_load_properties_low_level)
		end

	is_get_invalidated_properties: BOOLEAN is
		do
			Result := (value=get_invalidated_properties_low_level)
		end

	is_none: BOOLEAN is
		do
			Result := (value=none_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	do_not_auto_start_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DBUS_PROXY_FLAGS_DO_NOT_AUTO_START"
 			}"
 		end

	do_not_connect_signals_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DBUS_PROXY_FLAGS_DO_NOT_CONNECT_SIGNALS"
 			}"
 		end

	do_not_load_properties_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DBUS_PROXY_FLAGS_DO_NOT_LOAD_PROPERTIES"
 			}"
 		end

	get_invalidated_properties_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DBUS_PROXY_FLAGS_GET_INVALIDATED_PROPERTIES"
 			}"
 		end

	none_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DBUS_PROXY_FLAGS_NONE"
 			}"
 		end


end -- class GDBUS_PROXY_FLAGS_ENUM
