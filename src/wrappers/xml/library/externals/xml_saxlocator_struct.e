-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class XML_SAXLOCATOR_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	LIBXML2_TYPES
feature {} -- Low-level setters

	xml_saxlocator_struct_set_getpublicid (a_structure: POINTER; a_value: POINTER)
			-- Setter for getPublicId field of XML_SAXLOCATOR_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_saxlocator_struct_set_getpublicid"
		}"
		end

	xml_saxlocator_struct_set_getsystemid (a_structure: POINTER; a_value: POINTER)
			-- Setter for getSystemId field of XML_SAXLOCATOR_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_saxlocator_struct_set_getsystemid"
		}"
		end

	xml_saxlocator_struct_set_getlinenumber (a_structure: POINTER; a_value: POINTER)
			-- Setter for getLineNumber field of XML_SAXLOCATOR_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_saxlocator_struct_set_getlinenumber"
		}"
		end

	xml_saxlocator_struct_set_getcolumnnumber (a_structure: POINTER; a_value: POINTER)
			-- Setter for getColumnNumber field of XML_SAXLOCATOR_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_saxlocator_struct_set_getcolumnnumber"
		}"
		end

feature {} -- Low-level queries

	xml_saxlocator_struct_get_getpublicid (a_structure: POINTER): POINTER
			-- Query for getPublicId field of XML_SAXLOCATOR_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_saxlocator_struct_get_getpublicid"
		}"
		end

	xml_saxlocator_struct_get_getsystemid (a_structure: POINTER): POINTER
			-- Query for getSystemId field of XML_SAXLOCATOR_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_saxlocator_struct_get_getsystemid"
		}"
		end

	xml_saxlocator_struct_get_getlinenumber (a_structure: POINTER): POINTER
			-- Query for getLineNumber field of XML_SAXLOCATOR_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_saxlocator_struct_get_getlinenumber"
		}"
		end

	xml_saxlocator_struct_get_getcolumnnumber (a_structure: POINTER): POINTER
			-- Query for getColumnNumber field of XML_SAXLOCATOR_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_saxlocator_struct_get_getcolumnnumber"
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
			feature_name: "sizeof__xmlSAXLocator"
		}"
		end

end -- class XML_SAXLOCATOR_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

