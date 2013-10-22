-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GSOCKET_MSG_FLAGS_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = dontroute_low_level)  or else
				(a_value = none_low_level)  or else
				(a_value = oob_low_level)  or else
				(a_value = peek_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_dontroute is
		do
			value := dontroute_low_level
		end

	set_none is
		do
			value := none_low_level
		end

	set_oob is
		do
			value := oob_low_level
		end

	set_peek is
		do
			value := peek_low_level
		end

feature {ANY} -- Queries
	is_dontroute: BOOLEAN is
		do
			Result := (value=dontroute_low_level)
		end

	is_none: BOOLEAN is
		do
			Result := (value=none_low_level)
		end

	is_oob: BOOLEAN is
		do
			Result := (value=oob_low_level)
		end

	is_peek: BOOLEAN is
		do
			Result := (value=peek_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	dontroute_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_SOCKET_MSG_DONTROUTE"
 			}"
 		end

	none_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_SOCKET_MSG_NONE"
 			}"
 		end

	oob_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_SOCKET_MSG_OOB"
 			}"
 		end

	peek_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_SOCKET_MSG_PEEK"
 			}"
 		end


end -- class GSOCKET_MSG_FLAGS_ENUM
