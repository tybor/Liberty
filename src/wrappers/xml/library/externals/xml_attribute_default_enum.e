-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class XML_ATTRIBUTE_DEFAULT_ENUM

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
            Result := ((a_value = fixed_low_level)  or else
				(a_value = implied_low_level)  or else
				(a_value = none_low_level)  or else
				(a_value = required_low_level) )
		end

feature {ANY} -- Setters
	default_create,
<<<<<<< HEAD
	set_fixed is
=======
	set_xml_attribute_fixed
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := fixed_low_level
		end

<<<<<<< HEAD
	set_implied is
=======
	set_xml_attribute_implied
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := implied_low_level
		end

<<<<<<< HEAD
	set_none is
=======
	set_xml_attribute_none
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := none_low_level
		end

<<<<<<< HEAD
	set_required is
=======
	set_xml_attribute_required
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := required_low_level
		end

<<<<<<< HEAD
feature {ANY} -- Queries
	is_fixed: BOOLEAN is
=======
feature -- Queries
	is_xml_attribute_fixed: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=fixed_low_level)
		end

<<<<<<< HEAD
	is_implied: BOOLEAN is
=======
	is_xml_attribute_implied: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=implied_low_level)
		end

<<<<<<< HEAD
	is_none: BOOLEAN is
=======
	is_xml_attribute_none: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=none_low_level)
		end

<<<<<<< HEAD
	is_required: BOOLEAN is
=======
	is_xml_attribute_required: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=required_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
<<<<<<< HEAD
	fixed_low_level: INTEGER is
=======
	xml_attribute_fixed_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ATTRIBUTE_FIXED"
 			}"
 		end

<<<<<<< HEAD
	implied_low_level: INTEGER is
=======
	xml_attribute_implied_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ATTRIBUTE_IMPLIED"
 			}"
 		end

<<<<<<< HEAD
	none_low_level: INTEGER is
=======
	xml_attribute_none_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ATTRIBUTE_NONE"
 			}"
 		end

<<<<<<< HEAD
	required_low_level: INTEGER is
=======
	xml_attribute_required_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ATTRIBUTE_REQUIRED"
 			}"
 		end


end -- class XML_ATTRIBUTE_DEFAULT_ENUM
