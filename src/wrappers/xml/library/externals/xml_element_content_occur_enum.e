-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class XML_ELEMENT_CONTENT_OCCUR_ENUM

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
            Result := ((a_value = mult_low_level)  or else
				(a_value = once_external_low_level)  or else
				(a_value = opt_low_level)  or else
				(a_value = plus_low_level) )
		end

feature {ANY} -- Setters
	default_create,
<<<<<<< HEAD
	set_mult is
=======
	set_xml_element_content_mult
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := mult_low_level
		end

<<<<<<< HEAD
	set_once_external is
=======
	set_xml_element_content_once
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := once_external_low_level
		end

<<<<<<< HEAD
	set_opt is
=======
	set_xml_element_content_opt
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := opt_low_level
		end

<<<<<<< HEAD
	set_plus is
=======
	set_xml_element_content_plus
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := plus_low_level
		end

<<<<<<< HEAD
feature {ANY} -- Queries
	is_mult: BOOLEAN is
=======
feature -- Queries
	is_xml_element_content_mult: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=mult_low_level)
		end

<<<<<<< HEAD
	is_once_external: BOOLEAN is
=======
	is_xml_element_content_once: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=once_external_low_level)
		end

<<<<<<< HEAD
	is_opt: BOOLEAN is
=======
	is_xml_element_content_opt: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=opt_low_level)
		end

<<<<<<< HEAD
	is_plus: BOOLEAN is
=======
	is_xml_element_content_plus: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=plus_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
<<<<<<< HEAD
	mult_low_level: INTEGER is
=======
	xml_element_content_mult_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ELEMENT_CONTENT_MULT"
 			}"
 		end

<<<<<<< HEAD
	once_external_low_level: INTEGER is
=======
	xml_element_content_once_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ELEMENT_CONTENT_ONCE"
 			}"
 		end

<<<<<<< HEAD
	opt_low_level: INTEGER is
=======
	xml_element_content_opt_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ELEMENT_CONTENT_OPT"
 			}"
 		end

<<<<<<< HEAD
	plus_low_level: INTEGER is
=======
	xml_element_content_plus_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ELEMENT_CONTENT_PLUS"
 			}"
 		end


end -- class XML_ELEMENT_CONTENT_OCCUR_ENUM
