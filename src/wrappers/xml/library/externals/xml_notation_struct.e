-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class XML_NOTATION_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	LIBXML2_TYPES
feature {} -- Low-level setters

	xml_notation_struct_set_name (a_structure: POINTER; a_value: POINTER) is
			-- Setter for name field of XML_NOTATION_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_notation_struct_set_name"
		}"
		end

	xml_notation_struct_set_publicid (a_structure: POINTER; a_value: POINTER) is
			-- Setter for PublicID field of XML_NOTATION_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_notation_struct_set_publicid"
		}"
		end

	xml_notation_struct_set_systemid (a_structure: POINTER; a_value: POINTER) is
			-- Setter for SystemID field of XML_NOTATION_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_notation_struct_set_systemid"
		}"
		end

feature {} -- Low-level queries

	xml_notation_struct_get_name (a_structure: POINTER): POINTER is
			-- Query for name field of XML_NOTATION_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_notation_struct_get_name"
		}"
		end

	xml_notation_struct_get_publicid (a_structure: POINTER): POINTER is
			-- Query for PublicID field of XML_NOTATION_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_notation_struct_get_publicid"
		}"
		end

	xml_notation_struct_get_systemid (a_structure: POINTER): POINTER is
			-- Query for SystemID field of XML_NOTATION_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_notation_struct_get_systemid"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__xmlNotation"
		}"
		end

end -- class XML_NOTATION_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

