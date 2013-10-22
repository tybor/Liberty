-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class XML_DOC_PROPERTIES_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := (a_value & (dtdvalid_low_level | 
				html_low_level | 
				internal_low_level | 
				nsvalid_low_level | 
				old10_low_level | 
				userbuilt_low_level | 
				wellformed_low_level | 
				xinclude_low_level)).to_boolean
		end

feature {ANY} -- Setters
	default_create,
	set_dtdvalid is
		do
			value := value.bit_or(dtdvalid_low_level)
		end

	unset_dtdvalid is
		do
			value := value.bit_xor(dtdvalid_low_level)
		end

	set_html is
		do
			value := value.bit_or(html_low_level)
		end

	unset_html is
		do
			value := value.bit_xor(html_low_level)
		end

	set_internal is
		do
			value := value.bit_or(internal_low_level)
		end

	unset_internal is
		do
			value := value.bit_xor(internal_low_level)
		end

	set_nsvalid is
		do
			value := value.bit_or(nsvalid_low_level)
		end

	unset_nsvalid is
		do
			value := value.bit_xor(nsvalid_low_level)
		end

	set_old10 is
		do
			value := value.bit_or(old10_low_level)
		end

	unset_old10 is
		do
			value := value.bit_xor(old10_low_level)
		end

	set_userbuilt is
		do
			value := value.bit_or(userbuilt_low_level)
		end

	unset_userbuilt is
		do
			value := value.bit_xor(userbuilt_low_level)
		end

	set_wellformed is
		do
			value := value.bit_or(wellformed_low_level)
		end

	unset_wellformed is
		do
			value := value.bit_xor(wellformed_low_level)
		end

	set_xinclude is
		do
			value := value.bit_or(xinclude_low_level)
		end

	unset_xinclude is
		do
			value := value.bit_xor(xinclude_low_level)
		end

feature {ANY} -- Queries
	is_dtdvalid: BOOLEAN is
		do
			Result := (value=dtdvalid_low_level)
		end

	is_html: BOOLEAN is
		do
			Result := (value=html_low_level)
		end

	is_internal: BOOLEAN is
		do
			Result := (value=internal_low_level)
		end

	is_nsvalid: BOOLEAN is
		do
			Result := (value=nsvalid_low_level)
		end

	is_old10: BOOLEAN is
		do
			Result := (value=old10_low_level)
		end

	is_userbuilt: BOOLEAN is
		do
			Result := (value=userbuilt_low_level)
		end

	is_wellformed: BOOLEAN is
		do
			Result := (value=wellformed_low_level)
		end

	is_xinclude: BOOLEAN is
		do
			Result := (value=xinclude_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	dtdvalid_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "XML_DOC_DTDVALID"
 			}"
 		end

	html_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "XML_DOC_HTML"
 			}"
 		end

	internal_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "XML_DOC_INTERNAL"
 			}"
 		end

	nsvalid_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "XML_DOC_NSVALID"
 			}"
 		end

	old10_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "XML_DOC_OLD10"
 			}"
 		end

	userbuilt_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "XML_DOC_USERBUILT"
 			}"
 		end

	wellformed_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "XML_DOC_WELLFORMED"
 			}"
 		end

	xinclude_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "XML_DOC_XINCLUDE"
 			}"
 		end


end -- class XML_DOC_PROPERTIES_ENUM
