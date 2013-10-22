-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class XML_CHAR_ENCODING_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = a_2022_jp_low_level)  or else
				(a_value = a_8859_1_low_level)  or else
				(a_value = a_8859_2_low_level)  or else
				(a_value = a_8859_3_low_level)  or else
				(a_value = a_8859_4_low_level)  or else
				(a_value = a_8859_5_low_level)  or else
				(a_value = a_8859_6_low_level)  or else
				(a_value = a_8859_7_low_level)  or else
				(a_value = a_8859_8_low_level)  or else
				(a_value = a_8859_9_low_level)  or else
				(a_value = ascii_low_level)  or else
				(a_value = ebcdic_low_level)  or else
				(a_value = error_low_level)  or else
				(a_value = euc_jp_low_level)  or else
				(a_value = none_low_level)  or else
				(a_value = shift_jis_low_level)  or else
				(a_value = ucs2_low_level)  or else
				(a_value = ucs4_2143_low_level)  or else
				(a_value = ucs4_3412_low_level)  or else
				(a_value = ucs4be_low_level)  or else
				(a_value = ucs4le_low_level)  or else
				(a_value = utf16be_low_level)  or else
				(a_value = utf16le_low_level)  or else
				(a_value = utf8_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_a_2022_jp is
		do
			value := a_2022_jp_low_level
		end

	set_a_8859_1 is
		do
			value := a_8859_1_low_level
		end

	set_a_8859_2 is
		do
			value := a_8859_2_low_level
		end

	set_a_8859_3 is
		do
			value := a_8859_3_low_level
		end

	set_a_8859_4 is
		do
			value := a_8859_4_low_level
		end

	set_a_8859_5 is
		do
			value := a_8859_5_low_level
		end

	set_a_8859_6 is
		do
			value := a_8859_6_low_level
		end

	set_a_8859_7 is
		do
			value := a_8859_7_low_level
		end

	set_a_8859_8 is
		do
			value := a_8859_8_low_level
		end

	set_a_8859_9 is
		do
			value := a_8859_9_low_level
		end

	set_ascii is
		do
			value := ascii_low_level
		end

	set_ebcdic is
		do
			value := ebcdic_low_level
		end

	set_error is
		do
			value := error_low_level
		end

	set_euc_jp is
		do
			value := euc_jp_low_level
		end

	set_none is
		do
			value := none_low_level
		end

	set_shift_jis is
		do
			value := shift_jis_low_level
		end

	set_ucs2 is
		do
			value := ucs2_low_level
		end

	set_ucs4_2143 is
		do
			value := ucs4_2143_low_level
		end

	set_ucs4_3412 is
		do
			value := ucs4_3412_low_level
		end

	set_ucs4be is
		do
			value := ucs4be_low_level
		end

	set_ucs4le is
		do
			value := ucs4le_low_level
		end

	set_utf16be is
		do
			value := utf16be_low_level
		end

	set_utf16le is
		do
			value := utf16le_low_level
		end

	set_utf8 is
		do
			value := utf8_low_level
		end

feature {ANY} -- Queries
	is_a_2022_jp: BOOLEAN is
		do
			Result := (value=a_2022_jp_low_level)
		end

	is_a_8859_1: BOOLEAN is
		do
			Result := (value=a_8859_1_low_level)
		end

	is_a_8859_2: BOOLEAN is
		do
			Result := (value=a_8859_2_low_level)
		end

	is_a_8859_3: BOOLEAN is
		do
			Result := (value=a_8859_3_low_level)
		end

	is_a_8859_4: BOOLEAN is
		do
			Result := (value=a_8859_4_low_level)
		end

	is_a_8859_5: BOOLEAN is
		do
			Result := (value=a_8859_5_low_level)
		end

	is_a_8859_6: BOOLEAN is
		do
			Result := (value=a_8859_6_low_level)
		end

	is_a_8859_7: BOOLEAN is
		do
			Result := (value=a_8859_7_low_level)
		end

	is_a_8859_8: BOOLEAN is
		do
			Result := (value=a_8859_8_low_level)
		end

	is_a_8859_9: BOOLEAN is
		do
			Result := (value=a_8859_9_low_level)
		end

	is_ascii: BOOLEAN is
		do
			Result := (value=ascii_low_level)
		end

	is_ebcdic: BOOLEAN is
		do
			Result := (value=ebcdic_low_level)
		end

	is_error: BOOLEAN is
		do
			Result := (value=error_low_level)
		end

	is_euc_jp: BOOLEAN is
		do
			Result := (value=euc_jp_low_level)
		end

	is_none: BOOLEAN is
		do
			Result := (value=none_low_level)
		end

	is_shift_jis: BOOLEAN is
		do
			Result := (value=shift_jis_low_level)
		end

	is_ucs2: BOOLEAN is
		do
			Result := (value=ucs2_low_level)
		end

	is_ucs4_2143: BOOLEAN is
		do
			Result := (value=ucs4_2143_low_level)
		end

	is_ucs4_3412: BOOLEAN is
		do
			Result := (value=ucs4_3412_low_level)
		end

	is_ucs4be: BOOLEAN is
		do
			Result := (value=ucs4be_low_level)
		end

	is_ucs4le: BOOLEAN is
		do
			Result := (value=ucs4le_low_level)
		end

	is_utf16be: BOOLEAN is
		do
			Result := (value=utf16be_low_level)
		end

	is_utf16le: BOOLEAN is
		do
			Result := (value=utf16le_low_level)
		end

	is_utf8: BOOLEAN is
		do
			Result := (value=utf8_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	a_2022_jp_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_2022_JP"
 			}"
 		end

	a_8859_1_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_8859_1"
 			}"
 		end

	a_8859_2_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_8859_2"
 			}"
 		end

	a_8859_3_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_8859_3"
 			}"
 		end

	a_8859_4_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_8859_4"
 			}"
 		end

	a_8859_5_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_8859_5"
 			}"
 		end

	a_8859_6_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_8859_6"
 			}"
 		end

	a_8859_7_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_8859_7"
 			}"
 		end

	a_8859_8_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_8859_8"
 			}"
 		end

	a_8859_9_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_8859_9"
 			}"
 		end

	ascii_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_ASCII"
 			}"
 		end

	ebcdic_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_EBCDIC"
 			}"
 		end

	error_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_ERROR"
 			}"
 		end

	euc_jp_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_EUC_JP"
 			}"
 		end

	none_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_NONE"
 			}"
 		end

	shift_jis_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_SHIFT_JIS"
 			}"
 		end

	ucs2_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_UCS2"
 			}"
 		end

	ucs4_2143_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_UCS4_2143"
 			}"
 		end

	ucs4_3412_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_UCS4_3412"
 			}"
 		end

	ucs4be_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_UCS4BE"
 			}"
 		end

	ucs4le_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_UCS4LE"
 			}"
 		end

	utf16be_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_UTF16BE"
 			}"
 		end

	utf16le_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_UTF16LE"
 			}"
 		end

	utf8_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_UTF8"
 			}"
 		end


end -- class XML_CHAR_ENCODING_ENUM
