-- This file have been created by eiffel-gcc-xml.
-- Any change will be lost by the next execution of the tool.

deferred class GSHELL_EXTERNALS


inherit ANY undefine is_equal, copy end

feature {} -- External calls

	g_shell_unquote (a_quoted_string: POINTER; an_error: POINTER): POINTER is
 		-- g_shell_unquote
		external "plug_in"
		alias "{
			location: "../../../plugins"
			module_name: "glib"
			feature_name: "g_shell_unquote"
		}"
		end

	g_shell_error_quark: NATURAL_32 is
 		-- g_shell_error_quark
		external "plug_in"
		alias "{
			location: "../../../plugins"
			module_name: "glib"
			feature_name: "g_shell_error_quark"
		}"
		end

	g_shell_quote (an_unquoted_string: POINTER): POINTER is
 		-- g_shell_quote
		external "plug_in"
		alias "{
			location: "../../../plugins"
			module_name: "glib"
			feature_name: "g_shell_quote"
		}"
		end

	g_shell_parse_argv (a_command_line: POINTER; an_argcp: POINTER; an_argvp: POINTER; an_error: POINTER): INTEGER_32 is
 		-- g_shell_parse_argv
		external "plug_in"
		alias "{
			location: "../../../plugins"
			module_name: "glib"
			feature_name: "g_shell_parse_argv"
		}"
		end

end