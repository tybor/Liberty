-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.
deferred class GIFUNCTIONINFO_EXTERNALS


insert ANY undefine is_equal, copy end

		STANDARD_C_LIBRARY_TYPES
feature {} -- External calls

	g_function_info_get_flags (an_info: POINTER): INTEGER 
               -- g_function_info_get_flags
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "g_function_info_get_flags"
               }"
               end

	g_function_info_get_property (an_info: POINTER): POINTER 
               -- g_function_info_get_property
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "g_function_info_get_property"
               }"
               end

	g_function_info_get_symbol (an_info: POINTER): POINTER 
               -- g_function_info_get_symbol
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "g_function_info_get_symbol"
               }"
               end

	g_function_info_get_vfunc (an_info: POINTER): POINTER 
               -- g_function_info_get_vfunc
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "g_function_info_get_vfunc"
               }"
               end

	g_function_info_invoke (an_info: POINTER; an_in_args: POINTER; a_n_in_args: INTEGER; an_out_args: POINTER; a_n_out_args: INTEGER; a_return_value: POINTER; an_error: POINTER): INTEGER 
               -- g_function_info_invoke
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "g_function_info_invoke"
               }"
               end

	g_invoke_error_quark: NATURAL 
               -- g_invoke_error_quark
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "g_invoke_error_quark()"
               }"
               end


end -- class GIFUNCTIONINFO_EXTERNALS
