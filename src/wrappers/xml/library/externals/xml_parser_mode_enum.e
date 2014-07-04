-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class XML_PARSER_MODE_ENUM

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
            Result := ((a_value = dom_low_level)  or else
				(a_value = push_dom_low_level)  or else
				(a_value = push_sax_low_level)  or else
				(a_value = reader_low_level)  or else
				(a_value = sax_low_level)  or else
				(a_value = unknown_low_level) )
		end

feature {ANY} -- Setters
	default_create,
<<<<<<< HEAD
	set_dom is
=======
	set_xml_parse_dom
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dom_low_level
		end

<<<<<<< HEAD
	set_push_dom is
=======
	set_xml_parse_push_dom
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := push_dom_low_level
		end

<<<<<<< HEAD
	set_push_sax is
=======
	set_xml_parse_push_sax
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := push_sax_low_level
		end

<<<<<<< HEAD
	set_reader is
=======
	set_xml_parse_reader
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := reader_low_level
		end

<<<<<<< HEAD
	set_sax is
=======
	set_xml_parse_sax
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := sax_low_level
		end

<<<<<<< HEAD
	set_unknown is
=======
	set_xml_parse_unknown
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := unknown_low_level
		end

<<<<<<< HEAD
feature {ANY} -- Queries
	is_dom: BOOLEAN is
=======
feature -- Queries
	is_xml_parse_dom: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dom_low_level)
		end

<<<<<<< HEAD
	is_push_dom: BOOLEAN is
=======
	is_xml_parse_push_dom: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=push_dom_low_level)
		end

<<<<<<< HEAD
	is_push_sax: BOOLEAN is
=======
	is_xml_parse_push_sax: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=push_sax_low_level)
		end

<<<<<<< HEAD
	is_reader: BOOLEAN is
=======
	is_xml_parse_reader: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=reader_low_level)
		end

<<<<<<< HEAD
	is_sax: BOOLEAN is
=======
	is_xml_parse_sax: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=sax_low_level)
		end

<<<<<<< HEAD
	is_unknown: BOOLEAN is
=======
	is_xml_parse_unknown: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=unknown_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
<<<<<<< HEAD
	dom_low_level: INTEGER is
=======
	xml_parse_dom_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_PARSE_DOM"
 			}"
 		end

<<<<<<< HEAD
	push_dom_low_level: INTEGER is
=======
	xml_parse_push_dom_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_PARSE_PUSH_DOM"
 			}"
 		end

<<<<<<< HEAD
	push_sax_low_level: INTEGER is
=======
	xml_parse_push_sax_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_PARSE_PUSH_SAX"
 			}"
 		end

<<<<<<< HEAD
	reader_low_level: INTEGER is
=======
	xml_parse_reader_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_PARSE_READER"
 			}"
 		end

<<<<<<< HEAD
	sax_low_level: INTEGER is
=======
	xml_parse_sax_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_PARSE_SAX"
 			}"
 		end

<<<<<<< HEAD
	unknown_low_level: INTEGER is
=======
	xml_parse_unknown_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_PARSE_UNKNOWN"
 			}"
 		end


end -- class XML_PARSER_MODE_ENUM
