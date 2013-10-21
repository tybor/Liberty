-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class XML_ELEMENT_TYPE_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
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
	set_attribute_decl is
		do
			value := attribute_decl_low_level
		end

	set_attribute_node is
		do
			value := attribute_node_low_level
		end

	set_cdata_section_node is
		do
			value := cdata_section_node_low_level
		end

	set_comment_node is
		do
			value := comment_node_low_level
		end

	set_docb_document_node is
		do
			value := docb_document_node_low_level
		end

	set_document_frag_node is
		do
			value := document_frag_node_low_level
		end

	set_document_node is
		do
			value := document_node_low_level
		end

	set_document_type_node is
		do
			value := document_type_node_low_level
		end

	set_dtd_node is
		do
			value := dtd_node_low_level
		end

	set_element_decl is
		do
			value := element_decl_low_level
		end

	set_element_node is
		do
			value := element_node_low_level
		end

	set_entity_decl is
		do
			value := entity_decl_low_level
		end

	set_entity_node is
		do
			value := entity_node_low_level
		end

	set_entity_ref_node is
		do
			value := entity_ref_node_low_level
		end

	set_html_document_node is
		do
			value := html_document_node_low_level
		end

	set_namespace_decl is
		do
			value := namespace_decl_low_level
		end

	set_notation_node is
		do
			value := notation_node_low_level
		end

	set_pi_node is
		do
			value := pi_node_low_level
		end

	set_text_node is
		do
			value := text_node_low_level
		end

	set_xinclude_end is
		do
			value := xinclude_end_low_level
		end

	set_xinclude_start is
		do
			value := xinclude_start_low_level
		end

feature {ANY} -- Queries
	is_attribute_decl: BOOLEAN is
		do
			Result := (value=attribute_decl_low_level)
		end

	is_attribute_node: BOOLEAN is
		do
			Result := (value=attribute_node_low_level)
		end

	is_cdata_section_node: BOOLEAN is
		do
			Result := (value=cdata_section_node_low_level)
		end

	is_comment_node: BOOLEAN is
		do
			Result := (value=comment_node_low_level)
		end

	is_docb_document_node: BOOLEAN is
		do
			Result := (value=docb_document_node_low_level)
		end

	is_document_frag_node: BOOLEAN is
		do
			Result := (value=document_frag_node_low_level)
		end

	is_document_node: BOOLEAN is
		do
			Result := (value=document_node_low_level)
		end

	is_document_type_node: BOOLEAN is
		do
			Result := (value=document_type_node_low_level)
		end

	is_dtd_node: BOOLEAN is
		do
			Result := (value=dtd_node_low_level)
		end

	is_element_decl: BOOLEAN is
		do
			Result := (value=element_decl_low_level)
		end

	is_element_node: BOOLEAN is
		do
			Result := (value=element_node_low_level)
		end

	is_entity_decl: BOOLEAN is
		do
			Result := (value=entity_decl_low_level)
		end

	is_entity_node: BOOLEAN is
		do
			Result := (value=entity_node_low_level)
		end

	is_entity_ref_node: BOOLEAN is
		do
			Result := (value=entity_ref_node_low_level)
		end

	is_html_document_node: BOOLEAN is
		do
			Result := (value=html_document_node_low_level)
		end

	is_namespace_decl: BOOLEAN is
		do
			Result := (value=namespace_decl_low_level)
		end

	is_notation_node: BOOLEAN is
		do
			Result := (value=notation_node_low_level)
		end

	is_pi_node: BOOLEAN is
		do
			Result := (value=pi_node_low_level)
		end

	is_text_node: BOOLEAN is
		do
			Result := (value=text_node_low_level)
		end

	is_xinclude_end: BOOLEAN is
		do
			Result := (value=xinclude_end_low_level)
		end

	is_xinclude_start: BOOLEAN is
		do
			Result := (value=xinclude_start_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	attribute_decl_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ATTRIBUTE_DECL"
 			}"
 		end

	attribute_node_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ATTRIBUTE_NODE"
 			}"
 		end

	cdata_section_node_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CDATA_SECTION_NODE"
 			}"
 		end

	comment_node_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_COMMENT_NODE"
 			}"
 		end

	docb_document_node_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DOCB_DOCUMENT_NODE"
 			}"
 		end

	document_frag_node_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DOCUMENT_FRAG_NODE"
 			}"
 		end

	document_node_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DOCUMENT_NODE"
 			}"
 		end

	document_type_node_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DOCUMENT_TYPE_NODE"
 			}"
 		end

	dtd_node_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_NODE"
 			}"
 		end

	element_decl_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ELEMENT_DECL"
 			}"
 		end

	element_node_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ELEMENT_NODE"
 			}"
 		end

	entity_decl_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ENTITY_DECL"
 			}"
 		end

	entity_node_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ENTITY_NODE"
 			}"
 		end

	entity_ref_node_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ENTITY_REF_NODE"
 			}"
 		end

	html_document_node_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_HTML_DOCUMENT_NODE"
 			}"
 		end

	namespace_decl_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_NAMESPACE_DECL"
 			}"
 		end

	notation_node_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_NOTATION_NODE"
 			}"
 		end

	pi_node_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_PI_NODE"
 			}"
 		end

	text_node_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_TEXT_NODE"
 			}"
 		end

	xinclude_end_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XINCLUDE_END"
 			}"
 		end

	xinclude_start_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XINCLUDE_START"
 			}"
 		end


end -- class XML_ELEMENT_TYPE_ENUM
