-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class XML_ELEMENT_CONTENT_TYPE_ENUM

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
            Result := ((a_value = element_low_level)  or else
				(a_value = or_external_low_level)  or else
				(a_value = pcdata_low_level)  or else
				(a_value = seq_low_level) )
		end

feature {ANY} -- Setters
	default_create,
<<<<<<< HEAD
	set_element is
=======
	set_xml_element_content_element
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := element_low_level
		end

<<<<<<< HEAD
	set_or_external is
=======
	set_xml_element_content_or
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := or_external_low_level
		end

<<<<<<< HEAD
	set_pcdata is
=======
	set_xml_element_content_pcdata
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := pcdata_low_level
		end

<<<<<<< HEAD
	set_seq is
=======
	set_xml_element_content_seq
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := seq_low_level
		end

<<<<<<< HEAD
feature {ANY} -- Queries
	is_element: BOOLEAN is
=======
feature -- Queries
	is_xml_element_content_element: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=element_low_level)
		end

<<<<<<< HEAD
	is_or_external: BOOLEAN is
=======
	is_xml_element_content_or: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=or_external_low_level)
		end

<<<<<<< HEAD
	is_pcdata: BOOLEAN is
=======
	is_xml_element_content_pcdata: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=pcdata_low_level)
		end

<<<<<<< HEAD
	is_seq: BOOLEAN is
=======
	is_xml_element_content_seq: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=seq_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
<<<<<<< HEAD
	element_low_level: INTEGER is
=======
	xml_element_content_element_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ELEMENT_CONTENT_ELEMENT"
 			}"
 		end

<<<<<<< HEAD
	or_external_low_level: INTEGER is
=======
	xml_element_content_or_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ELEMENT_CONTENT_OR"
 			}"
 		end

<<<<<<< HEAD
	pcdata_low_level: INTEGER is
=======
	xml_element_content_pcdata_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ELEMENT_CONTENT_PCDATA"
 			}"
 		end

<<<<<<< HEAD
	seq_low_level: INTEGER is
=======
	xml_element_content_seq_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ELEMENT_CONTENT_SEQ"
 			}"
 		end


end -- class XML_ELEMENT_CONTENT_TYPE_ENUM
