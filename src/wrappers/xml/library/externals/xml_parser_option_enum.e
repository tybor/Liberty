-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class XML_PARSER_OPTION_ENUM

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
            Result := (a_value & (compact_low_level | 
				dtdattr_low_level | 
				dtdload_low_level | 
				dtdvalid_low_level | 
				huge_low_level | 
				nobasefix_low_level | 
				noblanks_low_level | 
				nocdata_low_level | 
				nodict_low_level | 
				noent_low_level | 
				noerror_low_level | 
				nonet_low_level | 
				nowarning_low_level | 
				noxincnode_low_level | 
				nsclean_low_level | 
				old10_low_level | 
				oldsax_low_level | 
				pedantic_low_level | 
				recover_low_level | 
				sax1_low_level | 
				xinclude_low_level)).to_boolean
		end

feature {ANY} -- Setters
	default_create,
<<<<<<< HEAD
	set_compact is
=======
	set_xml_parse_compact
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_or(compact_low_level)
		end

<<<<<<< HEAD
	unset_compact is
=======
	unset_xml_parse_compact
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_xor(compact_low_level)
		end

<<<<<<< HEAD
	set_dtdattr is
=======
	set_xml_parse_dtdload
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_or(dtdattr_low_level)
		end

<<<<<<< HEAD
	unset_dtdattr is
=======
	unset_xml_parse_dtdload
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_xor(dtdattr_low_level)
		end

<<<<<<< HEAD
	set_dtdload is
=======
	set_xml_parse_dtdvalid
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_or(dtdload_low_level)
		end

<<<<<<< HEAD
	unset_dtdload is
=======
	unset_xml_parse_dtdvalid
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_xor(dtdload_low_level)
		end

<<<<<<< HEAD
	set_dtdvalid is
=======
	set_xml_parse_huge
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_or(dtdvalid_low_level)
		end

<<<<<<< HEAD
	unset_dtdvalid is
=======
	unset_xml_parse_huge
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_xor(dtdvalid_low_level)
		end

<<<<<<< HEAD
	set_huge is
=======
	set_xml_parse_nobasefix
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_or(huge_low_level)
		end

<<<<<<< HEAD
	unset_huge is
=======
	unset_xml_parse_nobasefix
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_xor(huge_low_level)
		end

<<<<<<< HEAD
	set_nobasefix is
=======
	set_xml_parse_noblanks
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_or(nobasefix_low_level)
		end

<<<<<<< HEAD
	unset_nobasefix is
=======
	unset_xml_parse_noblanks
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_xor(nobasefix_low_level)
		end

<<<<<<< HEAD
	set_noblanks is
=======
	set_xml_parse_nocdata
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_or(noblanks_low_level)
		end

<<<<<<< HEAD
	unset_noblanks is
=======
	unset_xml_parse_nocdata
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_xor(noblanks_low_level)
		end

<<<<<<< HEAD
	set_nocdata is
=======
	set_xml_parse_nodict
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_or(nocdata_low_level)
		end

<<<<<<< HEAD
	unset_nocdata is
=======
	unset_xml_parse_nodict
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_xor(nocdata_low_level)
		end

<<<<<<< HEAD
	set_nodict is
=======
	set_xml_parse_noent
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_or(nodict_low_level)
		end

<<<<<<< HEAD
	unset_nodict is
=======
	unset_xml_parse_noent
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_xor(nodict_low_level)
		end

<<<<<<< HEAD
	set_noent is
=======
	set_xml_parse_noerror
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_or(noent_low_level)
		end

<<<<<<< HEAD
	unset_noent is
=======
	unset_xml_parse_noerror
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_xor(noent_low_level)
		end

<<<<<<< HEAD
	set_noerror is
=======
	set_xml_parse_nonet
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_or(noerror_low_level)
		end

<<<<<<< HEAD
	unset_noerror is
=======
	unset_xml_parse_nonet
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_xor(noerror_low_level)
		end

<<<<<<< HEAD
	set_nonet is
=======
	set_xml_parse_nowarning
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_or(nonet_low_level)
		end

<<<<<<< HEAD
	unset_nonet is
=======
	unset_xml_parse_nowarning
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_xor(nonet_low_level)
		end

<<<<<<< HEAD
	set_nowarning is
=======
	set_xml_parse_noxincnode
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_or(nowarning_low_level)
		end

<<<<<<< HEAD
	unset_nowarning is
=======
	unset_xml_parse_noxincnode
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_xor(nowarning_low_level)
		end

<<<<<<< HEAD
	set_noxincnode is
=======
	set_xml_parse_nsclean
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_or(noxincnode_low_level)
		end

<<<<<<< HEAD
	unset_noxincnode is
=======
	unset_xml_parse_nsclean
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_xor(noxincnode_low_level)
		end

<<<<<<< HEAD
	set_nsclean is
=======
	set_xml_parse_old10
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_or(nsclean_low_level)
		end

<<<<<<< HEAD
	unset_nsclean is
=======
	unset_xml_parse_old10
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_xor(nsclean_low_level)
		end

<<<<<<< HEAD
	set_old10 is
=======
	set_xml_parse_oldsax
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_or(old10_low_level)
		end

<<<<<<< HEAD
	unset_old10 is
=======
	unset_xml_parse_oldsax
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_xor(old10_low_level)
		end

<<<<<<< HEAD
	set_oldsax is
=======
	set_xml_parse_pedantic
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_or(oldsax_low_level)
		end

<<<<<<< HEAD
	unset_oldsax is
=======
	unset_xml_parse_pedantic
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_xor(oldsax_low_level)
		end

<<<<<<< HEAD
	set_pedantic is
=======
	set_xml_parse_recover
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_or(pedantic_low_level)
		end

<<<<<<< HEAD
	unset_pedantic is
=======
	unset_xml_parse_recover
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_xor(pedantic_low_level)
		end

<<<<<<< HEAD
	set_recover is
=======
	set_xml_parse_sax1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_or(recover_low_level)
		end

<<<<<<< HEAD
	unset_recover is
=======
	unset_xml_parse_sax1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_xor(recover_low_level)
		end

<<<<<<< HEAD
	set_sax1 is
=======
	set_xml_parse_xinclude
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_or(sax1_low_level)
		end

<<<<<<< HEAD
	unset_sax1 is
=======
	unset_xml_parse_xinclude
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_xor(sax1_low_level)
		end

<<<<<<< HEAD
	set_xinclude is
=======
feature -- Queries
	is_xml_parse_compact: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_or(xinclude_low_level)
		end

<<<<<<< HEAD
	unset_xinclude is
=======
	is_xml_parse_dtdload: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := value.bit_xor(xinclude_low_level)
		end

<<<<<<< HEAD
feature {ANY} -- Queries
	is_compact: BOOLEAN is
=======
	is_xml_parse_dtdvalid: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=compact_low_level)
		end

<<<<<<< HEAD
	is_dtdattr: BOOLEAN is
=======
	is_xml_parse_huge: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtdattr_low_level)
		end

<<<<<<< HEAD
	is_dtdload: BOOLEAN is
=======
	is_xml_parse_nobasefix: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtdload_low_level)
		end

<<<<<<< HEAD
	is_dtdvalid: BOOLEAN is
=======
	is_xml_parse_noblanks: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtdvalid_low_level)
		end

<<<<<<< HEAD
	is_huge: BOOLEAN is
=======
	is_xml_parse_nocdata: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=huge_low_level)
		end

<<<<<<< HEAD
	is_nobasefix: BOOLEAN is
=======
	is_xml_parse_nodict: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=nobasefix_low_level)
		end

<<<<<<< HEAD
	is_noblanks: BOOLEAN is
=======
	is_xml_parse_noent: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=noblanks_low_level)
		end

<<<<<<< HEAD
	is_nocdata: BOOLEAN is
=======
	is_xml_parse_noerror: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=nocdata_low_level)
		end

<<<<<<< HEAD
	is_nodict: BOOLEAN is
=======
	is_xml_parse_nonet: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=nodict_low_level)
		end

<<<<<<< HEAD
	is_noent: BOOLEAN is
=======
	is_xml_parse_nowarning: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=noent_low_level)
		end

<<<<<<< HEAD
	is_noerror: BOOLEAN is
=======
	is_xml_parse_noxincnode: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=noerror_low_level)
		end

<<<<<<< HEAD
	is_nonet: BOOLEAN is
=======
	is_xml_parse_nsclean: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=nonet_low_level)
		end

<<<<<<< HEAD
	is_nowarning: BOOLEAN is
=======
	is_xml_parse_old10: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=nowarning_low_level)
		end

<<<<<<< HEAD
	is_noxincnode: BOOLEAN is
=======
	is_xml_parse_oldsax: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=noxincnode_low_level)
		end

<<<<<<< HEAD
	is_nsclean: BOOLEAN is
=======
	is_xml_parse_pedantic: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=nsclean_low_level)
		end

<<<<<<< HEAD
	is_old10: BOOLEAN is
=======
	is_xml_parse_recover: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=old10_low_level)
		end

<<<<<<< HEAD
	is_oldsax: BOOLEAN is
=======
	is_xml_parse_sax1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=oldsax_low_level)
		end

<<<<<<< HEAD
	is_pedantic: BOOLEAN is
=======
	is_xml_parse_xinclude: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=pedantic_low_level)
		end

	is_recover: BOOLEAN is
		do
			Result := (value=recover_low_level)
		end

	is_sax1: BOOLEAN is
		do
			Result := (value=sax1_low_level)
		end

	is_xinclude: BOOLEAN is
		do
			Result := (value=xinclude_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
<<<<<<< HEAD
	compact_low_level: INTEGER is
=======
	xml_parse_compact_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "XML_PARSE_COMPACT"
 			}"
 		end

<<<<<<< HEAD
	dtdattr_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "XML_PARSE_DTDATTR"
 			}"
 		end

	dtdload_low_level: INTEGER is
=======
	xml_parse_dtdload_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "XML_PARSE_DTDLOAD"
 			}"
 		end

<<<<<<< HEAD
	dtdvalid_low_level: INTEGER is
=======
	xml_parse_dtdvalid_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "XML_PARSE_DTDVALID"
 			}"
 		end

<<<<<<< HEAD
	huge_low_level: INTEGER is
=======
	xml_parse_huge_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "XML_PARSE_HUGE"
 			}"
 		end

<<<<<<< HEAD
	nobasefix_low_level: INTEGER is
=======
	xml_parse_nobasefix_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "XML_PARSE_NOBASEFIX"
 			}"
 		end

<<<<<<< HEAD
	noblanks_low_level: INTEGER is
=======
	xml_parse_noblanks_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "XML_PARSE_NOBLANKS"
 			}"
 		end

<<<<<<< HEAD
	nocdata_low_level: INTEGER is
=======
	xml_parse_nocdata_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "XML_PARSE_NOCDATA"
 			}"
 		end

<<<<<<< HEAD
	nodict_low_level: INTEGER is
=======
	xml_parse_nodict_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "XML_PARSE_NODICT"
 			}"
 		end

<<<<<<< HEAD
	noent_low_level: INTEGER is
=======
	xml_parse_noent_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "XML_PARSE_NOENT"
 			}"
 		end

<<<<<<< HEAD
	noerror_low_level: INTEGER is
=======
	xml_parse_noerror_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "XML_PARSE_NOERROR"
 			}"
 		end

<<<<<<< HEAD
	nonet_low_level: INTEGER is
=======
	xml_parse_nonet_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "XML_PARSE_NONET"
 			}"
 		end

<<<<<<< HEAD
	nowarning_low_level: INTEGER is
=======
	xml_parse_nowarning_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "XML_PARSE_NOWARNING"
 			}"
 		end

<<<<<<< HEAD
	noxincnode_low_level: INTEGER is
=======
	xml_parse_noxincnode_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "XML_PARSE_NOXINCNODE"
 			}"
 		end

<<<<<<< HEAD
	nsclean_low_level: INTEGER is
=======
	xml_parse_nsclean_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "XML_PARSE_NSCLEAN"
 			}"
 		end

<<<<<<< HEAD
	old10_low_level: INTEGER is
=======
	xml_parse_old10_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "XML_PARSE_OLD10"
 			}"
 		end

<<<<<<< HEAD
	oldsax_low_level: INTEGER is
=======
	xml_parse_oldsax_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "XML_PARSE_OLDSAX"
 			}"
 		end

<<<<<<< HEAD
	pedantic_low_level: INTEGER is
=======
	xml_parse_pedantic_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "XML_PARSE_PEDANTIC"
 			}"
 		end

<<<<<<< HEAD
	recover_low_level: INTEGER is
=======
	xml_parse_recover_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "XML_PARSE_RECOVER"
 			}"
 		end

<<<<<<< HEAD
	sax1_low_level: INTEGER is
=======
	xml_parse_sax1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "XML_PARSE_SAX1"
 			}"
 		end

<<<<<<< HEAD
	xinclude_low_level: INTEGER is
=======
	xml_parse_xinclude_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "XML_PARSE_XINCLUDE"
 			}"
 		end


end -- class XML_PARSER_OPTION_ENUM
