-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class XML_CHAR_ENCODING_ENUM

insert ENUM

<<<<<<< HEAD
creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
=======
create default_create
feature -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
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
<<<<<<< HEAD
	set_a_2022_jp is
=======
	set_xml_char_encoding_2022_jp
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := a_2022_jp_low_level
		end

<<<<<<< HEAD
	set_a_8859_1 is
=======
	set_xml_char_encoding_8859_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := a_8859_1_low_level
		end

<<<<<<< HEAD
	set_a_8859_2 is
=======
	set_xml_char_encoding_8859_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := a_8859_2_low_level
		end

<<<<<<< HEAD
	set_a_8859_3 is
=======
	set_xml_char_encoding_8859_3
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := a_8859_3_low_level
		end

<<<<<<< HEAD
	set_a_8859_4 is
=======
	set_xml_char_encoding_8859_4
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := a_8859_4_low_level
		end

<<<<<<< HEAD
	set_a_8859_5 is
=======
	set_xml_char_encoding_8859_5
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := a_8859_5_low_level
		end

<<<<<<< HEAD
	set_a_8859_6 is
=======
	set_xml_char_encoding_8859_6
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := a_8859_6_low_level
		end

<<<<<<< HEAD
	set_a_8859_7 is
=======
	set_xml_char_encoding_8859_7
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := a_8859_7_low_level
		end

<<<<<<< HEAD
	set_a_8859_8 is
=======
	set_xml_char_encoding_8859_8
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := a_8859_8_low_level
		end

<<<<<<< HEAD
	set_a_8859_9 is
=======
	set_xml_char_encoding_8859_9
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := a_8859_9_low_level
		end

<<<<<<< HEAD
	set_ascii is
=======
	set_xml_char_encoding_ascii
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := ascii_low_level
		end

<<<<<<< HEAD
	set_ebcdic is
=======
	set_xml_char_encoding_ebcdic
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := ebcdic_low_level
		end

<<<<<<< HEAD
	set_error is
=======
	set_xml_char_encoding_error
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := error_low_level
		end

<<<<<<< HEAD
	set_euc_jp is
=======
	set_xml_char_encoding_euc_jp
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := euc_jp_low_level
		end

<<<<<<< HEAD
	set_none is
=======
	set_xml_char_encoding_none
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := none_low_level
		end

<<<<<<< HEAD
	set_shift_jis is
=======
	set_xml_char_encoding_shift_jis
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := shift_jis_low_level
		end

<<<<<<< HEAD
	set_ucs2 is
=======
	set_xml_char_encoding_ucs2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := ucs2_low_level
		end

<<<<<<< HEAD
	set_ucs4_2143 is
=======
	set_xml_char_encoding_ucs4_2143
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := ucs4_2143_low_level
		end

<<<<<<< HEAD
	set_ucs4_3412 is
=======
	set_xml_char_encoding_ucs4_3412
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := ucs4_3412_low_level
		end

<<<<<<< HEAD
	set_ucs4be is
=======
	set_xml_char_encoding_ucs4be
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := ucs4be_low_level
		end

<<<<<<< HEAD
	set_ucs4le is
=======
	set_xml_char_encoding_ucs4le
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := ucs4le_low_level
		end

<<<<<<< HEAD
	set_utf16be is
=======
	set_xml_char_encoding_utf16be
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := utf16be_low_level
		end

<<<<<<< HEAD
	set_utf16le is
=======
	set_xml_char_encoding_utf16le
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := utf16le_low_level
		end

<<<<<<< HEAD
	set_utf8 is
=======
	set_xml_char_encoding_utf8
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := utf8_low_level
		end

<<<<<<< HEAD
feature {ANY} -- Queries
	is_a_2022_jp: BOOLEAN is
=======
feature -- Queries
	is_xml_char_encoding_2022_jp: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=a_2022_jp_low_level)
		end

<<<<<<< HEAD
	is_a_8859_1: BOOLEAN is
=======
	is_xml_char_encoding_8859_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=a_8859_1_low_level)
		end

<<<<<<< HEAD
	is_a_8859_2: BOOLEAN is
=======
	is_xml_char_encoding_8859_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=a_8859_2_low_level)
		end

<<<<<<< HEAD
	is_a_8859_3: BOOLEAN is
=======
	is_xml_char_encoding_8859_3: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=a_8859_3_low_level)
		end

<<<<<<< HEAD
	is_a_8859_4: BOOLEAN is
=======
	is_xml_char_encoding_8859_4: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=a_8859_4_low_level)
		end

<<<<<<< HEAD
	is_a_8859_5: BOOLEAN is
=======
	is_xml_char_encoding_8859_5: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=a_8859_5_low_level)
		end

<<<<<<< HEAD
	is_a_8859_6: BOOLEAN is
=======
	is_xml_char_encoding_8859_6: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=a_8859_6_low_level)
		end

<<<<<<< HEAD
	is_a_8859_7: BOOLEAN is
=======
	is_xml_char_encoding_8859_7: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=a_8859_7_low_level)
		end

<<<<<<< HEAD
	is_a_8859_8: BOOLEAN is
=======
	is_xml_char_encoding_8859_8: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=a_8859_8_low_level)
		end

<<<<<<< HEAD
	is_a_8859_9: BOOLEAN is
=======
	is_xml_char_encoding_8859_9: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=a_8859_9_low_level)
		end

<<<<<<< HEAD
	is_ascii: BOOLEAN is
=======
	is_xml_char_encoding_ascii: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=ascii_low_level)
		end

<<<<<<< HEAD
	is_ebcdic: BOOLEAN is
=======
	is_xml_char_encoding_ebcdic: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=ebcdic_low_level)
		end

<<<<<<< HEAD
	is_error: BOOLEAN is
=======
	is_xml_char_encoding_error: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=error_low_level)
		end

<<<<<<< HEAD
	is_euc_jp: BOOLEAN is
=======
	is_xml_char_encoding_euc_jp: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=euc_jp_low_level)
		end

<<<<<<< HEAD
	is_none: BOOLEAN is
=======
	is_xml_char_encoding_none: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=none_low_level)
		end

<<<<<<< HEAD
	is_shift_jis: BOOLEAN is
=======
	is_xml_char_encoding_shift_jis: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=shift_jis_low_level)
		end

<<<<<<< HEAD
	is_ucs2: BOOLEAN is
=======
	is_xml_char_encoding_ucs2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=ucs2_low_level)
		end

<<<<<<< HEAD
	is_ucs4_2143: BOOLEAN is
=======
	is_xml_char_encoding_ucs4_2143: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=ucs4_2143_low_level)
		end

<<<<<<< HEAD
	is_ucs4_3412: BOOLEAN is
=======
	is_xml_char_encoding_ucs4_3412: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=ucs4_3412_low_level)
		end

<<<<<<< HEAD
	is_ucs4be: BOOLEAN is
=======
	is_xml_char_encoding_ucs4be: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=ucs4be_low_level)
		end

<<<<<<< HEAD
	is_ucs4le: BOOLEAN is
=======
	is_xml_char_encoding_ucs4le: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=ucs4le_low_level)
		end

<<<<<<< HEAD
	is_utf16be: BOOLEAN is
=======
	is_xml_char_encoding_utf16be: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=utf16be_low_level)
		end

<<<<<<< HEAD
	is_utf16le: BOOLEAN is
=======
	is_xml_char_encoding_utf16le: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=utf16le_low_level)
		end

<<<<<<< HEAD
	is_utf8: BOOLEAN is
=======
	is_xml_char_encoding_utf8: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=utf8_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
<<<<<<< HEAD
	a_2022_jp_low_level: INTEGER is
=======
	xml_char_encoding_2022_jp_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_2022_JP"
 			}"
 		end

<<<<<<< HEAD
	a_8859_1_low_level: INTEGER is
=======
	xml_char_encoding_8859_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_8859_1"
 			}"
 		end

<<<<<<< HEAD
	a_8859_2_low_level: INTEGER is
=======
	xml_char_encoding_8859_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_8859_2"
 			}"
 		end

<<<<<<< HEAD
	a_8859_3_low_level: INTEGER is
=======
	xml_char_encoding_8859_3_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_8859_3"
 			}"
 		end

<<<<<<< HEAD
	a_8859_4_low_level: INTEGER is
=======
	xml_char_encoding_8859_4_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_8859_4"
 			}"
 		end

<<<<<<< HEAD
	a_8859_5_low_level: INTEGER is
=======
	xml_char_encoding_8859_5_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_8859_5"
 			}"
 		end

<<<<<<< HEAD
	a_8859_6_low_level: INTEGER is
=======
	xml_char_encoding_8859_6_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_8859_6"
 			}"
 		end

<<<<<<< HEAD
	a_8859_7_low_level: INTEGER is
=======
	xml_char_encoding_8859_7_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_8859_7"
 			}"
 		end

<<<<<<< HEAD
	a_8859_8_low_level: INTEGER is
=======
	xml_char_encoding_8859_8_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_8859_8"
 			}"
 		end

<<<<<<< HEAD
	a_8859_9_low_level: INTEGER is
=======
	xml_char_encoding_8859_9_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_8859_9"
 			}"
 		end

<<<<<<< HEAD
	ascii_low_level: INTEGER is
=======
	xml_char_encoding_ascii_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_ASCII"
 			}"
 		end

<<<<<<< HEAD
	ebcdic_low_level: INTEGER is
=======
	xml_char_encoding_ebcdic_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_EBCDIC"
 			}"
 		end

<<<<<<< HEAD
	error_low_level: INTEGER is
=======
	xml_char_encoding_error_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_ERROR"
 			}"
 		end

<<<<<<< HEAD
	euc_jp_low_level: INTEGER is
=======
	xml_char_encoding_euc_jp_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_EUC_JP"
 			}"
 		end

<<<<<<< HEAD
	none_low_level: INTEGER is
=======
	xml_char_encoding_none_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_NONE"
 			}"
 		end

<<<<<<< HEAD
	shift_jis_low_level: INTEGER is
=======
	xml_char_encoding_shift_jis_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_SHIFT_JIS"
 			}"
 		end

<<<<<<< HEAD
	ucs2_low_level: INTEGER is
=======
	xml_char_encoding_ucs2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_UCS2"
 			}"
 		end

<<<<<<< HEAD
	ucs4_2143_low_level: INTEGER is
=======
	xml_char_encoding_ucs4_2143_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_UCS4_2143"
 			}"
 		end

<<<<<<< HEAD
	ucs4_3412_low_level: INTEGER is
=======
	xml_char_encoding_ucs4_3412_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_UCS4_3412"
 			}"
 		end

<<<<<<< HEAD
	ucs4be_low_level: INTEGER is
=======
	xml_char_encoding_ucs4be_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_UCS4BE"
 			}"
 		end

<<<<<<< HEAD
	ucs4le_low_level: INTEGER is
=======
	xml_char_encoding_ucs4le_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_UCS4LE"
 			}"
 		end

<<<<<<< HEAD
	utf16be_low_level: INTEGER is
=======
	xml_char_encoding_utf16be_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_UTF16BE"
 			}"
 		end

<<<<<<< HEAD
	utf16le_low_level: INTEGER is
=======
	xml_char_encoding_utf16le_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_UTF16LE"
 			}"
 		end

<<<<<<< HEAD
	utf8_low_level: INTEGER is
=======
	xml_char_encoding_utf8_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHAR_ENCODING_UTF8"
 			}"
 		end


end -- class XML_CHAR_ENCODING_ENUM
