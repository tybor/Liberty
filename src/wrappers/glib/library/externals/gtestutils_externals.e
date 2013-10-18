-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GTESTUTILS_EXTERNALS


insert ANY undefine is_equal, copy end

		STANDARD_C_LIBRARY_TYPES
feature {} -- External calls

	g_assertion_message (a_domain: POINTER; a_file: POINTER; a_line: INTEGER; a_func: POINTER; a_message: POINTER) is
 		-- g_assertion_message
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_assertion_message"
		}"
		end

	g_assertion_message_cmpnum (a_domain: POINTER; a_file: POINTER; a_line: INTEGER; a_func: POINTER; an_expr: POINTER; an_arg1: REAL_EXTENDED; a_cmp: POINTER; an_arg2: REAL_EXTENDED; a_numtype: CHARACTER) is
 		-- g_assertion_message_cmpnum
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_assertion_message_cmpnum"
		}"
		end

	g_assertion_message_cmpstr (a_domain: POINTER; a_file: POINTER; a_line: INTEGER; a_func: POINTER; an_expr: POINTER; an_arg1: POINTER; a_cmp: POINTER; an_arg2: POINTER) is
 		-- g_assertion_message_cmpstr
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_assertion_message_cmpstr"
		}"
		end

	g_assertion_message_error (a_domain: POINTER; a_file: POINTER; a_line: INTEGER; a_func: POINTER; an_expr: POINTER; an_error: POINTER; an_error_domain: NATURAL; an_error_code: INTEGER) is
 		-- g_assertion_message_error
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_assertion_message_error"
		}"
		end

	g_assertion_message_expr (a_domain: POINTER; a_file: POINTER; a_line: INTEGER; a_func: POINTER; an_expr: POINTER) is
 		-- g_assertion_message_expr
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_assertion_message_expr"
		}"
		end

	g_strcmp0 (a_str1: POINTER; a_str2: POINTER): INTEGER is
 		-- g_strcmp0
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_strcmp0"
		}"
		end

	g_test_add_data_func (a_testpath: POINTER; a_test_data: POINTER; a_test_func: POINTER) is
 		-- g_test_add_data_func
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_add_data_func"
		}"
		end

	g_test_add_data_func_full (a_testpath: POINTER; a_test_data: POINTER; a_test_func: POINTER; a_data_free_func: POINTER) is
 		-- g_test_add_data_func_full
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_add_data_func_full"
		}"
		end

	g_test_add_func (a_testpath: POINTER; a_test_func: POINTER) is
 		-- g_test_add_func
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_add_func"
		}"
		end

	g_test_add_vtable (a_testpath: POINTER; a_data_size: NATURAL; a_test_data: POINTER; a_data_setup: POINTER; a_data_test: POINTER; a_data_teardown: POINTER) is
 		-- g_test_add_vtable
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_add_vtable"
		}"
		end

	g_test_assert_expected_messages_internal (a_domain: POINTER; a_file: POINTER; a_line: INTEGER; a_func: POINTER) is
 		-- g_test_assert_expected_messages_internal
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_assert_expected_messages_internal"
		}"
		end

	g_test_bug (a_bug_uri_snippet: POINTER) is
 		-- g_test_bug
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_bug"
		}"
		end

	g_test_bug_base (an_uri_pattern: POINTER) is
 		-- g_test_bug_base
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_bug_base"
		}"
		end

	g_test_config_vars: POINTER is
 		-- g_test_config_vars
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_config_vars"
		}"
		end

	address_of_g_test_config_vars: POINTER is
 		-- Address of g_test_config_vars
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&g_test_config_vars"
		}"
		end

	set_g_test_config_vars (a_value: POINTER) is
		-- Set variable g_test_config_vars value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_g_test_config_vars"
		}"
		end

	g_test_create_case (a_test_name: POINTER; a_data_size: NATURAL; a_test_data: POINTER; a_data_setup: POINTER; a_data_test: POINTER; a_data_teardown: POINTER): POINTER is
 		-- g_test_create_case
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_create_case"
		}"
		end

	g_test_create_suite (a_suite_name: POINTER): POINTER is
 		-- g_test_create_suite
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_create_suite"
		}"
		end

	g_test_expect_message (a_log_domain: POINTER; a_log_level: INTEGER; a_pattern: POINTER) is
 		-- g_test_expect_message
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_expect_message"
		}"
		end

	g_test_fail is
 		-- g_test_fail
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_fail()"
		}"
		end

	g_test_get_root: POINTER is
 		-- g_test_get_root
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_get_root()"
		}"
		end

	g_test_init (an_argc: POINTER; an_argv: POINTER) is
 		-- g_test_init (variadic call) 
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_init"
		}"
		end

	g_test_log_buffer_free (a_tbuffer: POINTER) is
 		-- g_test_log_buffer_free
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_log_buffer_free"
		}"
		end

	g_test_log_buffer_new: POINTER is
 		-- g_test_log_buffer_new
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_log_buffer_new()"
		}"
		end

	g_test_log_buffer_pop (a_tbuffer: POINTER): POINTER is
 		-- g_test_log_buffer_pop
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_log_buffer_pop"
		}"
		end

	g_test_log_buffer_push (a_tbuffer: POINTER; a_n_bytes: NATURAL; a_bytes: POINTER) is
 		-- g_test_log_buffer_push
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_log_buffer_push"
		}"
		end

	g_test_log_msg_free (a_tmsg: POINTER) is
 		-- g_test_log_msg_free
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_log_msg_free"
		}"
		end

	g_test_log_set_fatal_handler (a_log_func: POINTER; an_user_data: POINTER) is
 		-- g_test_log_set_fatal_handler
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_log_set_fatal_handler"
		}"
		end

	g_test_log_type_name (a_log_type: INTEGER): POINTER is
 		-- g_test_log_type_name
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_log_type_name"
		}"
		end

	g_test_maximized_result (a_maximized_quantity: REAL; a_format: POINTER) is
 		-- g_test_maximized_result (variadic call) 
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_maximized_result"
		}"
		end

	g_test_message (a_format: POINTER) is
 		-- g_test_message (variadic call) 
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_message"
		}"
		end

	g_test_minimized_result (a_minimized_quantity: REAL; a_format: POINTER) is
 		-- g_test_minimized_result (variadic call) 
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_minimized_result"
		}"
		end

	g_test_queue_destroy (a_destroy_func: POINTER; a_destroy_data: POINTER) is
 		-- g_test_queue_destroy
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_queue_destroy"
		}"
		end

	g_test_queue_free (a_gfree_pointer: POINTER) is
 		-- g_test_queue_free
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_queue_free"
		}"
		end

	g_test_rand_double: REAL is
 		-- g_test_rand_double
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_rand_double()"
		}"
		end

	g_test_rand_double_range (a_range_start: REAL; a_range_end: REAL): REAL is
 		-- g_test_rand_double_range
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_rand_double_range"
		}"
		end

	g_test_rand_int: INTEGER is
 		-- g_test_rand_int
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_rand_int()"
		}"
		end

	g_test_rand_int_range (a_begin: INTEGER; an_end_external: INTEGER): INTEGER is
 		-- g_test_rand_int_range
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_rand_int_range"
		}"
		end

	g_test_run: INTEGER is
 		-- g_test_run
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_run()"
		}"
		end

	g_test_run_suite (a_suite: POINTER): INTEGER is
 		-- g_test_run_suite
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_run_suite"
		}"
		end

	g_test_suite_add (a_suite: POINTER; a_test_case: POINTER) is
 		-- g_test_suite_add
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_suite_add"
		}"
		end

	g_test_suite_add_suite (a_suite: POINTER; a_nestedsuite: POINTER) is
 		-- g_test_suite_add_suite
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_suite_add_suite"
		}"
		end

	g_test_timer_elapsed: REAL is
 		-- g_test_timer_elapsed
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_timer_elapsed()"
		}"
		end

	g_test_timer_last: REAL is
 		-- g_test_timer_last
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_timer_last()"
		}"
		end

	g_test_timer_start is
 		-- g_test_timer_start
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_timer_start()"
		}"
		end

	g_test_trap_assertions (a_domain: POINTER; a_file: POINTER; a_line: INTEGER; a_func: POINTER; an_assertion_flags: NATURAL_64; a_pattern: POINTER) is
 		-- g_test_trap_assertions
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_trap_assertions"
		}"
		end

	g_test_trap_fork (an_usec_timeout: NATURAL_64; a_test_trap_flags: INTEGER): INTEGER is
 		-- g_test_trap_fork
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_trap_fork"
		}"
		end

	g_test_trap_has_passed: INTEGER is
 		-- g_test_trap_has_passed
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_trap_has_passed()"
		}"
		end

	g_test_trap_reached_timeout: INTEGER is
 		-- g_test_trap_reached_timeout
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_test_trap_reached_timeout()"
		}"
		end


end -- class GTESTUTILS_EXTERNALS
