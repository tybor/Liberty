-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GSOCKET_CLIENT_EVENT_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = complete_low_level)  or else
				(a_value = connected_low_level)  or else
				(a_value = connecting_low_level)  or else
				(a_value = proxy_negotiated_low_level)  or else
				(a_value = proxy_negotiating_low_level)  or else
				(a_value = resolved_low_level)  or else
				(a_value = resolving_low_level)  or else
				(a_value = tls_handshaked_low_level)  or else
				(a_value = tls_handshaking_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_complete is
		do
			value := complete_low_level
		end

	set_connected is
		do
			value := connected_low_level
		end

	set_connecting is
		do
			value := connecting_low_level
		end

	set_proxy_negotiated is
		do
			value := proxy_negotiated_low_level
		end

	set_proxy_negotiating is
		do
			value := proxy_negotiating_low_level
		end

	set_resolved is
		do
			value := resolved_low_level
		end

	set_resolving is
		do
			value := resolving_low_level
		end

	set_tls_handshaked is
		do
			value := tls_handshaked_low_level
		end

	set_tls_handshaking is
		do
			value := tls_handshaking_low_level
		end

feature {ANY} -- Queries
	is_complete: BOOLEAN is
		do
			Result := (value=complete_low_level)
		end

	is_connected: BOOLEAN is
		do
			Result := (value=connected_low_level)
		end

	is_connecting: BOOLEAN is
		do
			Result := (value=connecting_low_level)
		end

	is_proxy_negotiated: BOOLEAN is
		do
			Result := (value=proxy_negotiated_low_level)
		end

	is_proxy_negotiating: BOOLEAN is
		do
			Result := (value=proxy_negotiating_low_level)
		end

	is_resolved: BOOLEAN is
		do
			Result := (value=resolved_low_level)
		end

	is_resolving: BOOLEAN is
		do
			Result := (value=resolving_low_level)
		end

	is_tls_handshaked: BOOLEAN is
		do
			Result := (value=tls_handshaked_low_level)
		end

	is_tls_handshaking: BOOLEAN is
		do
			Result := (value=tls_handshaking_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	complete_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_SOCKET_CLIENT_COMPLETE"
 			}"
 		end

	connected_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_SOCKET_CLIENT_CONNECTED"
 			}"
 		end

	connecting_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_SOCKET_CLIENT_CONNECTING"
 			}"
 		end

	proxy_negotiated_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_SOCKET_CLIENT_PROXY_NEGOTIATED"
 			}"
 		end

	proxy_negotiating_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_SOCKET_CLIENT_PROXY_NEGOTIATING"
 			}"
 		end

	resolved_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_SOCKET_CLIENT_RESOLVED"
 			}"
 		end

	resolving_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_SOCKET_CLIENT_RESOLVING"
 			}"
 		end

	tls_handshaked_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_SOCKET_CLIENT_TLS_HANDSHAKED"
 			}"
 		end

	tls_handshaking_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_SOCKET_CLIENT_TLS_HANDSHAKING"
 			}"
 		end


end -- class GSOCKET_CLIENT_EVENT_ENUM
