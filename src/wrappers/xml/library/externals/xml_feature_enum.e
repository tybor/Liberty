-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class XML_FEATURE_ENUM

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
            Result := ((a_value = automata_low_level)  or else
				(a_value = c14n_low_level)  or else
				(a_value = catalog_low_level)  or else
				(a_value = debug_external_low_level)  or else
				(a_value = debug_mem_low_level)  or else
				(a_value = debug_run_low_level)  or else
				(a_value = expr_low_level)  or else
				(a_value = ftp_low_level)  or else
				(a_value = html_low_level)  or else
				(a_value = http_low_level)  or else
				(a_value = iconv_low_level)  or else
				(a_value = icu_low_level)  or else
				(a_value = iso8859x_low_level)  or else
				(a_value = legacy_low_level)  or else
				(a_value = modules_low_level)  or else
				(a_value = none_low_level)  or else
				(a_value = output_low_level)  or else
				(a_value = pattern_low_level)  or else
				(a_value = push_low_level)  or else
				(a_value = reader_low_level)  or else
				(a_value = regexp_low_level)  or else
				(a_value = sax1_low_level)  or else
				(a_value = schemas_low_level)  or else
				(a_value = schematron_low_level)  or else
				(a_value = thread_low_level)  or else
				(a_value = tree_low_level)  or else
				(a_value = unicode_low_level)  or else
				(a_value = valid_low_level)  or else
				(a_value = writer_low_level)  or else
				(a_value = xinclude_low_level)  or else
				(a_value = xpath_low_level)  or else
				(a_value = xptr_low_level)  or else
				(a_value = zlib_low_level) )
		end

feature {ANY} -- Setters
	default_create,
<<<<<<< HEAD
	set_automata is
=======
	set_xml_with_automata
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := automata_low_level
		end

<<<<<<< HEAD
	set_c14n is
=======
	set_xml_with_c14n
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := c14n_low_level
		end

<<<<<<< HEAD
	set_catalog is
=======
	set_xml_with_catalog
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := catalog_low_level
		end

<<<<<<< HEAD
	set_debug_external is
=======
	set_xml_with_debug
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := debug_external_low_level
		end

<<<<<<< HEAD
	set_debug_mem is
=======
	set_xml_with_debug_mem
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := debug_mem_low_level
		end

<<<<<<< HEAD
	set_debug_run is
=======
	set_xml_with_debug_run
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := debug_run_low_level
		end

<<<<<<< HEAD
	set_expr is
=======
	set_xml_with_expr
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := expr_low_level
		end

<<<<<<< HEAD
	set_ftp is
=======
	set_xml_with_ftp
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := ftp_low_level
		end

<<<<<<< HEAD
	set_html is
=======
	set_xml_with_html
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := html_low_level
		end

<<<<<<< HEAD
	set_http is
=======
	set_xml_with_http
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := http_low_level
		end

<<<<<<< HEAD
	set_iconv is
=======
	set_xml_with_iconv
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := iconv_low_level
		end

<<<<<<< HEAD
	set_icu is
=======
	set_xml_with_icu
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := icu_low_level
		end

<<<<<<< HEAD
	set_iso8859x is
=======
	set_xml_with_iso8859x
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := iso8859x_low_level
		end

<<<<<<< HEAD
	set_legacy is
=======
	set_xml_with_legacy
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := legacy_low_level
		end

<<<<<<< HEAD
	set_modules is
=======
	set_xml_with_modules
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := modules_low_level
		end

<<<<<<< HEAD
	set_none is
=======
	set_xml_with_none
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := none_low_level
		end

<<<<<<< HEAD
	set_output is
=======
	set_xml_with_output
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := output_low_level
		end

<<<<<<< HEAD
	set_pattern is
=======
	set_xml_with_pattern
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := pattern_low_level
		end

<<<<<<< HEAD
	set_push is
=======
	set_xml_with_push
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := push_low_level
		end

<<<<<<< HEAD
	set_reader is
=======
	set_xml_with_reader
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := reader_low_level
		end

<<<<<<< HEAD
	set_regexp is
=======
	set_xml_with_regexp
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := regexp_low_level
		end

<<<<<<< HEAD
	set_sax1 is
=======
	set_xml_with_sax1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := sax1_low_level
		end

<<<<<<< HEAD
	set_schemas is
=======
	set_xml_with_schemas
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemas_low_level
		end

<<<<<<< HEAD
	set_schematron is
=======
	set_xml_with_schematron
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schematron_low_level
		end

<<<<<<< HEAD
	set_thread is
=======
	set_xml_with_thread
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := thread_low_level
		end

<<<<<<< HEAD
	set_tree is
=======
	set_xml_with_tree
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := tree_low_level
		end

<<<<<<< HEAD
	set_unicode is
=======
	set_xml_with_unicode
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := unicode_low_level
		end

<<<<<<< HEAD
	set_valid is
=======
	set_xml_with_valid
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := valid_low_level
		end

<<<<<<< HEAD
	set_writer is
=======
	set_xml_with_writer
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := writer_low_level
		end

<<<<<<< HEAD
	set_xinclude is
=======
	set_xml_with_xinclude
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xinclude_low_level
		end

<<<<<<< HEAD
	set_xpath is
=======
	set_xml_with_xpath
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xpath_low_level
		end

<<<<<<< HEAD
	set_xptr is
=======
	set_xml_with_xptr
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xptr_low_level
		end

<<<<<<< HEAD
	set_zlib is
=======
	set_xml_with_zlib
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := zlib_low_level
		end

<<<<<<< HEAD
feature {ANY} -- Queries
	is_automata: BOOLEAN is
=======
feature -- Queries
	is_xml_with_automata: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=automata_low_level)
		end

<<<<<<< HEAD
	is_c14n: BOOLEAN is
=======
	is_xml_with_c14n: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=c14n_low_level)
		end

<<<<<<< HEAD
	is_catalog: BOOLEAN is
=======
	is_xml_with_catalog: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=catalog_low_level)
		end

<<<<<<< HEAD
	is_debug_external: BOOLEAN is
=======
	is_xml_with_debug: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=debug_external_low_level)
		end

<<<<<<< HEAD
	is_debug_mem: BOOLEAN is
=======
	is_xml_with_debug_mem: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=debug_mem_low_level)
		end

<<<<<<< HEAD
	is_debug_run: BOOLEAN is
=======
	is_xml_with_debug_run: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=debug_run_low_level)
		end

<<<<<<< HEAD
	is_expr: BOOLEAN is
=======
	is_xml_with_expr: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=expr_low_level)
		end

<<<<<<< HEAD
	is_ftp: BOOLEAN is
=======
	is_xml_with_ftp: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=ftp_low_level)
		end

<<<<<<< HEAD
	is_html: BOOLEAN is
=======
	is_xml_with_html: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=html_low_level)
		end

<<<<<<< HEAD
	is_http: BOOLEAN is
=======
	is_xml_with_http: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=http_low_level)
		end

<<<<<<< HEAD
	is_iconv: BOOLEAN is
=======
	is_xml_with_iconv: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=iconv_low_level)
		end

<<<<<<< HEAD
	is_icu: BOOLEAN is
=======
	is_xml_with_icu: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=icu_low_level)
		end

<<<<<<< HEAD
	is_iso8859x: BOOLEAN is
=======
	is_xml_with_iso8859x: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=iso8859x_low_level)
		end

<<<<<<< HEAD
	is_legacy: BOOLEAN is
=======
	is_xml_with_legacy: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=legacy_low_level)
		end

<<<<<<< HEAD
	is_modules: BOOLEAN is
=======
	is_xml_with_modules: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=modules_low_level)
		end

<<<<<<< HEAD
	is_none: BOOLEAN is
=======
	is_xml_with_none: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=none_low_level)
		end

<<<<<<< HEAD
	is_output: BOOLEAN is
=======
	is_xml_with_output: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=output_low_level)
		end

<<<<<<< HEAD
	is_pattern: BOOLEAN is
=======
	is_xml_with_pattern: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=pattern_low_level)
		end

<<<<<<< HEAD
	is_push: BOOLEAN is
=======
	is_xml_with_push: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=push_low_level)
		end

<<<<<<< HEAD
	is_reader: BOOLEAN is
=======
	is_xml_with_reader: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=reader_low_level)
		end

<<<<<<< HEAD
	is_regexp: BOOLEAN is
=======
	is_xml_with_regexp: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=regexp_low_level)
		end

<<<<<<< HEAD
	is_sax1: BOOLEAN is
=======
	is_xml_with_sax1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=sax1_low_level)
		end

<<<<<<< HEAD
	is_schemas: BOOLEAN is
=======
	is_xml_with_schemas: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemas_low_level)
		end

<<<<<<< HEAD
	is_schematron: BOOLEAN is
=======
	is_xml_with_schematron: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schematron_low_level)
		end

<<<<<<< HEAD
	is_thread: BOOLEAN is
=======
	is_xml_with_thread: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=thread_low_level)
		end

<<<<<<< HEAD
	is_tree: BOOLEAN is
=======
	is_xml_with_tree: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=tree_low_level)
		end

<<<<<<< HEAD
	is_unicode: BOOLEAN is
=======
	is_xml_with_unicode: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=unicode_low_level)
		end

<<<<<<< HEAD
	is_valid: BOOLEAN is
=======
	is_xml_with_valid: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=valid_low_level)
		end

<<<<<<< HEAD
	is_writer: BOOLEAN is
=======
	is_xml_with_writer: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=writer_low_level)
		end

<<<<<<< HEAD
	is_xinclude: BOOLEAN is
=======
	is_xml_with_xinclude: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xinclude_low_level)
		end

<<<<<<< HEAD
	is_xpath: BOOLEAN is
=======
	is_xml_with_xpath: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xpath_low_level)
		end

<<<<<<< HEAD
	is_xptr: BOOLEAN is
=======
	is_xml_with_xptr: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xptr_low_level)
		end

<<<<<<< HEAD
	is_zlib: BOOLEAN is
=======
	is_xml_with_zlib: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=zlib_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
<<<<<<< HEAD
	automata_low_level: INTEGER is
=======
	xml_with_automata_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WITH_AUTOMATA"
 			}"
 		end

<<<<<<< HEAD
	c14n_low_level: INTEGER is
=======
	xml_with_c14n_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WITH_C14N"
 			}"
 		end

<<<<<<< HEAD
	catalog_low_level: INTEGER is
=======
	xml_with_catalog_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WITH_CATALOG"
 			}"
 		end

<<<<<<< HEAD
	debug_external_low_level: INTEGER is
=======
	xml_with_debug_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WITH_DEBUG"
 			}"
 		end

<<<<<<< HEAD
	debug_mem_low_level: INTEGER is
=======
	xml_with_debug_mem_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WITH_DEBUG_MEM"
 			}"
 		end

<<<<<<< HEAD
	debug_run_low_level: INTEGER is
=======
	xml_with_debug_run_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WITH_DEBUG_RUN"
 			}"
 		end

<<<<<<< HEAD
	expr_low_level: INTEGER is
=======
	xml_with_expr_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WITH_EXPR"
 			}"
 		end

<<<<<<< HEAD
	ftp_low_level: INTEGER is
=======
	xml_with_ftp_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WITH_FTP"
 			}"
 		end

<<<<<<< HEAD
	html_low_level: INTEGER is
=======
	xml_with_html_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WITH_HTML"
 			}"
 		end

<<<<<<< HEAD
	http_low_level: INTEGER is
=======
	xml_with_http_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WITH_HTTP"
 			}"
 		end

<<<<<<< HEAD
	iconv_low_level: INTEGER is
=======
	xml_with_iconv_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WITH_ICONV"
 			}"
 		end

<<<<<<< HEAD
	icu_low_level: INTEGER is
=======
	xml_with_icu_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WITH_ICU"
 			}"
 		end

<<<<<<< HEAD
	iso8859x_low_level: INTEGER is
=======
	xml_with_iso8859x_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WITH_ISO8859X"
 			}"
 		end

<<<<<<< HEAD
	legacy_low_level: INTEGER is
=======
	xml_with_legacy_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WITH_LEGACY"
 			}"
 		end

<<<<<<< HEAD
	modules_low_level: INTEGER is
=======
	xml_with_modules_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WITH_MODULES"
 			}"
 		end

<<<<<<< HEAD
	none_low_level: INTEGER is
=======
	xml_with_none_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WITH_NONE"
 			}"
 		end

<<<<<<< HEAD
	output_low_level: INTEGER is
=======
	xml_with_output_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WITH_OUTPUT"
 			}"
 		end

<<<<<<< HEAD
	pattern_low_level: INTEGER is
=======
	xml_with_pattern_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WITH_PATTERN"
 			}"
 		end

<<<<<<< HEAD
	push_low_level: INTEGER is
=======
	xml_with_push_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WITH_PUSH"
 			}"
 		end

<<<<<<< HEAD
	reader_low_level: INTEGER is
=======
	xml_with_reader_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WITH_READER"
 			}"
 		end

<<<<<<< HEAD
	regexp_low_level: INTEGER is
=======
	xml_with_regexp_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WITH_REGEXP"
 			}"
 		end

<<<<<<< HEAD
	sax1_low_level: INTEGER is
=======
	xml_with_sax1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WITH_SAX1"
 			}"
 		end

<<<<<<< HEAD
	schemas_low_level: INTEGER is
=======
	xml_with_schemas_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WITH_SCHEMAS"
 			}"
 		end

<<<<<<< HEAD
	schematron_low_level: INTEGER is
=======
	xml_with_schematron_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WITH_SCHEMATRON"
 			}"
 		end

<<<<<<< HEAD
	thread_low_level: INTEGER is
=======
	xml_with_thread_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WITH_THREAD"
 			}"
 		end

<<<<<<< HEAD
	tree_low_level: INTEGER is
=======
	xml_with_tree_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WITH_TREE"
 			}"
 		end

<<<<<<< HEAD
	unicode_low_level: INTEGER is
=======
	xml_with_unicode_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WITH_UNICODE"
 			}"
 		end

<<<<<<< HEAD
	valid_low_level: INTEGER is
=======
	xml_with_valid_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WITH_VALID"
 			}"
 		end

<<<<<<< HEAD
	writer_low_level: INTEGER is
=======
	xml_with_writer_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WITH_WRITER"
 			}"
 		end

<<<<<<< HEAD
	xinclude_low_level: INTEGER is
=======
	xml_with_xinclude_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WITH_XINCLUDE"
 			}"
 		end

<<<<<<< HEAD
	xpath_low_level: INTEGER is
=======
	xml_with_xpath_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WITH_XPATH"
 			}"
 		end

<<<<<<< HEAD
	xptr_low_level: INTEGER is
=======
	xml_with_xptr_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WITH_XPTR"
 			}"
 		end

<<<<<<< HEAD
	zlib_low_level: INTEGER is
=======
	xml_with_zlib_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WITH_ZLIB"
 			}"
 		end


end -- class XML_FEATURE_ENUM
