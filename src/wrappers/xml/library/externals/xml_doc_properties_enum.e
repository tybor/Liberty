-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class XML_DOC_PROPERTIES_ENUM

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
            Result := (a_value & (dtdvalid_low_level | 
				html_low_level | 
				internal_low_level | 
				nsvalid_low_level | 
				old10_low_level | 
				userbuilt_low_level | 
				wellformed_low_level | 
				xinclude_low_level)).to_boolean
		end

feature {ANY} -- Setters
	default_create,
<<<<<<< HEAD
	set_dtdvalid is
=======
	set_xml_doc_dtdvalid
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_or(dtdvalid_low_level)
		end

<<<<<<< HEAD
	unset_dtdvalid is
=======
	unset_xml_doc_dtdvalid
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_xor(dtdvalid_low_level)
		end

<<<<<<< HEAD
	set_html is
=======
	set_xml_doc_internal
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_or(html_low_level)
		end

<<<<<<< HEAD
	unset_html is
=======
	unset_xml_doc_internal
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_xor(html_low_level)
		end

<<<<<<< HEAD
	set_internal is
=======
	set_xml_doc_nsvalid
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_or(internal_low_level)
		end

<<<<<<< HEAD
	unset_internal is
=======
	unset_xml_doc_nsvalid
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_xor(internal_low_level)
		end

<<<<<<< HEAD
	set_nsvalid is
=======
	set_xml_doc_old10
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_or(nsvalid_low_level)
		end

<<<<<<< HEAD
	unset_nsvalid is
=======
	unset_xml_doc_old10
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_xor(nsvalid_low_level)
		end

<<<<<<< HEAD
	set_old10 is
=======
	set_xml_doc_userbuilt
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_or(old10_low_level)
		end

<<<<<<< HEAD
	unset_old10 is
=======
	unset_xml_doc_userbuilt
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_xor(old10_low_level)
		end

<<<<<<< HEAD
	set_userbuilt is
=======
	set_xml_doc_wellformed
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_or(userbuilt_low_level)
		end

<<<<<<< HEAD
	unset_userbuilt is
=======
	unset_xml_doc_wellformed
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_xor(userbuilt_low_level)
		end

<<<<<<< HEAD
	set_wellformed is
=======
	set_xml_doc_xinclude
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_or(wellformed_low_level)
		end

<<<<<<< HEAD
	unset_wellformed is
=======
	unset_xml_doc_xinclude
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_xor(wellformed_low_level)
		end

<<<<<<< HEAD
	set_xinclude is
=======
feature -- Queries
	is_xml_doc_dtdvalid: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_or(xinclude_low_level)
		end

<<<<<<< HEAD
	unset_xinclude is
=======
	is_xml_doc_internal: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_xor(xinclude_low_level)
		end

<<<<<<< HEAD
feature {ANY} -- Queries
	is_dtdvalid: BOOLEAN is
=======
	is_xml_doc_nsvalid: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtdvalid_low_level)
		end

<<<<<<< HEAD
	is_html: BOOLEAN is
=======
	is_xml_doc_old10: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=html_low_level)
		end

<<<<<<< HEAD
	is_internal: BOOLEAN is
=======
	is_xml_doc_userbuilt: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=internal_low_level)
		end

<<<<<<< HEAD
	is_nsvalid: BOOLEAN is
=======
	is_xml_doc_wellformed: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=nsvalid_low_level)
		end

<<<<<<< HEAD
	is_old10: BOOLEAN is
=======
	is_xml_doc_xinclude: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=old10_low_level)
		end

	is_userbuilt: BOOLEAN is
		do
			Result := (value=userbuilt_low_level)
		end

	is_wellformed: BOOLEAN is
		do
			Result := (value=wellformed_low_level)
		end

	is_xinclude: BOOLEAN is
		do
			Result := (value=xinclude_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
<<<<<<< HEAD
	dtdvalid_low_level: INTEGER is
=======
	xml_doc_dtdvalid_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "XML_DOC_DTDVALID"
 			}"
 		end

<<<<<<< HEAD
	html_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "XML_DOC_HTML"
 			}"
 		end

	internal_low_level: INTEGER is
=======
	xml_doc_internal_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "XML_DOC_INTERNAL"
 			}"
 		end

<<<<<<< HEAD
	nsvalid_low_level: INTEGER is
=======
	xml_doc_nsvalid_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "XML_DOC_NSVALID"
 			}"
 		end

<<<<<<< HEAD
	old10_low_level: INTEGER is
=======
	xml_doc_old10_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "XML_DOC_OLD10"
 			}"
 		end

<<<<<<< HEAD
	userbuilt_low_level: INTEGER is
=======
	xml_doc_userbuilt_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "XML_DOC_USERBUILT"
 			}"
 		end

<<<<<<< HEAD
	wellformed_low_level: INTEGER is
=======
	xml_doc_wellformed_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "XML_DOC_WELLFORMED"
 			}"
 		end

<<<<<<< HEAD
	xinclude_low_level: INTEGER is
=======
	xml_doc_xinclude_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "XML_DOC_XINCLUDE"
 			}"
 		end


end -- class XML_DOC_PROPERTIES_ENUM
