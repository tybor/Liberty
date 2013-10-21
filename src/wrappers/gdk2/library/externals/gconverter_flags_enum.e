-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GCONVERTER_FLAGS_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = flush_low_level)  or else
				(a_value = input_at_end_low_level)  or else
				(a_value = no_flags_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_flush is
		do
			value := flush_low_level
		end

	set_input_at_end is
		do
			value := input_at_end_low_level
		end

	set_no_flags is
		do
			value := no_flags_low_level
		end

feature {ANY} -- Queries
	is_flush: BOOLEAN is
		do
			Result := (value=flush_low_level)
		end

	is_input_at_end: BOOLEAN is
		do
			Result := (value=input_at_end_low_level)
		end

	is_no_flags: BOOLEAN is
		do
			Result := (value=no_flags_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	flush_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_CONVERTER_FLUSH"
 			}"
 		end

	input_at_end_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_CONVERTER_INPUT_AT_END"
 			}"
 		end

	no_flags_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_CONVERTER_NO_FLAGS"
 			}"
 		end


end -- class GCONVERTER_FLAGS_ENUM
