-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class XML_PARSER_NODE_INFO_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	LIBXML2_TYPES
feature {} -- Low-level setters

	xml_parser_node_info_struct_set_node (a_structure: POINTER; a_value: POINTER)
			-- Setter for node field of XML_PARSER_NODE_INFO_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_parser_node_info_struct_set_node"
		}"
		end

	xml_parser_node_info_struct_set_begin_pos (a_structure: POINTER; a_value: like long_unsigned)
			-- Setter for begin_pos field of XML_PARSER_NODE_INFO_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_parser_node_info_struct_set_begin_pos"
		}"
		end

	xml_parser_node_info_struct_set_begin_line (a_structure: POINTER; a_value: like long_unsigned)
			-- Setter for begin_line field of XML_PARSER_NODE_INFO_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_parser_node_info_struct_set_begin_line"
		}"
		end

	xml_parser_node_info_struct_set_end_pos (a_structure: POINTER; a_value: like long_unsigned)
			-- Setter for end_pos field of XML_PARSER_NODE_INFO_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_parser_node_info_struct_set_end_pos"
		}"
		end

	xml_parser_node_info_struct_set_end_line (a_structure: POINTER; a_value: like long_unsigned)
			-- Setter for end_line field of XML_PARSER_NODE_INFO_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_parser_node_info_struct_set_end_line"
		}"
		end

feature {} -- Low-level queries

	xml_parser_node_info_struct_get_node (a_structure: POINTER): POINTER
			-- Query for node field of XML_PARSER_NODE_INFO_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_parser_node_info_struct_get_node"
		}"
		end

	xml_parser_node_info_struct_get_begin_pos (a_structure: POINTER): like long_unsigned
			-- Query for begin_pos field of XML_PARSER_NODE_INFO_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_parser_node_info_struct_get_begin_pos"
		}"
		end

	xml_parser_node_info_struct_get_begin_line (a_structure: POINTER): like long_unsigned
			-- Query for begin_line field of XML_PARSER_NODE_INFO_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_parser_node_info_struct_get_begin_line"
		}"
		end

	xml_parser_node_info_struct_get_end_pos (a_structure: POINTER): like long_unsigned
			-- Query for end_pos field of XML_PARSER_NODE_INFO_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_parser_node_info_struct_get_end_pos"
		}"
		end

	xml_parser_node_info_struct_get_end_line (a_structure: POINTER): like long_unsigned
			-- Query for end_line field of XML_PARSER_NODE_INFO_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_parser_node_info_struct_get_end_line"
		}"
		end

<<<<<<< HEAD
feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
=======
feature -- Structure size
	struct_size: like size_t
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__xmlParserNodeInfo"
		}"
		end

end -- class XML_PARSER_NODE_INFO_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

