-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GDBUS_MESSAGE_HEADER_FIELD_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = destination_low_level)  or else
				(a_value = error_name_low_level)  or else
				(a_value = interface_low_level)  or else
				(a_value = invalid_low_level)  or else
				(a_value = member_low_level)  or else
				(a_value = num_unix_fds_low_level)  or else
				(a_value = path_low_level)  or else
				(a_value = reply_serial_low_level)  or else
				(a_value = sender_low_level)  or else
				(a_value = signature_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_destination is
		do
			value := destination_low_level
		end

	set_error_name is
		do
			value := error_name_low_level
		end

	set_interface is
		do
			value := interface_low_level
		end

	set_invalid is
		do
			value := invalid_low_level
		end

	set_member is
		do
			value := member_low_level
		end

	set_num_unix_fds is
		do
			value := num_unix_fds_low_level
		end

	set_path is
		do
			value := path_low_level
		end

	set_reply_serial is
		do
			value := reply_serial_low_level
		end

	set_sender is
		do
			value := sender_low_level
		end

	set_signature is
		do
			value := signature_low_level
		end

feature {ANY} -- Queries
	is_destination: BOOLEAN is
		do
			Result := (value=destination_low_level)
		end

	is_error_name: BOOLEAN is
		do
			Result := (value=error_name_low_level)
		end

	is_interface: BOOLEAN is
		do
			Result := (value=interface_low_level)
		end

	is_invalid: BOOLEAN is
		do
			Result := (value=invalid_low_level)
		end

	is_member: BOOLEAN is
		do
			Result := (value=member_low_level)
		end

	is_num_unix_fds: BOOLEAN is
		do
			Result := (value=num_unix_fds_low_level)
		end

	is_path: BOOLEAN is
		do
			Result := (value=path_low_level)
		end

	is_reply_serial: BOOLEAN is
		do
			Result := (value=reply_serial_low_level)
		end

	is_sender: BOOLEAN is
		do
			Result := (value=sender_low_level)
		end

	is_signature: BOOLEAN is
		do
			Result := (value=signature_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	destination_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DBUS_MESSAGE_HEADER_FIELD_DESTINATION"
 			}"
 		end

	error_name_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DBUS_MESSAGE_HEADER_FIELD_ERROR_NAME"
 			}"
 		end

	interface_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DBUS_MESSAGE_HEADER_FIELD_INTERFACE"
 			}"
 		end

	invalid_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DBUS_MESSAGE_HEADER_FIELD_INVALID"
 			}"
 		end

	member_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DBUS_MESSAGE_HEADER_FIELD_MEMBER"
 			}"
 		end

	num_unix_fds_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DBUS_MESSAGE_HEADER_FIELD_NUM_UNIX_FDS"
 			}"
 		end

	path_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DBUS_MESSAGE_HEADER_FIELD_PATH"
 			}"
 		end

	reply_serial_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DBUS_MESSAGE_HEADER_FIELD_REPLY_SERIAL"
 			}"
 		end

	sender_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DBUS_MESSAGE_HEADER_FIELD_SENDER"
 			}"
 		end

	signature_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DBUS_MESSAGE_HEADER_FIELD_SIGNATURE"
 			}"
 		end


end -- class GDBUS_MESSAGE_HEADER_FIELD_ENUM
