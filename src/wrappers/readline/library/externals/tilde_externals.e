-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class TILDE_EXTERNALS


insert ANY undefine is_equal, copy end

		STANDARD_C_LIBRARY_TYPES
feature {} -- External calls

	tilde_additional_prefixes: POINTER is
 		-- tilde_additional_prefixes
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "tilde_additional_prefixes"
		}"
		end

	address_of_tilde_additional_prefixes: POINTER is
 		-- Address of tilde_additional_prefixes
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&tilde_additional_prefixes"
		}"
		end

	set_tilde_additional_prefixes (a_value: POINTER) is
		-- Set variable tilde_additional_prefixes value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_tilde_additional_prefixes"
		}"
		end

	tilde_additional_suffixes: POINTER is
 		-- tilde_additional_suffixes
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "tilde_additional_suffixes"
		}"
		end

	address_of_tilde_additional_suffixes: POINTER is
 		-- Address of tilde_additional_suffixes
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&tilde_additional_suffixes"
		}"
		end

	set_tilde_additional_suffixes (a_value: POINTER) is
		-- Set variable tilde_additional_suffixes value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_tilde_additional_suffixes"
		}"
		end

	tilde_expand (an_argument_l174_c7: POINTER): POINTER is
 		-- tilde_expand
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "tilde_expand"
		}"
		end

	tilde_expand_word (an_argument_l2729_c7: POINTER): POINTER is
 		-- tilde_expand_word
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "tilde_expand_word"
		}"
		end

	tilde_expansion_failure_hook: POINTER is
 		-- tilde_expansion_failure_hook
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "tilde_expansion_failure_hook"
		}"
		end

	address_of_tilde_expansion_failure_hook: POINTER is
 		-- Address of tilde_expansion_failure_hook
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&tilde_expansion_failure_hook"
		}"
		end

	set_tilde_expansion_failure_hook (a_value: POINTER) is
		-- Set variable tilde_expansion_failure_hook value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_tilde_expansion_failure_hook"
		}"
		end

	tilde_expansion_preexpansion_hook: POINTER is
 		-- tilde_expansion_preexpansion_hook
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "tilde_expansion_preexpansion_hook"
		}"
		end

	address_of_tilde_expansion_preexpansion_hook: POINTER is
 		-- Address of tilde_expansion_preexpansion_hook
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&tilde_expansion_preexpansion_hook"
		}"
		end

	set_tilde_expansion_preexpansion_hook (a_value: POINTER) is
		-- Set variable tilde_expansion_preexpansion_hook value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_tilde_expansion_preexpansion_hook"
		}"
		end

	tilde_find_word (an_argument_l2560_c7: POINTER; an_argument_l2561_c7: INTEGER; an_argument_l2562_c7: POINTER): POINTER is
 		-- tilde_find_word
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "tilde_find_word"
		}"
		end


end -- class TILDE_EXTERNALS
