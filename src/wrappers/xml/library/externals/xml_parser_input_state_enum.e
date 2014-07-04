-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class XML_PARSER_INPUT_STATE_ENUM

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
            Result := ((a_value = attribute_value_low_level)  or else
				(a_value = cdata_section_low_level)  or else
				(a_value = comment_low_level)  or else
				(a_value = content_low_level)  or else
				(a_value = dtd_low_level)  or else
				(a_value = end_tag_low_level)  or else
				(a_value = entity_decl_low_level)  or else
				(a_value = entity_value_low_level)  or else
				(a_value = eof_low_level)  or else
				(a_value = epilog_low_level)  or else
				(a_value = ignore_low_level)  or else
				(a_value = misc_low_level)  or else
				(a_value = pi_low_level)  or else
				(a_value = prolog_low_level)  or else
				(a_value = public_literal_low_level)  or else
				(a_value = start_low_level)  or else
				(a_value = start_tag_low_level)  or else
				(a_value = system_literal_low_level) )
		end

feature {ANY} -- Setters
	default_create,
<<<<<<< HEAD
	set_attribute_value is
=======
	set_xml_parser_attribute_value
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := attribute_value_low_level
		end

<<<<<<< HEAD
	set_cdata_section is
=======
	set_xml_parser_cdata_section
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := cdata_section_low_level
		end

<<<<<<< HEAD
	set_comment is
=======
	set_xml_parser_comment
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := comment_low_level
		end

<<<<<<< HEAD
	set_content is
=======
	set_xml_parser_content
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := content_low_level
		end

<<<<<<< HEAD
	set_dtd is
=======
	set_xml_parser_dtd
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_low_level
		end

<<<<<<< HEAD
	set_end_tag is
=======
	set_xml_parser_end_tag
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := end_tag_low_level
		end

<<<<<<< HEAD
	set_entity_decl is
=======
	set_xml_parser_entity_decl
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := entity_decl_low_level
		end

<<<<<<< HEAD
	set_entity_value is
=======
	set_xml_parser_entity_value
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := entity_value_low_level
		end

<<<<<<< HEAD
	set_eof is
=======
	set_xml_parser_eof
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := eof_low_level
		end

<<<<<<< HEAD
	set_epilog is
=======
	set_xml_parser_epilog
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := epilog_low_level
		end

<<<<<<< HEAD
	set_ignore is
=======
	set_xml_parser_ignore
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := ignore_low_level
		end

<<<<<<< HEAD
	set_misc is
=======
	set_xml_parser_misc
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := misc_low_level
		end

<<<<<<< HEAD
	set_pi is
=======
	set_xml_parser_pi
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := pi_low_level
		end

<<<<<<< HEAD
	set_prolog is
=======
	set_xml_parser_prolog
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := prolog_low_level
		end

<<<<<<< HEAD
	set_public_literal is
=======
	set_xml_parser_public_literal
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := public_literal_low_level
		end

<<<<<<< HEAD
	set_start is
=======
	set_xml_parser_start
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := start_low_level
		end

<<<<<<< HEAD
	set_start_tag is
=======
	set_xml_parser_start_tag
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := start_tag_low_level
		end

<<<<<<< HEAD
	set_system_literal is
=======
	set_xml_parser_system_literal
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := system_literal_low_level
		end

<<<<<<< HEAD
feature {ANY} -- Queries
	is_attribute_value: BOOLEAN is
=======
feature -- Queries
	is_xml_parser_attribute_value: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=attribute_value_low_level)
		end

<<<<<<< HEAD
	is_cdata_section: BOOLEAN is
=======
	is_xml_parser_cdata_section: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=cdata_section_low_level)
		end

<<<<<<< HEAD
	is_comment: BOOLEAN is
=======
	is_xml_parser_comment: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=comment_low_level)
		end

<<<<<<< HEAD
	is_content: BOOLEAN is
=======
	is_xml_parser_content: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=content_low_level)
		end

<<<<<<< HEAD
	is_dtd: BOOLEAN is
=======
	is_xml_parser_dtd: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_low_level)
		end

<<<<<<< HEAD
	is_end_tag: BOOLEAN is
=======
	is_xml_parser_end_tag: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=end_tag_low_level)
		end

<<<<<<< HEAD
	is_entity_decl: BOOLEAN is
=======
	is_xml_parser_entity_decl: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=entity_decl_low_level)
		end

<<<<<<< HEAD
	is_entity_value: BOOLEAN is
=======
	is_xml_parser_entity_value: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=entity_value_low_level)
		end

<<<<<<< HEAD
	is_eof: BOOLEAN is
=======
	is_xml_parser_eof: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=eof_low_level)
		end

<<<<<<< HEAD
	is_epilog: BOOLEAN is
=======
	is_xml_parser_epilog: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=epilog_low_level)
		end

<<<<<<< HEAD
	is_ignore: BOOLEAN is
=======
	is_xml_parser_ignore: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=ignore_low_level)
		end

<<<<<<< HEAD
	is_misc: BOOLEAN is
=======
	is_xml_parser_misc: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=misc_low_level)
		end

<<<<<<< HEAD
	is_pi: BOOLEAN is
=======
	is_xml_parser_pi: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=pi_low_level)
		end

<<<<<<< HEAD
	is_prolog: BOOLEAN is
=======
	is_xml_parser_prolog: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=prolog_low_level)
		end

<<<<<<< HEAD
	is_public_literal: BOOLEAN is
=======
	is_xml_parser_public_literal: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=public_literal_low_level)
		end

<<<<<<< HEAD
	is_start: BOOLEAN is
=======
	is_xml_parser_start: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=start_low_level)
		end

<<<<<<< HEAD
	is_start_tag: BOOLEAN is
=======
	is_xml_parser_start_tag: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=start_tag_low_level)
		end

<<<<<<< HEAD
	is_system_literal: BOOLEAN is
=======
	is_xml_parser_system_literal: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=system_literal_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
<<<<<<< HEAD
	attribute_value_low_level: INTEGER is
=======
	xml_parser_attribute_value_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_PARSER_ATTRIBUTE_VALUE"
 			}"
 		end

<<<<<<< HEAD
	cdata_section_low_level: INTEGER is
=======
	xml_parser_cdata_section_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_PARSER_CDATA_SECTION"
 			}"
 		end

<<<<<<< HEAD
	comment_low_level: INTEGER is
=======
	xml_parser_comment_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_PARSER_COMMENT"
 			}"
 		end

<<<<<<< HEAD
	content_low_level: INTEGER is
=======
	xml_parser_content_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_PARSER_CONTENT"
 			}"
 		end

<<<<<<< HEAD
	dtd_low_level: INTEGER is
=======
	xml_parser_dtd_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_PARSER_DTD"
 			}"
 		end

<<<<<<< HEAD
	end_tag_low_level: INTEGER is
=======
	xml_parser_end_tag_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_PARSER_END_TAG"
 			}"
 		end

<<<<<<< HEAD
	entity_decl_low_level: INTEGER is
=======
	xml_parser_entity_decl_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_PARSER_ENTITY_DECL"
 			}"
 		end

<<<<<<< HEAD
	entity_value_low_level: INTEGER is
=======
	xml_parser_entity_value_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_PARSER_ENTITY_VALUE"
 			}"
 		end

<<<<<<< HEAD
	eof_low_level: INTEGER is
=======
	xml_parser_eof_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_PARSER_EOF"
 			}"
 		end

<<<<<<< HEAD
	epilog_low_level: INTEGER is
=======
	xml_parser_epilog_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_PARSER_EPILOG"
 			}"
 		end

<<<<<<< HEAD
	ignore_low_level: INTEGER is
=======
	xml_parser_ignore_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_PARSER_IGNORE"
 			}"
 		end

<<<<<<< HEAD
	misc_low_level: INTEGER is
=======
	xml_parser_misc_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_PARSER_MISC"
 			}"
 		end

<<<<<<< HEAD
	pi_low_level: INTEGER is
=======
	xml_parser_pi_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_PARSER_PI"
 			}"
 		end

<<<<<<< HEAD
	prolog_low_level: INTEGER is
=======
	xml_parser_prolog_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_PARSER_PROLOG"
 			}"
 		end

<<<<<<< HEAD
	public_literal_low_level: INTEGER is
=======
	xml_parser_public_literal_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_PARSER_PUBLIC_LITERAL"
 			}"
 		end

<<<<<<< HEAD
	start_low_level: INTEGER is
=======
	xml_parser_start_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_PARSER_START"
 			}"
 		end

<<<<<<< HEAD
	start_tag_low_level: INTEGER is
=======
	xml_parser_start_tag_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_PARSER_START_TAG"
 			}"
 		end

<<<<<<< HEAD
	system_literal_low_level: INTEGER is
=======
	xml_parser_system_literal_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_PARSER_SYSTEM_LITERAL"
 			}"
 		end


end -- class XML_PARSER_INPUT_STATE_ENUM
