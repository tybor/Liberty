-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class XML_ID_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	LIBXML2_TYPES
feature {} -- Low-level setters

	xml_id_struct_set_next (a_structure: POINTER; a_value: POINTER)
			-- Setter for next field of XML_ID_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_id_struct_set_next"
		}"
		end

	xml_id_struct_set_value (a_structure: POINTER; a_value: POINTER)
			-- Setter for value field of XML_ID_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_id_struct_set_value"
		}"
		end

	xml_id_struct_set_attr (a_structure: POINTER; a_value: POINTER)
			-- Setter for attr field of XML_ID_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_id_struct_set_attr"
		}"
		end

	xml_id_struct_set_name (a_structure: POINTER; a_value: POINTER)
			-- Setter for name field of XML_ID_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_id_struct_set_name"
		}"
		end

	xml_id_struct_set_lineno (a_structure: POINTER; a_value: INTEGER)
			-- Setter for lineno field of XML_ID_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_id_struct_set_lineno"
		}"
		end

	xml_id_struct_set_doc (a_structure: POINTER; a_value: POINTER)
			-- Setter for doc field of XML_ID_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_id_struct_set_doc"
		}"
		end

feature {} -- Low-level queries

	xml_id_struct_get_next (a_structure: POINTER): POINTER
			-- Query for next field of XML_ID_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_id_struct_get_next"
		}"
		end

	xml_id_struct_get_value (a_structure: POINTER): POINTER
			-- Query for value field of XML_ID_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_id_struct_get_value"
		}"
		end

	xml_id_struct_get_attr (a_structure: POINTER): POINTER
			-- Query for attr field of XML_ID_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_id_struct_get_attr"
		}"
		end

	xml_id_struct_get_name (a_structure: POINTER): POINTER
			-- Query for name field of XML_ID_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_id_struct_get_name"
		}"
		end

	xml_id_struct_get_lineno (a_structure: POINTER): INTEGER
			-- Query for lineno field of XML_ID_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_id_struct_get_lineno"
		}"
		end

	xml_id_struct_get_doc (a_structure: POINTER): POINTER
			-- Query for doc field of XML_ID_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_id_struct_get_doc"
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
			feature_name: "sizeof__xmlID"
		}"
		end

end -- class XML_ID_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

