-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class XML_OUTPUT_BUFFER_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	LIBXML2_TYPES
feature {} -- Low-level setters

	xml_output_buffer_struct_set_context (a_structure: POINTER; a_value: POINTER) is
			-- Setter for context field of XML_OUTPUT_BUFFER_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_output_buffer_struct_set_context"
		}"
		end

	xml_output_buffer_struct_set_writecallback (a_structure: POINTER; a_value: POINTER) is
			-- Setter for writecallback field of XML_OUTPUT_BUFFER_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_output_buffer_struct_set_writecallback"
		}"
		end

	xml_output_buffer_struct_set_closecallback (a_structure: POINTER; a_value: POINTER) is
			-- Setter for closecallback field of XML_OUTPUT_BUFFER_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_output_buffer_struct_set_closecallback"
		}"
		end

	xml_output_buffer_struct_set_encoder (a_structure: POINTER; a_value: POINTER) is
			-- Setter for encoder field of XML_OUTPUT_BUFFER_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_output_buffer_struct_set_encoder"
		}"
		end

	xml_output_buffer_struct_set_buffer (a_structure: POINTER; a_value: POINTER) is
			-- Setter for buffer field of XML_OUTPUT_BUFFER_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_output_buffer_struct_set_buffer"
		}"
		end

	xml_output_buffer_struct_set_conv (a_structure: POINTER; a_value: POINTER) is
			-- Setter for conv field of XML_OUTPUT_BUFFER_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_output_buffer_struct_set_conv"
		}"
		end

	xml_output_buffer_struct_set_written (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for written field of XML_OUTPUT_BUFFER_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_output_buffer_struct_set_written"
		}"
		end

	xml_output_buffer_struct_set_error (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for error field of XML_OUTPUT_BUFFER_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_output_buffer_struct_set_error"
		}"
		end

feature {} -- Low-level queries

	xml_output_buffer_struct_get_context (a_structure: POINTER): POINTER is
			-- Query for context field of XML_OUTPUT_BUFFER_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_output_buffer_struct_get_context"
		}"
		end

	xml_output_buffer_struct_get_writecallback (a_structure: POINTER): POINTER is
			-- Query for writecallback field of XML_OUTPUT_BUFFER_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_output_buffer_struct_get_writecallback"
		}"
		end

	xml_output_buffer_struct_get_closecallback (a_structure: POINTER): POINTER is
			-- Query for closecallback field of XML_OUTPUT_BUFFER_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_output_buffer_struct_get_closecallback"
		}"
		end

	xml_output_buffer_struct_get_encoder (a_structure: POINTER): POINTER is
			-- Query for encoder field of XML_OUTPUT_BUFFER_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_output_buffer_struct_get_encoder"
		}"
		end

	xml_output_buffer_struct_get_buffer (a_structure: POINTER): POINTER is
			-- Query for buffer field of XML_OUTPUT_BUFFER_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_output_buffer_struct_get_buffer"
		}"
		end

	xml_output_buffer_struct_get_conv (a_structure: POINTER): POINTER is
			-- Query for conv field of XML_OUTPUT_BUFFER_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_output_buffer_struct_get_conv"
		}"
		end

	xml_output_buffer_struct_get_written (a_structure: POINTER): INTEGER is
			-- Query for written field of XML_OUTPUT_BUFFER_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_output_buffer_struct_get_written"
		}"
		end

	xml_output_buffer_struct_get_error (a_structure: POINTER): INTEGER is
			-- Query for error field of XML_OUTPUT_BUFFER_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "xml_output_buffer_struct_get_error"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__xmlOutputBuffer"
		}"
		end

end -- class XML_OUTPUT_BUFFER_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

