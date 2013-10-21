-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GSOCKET_TYPE_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = datagram_low_level)  or else
				(a_value = invalid_low_level)  or else
				(a_value = seqpacket_low_level)  or else
				(a_value = stream_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_datagram is
		do
			value := datagram_low_level
		end

	set_invalid is
		do
			value := invalid_low_level
		end

	set_seqpacket is
		do
			value := seqpacket_low_level
		end

	set_stream is
		do
			value := stream_low_level
		end

feature {ANY} -- Queries
	is_datagram: BOOLEAN is
		do
			Result := (value=datagram_low_level)
		end

	is_invalid: BOOLEAN is
		do
			Result := (value=invalid_low_level)
		end

	is_seqpacket: BOOLEAN is
		do
			Result := (value=seqpacket_low_level)
		end

	is_stream: BOOLEAN is
		do
			Result := (value=stream_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	datagram_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_SOCKET_TYPE_DATAGRAM"
 			}"
 		end

	invalid_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_SOCKET_TYPE_INVALID"
 			}"
 		end

	seqpacket_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_SOCKET_TYPE_SEQPACKET"
 			}"
 		end

	stream_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_SOCKET_TYPE_STREAM"
 			}"
 		end


end -- class GSOCKET_TYPE_ENUM
