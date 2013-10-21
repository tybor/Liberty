-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GDBUS_CONNECTION_FLAGS_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = authentication_allow_anonymous_low_level)  or else
				(a_value = authentication_client_low_level)  or else
				(a_value = authentication_server_low_level)  or else
				(a_value = delay_message_processing_low_level)  or else
				(a_value = message_bus_connection_low_level)  or else
				(a_value = none_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_authentication_allow_anonymous is
		do
			value := authentication_allow_anonymous_low_level
		end

	set_authentication_client is
		do
			value := authentication_client_low_level
		end

	set_authentication_server is
		do
			value := authentication_server_low_level
		end

	set_delay_message_processing is
		do
			value := delay_message_processing_low_level
		end

	set_message_bus_connection is
		do
			value := message_bus_connection_low_level
		end

	set_none is
		do
			value := none_low_level
		end

feature {ANY} -- Queries
	is_authentication_allow_anonymous: BOOLEAN is
		do
			Result := (value=authentication_allow_anonymous_low_level)
		end

	is_authentication_client: BOOLEAN is
		do
			Result := (value=authentication_client_low_level)
		end

	is_authentication_server: BOOLEAN is
		do
			Result := (value=authentication_server_low_level)
		end

	is_delay_message_processing: BOOLEAN is
		do
			Result := (value=delay_message_processing_low_level)
		end

	is_message_bus_connection: BOOLEAN is
		do
			Result := (value=message_bus_connection_low_level)
		end

	is_none: BOOLEAN is
		do
			Result := (value=none_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	authentication_allow_anonymous_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_ALLOW_ANONYMOUS"
 			}"
 		end

	authentication_client_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_CLIENT"
 			}"
 		end

	authentication_server_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_SERVER"
 			}"
 		end

	delay_message_processing_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DBUS_CONNECTION_FLAGS_DELAY_MESSAGE_PROCESSING"
 			}"
 		end

	message_bus_connection_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DBUS_CONNECTION_FLAGS_MESSAGE_BUS_CONNECTION"
 			}"
 		end

	none_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DBUS_CONNECTION_FLAGS_NONE"
 			}"
 		end


end -- class GDBUS_CONNECTION_FLAGS_ENUM
