-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GPARAM_EXTERNALS


insert ANY undefine is_equal, copy end

		STANDARD_C_LIBRARY_TYPES
feature {} -- External calls

	g_param_spec_get_blurb (a_pspec: POINTER): POINTER
 		-- g_param_spec_get_blurb
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_param_spec_get_blurb"
		}"
		end

	g_param_spec_get_name (a_pspec: POINTER): POINTER
 		-- g_param_spec_get_name
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_param_spec_get_name"
		}"
		end

	g_param_spec_get_nick (a_pspec: POINTER): POINTER
 		-- g_param_spec_get_nick
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_param_spec_get_nick"
		}"
		end

	g_param_spec_get_qdata (a_pspec: POINTER; a_quark: NATURAL): POINTER
 		-- g_param_spec_get_qdata
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_param_spec_get_qdata"
		}"
		end

	g_param_spec_get_redirect_target (a_pspec: POINTER): POINTER
 		-- g_param_spec_get_redirect_target
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_param_spec_get_redirect_target"
		}"
		end

	g_param_spec_internal (a_param_type: like long_unsigned; a_name: POINTER; a_nick: POINTER; a_blurb: POINTER; a_flags: INTEGER): POINTER
 		-- g_param_spec_internal
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_param_spec_internal"
		}"
		end

	g_param_spec_pool_insert (a_pool: POINTER; a_pspec: POINTER; an_owner_type: like long_unsigned)
 		-- g_param_spec_pool_insert
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_param_spec_pool_insert"
		}"
		end

	g_param_spec_pool_list (a_pool: POINTER; an_owner_type: like long_unsigned; a_n_pspecs_p: POINTER): POINTER
 		-- g_param_spec_pool_list
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_param_spec_pool_list"
		}"
		end

	g_param_spec_pool_list_owned (a_pool: POINTER; an_owner_type: like long_unsigned): POINTER
 		-- g_param_spec_pool_list_owned
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_param_spec_pool_list_owned"
		}"
		end

	g_param_spec_pool_lookup (a_pool: POINTER; a_param_name: POINTER; an_owner_type: like long_unsigned; a_walk_ancestors: INTEGER): POINTER
 		-- g_param_spec_pool_lookup
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_param_spec_pool_lookup"
		}"
		end

	g_param_spec_pool_new (a_type_prefixing: INTEGER): POINTER
 		-- g_param_spec_pool_new
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_param_spec_pool_new"
		}"
		end

	g_param_spec_pool_remove (a_pool: POINTER; a_pspec: POINTER)
 		-- g_param_spec_pool_remove
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_param_spec_pool_remove"
		}"
		end

	g_param_spec_ref (a_pspec: POINTER): POINTER
 		-- g_param_spec_ref
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_param_spec_ref"
		}"
		end

	g_param_spec_ref_sink (a_pspec: POINTER): POINTER
 		-- g_param_spec_ref_sink
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_param_spec_ref_sink"
		}"
		end

	g_param_spec_set_qdata (a_pspec: POINTER; a_quark: NATURAL; a_data: POINTER)
 		-- g_param_spec_set_qdata
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_param_spec_set_qdata"
		}"
		end

	g_param_spec_set_qdata_full (a_pspec: POINTER; a_quark: NATURAL; a_data: POINTER; a_destroy: POINTER)
 		-- g_param_spec_set_qdata_full
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_param_spec_set_qdata_full"
		}"
		end

	g_param_spec_sink (a_pspec: POINTER)
 		-- g_param_spec_sink
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_param_spec_sink"
		}"
		end

	g_param_spec_steal_qdata (a_pspec: POINTER; a_quark: NATURAL): POINTER
 		-- g_param_spec_steal_qdata
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_param_spec_steal_qdata"
		}"
		end

	g_param_spec_unref (a_pspec: POINTER)
 		-- g_param_spec_unref
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_param_spec_unref"
		}"
		end

	g_param_type_register_static (a_name: POINTER; a_pspec_info: POINTER): like long_unsigned
 		-- g_param_type_register_static
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_param_type_register_static"
		}"
		end

	-- `hidden' function _g_param_type_register_static_constant skipped.
	g_param_value_convert (a_pspec: POINTER; a_src_value: POINTER; a_dest_value: POINTER; a_strict_validation: INTEGER): INTEGER
 		-- g_param_value_convert
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_param_value_convert"
		}"
		end

	g_param_value_defaults (a_pspec: POINTER; a_value: POINTER): INTEGER
 		-- g_param_value_defaults
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_param_value_defaults"
		}"
		end

	g_param_value_set_default (a_pspec: POINTER; a_value: POINTER)
 		-- g_param_value_set_default
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_param_value_set_default"
		}"
		end

	g_param_value_validate (a_pspec: POINTER; a_value: POINTER): INTEGER
 		-- g_param_value_validate
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_param_value_validate"
		}"
		end

	g_param_values_cmp (a_pspec: POINTER; a_value1: POINTER; a_value2: POINTER): INTEGER
 		-- g_param_values_cmp
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_param_values_cmp"
		}"
		end

	g_value_dup_param (a_value: POINTER): POINTER
 		-- g_value_dup_param
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_dup_param"
		}"
		end

	g_value_get_param (a_value: POINTER): POINTER
 		-- g_value_get_param
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_get_param"
		}"
		end

	g_value_set_param (a_value: POINTER; a_param: POINTER)
 		-- g_value_set_param
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_set_param"
		}"
		end

	g_value_set_param_take_ownership (a_value: POINTER; a_param: POINTER)
 		-- g_value_set_param_take_ownership
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_set_param_take_ownership"
		}"
		end

	g_value_take_param (a_value: POINTER; a_param: POINTER)
 		-- g_value_take_param
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_value_take_param"
		}"
		end


end -- class GPARAM_EXTERNALS
