-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GMARKUP_PARSE_FLAGS_ENUM

insert ENUM

create {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN
        do
            Result := (a_value & (g_markup_do_not_use_this_unsupported_flag_low_level | 
				g_markup_treat_cdata_as_text_low_level)).to_boolean
		end

feature {ANY} -- Setters
	default_create,
	set_g_markup_do_not_use_this_unsupported_flag
		do
			value := value.bit_or(g_markup_do_not_use_this_unsupported_flag_low_level)
		end

	unset_g_markup_do_not_use_this_unsupported_flag
		do
			value := value.bit_xor(g_markup_do_not_use_this_unsupported_flag_low_level)
		end

	set_g_markup_treat_cdata_as_text
		do
			value := value.bit_or(g_markup_treat_cdata_as_text_low_level)
		end

	unset_g_markup_treat_cdata_as_text
		do
			value := value.bit_xor(g_markup_treat_cdata_as_text_low_level)
		end

feature {ANY} -- Queries
	is_g_markup_do_not_use_this_unsupported_flag: BOOLEAN
		do
			Result := (value=g_markup_do_not_use_this_unsupported_flag_low_level)
		end

	is_g_markup_treat_cdata_as_text: BOOLEAN
		do
			Result := (value=g_markup_treat_cdata_as_text_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	g_markup_do_not_use_this_unsupported_flag_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "G_MARKUP_DO_NOT_USE_THIS_UNSUPPORTED_FLAG"
 			}"
 		end

	g_markup_treat_cdata_as_text_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "G_MARKUP_TREAT_CDATA_AS_TEXT"
 			}"
 		end


end -- class GMARKUP_PARSE_FLAGS_ENUM
