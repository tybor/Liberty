-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class XML_DOMWRAP_CTXT_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	LIBXML2_TYPES
feature {} -- Low-level setters

	xml_domwrap_ctxt_struct_set_type (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for type field of XML_DOMWRAP_CTXT_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_domwrap_ctxt_struct_set_type"
		}"
		end

	xml_domwrap_ctxt_struct_set_namespacemap (a_structure: POINTER; a_value: POINTER) is
			-- Setter for namespaceMap field of XML_DOMWRAP_CTXT_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_domwrap_ctxt_struct_set_namespacemap"
		}"
		end

	xml_domwrap_ctxt_struct_set_getnsfornodefunc (a_structure: POINTER; a_value: POINTER) is
			-- Setter for getNsForNodeFunc field of XML_DOMWRAP_CTXT_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_domwrap_ctxt_struct_set_getnsfornodefunc"
		}"
		end

feature {} -- Low-level queries

	-- Unwrappable field _private.
	xml_domwrap_ctxt_struct_get_type (a_structure: POINTER): INTEGER is
			-- Query for type field of XML_DOMWRAP_CTXT_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_domwrap_ctxt_struct_get_type"
		}"
		end

	xml_domwrap_ctxt_struct_get_namespacemap (a_structure: POINTER): POINTER is
			-- Query for namespaceMap field of XML_DOMWRAP_CTXT_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_domwrap_ctxt_struct_get_namespacemap"
		}"
		end

	xml_domwrap_ctxt_struct_get_getnsfornodefunc (a_structure: POINTER): POINTER is
			-- Query for getNsForNodeFunc field of XML_DOMWRAP_CTXT_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_domwrap_ctxt_struct_get_getnsfornodefunc"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__xmlDOMWrapCtxt"
		}"
		end

end -- class XML_DOMWRAP_CTXT_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

