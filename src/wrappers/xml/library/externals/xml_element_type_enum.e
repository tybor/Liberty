-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class XML_ELEMENT_TYPE_ENUM

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
            Result := ((a_value = attribute_decl_low_level)  or else
				(a_value = attribute_node_low_level)  or else
				(a_value = cdata_section_node_low_level)  or else
				(a_value = comment_node_low_level)  or else
				(a_value = docb_document_node_low_level)  or else
				(a_value = document_frag_node_low_level)  or else
				(a_value = document_node_low_level)  or else
				(a_value = document_type_node_low_level)  or else
				(a_value = dtd_node_low_level)  or else
				(a_value = element_decl_low_level)  or else
				(a_value = element_node_low_level)  or else
				(a_value = entity_decl_low_level)  or else
				(a_value = entity_node_low_level)  or else
				(a_value = entity_ref_node_low_level)  or else
				(a_value = html_document_node_low_level)  or else
				(a_value = namespace_decl_low_level)  or else
				(a_value = notation_node_low_level)  or else
				(a_value = pi_node_low_level)  or else
				(a_value = text_node_low_level)  or else
				(a_value = xinclude_end_low_level)  or else
				(a_value = xinclude_start_low_level) )
		end

feature {ANY} -- Setters
	default_create,
<<<<<<< HEAD
	set_attribute_decl is
=======
	set_xml_attribute_decl
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := attribute_decl_low_level
		end

<<<<<<< HEAD
	set_attribute_node is
=======
	set_xml_attribute_node
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := attribute_node_low_level
		end

<<<<<<< HEAD
	set_cdata_section_node is
=======
	set_xml_cdata_section_node
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := cdata_section_node_low_level
		end

<<<<<<< HEAD
	set_comment_node is
=======
	set_xml_comment_node
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := comment_node_low_level
		end

<<<<<<< HEAD
	set_docb_document_node is
=======
	set_xml_docb_document_node
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := docb_document_node_low_level
		end

<<<<<<< HEAD
	set_document_frag_node is
=======
	set_xml_document_frag_node
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := document_frag_node_low_level
		end

<<<<<<< HEAD
	set_document_node is
=======
	set_xml_document_node
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := document_node_low_level
		end

<<<<<<< HEAD
	set_document_type_node is
=======
	set_xml_document_type_node
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := document_type_node_low_level
		end

<<<<<<< HEAD
	set_dtd_node is
=======
	set_xml_dtd_node
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_node_low_level
		end

<<<<<<< HEAD
	set_element_decl is
=======
	set_xml_element_decl
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := element_decl_low_level
		end

<<<<<<< HEAD
	set_element_node is
=======
	set_xml_element_node
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := element_node_low_level
		end

<<<<<<< HEAD
	set_entity_decl is
=======
	set_xml_entity_decl
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := entity_decl_low_level
		end

<<<<<<< HEAD
	set_entity_node is
=======
	set_xml_entity_node
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := entity_node_low_level
		end

<<<<<<< HEAD
	set_entity_ref_node is
=======
	set_xml_entity_ref_node
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := entity_ref_node_low_level
		end

<<<<<<< HEAD
	set_html_document_node is
=======
	set_xml_html_document_node
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := html_document_node_low_level
		end

<<<<<<< HEAD
	set_namespace_decl is
=======
	set_xml_namespace_decl
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := namespace_decl_low_level
		end

<<<<<<< HEAD
	set_notation_node is
=======
	set_xml_notation_node
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := notation_node_low_level
		end

<<<<<<< HEAD
	set_pi_node is
=======
	set_xml_pi_node
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := pi_node_low_level
		end

<<<<<<< HEAD
	set_text_node is
=======
	set_xml_text_node
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := text_node_low_level
		end

<<<<<<< HEAD
	set_xinclude_end is
=======
	set_xml_xinclude_end
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xinclude_end_low_level
		end

<<<<<<< HEAD
	set_xinclude_start is
=======
	set_xml_xinclude_start
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xinclude_start_low_level
		end

<<<<<<< HEAD
feature {ANY} -- Queries
	is_attribute_decl: BOOLEAN is
=======
feature -- Queries
	is_xml_attribute_decl: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=attribute_decl_low_level)
		end

<<<<<<< HEAD
	is_attribute_node: BOOLEAN is
=======
	is_xml_attribute_node: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=attribute_node_low_level)
		end

<<<<<<< HEAD
	is_cdata_section_node: BOOLEAN is
=======
	is_xml_cdata_section_node: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=cdata_section_node_low_level)
		end

<<<<<<< HEAD
	is_comment_node: BOOLEAN is
=======
	is_xml_comment_node: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=comment_node_low_level)
		end

<<<<<<< HEAD
	is_docb_document_node: BOOLEAN is
=======
	is_xml_docb_document_node: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=docb_document_node_low_level)
		end

<<<<<<< HEAD
	is_document_frag_node: BOOLEAN is
=======
	is_xml_document_frag_node: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=document_frag_node_low_level)
		end

<<<<<<< HEAD
	is_document_node: BOOLEAN is
=======
	is_xml_document_node: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=document_node_low_level)
		end

<<<<<<< HEAD
	is_document_type_node: BOOLEAN is
=======
	is_xml_document_type_node: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=document_type_node_low_level)
		end

<<<<<<< HEAD
	is_dtd_node: BOOLEAN is
=======
	is_xml_dtd_node: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_node_low_level)
		end

<<<<<<< HEAD
	is_element_decl: BOOLEAN is
=======
	is_xml_element_decl: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=element_decl_low_level)
		end

<<<<<<< HEAD
	is_element_node: BOOLEAN is
=======
	is_xml_element_node: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=element_node_low_level)
		end

<<<<<<< HEAD
	is_entity_decl: BOOLEAN is
=======
	is_xml_entity_decl: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=entity_decl_low_level)
		end

<<<<<<< HEAD
	is_entity_node: BOOLEAN is
=======
	is_xml_entity_node: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=entity_node_low_level)
		end

<<<<<<< HEAD
	is_entity_ref_node: BOOLEAN is
=======
	is_xml_entity_ref_node: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=entity_ref_node_low_level)
		end

<<<<<<< HEAD
	is_html_document_node: BOOLEAN is
=======
	is_xml_html_document_node: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=html_document_node_low_level)
		end

<<<<<<< HEAD
	is_namespace_decl: BOOLEAN is
=======
	is_xml_namespace_decl: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=namespace_decl_low_level)
		end

<<<<<<< HEAD
	is_notation_node: BOOLEAN is
=======
	is_xml_notation_node: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=notation_node_low_level)
		end

<<<<<<< HEAD
	is_pi_node: BOOLEAN is
=======
	is_xml_pi_node: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=pi_node_low_level)
		end

<<<<<<< HEAD
	is_text_node: BOOLEAN is
=======
	is_xml_text_node: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=text_node_low_level)
		end

<<<<<<< HEAD
	is_xinclude_end: BOOLEAN is
=======
	is_xml_xinclude_end: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xinclude_end_low_level)
		end

<<<<<<< HEAD
	is_xinclude_start: BOOLEAN is
=======
	is_xml_xinclude_start: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xinclude_start_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
<<<<<<< HEAD
	attribute_decl_low_level: INTEGER is
=======
	xml_attribute_decl_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ATTRIBUTE_DECL"
 			}"
 		end

<<<<<<< HEAD
	attribute_node_low_level: INTEGER is
=======
	xml_attribute_node_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ATTRIBUTE_NODE"
 			}"
 		end

<<<<<<< HEAD
	cdata_section_node_low_level: INTEGER is
=======
	xml_cdata_section_node_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CDATA_SECTION_NODE"
 			}"
 		end

<<<<<<< HEAD
	comment_node_low_level: INTEGER is
=======
	xml_comment_node_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_COMMENT_NODE"
 			}"
 		end

<<<<<<< HEAD
	docb_document_node_low_level: INTEGER is
=======
	xml_docb_document_node_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DOCB_DOCUMENT_NODE"
 			}"
 		end

<<<<<<< HEAD
	document_frag_node_low_level: INTEGER is
=======
	xml_document_frag_node_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DOCUMENT_FRAG_NODE"
 			}"
 		end

<<<<<<< HEAD
	document_node_low_level: INTEGER is
=======
	xml_document_node_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DOCUMENT_NODE"
 			}"
 		end

<<<<<<< HEAD
	document_type_node_low_level: INTEGER is
=======
	xml_document_type_node_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DOCUMENT_TYPE_NODE"
 			}"
 		end

<<<<<<< HEAD
	dtd_node_low_level: INTEGER is
=======
	xml_dtd_node_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_NODE"
 			}"
 		end

<<<<<<< HEAD
	element_decl_low_level: INTEGER is
=======
	xml_element_decl_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ELEMENT_DECL"
 			}"
 		end

<<<<<<< HEAD
	element_node_low_level: INTEGER is
=======
	xml_element_node_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ELEMENT_NODE"
 			}"
 		end

<<<<<<< HEAD
	entity_decl_low_level: INTEGER is
=======
	xml_entity_decl_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ENTITY_DECL"
 			}"
 		end

<<<<<<< HEAD
	entity_node_low_level: INTEGER is
=======
	xml_entity_node_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ENTITY_NODE"
 			}"
 		end

<<<<<<< HEAD
	entity_ref_node_low_level: INTEGER is
=======
	xml_entity_ref_node_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ENTITY_REF_NODE"
 			}"
 		end

<<<<<<< HEAD
	html_document_node_low_level: INTEGER is
=======
	xml_html_document_node_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_HTML_DOCUMENT_NODE"
 			}"
 		end

<<<<<<< HEAD
	namespace_decl_low_level: INTEGER is
=======
	xml_namespace_decl_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_NAMESPACE_DECL"
 			}"
 		end

<<<<<<< HEAD
	notation_node_low_level: INTEGER is
=======
	xml_notation_node_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_NOTATION_NODE"
 			}"
 		end

<<<<<<< HEAD
	pi_node_low_level: INTEGER is
=======
	xml_pi_node_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_PI_NODE"
 			}"
 		end

<<<<<<< HEAD
	text_node_low_level: INTEGER is
=======
	xml_text_node_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_TEXT_NODE"
 			}"
 		end

<<<<<<< HEAD
	xinclude_end_low_level: INTEGER is
=======
	xml_xinclude_end_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XINCLUDE_END"
 			}"
 		end

<<<<<<< HEAD
	xinclude_start_low_level: INTEGER is
=======
	xml_xinclude_start_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XINCLUDE_START"
 			}"
 		end


end -- class XML_ELEMENT_TYPE_ENUM
