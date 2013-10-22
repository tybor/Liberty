-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GDBUS_INTERFACE_SKELETON_FLAGS_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = handle_method_invocations_in_thread_low_level)  or else
				(a_value = none_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_handle_method_invocations_in_thread is
		do
			value := handle_method_invocations_in_thread_low_level
		end

	set_none is
		do
			value := none_low_level
		end

feature {ANY} -- Queries
	is_handle_method_invocations_in_thread: BOOLEAN is
		do
			Result := (value=handle_method_invocations_in_thread_low_level)
		end

	is_none: BOOLEAN is
		do
			Result := (value=none_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	handle_method_invocations_in_thread_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DBUS_INTERFACE_SKELETON_FLAGS_HANDLE_METHOD_INVOCATIONS_IN_THREAD"
 			}"
 		end

	none_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DBUS_INTERFACE_SKELETON_FLAGS_NONE"
 			}"
 		end


end -- class GDBUS_INTERFACE_SKELETON_FLAGS_ENUM
