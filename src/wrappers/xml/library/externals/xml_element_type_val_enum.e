-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class XML_ELEMENT_TYPE_VAL_ENUM

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
            Result := ((a_value = any_low_level)  or else
				(a_value = element_low_level)  or else
				(a_value = empty_low_level)  or else
				(a_value = mixed_low_level)  or else
				(a_value = undefined_low_level) )
		end

feature {ANY} -- Setters
	default_create,
<<<<<<< HEAD
	set_any is
=======
	set_xml_element_type_any
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := any_low_level
		end

<<<<<<< HEAD
	set_element is
=======
	set_xml_element_type_element
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := element_low_level
		end

<<<<<<< HEAD
	set_empty is
=======
	set_xml_element_type_empty
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := empty_low_level
		end

<<<<<<< HEAD
	set_mixed is
=======
	set_xml_element_type_mixed
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := mixed_low_level
		end

<<<<<<< HEAD
	set_undefined is
=======
	set_xml_element_type_undefined
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := undefined_low_level
		end

<<<<<<< HEAD
feature {ANY} -- Queries
	is_any: BOOLEAN is
=======
feature -- Queries
	is_xml_element_type_any: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=any_low_level)
		end

<<<<<<< HEAD
	is_element: BOOLEAN is
=======
	is_xml_element_type_element: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=element_low_level)
		end

<<<<<<< HEAD
	is_empty: BOOLEAN is
=======
	is_xml_element_type_empty: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=empty_low_level)
		end

<<<<<<< HEAD
	is_mixed: BOOLEAN is
=======
	is_xml_element_type_mixed: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=mixed_low_level)
		end

<<<<<<< HEAD
	is_undefined: BOOLEAN is
=======
	is_xml_element_type_undefined: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=undefined_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
<<<<<<< HEAD
	any_low_level: INTEGER is
=======
	xml_element_type_any_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ELEMENT_TYPE_ANY"
 			}"
 		end

<<<<<<< HEAD
	element_low_level: INTEGER is
=======
	xml_element_type_element_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ELEMENT_TYPE_ELEMENT"
 			}"
 		end

<<<<<<< HEAD
	empty_low_level: INTEGER is
=======
	xml_element_type_empty_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ELEMENT_TYPE_EMPTY"
 			}"
 		end

<<<<<<< HEAD
	mixed_low_level: INTEGER is
=======
	xml_element_type_mixed_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ELEMENT_TYPE_MIXED"
 			}"
 		end

<<<<<<< HEAD
	undefined_low_level: INTEGER is
=======
	xml_element_type_undefined_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ELEMENT_TYPE_UNDEFINED"
 			}"
 		end


end -- class XML_ELEMENT_TYPE_VAL_ENUM
