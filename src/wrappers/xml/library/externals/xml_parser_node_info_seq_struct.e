-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class XML_PARSER_NODE_INFO_SEQ_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	LIBXML2_TYPES
feature {} -- Low-level setters

	xml_parser_node_info_seq_struct_set_maximum (a_structure: POINTER; a_value: like long_unsigned) is
			-- Setter for maximum field of XML_PARSER_NODE_INFO_SEQ_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_parser_node_info_seq_struct_set_maximum"
		}"
		end

	xml_parser_node_info_seq_struct_set_length (a_structure: POINTER; a_value: like long_unsigned) is
			-- Setter for length field of XML_PARSER_NODE_INFO_SEQ_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_parser_node_info_seq_struct_set_length"
		}"
		end

	xml_parser_node_info_seq_struct_set_buffer (a_structure: POINTER; a_value: POINTER) is
			-- Setter for buffer field of XML_PARSER_NODE_INFO_SEQ_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_parser_node_info_seq_struct_set_buffer"
		}"
		end

feature {} -- Low-level queries

	xml_parser_node_info_seq_struct_get_maximum (a_structure: POINTER): like long_unsigned is
			-- Query for maximum field of XML_PARSER_NODE_INFO_SEQ_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_parser_node_info_seq_struct_get_maximum"
		}"
		end

	xml_parser_node_info_seq_struct_get_length (a_structure: POINTER): like long_unsigned is
			-- Query for length field of XML_PARSER_NODE_INFO_SEQ_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_parser_node_info_seq_struct_get_length"
		}"
		end

	xml_parser_node_info_seq_struct_get_buffer (a_structure: POINTER): POINTER is
			-- Query for buffer field of XML_PARSER_NODE_INFO_SEQ_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_parser_node_info_seq_struct_get_buffer"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__xmlParserNodeInfoSeq"
		}"
		end

end -- class XML_PARSER_NODE_INFO_SEQ_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

