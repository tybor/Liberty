-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GSOCKET_PROTOCOL_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = default_external_low_level)  or else
				(a_value = sctp_low_level)  or else
				(a_value = tcp_low_level)  or else
				(a_value = udp_low_level)  or else
				(a_value = unknown_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_default_external is
		do
			value := default_external_low_level
		end

	set_sctp is
		do
			value := sctp_low_level
		end

	set_tcp is
		do
			value := tcp_low_level
		end

	set_udp is
		do
			value := udp_low_level
		end

	set_unknown is
		do
			value := unknown_low_level
		end

feature {ANY} -- Queries
	is_default_external: BOOLEAN is
		do
			Result := (value=default_external_low_level)
		end

	is_sctp: BOOLEAN is
		do
			Result := (value=sctp_low_level)
		end

	is_tcp: BOOLEAN is
		do
			Result := (value=tcp_low_level)
		end

	is_udp: BOOLEAN is
		do
			Result := (value=udp_low_level)
		end

	is_unknown: BOOLEAN is
		do
			Result := (value=unknown_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	default_external_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_SOCKET_PROTOCOL_DEFAULT"
 			}"
 		end

	sctp_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_SOCKET_PROTOCOL_SCTP"
 			}"
 		end

	tcp_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_SOCKET_PROTOCOL_TCP"
 			}"
 		end

	udp_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_SOCKET_PROTOCOL_UDP"
 			}"
 		end

	unknown_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_SOCKET_PROTOCOL_UNKNOWN"
 			}"
 		end


end -- class GSOCKET_PROTOCOL_ENUM
