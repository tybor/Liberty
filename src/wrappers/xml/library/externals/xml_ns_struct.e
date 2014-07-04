-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class XML_NS_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	LIBXML2_TYPES
feature {} -- Low-level setters

	xml_ns_struct_set_next (a_structure: POINTER; a_value: POINTER)
			-- Setter for next field of XML_NS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_ns_struct_set_next"
		}"
		end

	xml_ns_struct_set_type (a_structure: POINTER; a_value: INTEGER)
			-- Setter for type field of XML_NS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_ns_struct_set_type"
		}"
		end

	xml_ns_struct_set_href (a_structure: POINTER; a_value: POINTER)
			-- Setter for href field of XML_NS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_ns_struct_set_href"
		}"
		end

	xml_ns_struct_set_prefix (a_structure: POINTER; a_value: POINTER)
			-- Setter for prefix field of XML_NS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_ns_struct_set_prefix"
		}"
		end

	xml_ns_struct_set_context (a_structure: POINTER; a_value: POINTER)
			-- Setter for context field of XML_NS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_ns_struct_set_context"
		}"
		end

feature {} -- Low-level queries

	xml_ns_struct_get_next (a_structure: POINTER): POINTER
			-- Query for next field of XML_NS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_ns_struct_get_next"
		}"
		end

	xml_ns_struct_get_type (a_structure: POINTER): INTEGER
			-- Query for type field of XML_NS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_ns_struct_get_type"
		}"
		end

	xml_ns_struct_get_href (a_structure: POINTER): POINTER
			-- Query for href field of XML_NS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_ns_struct_get_href"
		}"
		end

	xml_ns_struct_get_prefix (a_structure: POINTER): POINTER
			-- Query for prefix field of XML_NS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_ns_struct_get_prefix"
		}"
		end

	-- Unwrappable field _private.
	xml_ns_struct_get_context (a_structure: POINTER): POINTER
			-- Query for context field of XML_NS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_ns_struct_get_context"
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
			feature_name: "sizeof__xmlNs"
		}"
		end

end -- class XML_NS_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

