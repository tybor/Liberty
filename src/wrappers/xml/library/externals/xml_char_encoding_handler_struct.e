-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class XML_CHAR_ENCODING_HANDLER_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	LIBXML2_TYPES
feature {} -- Low-level setters

	xml_char_encoding_handler_struct_set_name (a_structure: POINTER; a_value: POINTER) is
			-- Setter for name field of XML_CHAR_ENCODING_HANDLER_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_char_encoding_handler_struct_set_name"
		}"
		end

	xml_char_encoding_handler_struct_set_input (a_structure: POINTER; a_value: POINTER) is
			-- Setter for input field of XML_CHAR_ENCODING_HANDLER_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_char_encoding_handler_struct_set_input"
		}"
		end

	xml_char_encoding_handler_struct_set_output (a_structure: POINTER; a_value: POINTER) is
			-- Setter for output field of XML_CHAR_ENCODING_HANDLER_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_char_encoding_handler_struct_set_output"
		}"
		end

	xml_char_encoding_handler_struct_set_iconv_in (a_structure: POINTER; a_value: POINTER) is
			-- Setter for iconv_in field of XML_CHAR_ENCODING_HANDLER_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_char_encoding_handler_struct_set_iconv_in"
		}"
		end

	xml_char_encoding_handler_struct_set_iconv_out (a_structure: POINTER; a_value: POINTER) is
			-- Setter for iconv_out field of XML_CHAR_ENCODING_HANDLER_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_char_encoding_handler_struct_set_iconv_out"
		}"
		end

feature {} -- Low-level queries

	xml_char_encoding_handler_struct_get_name (a_structure: POINTER): POINTER is
			-- Query for name field of XML_CHAR_ENCODING_HANDLER_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_char_encoding_handler_struct_get_name"
		}"
		end

	xml_char_encoding_handler_struct_get_input (a_structure: POINTER): POINTER is
			-- Query for input field of XML_CHAR_ENCODING_HANDLER_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_char_encoding_handler_struct_get_input"
		}"
		end

	xml_char_encoding_handler_struct_get_output (a_structure: POINTER): POINTER is
			-- Query for output field of XML_CHAR_ENCODING_HANDLER_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_char_encoding_handler_struct_get_output"
		}"
		end

	xml_char_encoding_handler_struct_get_iconv_in (a_structure: POINTER): POINTER is
			-- Query for iconv_in field of XML_CHAR_ENCODING_HANDLER_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_char_encoding_handler_struct_get_iconv_in"
		}"
		end

	xml_char_encoding_handler_struct_get_iconv_out (a_structure: POINTER): POINTER is
			-- Query for iconv_out field of XML_CHAR_ENCODING_HANDLER_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_char_encoding_handler_struct_get_iconv_out"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__xmlCharEncodingHandler"
		}"
		end

end -- class XML_CHAR_ENCODING_HANDLER_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

