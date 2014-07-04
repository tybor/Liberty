-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class XML_ERROR_DOMAIN_ENUM

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
            Result := ((a_value = c14n_low_level)  or else
				(a_value = catalog_low_level)  or else
				(a_value = check_external_low_level)  or else
				(a_value = datatype_low_level)  or else
				(a_value = dtd_low_level)  or else
				(a_value = ftp_low_level)  or else
				(a_value = html_low_level)  or else
				(a_value = http_low_level)  or else
				(a_value = i18n_low_level)  or else
				(a_value = io_low_level)  or else
				(a_value = memory_low_level)  or else
				(a_value = module_low_level)  or else
				(a_value = namespace_low_level)  or else
				(a_value = none_low_level)  or else
				(a_value = output_low_level)  or else
				(a_value = parser_low_level)  or else
				(a_value = regexp_low_level)  or else
				(a_value = relaxngp_low_level)  or else
				(a_value = relaxngv_low_level)  or else
				(a_value = schemasp_low_level)  or else
				(a_value = schemasv_low_level)  or else
				(a_value = schematronv_low_level)  or else
				(a_value = tree_low_level)  or else
				(a_value = valid_low_level)  or else
				(a_value = writer_low_level)  or else
				(a_value = xinclude_low_level)  or else
				(a_value = xpath_low_level)  or else
				(a_value = xpointer_low_level)  or else
				(a_value = xslt_low_level) )
		end

feature {ANY} -- Setters
	default_create,
<<<<<<< HEAD
	set_c14n is
=======
	set_xml_from_c14n
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := c14n_low_level
		end

<<<<<<< HEAD
	set_catalog is
=======
	set_xml_from_catalog
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := catalog_low_level
		end

<<<<<<< HEAD
	set_check_external is
=======
	set_xml_from_check
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_external_low_level
		end

<<<<<<< HEAD
	set_datatype is
=======
	set_xml_from_datatype
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := datatype_low_level
		end

<<<<<<< HEAD
	set_dtd is
=======
	set_xml_from_dtd
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_low_level
		end

<<<<<<< HEAD
	set_ftp is
=======
	set_xml_from_ftp
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := ftp_low_level
		end

<<<<<<< HEAD
	set_html is
=======
	set_xml_from_html
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := html_low_level
		end

<<<<<<< HEAD
	set_http is
=======
	set_xml_from_http
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := http_low_level
		end

<<<<<<< HEAD
	set_i18n is
=======
	set_xml_from_i18n
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := i18n_low_level
		end

<<<<<<< HEAD
	set_io is
=======
	set_xml_from_io
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_low_level
		end

<<<<<<< HEAD
	set_memory is
=======
	set_xml_from_memory
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := memory_low_level
		end

<<<<<<< HEAD
	set_module is
=======
	set_xml_from_module
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := module_low_level
		end

<<<<<<< HEAD
	set_namespace is
=======
	set_xml_from_namespace
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := namespace_low_level
		end

<<<<<<< HEAD
	set_none is
=======
	set_xml_from_none
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := none_low_level
		end

<<<<<<< HEAD
	set_output is
=======
	set_xml_from_output
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := output_low_level
		end

<<<<<<< HEAD
	set_parser is
=======
	set_xml_from_parser
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := parser_low_level
		end

<<<<<<< HEAD
	set_regexp is
=======
	set_xml_from_regexp
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := regexp_low_level
		end

<<<<<<< HEAD
	set_relaxngp is
=======
	set_xml_from_relaxngp
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := relaxngp_low_level
		end

<<<<<<< HEAD
	set_relaxngv is
=======
	set_xml_from_relaxngv
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := relaxngv_low_level
		end

<<<<<<< HEAD
	set_schemasp is
=======
	set_xml_from_schemasp
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemasp_low_level
		end

<<<<<<< HEAD
	set_schemasv is
=======
	set_xml_from_schemasv
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemasv_low_level
		end

<<<<<<< HEAD
	set_schematronv is
=======
	set_xml_from_schematronv
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schematronv_low_level
		end

<<<<<<< HEAD
	set_tree is
=======
	set_xml_from_tree
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := tree_low_level
		end

<<<<<<< HEAD
	set_valid is
=======
	set_xml_from_valid
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := valid_low_level
		end

<<<<<<< HEAD
	set_writer is
=======
	set_xml_from_writer
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := writer_low_level
		end

<<<<<<< HEAD
	set_xinclude is
=======
	set_xml_from_xinclude
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xinclude_low_level
		end

<<<<<<< HEAD
	set_xpath is
=======
	set_xml_from_xpath
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xpath_low_level
		end

<<<<<<< HEAD
	set_xpointer is
=======
	set_xml_from_xpointer
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xpointer_low_level
		end

<<<<<<< HEAD
	set_xslt is
=======
	set_xml_from_xslt
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xslt_low_level
		end

<<<<<<< HEAD
feature {ANY} -- Queries
	is_c14n: BOOLEAN is
=======
feature -- Queries
	is_xml_from_c14n: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=c14n_low_level)
		end

<<<<<<< HEAD
	is_catalog: BOOLEAN is
=======
	is_xml_from_catalog: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=catalog_low_level)
		end

<<<<<<< HEAD
	is_check_external: BOOLEAN is
=======
	is_xml_from_check: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_external_low_level)
		end

<<<<<<< HEAD
	is_datatype: BOOLEAN is
=======
	is_xml_from_datatype: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=datatype_low_level)
		end

<<<<<<< HEAD
	is_dtd: BOOLEAN is
=======
	is_xml_from_dtd: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_low_level)
		end

<<<<<<< HEAD
	is_ftp: BOOLEAN is
=======
	is_xml_from_ftp: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=ftp_low_level)
		end

<<<<<<< HEAD
	is_html: BOOLEAN is
=======
	is_xml_from_html: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=html_low_level)
		end

<<<<<<< HEAD
	is_http: BOOLEAN is
=======
	is_xml_from_http: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=http_low_level)
		end

<<<<<<< HEAD
	is_i18n: BOOLEAN is
=======
	is_xml_from_i18n: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=i18n_low_level)
		end

<<<<<<< HEAD
	is_io: BOOLEAN is
=======
	is_xml_from_io: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_low_level)
		end

<<<<<<< HEAD
	is_memory: BOOLEAN is
=======
	is_xml_from_memory: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=memory_low_level)
		end

<<<<<<< HEAD
	is_module: BOOLEAN is
=======
	is_xml_from_module: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=module_low_level)
		end

<<<<<<< HEAD
	is_namespace: BOOLEAN is
=======
	is_xml_from_namespace: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=namespace_low_level)
		end

<<<<<<< HEAD
	is_none: BOOLEAN is
=======
	is_xml_from_none: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=none_low_level)
		end

<<<<<<< HEAD
	is_output: BOOLEAN is
=======
	is_xml_from_output: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=output_low_level)
		end

<<<<<<< HEAD
	is_parser: BOOLEAN is
=======
	is_xml_from_parser: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=parser_low_level)
		end

<<<<<<< HEAD
	is_regexp: BOOLEAN is
=======
	is_xml_from_regexp: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=regexp_low_level)
		end

<<<<<<< HEAD
	is_relaxngp: BOOLEAN is
=======
	is_xml_from_relaxngp: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=relaxngp_low_level)
		end

<<<<<<< HEAD
	is_relaxngv: BOOLEAN is
=======
	is_xml_from_relaxngv: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=relaxngv_low_level)
		end

<<<<<<< HEAD
	is_schemasp: BOOLEAN is
=======
	is_xml_from_schemasp: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemasp_low_level)
		end

<<<<<<< HEAD
	is_schemasv: BOOLEAN is
=======
	is_xml_from_schemasv: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemasv_low_level)
		end

<<<<<<< HEAD
	is_schematronv: BOOLEAN is
=======
	is_xml_from_schematronv: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schematronv_low_level)
		end

<<<<<<< HEAD
	is_tree: BOOLEAN is
=======
	is_xml_from_tree: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=tree_low_level)
		end

<<<<<<< HEAD
	is_valid: BOOLEAN is
=======
	is_xml_from_valid: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=valid_low_level)
		end

<<<<<<< HEAD
	is_writer: BOOLEAN is
=======
	is_xml_from_writer: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=writer_low_level)
		end

<<<<<<< HEAD
	is_xinclude: BOOLEAN is
=======
	is_xml_from_xinclude: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xinclude_low_level)
		end

<<<<<<< HEAD
	is_xpath: BOOLEAN is
=======
	is_xml_from_xpath: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xpath_low_level)
		end

<<<<<<< HEAD
	is_xpointer: BOOLEAN is
=======
	is_xml_from_xpointer: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xpointer_low_level)
		end

<<<<<<< HEAD
	is_xslt: BOOLEAN is
=======
	is_xml_from_xslt: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xslt_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
<<<<<<< HEAD
	c14n_low_level: INTEGER is
=======
	xml_from_c14n_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_C14N"
 			}"
 		end

<<<<<<< HEAD
	catalog_low_level: INTEGER is
=======
	xml_from_catalog_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_CATALOG"
 			}"
 		end

<<<<<<< HEAD
	check_external_low_level: INTEGER is
=======
	xml_from_check_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_CHECK"
 			}"
 		end

<<<<<<< HEAD
	datatype_low_level: INTEGER is
=======
	xml_from_datatype_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_DATATYPE"
 			}"
 		end

<<<<<<< HEAD
	dtd_low_level: INTEGER is
=======
	xml_from_dtd_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_DTD"
 			}"
 		end

<<<<<<< HEAD
	ftp_low_level: INTEGER is
=======
	xml_from_ftp_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_FTP"
 			}"
 		end

<<<<<<< HEAD
	html_low_level: INTEGER is
=======
	xml_from_html_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_HTML"
 			}"
 		end

<<<<<<< HEAD
	http_low_level: INTEGER is
=======
	xml_from_http_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_HTTP"
 			}"
 		end

<<<<<<< HEAD
	i18n_low_level: INTEGER is
=======
	xml_from_i18n_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_I18N"
 			}"
 		end

<<<<<<< HEAD
	io_low_level: INTEGER is
=======
	xml_from_io_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_IO"
 			}"
 		end

<<<<<<< HEAD
	memory_low_level: INTEGER is
=======
	xml_from_memory_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_MEMORY"
 			}"
 		end

<<<<<<< HEAD
	module_low_level: INTEGER is
=======
	xml_from_module_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_MODULE"
 			}"
 		end

<<<<<<< HEAD
	namespace_low_level: INTEGER is
=======
	xml_from_namespace_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_NAMESPACE"
 			}"
 		end

<<<<<<< HEAD
	none_low_level: INTEGER is
=======
	xml_from_none_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_NONE"
 			}"
 		end

<<<<<<< HEAD
	output_low_level: INTEGER is
=======
	xml_from_output_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_OUTPUT"
 			}"
 		end

<<<<<<< HEAD
	parser_low_level: INTEGER is
=======
	xml_from_parser_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_PARSER"
 			}"
 		end

<<<<<<< HEAD
	regexp_low_level: INTEGER is
=======
	xml_from_regexp_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_REGEXP"
 			}"
 		end

<<<<<<< HEAD
	relaxngp_low_level: INTEGER is
=======
	xml_from_relaxngp_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_RELAXNGP"
 			}"
 		end

<<<<<<< HEAD
	relaxngv_low_level: INTEGER is
=======
	xml_from_relaxngv_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_RELAXNGV"
 			}"
 		end

<<<<<<< HEAD
	schemasp_low_level: INTEGER is
=======
	xml_from_schemasp_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_SCHEMASP"
 			}"
 		end

<<<<<<< HEAD
	schemasv_low_level: INTEGER is
=======
	xml_from_schemasv_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_SCHEMASV"
 			}"
 		end

<<<<<<< HEAD
	schematronv_low_level: INTEGER is
=======
	xml_from_schematronv_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_SCHEMATRONV"
 			}"
 		end

<<<<<<< HEAD
	tree_low_level: INTEGER is
=======
	xml_from_tree_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_TREE"
 			}"
 		end

<<<<<<< HEAD
	valid_low_level: INTEGER is
=======
	xml_from_valid_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_VALID"
 			}"
 		end

<<<<<<< HEAD
	writer_low_level: INTEGER is
=======
	xml_from_writer_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_WRITER"
 			}"
 		end

<<<<<<< HEAD
	xinclude_low_level: INTEGER is
=======
	xml_from_xinclude_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_XINCLUDE"
 			}"
 		end

<<<<<<< HEAD
	xpath_low_level: INTEGER is
=======
	xml_from_xpath_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_XPATH"
 			}"
 		end

<<<<<<< HEAD
	xpointer_low_level: INTEGER is
=======
	xml_from_xpointer_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_XPOINTER"
 			}"
 		end

<<<<<<< HEAD
	xslt_low_level: INTEGER is
=======
	xml_from_xslt_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_XSLT"
 			}"
 		end


end -- class XML_ERROR_DOMAIN_ENUM
