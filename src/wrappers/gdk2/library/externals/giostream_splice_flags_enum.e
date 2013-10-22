-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GIOSTREAM_SPLICE_FLAGS_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = close_stream1_low_level)  or else
				(a_value = close_stream2_low_level)  or else
				(a_value = none_low_level)  or else
				(a_value = wait_for_both_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_close_stream1 is
		do
			value := close_stream1_low_level
		end

	set_close_stream2 is
		do
			value := close_stream2_low_level
		end

	set_none is
		do
			value := none_low_level
		end

	set_wait_for_both is
		do
			value := wait_for_both_low_level
		end

feature {ANY} -- Queries
	is_close_stream1: BOOLEAN is
		do
			Result := (value=close_stream1_low_level)
		end

	is_close_stream2: BOOLEAN is
		do
			Result := (value=close_stream2_low_level)
		end

	is_none: BOOLEAN is
		do
			Result := (value=none_low_level)
		end

	is_wait_for_both: BOOLEAN is
		do
			Result := (value=wait_for_both_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	close_stream1_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_IO_STREAM_SPLICE_CLOSE_STREAM1"
 			}"
 		end

	close_stream2_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_IO_STREAM_SPLICE_CLOSE_STREAM2"
 			}"
 		end

	none_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_IO_STREAM_SPLICE_NONE"
 			}"
 		end

	wait_for_both_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_IO_STREAM_SPLICE_WAIT_FOR_BOTH"
 			}"
 		end


end -- class GIOSTREAM_SPLICE_FLAGS_ENUM
