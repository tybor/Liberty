-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GDBUS_MESSAGE_TYPE_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = error_low_level)  or else
				(a_value = invalid_low_level)  or else
				(a_value = method_call_low_level)  or else
				(a_value = method_return_low_level)  or else
				(a_value = signal_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_error is
		do
			value := error_low_level
		end

	set_invalid is
		do
			value := invalid_low_level
		end

	set_method_call is
		do
			value := method_call_low_level
		end

	set_method_return is
		do
			value := method_return_low_level
		end

	set_signal is
		do
			value := signal_low_level
		end

feature {ANY} -- Queries
	is_error: BOOLEAN is
		do
			Result := (value=error_low_level)
		end

	is_invalid: BOOLEAN is
		do
			Result := (value=invalid_low_level)
		end

	is_method_call: BOOLEAN is
		do
			Result := (value=method_call_low_level)
		end

	is_method_return: BOOLEAN is
		do
			Result := (value=method_return_low_level)
		end

	is_signal: BOOLEAN is
		do
			Result := (value=signal_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	error_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DBUS_MESSAGE_TYPE_ERROR"
 			}"
 		end

	invalid_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DBUS_MESSAGE_TYPE_INVALID"
 			}"
 		end

	method_call_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DBUS_MESSAGE_TYPE_METHOD_CALL"
 			}"
 		end

	method_return_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DBUS_MESSAGE_TYPE_METHOD_RETURN"
 			}"
 		end

	signal_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DBUS_MESSAGE_TYPE_SIGNAL"
 			}"
 		end


end -- class GDBUS_MESSAGE_TYPE_ENUM
