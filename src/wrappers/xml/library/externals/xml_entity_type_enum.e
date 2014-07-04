-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class XML_ENTITY_TYPE_ENUM

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
            Result := ((a_value = external_general_parsed_entity_low_level)  or else
				(a_value = external_general_unparsed_entity_low_level)  or else
				(a_value = external_parameter_entity_low_level)  or else
				(a_value = internal_general_entity_low_level)  or else
				(a_value = internal_parameter_entity_low_level)  or else
				(a_value = internal_predefined_entity_low_level) )
		end

feature {ANY} -- Setters
	default_create,
<<<<<<< HEAD
	set_external_general_parsed_entity is
=======
	set_xml_external_general_parsed_entity
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := external_general_parsed_entity_low_level
		end

<<<<<<< HEAD
	set_external_general_unparsed_entity is
=======
	set_xml_external_general_unparsed_entity
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := external_general_unparsed_entity_low_level
		end

<<<<<<< HEAD
	set_external_parameter_entity is
=======
	set_xml_external_parameter_entity
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := external_parameter_entity_low_level
		end

<<<<<<< HEAD
	set_internal_general_entity is
=======
	set_xml_internal_general_entity
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := internal_general_entity_low_level
		end

<<<<<<< HEAD
	set_internal_parameter_entity is
=======
	set_xml_internal_parameter_entity
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := internal_parameter_entity_low_level
		end

<<<<<<< HEAD
	set_internal_predefined_entity is
=======
	set_xml_internal_predefined_entity
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := internal_predefined_entity_low_level
		end

<<<<<<< HEAD
feature {ANY} -- Queries
	is_external_general_parsed_entity: BOOLEAN is
=======
feature -- Queries
	is_xml_external_general_parsed_entity: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=external_general_parsed_entity_low_level)
		end

<<<<<<< HEAD
	is_external_general_unparsed_entity: BOOLEAN is
=======
	is_xml_external_general_unparsed_entity: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=external_general_unparsed_entity_low_level)
		end

<<<<<<< HEAD
	is_external_parameter_entity: BOOLEAN is
=======
	is_xml_external_parameter_entity: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=external_parameter_entity_low_level)
		end

<<<<<<< HEAD
	is_internal_general_entity: BOOLEAN is
=======
	is_xml_internal_general_entity: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=internal_general_entity_low_level)
		end

<<<<<<< HEAD
	is_internal_parameter_entity: BOOLEAN is
=======
	is_xml_internal_parameter_entity: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=internal_parameter_entity_low_level)
		end

<<<<<<< HEAD
	is_internal_predefined_entity: BOOLEAN is
=======
	is_xml_internal_predefined_entity: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=internal_predefined_entity_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
<<<<<<< HEAD
	external_general_parsed_entity_low_level: INTEGER is
=======
	xml_external_general_parsed_entity_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_EXTERNAL_GENERAL_PARSED_ENTITY"
 			}"
 		end

<<<<<<< HEAD
	external_general_unparsed_entity_low_level: INTEGER is
=======
	xml_external_general_unparsed_entity_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_EXTERNAL_GENERAL_UNPARSED_ENTITY"
 			}"
 		end

<<<<<<< HEAD
	external_parameter_entity_low_level: INTEGER is
=======
	xml_external_parameter_entity_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_EXTERNAL_PARAMETER_ENTITY"
 			}"
 		end

<<<<<<< HEAD
	internal_general_entity_low_level: INTEGER is
=======
	xml_internal_general_entity_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_INTERNAL_GENERAL_ENTITY"
 			}"
 		end

<<<<<<< HEAD
	internal_parameter_entity_low_level: INTEGER is
=======
	xml_internal_parameter_entity_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_INTERNAL_PARAMETER_ENTITY"
 			}"
 		end

<<<<<<< HEAD
	internal_predefined_entity_low_level: INTEGER is
=======
	xml_internal_predefined_entity_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_INTERNAL_PREDEFINED_ENTITY"
 			}"
 		end


end -- class XML_ENTITY_TYPE_ENUM
