-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class XML_ATTRIBUTE_TYPE_ENUM

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
            Result := ((a_value = cdata_low_level)  or else
				(a_value = entities_low_level)  or else
				(a_value = entity_low_level)  or else
				(a_value = enumeration_low_level)  or else
				(a_value = id_low_level)  or else
				(a_value = idref_low_level)  or else
				(a_value = idrefs_low_level)  or else
				(a_value = nmtoken_low_level)  or else
				(a_value = nmtokens_low_level)  or else
				(a_value = notation_low_level) )
		end

feature {ANY} -- Setters
	default_create,
<<<<<<< HEAD
	set_cdata is
=======
	set_xml_attribute_cdata
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := cdata_low_level
		end

<<<<<<< HEAD
	set_entities is
=======
	set_xml_attribute_entities
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := entities_low_level
		end

<<<<<<< HEAD
	set_entity is
=======
	set_xml_attribute_entity
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := entity_low_level
		end

<<<<<<< HEAD
	set_enumeration is
=======
	set_xml_attribute_enumeration
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := enumeration_low_level
		end

<<<<<<< HEAD
	set_id is
=======
	set_xml_attribute_id
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := id_low_level
		end

<<<<<<< HEAD
	set_idref is
=======
	set_xml_attribute_idref
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := idref_low_level
		end

<<<<<<< HEAD
	set_idrefs is
=======
	set_xml_attribute_idrefs
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := idrefs_low_level
		end

<<<<<<< HEAD
	set_nmtoken is
=======
	set_xml_attribute_nmtoken
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := nmtoken_low_level
		end

<<<<<<< HEAD
	set_nmtokens is
=======
	set_xml_attribute_nmtokens
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := nmtokens_low_level
		end

<<<<<<< HEAD
	set_notation is
=======
	set_xml_attribute_notation
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := notation_low_level
		end

<<<<<<< HEAD
feature {ANY} -- Queries
	is_cdata: BOOLEAN is
=======
feature -- Queries
	is_xml_attribute_cdata: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=cdata_low_level)
		end

<<<<<<< HEAD
	is_entities: BOOLEAN is
=======
	is_xml_attribute_entities: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=entities_low_level)
		end

<<<<<<< HEAD
	is_entity: BOOLEAN is
=======
	is_xml_attribute_entity: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=entity_low_level)
		end

<<<<<<< HEAD
	is_enumeration: BOOLEAN is
=======
	is_xml_attribute_enumeration: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=enumeration_low_level)
		end

<<<<<<< HEAD
	is_id: BOOLEAN is
=======
	is_xml_attribute_id: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=id_low_level)
		end

<<<<<<< HEAD
	is_idref: BOOLEAN is
=======
	is_xml_attribute_idref: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=idref_low_level)
		end

<<<<<<< HEAD
	is_idrefs: BOOLEAN is
=======
	is_xml_attribute_idrefs: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=idrefs_low_level)
		end

<<<<<<< HEAD
	is_nmtoken: BOOLEAN is
=======
	is_xml_attribute_nmtoken: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=nmtoken_low_level)
		end

<<<<<<< HEAD
	is_nmtokens: BOOLEAN is
=======
	is_xml_attribute_nmtokens: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=nmtokens_low_level)
		end

<<<<<<< HEAD
	is_notation: BOOLEAN is
=======
	is_xml_attribute_notation: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=notation_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
<<<<<<< HEAD
	cdata_low_level: INTEGER is
=======
	xml_attribute_cdata_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ATTRIBUTE_CDATA"
 			}"
 		end

<<<<<<< HEAD
	entities_low_level: INTEGER is
=======
	xml_attribute_entities_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ATTRIBUTE_ENTITIES"
 			}"
 		end

<<<<<<< HEAD
	entity_low_level: INTEGER is
=======
	xml_attribute_entity_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ATTRIBUTE_ENTITY"
 			}"
 		end

<<<<<<< HEAD
	enumeration_low_level: INTEGER is
=======
	xml_attribute_enumeration_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ATTRIBUTE_ENUMERATION"
 			}"
 		end

<<<<<<< HEAD
	id_low_level: INTEGER is
=======
	xml_attribute_id_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ATTRIBUTE_ID"
 			}"
 		end

<<<<<<< HEAD
	idref_low_level: INTEGER is
=======
	xml_attribute_idref_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ATTRIBUTE_IDREF"
 			}"
 		end

<<<<<<< HEAD
	idrefs_low_level: INTEGER is
=======
	xml_attribute_idrefs_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ATTRIBUTE_IDREFS"
 			}"
 		end

<<<<<<< HEAD
	nmtoken_low_level: INTEGER is
=======
	xml_attribute_nmtoken_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ATTRIBUTE_NMTOKEN"
 			}"
 		end

<<<<<<< HEAD
	nmtokens_low_level: INTEGER is
=======
	xml_attribute_nmtokens_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ATTRIBUTE_NMTOKENS"
 			}"
 		end

<<<<<<< HEAD
	notation_low_level: INTEGER is
=======
	xml_attribute_notation_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ATTRIBUTE_NOTATION"
 			}"
 		end


end -- class XML_ATTRIBUTE_TYPE_ENUM
