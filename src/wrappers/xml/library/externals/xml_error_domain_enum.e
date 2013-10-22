-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class XML_ERROR_DOMAIN_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
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
	set_c14n is
		do
			value := c14n_low_level
		end

	set_catalog is
		do
			value := catalog_low_level
		end

	set_check_external is
		do
			value := check_external_low_level
		end

	set_datatype is
		do
			value := datatype_low_level
		end

	set_dtd is
		do
			value := dtd_low_level
		end

	set_ftp is
		do
			value := ftp_low_level
		end

	set_html is
		do
			value := html_low_level
		end

	set_http is
		do
			value := http_low_level
		end

	set_i18n is
		do
			value := i18n_low_level
		end

	set_io is
		do
			value := io_low_level
		end

	set_memory is
		do
			value := memory_low_level
		end

	set_module is
		do
			value := module_low_level
		end

	set_namespace is
		do
			value := namespace_low_level
		end

	set_none is
		do
			value := none_low_level
		end

	set_output is
		do
			value := output_low_level
		end

	set_parser is
		do
			value := parser_low_level
		end

	set_regexp is
		do
			value := regexp_low_level
		end

	set_relaxngp is
		do
			value := relaxngp_low_level
		end

	set_relaxngv is
		do
			value := relaxngv_low_level
		end

	set_schemasp is
		do
			value := schemasp_low_level
		end

	set_schemasv is
		do
			value := schemasv_low_level
		end

	set_schematronv is
		do
			value := schematronv_low_level
		end

	set_tree is
		do
			value := tree_low_level
		end

	set_valid is
		do
			value := valid_low_level
		end

	set_writer is
		do
			value := writer_low_level
		end

	set_xinclude is
		do
			value := xinclude_low_level
		end

	set_xpath is
		do
			value := xpath_low_level
		end

	set_xpointer is
		do
			value := xpointer_low_level
		end

	set_xslt is
		do
			value := xslt_low_level
		end

feature {ANY} -- Queries
	is_c14n: BOOLEAN is
		do
			Result := (value=c14n_low_level)
		end

	is_catalog: BOOLEAN is
		do
			Result := (value=catalog_low_level)
		end

	is_check_external: BOOLEAN is
		do
			Result := (value=check_external_low_level)
		end

	is_datatype: BOOLEAN is
		do
			Result := (value=datatype_low_level)
		end

	is_dtd: BOOLEAN is
		do
			Result := (value=dtd_low_level)
		end

	is_ftp: BOOLEAN is
		do
			Result := (value=ftp_low_level)
		end

	is_html: BOOLEAN is
		do
			Result := (value=html_low_level)
		end

	is_http: BOOLEAN is
		do
			Result := (value=http_low_level)
		end

	is_i18n: BOOLEAN is
		do
			Result := (value=i18n_low_level)
		end

	is_io: BOOLEAN is
		do
			Result := (value=io_low_level)
		end

	is_memory: BOOLEAN is
		do
			Result := (value=memory_low_level)
		end

	is_module: BOOLEAN is
		do
			Result := (value=module_low_level)
		end

	is_namespace: BOOLEAN is
		do
			Result := (value=namespace_low_level)
		end

	is_none: BOOLEAN is
		do
			Result := (value=none_low_level)
		end

	is_output: BOOLEAN is
		do
			Result := (value=output_low_level)
		end

	is_parser: BOOLEAN is
		do
			Result := (value=parser_low_level)
		end

	is_regexp: BOOLEAN is
		do
			Result := (value=regexp_low_level)
		end

	is_relaxngp: BOOLEAN is
		do
			Result := (value=relaxngp_low_level)
		end

	is_relaxngv: BOOLEAN is
		do
			Result := (value=relaxngv_low_level)
		end

	is_schemasp: BOOLEAN is
		do
			Result := (value=schemasp_low_level)
		end

	is_schemasv: BOOLEAN is
		do
			Result := (value=schemasv_low_level)
		end

	is_schematronv: BOOLEAN is
		do
			Result := (value=schematronv_low_level)
		end

	is_tree: BOOLEAN is
		do
			Result := (value=tree_low_level)
		end

	is_valid: BOOLEAN is
		do
			Result := (value=valid_low_level)
		end

	is_writer: BOOLEAN is
		do
			Result := (value=writer_low_level)
		end

	is_xinclude: BOOLEAN is
		do
			Result := (value=xinclude_low_level)
		end

	is_xpath: BOOLEAN is
		do
			Result := (value=xpath_low_level)
		end

	is_xpointer: BOOLEAN is
		do
			Result := (value=xpointer_low_level)
		end

	is_xslt: BOOLEAN is
		do
			Result := (value=xslt_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	c14n_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_C14N"
 			}"
 		end

	catalog_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_CATALOG"
 			}"
 		end

	check_external_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_CHECK"
 			}"
 		end

	datatype_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_DATATYPE"
 			}"
 		end

	dtd_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_DTD"
 			}"
 		end

	ftp_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_FTP"
 			}"
 		end

	html_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_HTML"
 			}"
 		end

	http_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_HTTP"
 			}"
 		end

	i18n_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_I18N"
 			}"
 		end

	io_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_IO"
 			}"
 		end

	memory_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_MEMORY"
 			}"
 		end

	module_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_MODULE"
 			}"
 		end

	namespace_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_NAMESPACE"
 			}"
 		end

	none_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_NONE"
 			}"
 		end

	output_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_OUTPUT"
 			}"
 		end

	parser_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_PARSER"
 			}"
 		end

	regexp_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_REGEXP"
 			}"
 		end

	relaxngp_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_RELAXNGP"
 			}"
 		end

	relaxngv_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_RELAXNGV"
 			}"
 		end

	schemasp_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_SCHEMASP"
 			}"
 		end

	schemasv_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_SCHEMASV"
 			}"
 		end

	schematronv_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_SCHEMATRONV"
 			}"
 		end

	tree_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_TREE"
 			}"
 		end

	valid_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_VALID"
 			}"
 		end

	writer_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_WRITER"
 			}"
 		end

	xinclude_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_XINCLUDE"
 			}"
 		end

	xpath_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_XPATH"
 			}"
 		end

	xpointer_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_XPOINTER"
 			}"
 		end

	xslt_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FROM_XSLT"
 			}"
 		end


end -- class XML_ERROR_DOMAIN_ENUM
