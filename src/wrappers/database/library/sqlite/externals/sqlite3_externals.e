-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class SQLITE3_EXTERNALS


insert ANY undefine is_equal, copy end

		STANDARD_C_LIBRARY_TYPES
feature {} -- External calls

	sqlite3_aggregate_context (an_argument_l801_c7: POINTER; a_n_bytes: INTEGER): POINTER is
 		-- sqlite3_aggregate_context
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_aggregate_context"
		}"
		end

	sqlite3_aggregate_count (an_argument_l983_c7: POINTER): INTEGER is
 		-- sqlite3_aggregate_count
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_aggregate_count"
		}"
		end

	sqlite3_auto_extension (a_x_entry_point: POINTER): INTEGER is
 		-- sqlite3_auto_extension
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_auto_extension"
		}"
		end

	sqlite3_backup_finish (a_p: POINTER): INTEGER is
 		-- sqlite3_backup_finish
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_backup_finish"
		}"
		end

	sqlite3_backup_init (a_p_dest: POINTER; a_z_dest_name: POINTER; a_p_source: POINTER; a_z_source_name: POINTER): POINTER is
 		-- sqlite3_backup_init
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_backup_init"
		}"
		end

	sqlite3_backup_pagecount (a_p: POINTER): INTEGER is
 		-- sqlite3_backup_pagecount
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_backup_pagecount"
		}"
		end

	sqlite3_backup_remaining (a_p: POINTER): INTEGER is
 		-- sqlite3_backup_remaining
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_backup_remaining"
		}"
		end

	sqlite3_backup_step (a_p: POINTER; a_n_page: INTEGER): INTEGER is
 		-- sqlite3_backup_step
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_backup_step"
		}"
		end

	sqlite3_bind_blob (an_argument_l1046_c7: POINTER; an_argument_l1047_c7: INTEGER; an_argument_l1048_c7: POINTER; a_n: INTEGER; an_argument_l1050_c7: POINTER): INTEGER is
 		-- sqlite3_bind_blob
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_bind_blob"
		}"
		end

	sqlite3_bind_double (an_argument_l958_c7: POINTER; an_argument_l959_c7: INTEGER; an_argument_l960_c7: REAL): INTEGER is
 		-- sqlite3_bind_double
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_bind_double"
		}"
		end

	sqlite3_bind_int (an_argument_l1022_c7: POINTER; an_argument_l1023_c7: INTEGER; an_argument_l1024_c7: INTEGER): INTEGER is
 		-- sqlite3_bind_int
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_bind_int"
		}"
		end

	sqlite3_bind_int64 (an_argument_l413_c7: POINTER; an_argument_l414_c7: INTEGER; an_argument_l415_c7: INTEGER_64): INTEGER is
 		-- sqlite3_bind_int64
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_bind_int64"
		}"
		end

	sqlite3_bind_null (an_argument_l754_c7: POINTER; an_argument_l755_c7: INTEGER): INTEGER is
 		-- sqlite3_bind_null
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_bind_null"
		}"
		end

	sqlite3_bind_parameter_count (an_argument_l406_c7: POINTER): INTEGER is
 		-- sqlite3_bind_parameter_count
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_bind_parameter_count"
		}"
		end

	sqlite3_bind_parameter_index (an_argument_l621_c7: POINTER; a_z_name: POINTER): INTEGER is
 		-- sqlite3_bind_parameter_index
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_bind_parameter_index"
		}"
		end

	sqlite3_bind_parameter_name (an_argument_l1090_c7: POINTER; an_argument_l1091_c7: INTEGER): POINTER is
 		-- sqlite3_bind_parameter_name
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_bind_parameter_name"
		}"
		end

	sqlite3_bind_text (an_argument_l527_c7: POINTER; an_argument_l528_c7: INTEGER; an_argument_l529_c7: POINTER; a_n: INTEGER; an_argument_l531_c7: POINTER): INTEGER is
 		-- sqlite3_bind_text
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_bind_text"
		}"
		end

	sqlite3_bind_text16 (an_argument_l996_c7: POINTER; an_argument_l997_c7: INTEGER; an_argument_l998_c7: POINTER; an_argument_l999_c7: INTEGER; an_argument_l1000_c7: POINTER): INTEGER is
 		-- sqlite3_bind_text16
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_bind_text16"
		}"
		end

	sqlite3_bind_value (an_argument_l963_c7: POINTER; an_argument_l964_c7: INTEGER; an_argument_l965_c7: POINTER): INTEGER is
 		-- sqlite3_bind_value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_bind_value"
		}"
		end

	sqlite3_bind_zeroblob (an_argument_l1348_c7: POINTER; an_argument_l1349_c7: INTEGER; a_n: INTEGER): INTEGER is
 		-- sqlite3_bind_zeroblob
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_bind_zeroblob"
		}"
		end

	sqlite3_blob_bytes (an_argument_l1260_c7: POINTER): INTEGER is
 		-- sqlite3_blob_bytes
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_blob_bytes"
		}"
		end

	sqlite3_blob_close (an_argument_l1226_c7: POINTER): INTEGER is
 		-- sqlite3_blob_close
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_blob_close"
		}"
		end

	sqlite3_blob_open (an_argument_l360_c7: POINTER; a_z_db: POINTER; a_z_table: POINTER; a_z_column: POINTER; an_i_row: INTEGER_64; a_flags: INTEGER; a_pp_blob: POINTER): INTEGER is
 		-- sqlite3_blob_open
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_blob_open"
		}"
		end

	sqlite3_blob_read (an_argument_l440_c7: POINTER; a_z: POINTER; a_n: INTEGER; an_i_offset: INTEGER): INTEGER is
 		-- sqlite3_blob_read
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_blob_read"
		}"
		end

	sqlite3_blob_reopen (an_argument_l1027_c7: POINTER; an_argument_l1028_c7: INTEGER_64): INTEGER is
 		-- sqlite3_blob_reopen
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_blob_reopen"
		}"
		end

	sqlite3_blob_write (an_argument_l1273_c7: POINTER; a_z: POINTER; a_n: INTEGER; an_i_offset: INTEGER): INTEGER is
 		-- sqlite3_blob_write
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_blob_write"
		}"
		end

	sqlite3_busy_handler (an_argument_l593_c7: POINTER; an_argument_l594_c7: POINTER; an_argument_l595_c7: POINTER): INTEGER is
 		-- sqlite3_busy_handler
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_busy_handler"
		}"
		end

	sqlite3_busy_timeout (an_argument_l537_c7: POINTER; a_ms: INTEGER): INTEGER is
 		-- sqlite3_busy_timeout
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_busy_timeout"
		}"
		end

	sqlite3_cancel_auto_extension (a_x_entry_point: POINTER): INTEGER is
 		-- sqlite3_cancel_auto_extension
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_cancel_auto_extension"
		}"
		end

	sqlite3_changes (an_argument_l195_c7: POINTER): INTEGER is
 		-- sqlite3_changes
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_changes"
		}"
		end

	sqlite3_clear_bindings (an_argument_l787_c7: POINTER): INTEGER is
 		-- sqlite3_clear_bindings
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_clear_bindings"
		}"
		end

	sqlite3_close (an_argument_l1241_c7: POINTER): INTEGER is
 		-- sqlite3_close
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_close"
		}"
		end

	sqlite3_close_v2 (an_argument_l713_c7: POINTER): INTEGER is
 		-- sqlite3_close_v2
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_close_v2"
		}"
		end

	sqlite3_collation_needed (an_argument_l173_c7: POINTER; an_argument_l174_c7: POINTER; an_argument_l175_c7: POINTER): INTEGER is
 		-- sqlite3_collation_needed
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_collation_needed"
		}"
		end

	sqlite3_collation_needed16 (an_argument_l722_c7: POINTER; an_argument_l723_c7: POINTER; an_argument_l724_c7: POINTER): INTEGER is
 		-- sqlite3_collation_needed16
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_collation_needed16"
		}"
		end

	sqlite3_column_blob (an_argument_l422_c7: POINTER; an_i_col: INTEGER): POINTER is
 		-- sqlite3_column_blob
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_column_blob"
		}"
		end

	sqlite3_column_bytes (an_argument_l191_c7: POINTER; an_i_col: INTEGER): INTEGER is
 		-- sqlite3_column_bytes
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_column_bytes"
		}"
		end

	sqlite3_column_bytes16 (an_argument_l1150_c7: POINTER; an_i_col: INTEGER): INTEGER is
 		-- sqlite3_column_bytes16
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_column_bytes16"
		}"
		end

	sqlite3_column_count (a_p_stmt: POINTER): INTEGER is
 		-- sqlite3_column_count
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_column_count"
		}"
		end

	sqlite3_column_database_name (an_argument_l50_c7: POINTER; an_argument_l51_c7: INTEGER): POINTER is
 		-- sqlite3_column_database_name
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_column_database_name"
		}"
		end

	sqlite3_column_database_name16 (an_argument_l922_c7: POINTER; an_argument_l923_c7: INTEGER): POINTER is
 		-- sqlite3_column_database_name16
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_column_database_name16"
		}"
		end

	sqlite3_column_decltype (an_argument_l1190_c7: POINTER; an_argument_l1191_c7: INTEGER): POINTER is
 		-- sqlite3_column_decltype
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_column_decltype"
		}"
		end

	sqlite3_column_decltype16 (an_argument_l292_c7: POINTER; an_argument_l293_c7: INTEGER): POINTER is
 		-- sqlite3_column_decltype16
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_column_decltype16"
		}"
		end

	sqlite3_column_double (an_argument_l308_c7: POINTER; an_i_col: INTEGER): REAL is
 		-- sqlite3_column_double
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_column_double"
		}"
		end

	sqlite3_column_int (an_argument_l198_c7: POINTER; an_i_col: INTEGER): INTEGER is
 		-- sqlite3_column_int
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_column_int"
		}"
		end

	sqlite3_column_int64 (an_argument_l697_c7: POINTER; an_i_col: INTEGER): INTEGER_64 is
 		-- sqlite3_column_int64
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_column_int64"
		}"
		end

	sqlite3_column_name (an_argument_l371_c7: POINTER; a_n: INTEGER): POINTER is
 		-- sqlite3_column_name
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_column_name"
		}"
		end

	sqlite3_column_name16 (an_argument_l1216_c7: POINTER; a_n: INTEGER): POINTER is
 		-- sqlite3_column_name16
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_column_name16"
		}"
		end

	sqlite3_column_origin_name (an_argument_l865_c7: POINTER; an_argument_l866_c7: INTEGER): POINTER is
 		-- sqlite3_column_origin_name
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_column_origin_name"
		}"
		end

	sqlite3_column_origin_name16 (an_argument_l1005_c7: POINTER; an_argument_l1006_c7: INTEGER): POINTER is
 		-- sqlite3_column_origin_name16
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_column_origin_name16"
		}"
		end

	sqlite3_column_table_name (an_argument_l106_c7: POINTER; an_argument_l107_c7: INTEGER): POINTER is
 		-- sqlite3_column_table_name
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_column_table_name"
		}"
		end

	sqlite3_column_table_name16 (an_argument_l503_c7: POINTER; an_argument_l504_c7: INTEGER): POINTER is
 		-- sqlite3_column_table_name16
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_column_table_name16"
		}"
		end

	sqlite3_column_text (an_argument_l730_c7: POINTER; an_i_col: INTEGER): POINTER is
 		-- sqlite3_column_text
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_column_text"
		}"
		end

	sqlite3_column_text16 (an_argument_l426_c7: POINTER; an_i_col: INTEGER): POINTER is
 		-- sqlite3_column_text16
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_column_text16"
		}"
		end

	sqlite3_column_type (an_argument_l241_c7: POINTER; an_i_col: INTEGER): INTEGER is
 		-- sqlite3_column_type
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_column_type"
		}"
		end

	sqlite3_column_value (an_argument_l1266_c7: POINTER; an_i_col: INTEGER): POINTER is
 		-- sqlite3_column_value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_column_value"
		}"
		end

	sqlite3_commit_hook (an_argument_l1017_c7: POINTER; an_argument_l1018_c7: POINTER; an_argument_l1019_c7: POINTER): POINTER is
 		-- sqlite3_commit_hook
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_commit_hook"
		}"
		end

	sqlite3_compileoption_get (a_n: INTEGER): POINTER is
 		-- sqlite3_compileoption_get
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_compileoption_get"
		}"
		end

	sqlite3_compileoption_used (a_z_opt_name: POINTER): INTEGER is
 		-- sqlite3_compileoption_used
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_compileoption_used"
		}"
		end

	sqlite3_complete (a_sql: POINTER): INTEGER is
 		-- sqlite3_complete
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_complete"
		}"
		end

	sqlite3_complete16 (a_sql: POINTER): INTEGER is
 		-- sqlite3_complete16
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_complete16"
		}"
		end

	sqlite3_config (an_argument_l818_c7: INTEGER): INTEGER is
 		-- sqlite3_config (variadic call) 
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_config"
		}"
		end

	sqlite3_context_db_handle (an_argument_l1303_c7: POINTER): POINTER is
 		-- sqlite3_context_db_handle
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_context_db_handle"
		}"
		end

	sqlite3_create_collation (an_argument_l911_c7: POINTER; a_z_name: POINTER; an_e_text_rep: INTEGER; a_p_arg: POINTER; a_x_compare: POINTER): INTEGER is
 		-- sqlite3_create_collation
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_create_collation"
		}"
		end

	sqlite3_create_collation16 (an_argument_l467_c7: POINTER; a_z_name: POINTER; an_e_text_rep: INTEGER; a_p_arg: POINTER; a_x_compare: POINTER): INTEGER is
 		-- sqlite3_create_collation16
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_create_collation16"
		}"
		end

	sqlite3_create_collation_v2 (an_argument_l1009_c7: POINTER; a_z_name: POINTER; an_e_text_rep: INTEGER; a_p_arg: POINTER; a_x_compare: POINTER; a_x_destroy: POINTER): INTEGER is
 		-- sqlite3_create_collation_v2
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_create_collation_v2"
		}"
		end

	sqlite3_create_function (a_db: POINTER; a_z_function_name: POINTER; a_n_arg: INTEGER; an_e_text_rep: INTEGER; a_p_app: POINTER; a_x_func: POINTER; a_x_step: POINTER; a_x_final: POINTER): INTEGER is
 		-- sqlite3_create_function
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_create_function"
		}"
		end

	sqlite3_create_function16 (a_db: POINTER; a_z_function_name: POINTER; a_n_arg: INTEGER; an_e_text_rep: INTEGER; a_p_app: POINTER; a_x_func: POINTER; a_x_step: POINTER; a_x_final: POINTER): INTEGER is
 		-- sqlite3_create_function16
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_create_function16"
		}"
		end

	sqlite3_create_function_v2 (a_db: POINTER; a_z_function_name: POINTER; a_n_arg: INTEGER; an_e_text_rep: INTEGER; a_p_app: POINTER; a_x_func: POINTER; a_x_step: POINTER; a_x_final: POINTER; a_x_destroy: POINTER): INTEGER is
 		-- sqlite3_create_function_v2
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_create_function_v2"
		}"
		end

	sqlite3_create_module (a_db: POINTER; a_z_name: POINTER; a_p: POINTER; a_p_client_data: POINTER): INTEGER is
 		-- sqlite3_create_module
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_create_module"
		}"
		end

	sqlite3_create_module_v2 (a_db: POINTER; a_z_name: POINTER; a_p: POINTER; a_p_client_data: POINTER; a_x_destroy: POINTER): INTEGER is
 		-- sqlite3_create_module_v2
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_create_module_v2"
		}"
		end

	sqlite3_data_count (a_p_stmt: POINTER): INTEGER is
 		-- sqlite3_data_count
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_data_count"
		}"
		end

	sqlite3_data_directory: POINTER is
 		-- sqlite3_data_directory
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_data_directory"
		}"
		end

	address_of_sqlite3_data_directory: POINTER is
 		-- Address of sqlite3_data_directory
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&sqlite3_data_directory"
		}"
		end

	set_sqlite3_data_directory (a_value: POINTER) is
		-- Set variable sqlite3_data_directory value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_sqlite3_data_directory"
		}"
		end

	sqlite3_db_config (an_argument_l1117_c7: POINTER; an_op: INTEGER): INTEGER is
 		-- sqlite3_db_config (variadic call) 
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_db_config"
		}"
		end

	sqlite3_db_filename (a_db: POINTER; a_z_db_name: POINTER): POINTER is
 		-- sqlite3_db_filename
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_db_filename"
		}"
		end

	sqlite3_db_handle (an_argument_l778_c7: POINTER): POINTER is
 		-- sqlite3_db_handle
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_db_handle"
		}"
		end

	sqlite3_db_mutex (an_argument_l948_c7: POINTER): POINTER is
 		-- sqlite3_db_mutex
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_db_mutex"
		}"
		end

	sqlite3_db_readonly (a_db: POINTER; a_z_db_name: POINTER): INTEGER is
 		-- sqlite3_db_readonly
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_db_readonly"
		}"
		end

	sqlite3_db_release_memory (an_argument_l1341_c7: POINTER): INTEGER is
 		-- sqlite3_db_release_memory
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_db_release_memory"
		}"
		end

	sqlite3_db_status (an_argument_l1311_c7: POINTER; an_op: INTEGER; a_p_cur: POINTER; a_p_hiwtr: POINTER; a_reset_flg: INTEGER): INTEGER is
 		-- sqlite3_db_status
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_db_status"
		}"
		end

	sqlite3_declare_vtab (an_argument_l887_c7: POINTER; a_z_sql: POINTER): INTEGER is
 		-- sqlite3_declare_vtab
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_declare_vtab"
		}"
		end

	sqlite3_enable_load_extension (a_db: POINTER; an_onoff: INTEGER): INTEGER is
 		-- sqlite3_enable_load_extension
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_enable_load_extension"
		}"
		end

	sqlite3_enable_shared_cache (an_argument_l1101_c7: INTEGER): INTEGER is
 		-- sqlite3_enable_shared_cache
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_enable_shared_cache"
		}"
		end

	sqlite3_errcode (a_db: POINTER): INTEGER is
 		-- sqlite3_errcode
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_errcode"
		}"
		end

	sqlite3_errmsg (an_argument_l1238_c7: POINTER): POINTER is
 		-- sqlite3_errmsg
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_errmsg"
		}"
		end

	sqlite3_errmsg16 (an_argument_l951_c7: POINTER): POINTER is
 		-- sqlite3_errmsg16
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_errmsg16"
		}"
		end

	sqlite3_errstr (an_argument_l826_c7: INTEGER): POINTER is
 		-- sqlite3_errstr
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_errstr"
		}"
		end

	sqlite3_exec (an_argument_l1140_c7: POINTER; a_sql: POINTER; a_callback: POINTER; an_argument_l1143_c7: POINTER; an_errmsg: POINTER): INTEGER is
 		-- sqlite3_exec
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_exec"
		}"
		end

	sqlite3_expired (an_argument_l815_c7: POINTER): INTEGER is
 		-- sqlite3_expired
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_expired"
		}"
		end

	sqlite3_extended_errcode (a_db: POINTER): INTEGER is
 		-- sqlite3_extended_errcode
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_extended_errcode"
		}"
		end

	sqlite3_extended_result_codes (an_argument_l446_c7: POINTER; an_onoff: INTEGER): INTEGER is
 		-- sqlite3_extended_result_codes
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_extended_result_codes"
		}"
		end

	sqlite3_file_control (an_argument_l628_c7: POINTER; a_z_db_name: POINTER; an_op: INTEGER; an_argument_l631_c7: POINTER): INTEGER is
 		-- sqlite3_file_control
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_file_control"
		}"
		end

	sqlite3_finalize (a_p_stmt: POINTER): INTEGER is
 		-- sqlite3_finalize
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_finalize"
		}"
		end

	sqlite3_free (an_argument_l829_c7: POINTER) is
 		-- sqlite3_free
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_free"
		}"
		end

	sqlite3_free_table (a_result: POINTER) is
 		-- sqlite3_free_table
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_free_table"
		}"
		end

	sqlite3_get_autocommit (an_argument_l1178_c7: POINTER): INTEGER is
 		-- sqlite3_get_autocommit
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_get_autocommit"
		}"
		end

	sqlite3_get_auxdata (an_argument_l1194_c7: POINTER; a_n: INTEGER): POINTER is
 		-- sqlite3_get_auxdata
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_get_auxdata"
		}"
		end

	sqlite3_get_table (a_db: POINTER; a_z_sql: POINTER; a_paz_result: POINTER; a_pn_row: POINTER; a_pn_column: POINTER; a_pz_errmsg: POINTER): INTEGER is
 		-- sqlite3_get_table
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_get_table"
		}"
		end

	sqlite3_global_recover: INTEGER is
 		-- sqlite3_global_recover
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_global_recover()"
		}"
		end

	sqlite3_initialize: INTEGER is
 		-- sqlite3_initialize
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_initialize()"
		}"
		end

	sqlite3_interrupt (an_argument_l1198_c7: POINTER) is
 		-- sqlite3_interrupt
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_interrupt"
		}"
		end

	sqlite3_last_insert_rowid (an_argument_l157_c7: POINTER): INTEGER_64 is
 		-- sqlite3_last_insert_rowid
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_last_insert_rowid"
		}"
		end

	sqlite3_libversion: POINTER is
 		-- sqlite3_libversion
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_libversion()"
		}"
		end

	sqlite3_libversion_number: INTEGER is
 		-- sqlite3_libversion_number
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_libversion_number()"
		}"
		end

	sqlite3_limit (an_argument_l870_c7: POINTER; an_id: INTEGER; a_new_val: INTEGER): INTEGER is
 		-- sqlite3_limit
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_limit"
		}"
		end

	sqlite3_load_extension (a_db: POINTER; a_z_file: POINTER; a_z_proc: POINTER; a_pz_err_msg: POINTER): INTEGER is
 		-- sqlite3_load_extension
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_load_extension"
		}"
		end

	sqlite3_log (an_i_err_code: INTEGER; a_z_format: POINTER) is
 		-- sqlite3_log (variadic call) 
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_log"
		}"
		end

	sqlite3_malloc (an_argument_l727_c7: INTEGER): POINTER is
 		-- sqlite3_malloc
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_malloc"
		}"
		end

	sqlite3_memory_alarm (an_argument_l477_c7: POINTER; an_argument_l478_c7: POINTER; an_argument_l479_c7: INTEGER_64): INTEGER is
 		-- sqlite3_memory_alarm
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_memory_alarm"
		}"
		end

	sqlite3_memory_highwater (a_reset_flag: INTEGER): INTEGER_64 is
 		-- sqlite3_memory_highwater
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_memory_highwater"
		}"
		end

	sqlite3_memory_used: INTEGER_64 is
 		-- sqlite3_memory_used
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_memory_used()"
		}"
		end

	sqlite3_mprintf (an_argument_l758_c7: POINTER): POINTER is
 		-- sqlite3_mprintf (variadic call) 
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_mprintf"
		}"
		end

	sqlite3_mutex_alloc (an_argument_l836_c7: INTEGER): POINTER is
 		-- sqlite3_mutex_alloc
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_mutex_alloc"
		}"
		end

	sqlite3_mutex_enter (an_argument_l275_c7: POINTER) is
 		-- sqlite3_mutex_enter
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_mutex_enter"
		}"
		end

	sqlite3_mutex_free (an_argument_l1323_c7: POINTER) is
 		-- sqlite3_mutex_free
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_mutex_free"
		}"
		end

	sqlite3_mutex_held (an_argument_l278_c7: POINTER): INTEGER is
 		-- sqlite3_mutex_held
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_mutex_held"
		}"
		end

	sqlite3_mutex_leave (an_argument_l491_c7: POINTER) is
 		-- sqlite3_mutex_leave
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_mutex_leave"
		}"
		end

	sqlite3_mutex_notheld (an_argument_l704_c7: POINTER): INTEGER is
 		-- sqlite3_mutex_notheld
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_mutex_notheld"
		}"
		end

	sqlite3_mutex_try (an_argument_l202_c7: POINTER): INTEGER is
 		-- sqlite3_mutex_try
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_mutex_try"
		}"
		end

	sqlite3_next_stmt (a_p_db: POINTER; a_p_stmt: POINTER): POINTER is
 		-- sqlite3_next_stmt
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_next_stmt"
		}"
		end

	sqlite3_open (a_filename: POINTER; a_pp_db: POINTER): INTEGER is
 		-- sqlite3_open
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_open"
		}"
		end

	sqlite3_open16 (a_filename: POINTER; a_pp_db: POINTER): INTEGER is
 		-- sqlite3_open16
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_open16"
		}"
		end

	sqlite3_open_v2 (a_filename: POINTER; a_pp_db: POINTER; a_flags: INTEGER; a_z_vfs: POINTER): INTEGER is
 		-- sqlite3_open_v2
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_open_v2"
		}"
		end

	sqlite3_os_end: INTEGER is
 		-- sqlite3_os_end
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_os_end()"
		}"
		end

	sqlite3_os_init: INTEGER is
 		-- sqlite3_os_init
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_os_init()"
		}"
		end

	sqlite3_overload_function (an_argument_l1079_c7: POINTER; a_z_func_name: POINTER; a_n_arg: INTEGER): INTEGER is
 		-- sqlite3_overload_function
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_overload_function"
		}"
		end

	sqlite3_prepare (a_db: POINTER; a_z_sql: POINTER; a_n_byte: INTEGER; a_pp_stmt: POINTER; a_pz_tail: POINTER): INTEGER is
 		-- sqlite3_prepare
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_prepare"
		}"
		end

	sqlite3_prepare16 (a_db: POINTER; a_z_sql: POINTER; a_n_byte: INTEGER; a_pp_stmt: POINTER; a_pz_tail: POINTER): INTEGER is
 		-- sqlite3_prepare16
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_prepare16"
		}"
		end

	sqlite3_prepare16_v2 (a_db: POINTER; a_z_sql: POINTER; a_n_byte: INTEGER; a_pp_stmt: POINTER; a_pz_tail: POINTER): INTEGER is
 		-- sqlite3_prepare16_v2
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_prepare16_v2"
		}"
		end

	sqlite3_prepare_v2 (a_db: POINTER; a_z_sql: POINTER; a_n_byte: INTEGER; a_pp_stmt: POINTER; a_pz_tail: POINTER): INTEGER is
 		-- sqlite3_prepare_v2
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_prepare_v2"
		}"
		end

	sqlite3_profile (an_argument_l1244_c7: POINTER; a_x_profile: POINTER; an_argument_l1246_c7: POINTER): POINTER is
 		-- sqlite3_profile
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_profile"
		}"
		end

	sqlite3_progress_handler (an_argument_l1184_c7: POINTER; an_argument_l1185_c7: INTEGER; an_argument_l1186_c7: POINTER; an_argument_l1187_c7: POINTER) is
 		-- sqlite3_progress_handler
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_progress_handler"
		}"
		end

	sqlite3_randomness (a_n: INTEGER; a_p: POINTER) is
 		-- sqlite3_randomness
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_randomness"
		}"
		end

	sqlite3_realloc (an_argument_l891_c7: POINTER; an_argument_l892_c7: INTEGER): POINTER is
 		-- sqlite3_realloc
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_realloc"
		}"
		end

	sqlite3_release_memory (an_argument_l507_c7: INTEGER): INTEGER is
 		-- sqlite3_release_memory
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_release_memory"
		}"
		end

	sqlite3_reset (a_p_stmt: POINTER): INTEGER is
 		-- sqlite3_reset
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_reset"
		}"
		end

	sqlite3_reset_auto_extension is
 		-- sqlite3_reset_auto_extension
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_reset_auto_extension()"
		}"
		end

	sqlite3_result_blob (an_argument_l679_c7: POINTER; an_argument_l680_c7: POINTER; an_argument_l681_c7: INTEGER; an_argument_l682_c7: POINTER) is
 		-- sqlite3_result_blob
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_result_blob"
		}"
		end

	sqlite3_result_double (an_argument_l954_c7: POINTER; an_argument_l955_c7: REAL) is
 		-- sqlite3_result_double
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_result_double"
		}"
		end

	sqlite3_result_error (an_argument_l935_c7: POINTER; an_argument_l936_c7: POINTER; an_argument_l937_c7: INTEGER) is
 		-- sqlite3_result_error
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_result_error"
		}"
		end

	sqlite3_result_error16 (an_argument_l970_c7: POINTER; an_argument_l971_c7: POINTER; an_argument_l972_c7: INTEGER) is
 		-- sqlite3_result_error16
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_result_error16"
		}"
		end

	sqlite3_result_error_code (an_argument_l646_c7: POINTER; an_argument_l647_c7: INTEGER) is
 		-- sqlite3_result_error_code
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_result_error_code"
		}"
		end

	sqlite3_result_error_nomem (an_argument_l397_c7: POINTER) is
 		-- sqlite3_result_error_nomem
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_result_error_nomem"
		}"
		end

	sqlite3_result_error_toobig (an_argument_l1169_c7: POINTER) is
 		-- sqlite3_result_error_toobig
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_result_error_toobig"
		}"
		end

	sqlite3_result_int (an_argument_l1042_c7: POINTER; an_argument_l1043_c7: INTEGER) is
 		-- sqlite3_result_int
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_result_int"
		}"
		end

	sqlite3_result_int64 (an_argument_l450_c7: POINTER; an_argument_l451_c7: INTEGER_64) is
 		-- sqlite3_result_int64
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_result_int64"
		}"
		end

	sqlite3_result_null (an_argument_l323_c7: POINTER) is
 		-- sqlite3_result_null
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_result_null"
		}"
		end

	sqlite3_result_text (an_argument_l17_c7: POINTER; an_argument_l18_c7: POINTER; an_argument_l19_c7: INTEGER; an_argument_l20_c7: POINTER) is
 		-- sqlite3_result_text
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_result_text"
		}"
		end

	sqlite3_result_text16 (an_argument_l986_c7: POINTER; an_argument_l987_c7: POINTER; an_argument_l988_c7: INTEGER; an_argument_l989_c7: POINTER) is
 		-- sqlite3_result_text16
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_result_text16"
		}"
		end

	sqlite3_result_text16be (an_argument_l331_c7: POINTER; an_argument_l332_c7: POINTER; an_argument_l333_c7: INTEGER; an_argument_l334_c7: POINTER) is
 		-- sqlite3_result_text16be
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_result_text16be"
		}"
		end

	sqlite3_result_text16le (an_argument_l1279_c7: POINTER; an_argument_l1280_c7: POINTER; an_argument_l1281_c7: INTEGER; an_argument_l1282_c7: POINTER) is
 		-- sqlite3_result_text16le
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_result_text16le"
		}"
		end

	sqlite3_result_value (an_argument_l992_c7: POINTER; an_argument_l993_c7: POINTER) is
 		-- sqlite3_result_value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_result_value"
		}"
		end

	sqlite3_result_zeroblob (an_argument_l457_c7: POINTER; a_n: INTEGER) is
 		-- sqlite3_result_zeroblob
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_result_zeroblob"
		}"
		end

	sqlite3_rollback_hook (an_argument_l544_c7: POINTER; an_argument_l545_c7: POINTER; an_argument_l546_c7: POINTER): POINTER is
 		-- sqlite3_rollback_hook
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_rollback_hook"
		}"
		end

	sqlite3_rtree_geometry_callback (a_db: POINTER; a_z_geom: POINTER; a_x_geom: POINTER; a_p_context: POINTER): INTEGER is
 		-- sqlite3_rtree_geometry_callback
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_rtree_geometry_callback"
		}"
		end

	sqlite3_set_authorizer (an_argument_l149_c7: POINTER; a_x_auth: POINTER; a_p_user_data: POINTER): INTEGER is
 		-- sqlite3_set_authorizer
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_set_authorizer"
		}"
		end

	sqlite3_set_auxdata (an_argument_l808_c7: POINTER; a_n: INTEGER; an_argument_l810_c7: POINTER; an_argument_l811_c7: POINTER) is
 		-- sqlite3_set_auxdata
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_set_auxdata"
		}"
		end

	sqlite3_shutdown: INTEGER is
 		-- sqlite3_shutdown
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_shutdown()"
		}"
		end

	sqlite3_sleep (an_argument_l634_c7: INTEGER): INTEGER is
 		-- sqlite3_sleep
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_sleep"
		}"
		end

	sqlite3_snprintf (an_argument_l400_c7: INTEGER; an_argument_l401_c7: POINTER; an_argument_l402_c7: POINTER): POINTER is
 		-- sqlite3_snprintf (variadic call) 
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_snprintf"
		}"
		end

	sqlite3_soft_heap_limit (a_n: INTEGER) is
 		-- sqlite3_soft_heap_limit
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_soft_heap_limit"
		}"
		end

	sqlite3_soft_heap_limit64 (a_n: INTEGER_64): INTEGER_64 is
 		-- sqlite3_soft_heap_limit64
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_soft_heap_limit64"
		}"
		end

	sqlite3_sourceid: POINTER is
 		-- sqlite3_sourceid
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_sourceid()"
		}"
		end

	sqlite3_sql (a_p_stmt: POINTER): POINTER is
 		-- sqlite3_sql
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_sql"
		}"
		end

	sqlite3_status (an_op: INTEGER; a_p_current: POINTER; a_p_highwater: POINTER; a_reset_flag: INTEGER): INTEGER is
 		-- sqlite3_status
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_status"
		}"
		end

	sqlite3_step (an_argument_l940_c7: POINTER): INTEGER is
 		-- sqlite3_step
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_step"
		}"
		end

	sqlite3_stmt_busy (an_argument_l1300_c7: POINTER): INTEGER is
 		-- sqlite3_stmt_busy
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_stmt_busy"
		}"
		end

	sqlite3_stmt_readonly (a_p_stmt: POINTER): INTEGER is
 		-- sqlite3_stmt_readonly
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_stmt_readonly"
		}"
		end

	sqlite3_stmt_status (an_argument_l943_c7: POINTER; an_op: INTEGER; a_reset_flg: INTEGER): INTEGER is
 		-- sqlite3_stmt_status
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_stmt_status"
		}"
		end

	sqlite3_strglob (a_z_glob: POINTER; a_z_str: POINTER): INTEGER is
 		-- sqlite3_strglob
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_strglob"
		}"
		end

	sqlite3_stricmp (an_argument_l1094_c7: POINTER; an_argument_l1095_c7: POINTER): INTEGER is
 		-- sqlite3_stricmp
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_stricmp"
		}"
		end

	sqlite3_strnicmp (an_argument_l879_c7: POINTER; an_argument_l880_c7: POINTER; an_argument_l881_c7: INTEGER): INTEGER is
 		-- sqlite3_strnicmp
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_strnicmp"
		}"
		end

	sqlite3_table_column_metadata (a_db: POINTER; a_z_db_name: POINTER; a_z_table_name: POINTER; a_z_column_name: POINTER; a_pz_data_type: POINTER; a_pz_coll_seq: POINTER; a_p_not_null: POINTER; a_p_primary_key: POINTER; a_p_autoinc: POINTER): INTEGER is
 		-- sqlite3_table_column_metadata
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_table_column_metadata"
		}"
		end

	sqlite3_temp_directory: POINTER is
 		-- sqlite3_temp_directory
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_temp_directory"
		}"
		end

	address_of_sqlite3_temp_directory: POINTER is
 		-- Address of sqlite3_temp_directory
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&sqlite3_temp_directory"
		}"
		end

	set_sqlite3_temp_directory (a_value: POINTER) is
		-- Set variable sqlite3_temp_directory value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_sqlite3_temp_directory"
		}"
		end

	sqlite3_test_control (an_op: INTEGER): INTEGER is
 		-- sqlite3_test_control (variadic call) 
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_test_control"
		}"
		end

	sqlite3_thread_cleanup is
 		-- sqlite3_thread_cleanup
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_thread_cleanup()"
		}"
		end

	sqlite3_threadsafe: INTEGER is
 		-- sqlite3_threadsafe
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_threadsafe()"
		}"
		end

	sqlite3_total_changes (an_argument_l1181_c7: POINTER): INTEGER is
 		-- sqlite3_total_changes
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_total_changes"
		}"
		end

	sqlite3_trace (an_argument_l796_c7: POINTER; a_x_trace: POINTER; an_argument_l798_c7: POINTER): POINTER is
 		-- sqlite3_trace
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_trace"
		}"
		end

	sqlite3_transfer_bindings (an_argument_l875_c7: POINTER; an_argument_l876_c7: POINTER): INTEGER is
 		-- sqlite3_transfer_bindings
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_transfer_bindings"
		}"
		end

	sqlite3_unlock_notify (a_p_blocked: POINTER; a_x_notify: POINTER; a_p_notify_arg: POINTER): INTEGER is
 		-- sqlite3_unlock_notify
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_unlock_notify"
		}"
		end

	sqlite3_update_hook (an_argument_l743_c7: POINTER; an_argument_l744_c7: POINTER; an_argument_l745_c7: POINTER): POINTER is
 		-- sqlite3_update_hook
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_update_hook"
		}"
		end

	sqlite3_uri_boolean (a_z_file: POINTER; a_z_param: POINTER; a_b_default: INTEGER): INTEGER is
 		-- sqlite3_uri_boolean
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_uri_boolean"
		}"
		end

	sqlite3_uri_int64 (an_argument_l1135_c7: POINTER; an_argument_l1136_c7: POINTER; an_argument_l1137_c7: INTEGER_64): INTEGER_64 is
 		-- sqlite3_uri_int64
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_uri_int64"
		}"
		end

	sqlite3_uri_parameter (a_z_filename: POINTER; a_z_param: POINTER): POINTER is
 		-- sqlite3_uri_parameter
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_uri_parameter"
		}"
		end

	sqlite3_user_data (an_argument_l832_c7: POINTER): POINTER is
 		-- sqlite3_user_data
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_user_data"
		}"
		end

	sqlite3_value_blob (an_argument_l474_c7: POINTER): POINTER is
 		-- sqlite3_value_blob
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_value_blob"
		}"
		end

	sqlite3_value_bytes (an_argument_l618_c7: POINTER): INTEGER is
 		-- sqlite3_value_bytes
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_value_bytes"
		}"
		end

	sqlite3_value_bytes16 (an_argument_l604_c7: POINTER): INTEGER is
 		-- sqlite3_value_bytes16
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_value_bytes16"
		}"
		end

	sqlite3_value_double (an_argument_l710_c7: POINTER): REAL is
 		-- sqlite3_value_double
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_value_double"
		}"
		end

	sqlite3_value_int (an_argument_l676_c7: POINTER): INTEGER is
 		-- sqlite3_value_int
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_value_int"
		}"
		end

	sqlite3_value_int64 (an_argument_l494_c7: POINTER): INTEGER_64 is
 		-- sqlite3_value_int64
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_value_int64"
		}"
		end

	sqlite3_value_numeric_type (an_argument_l433_c7: POINTER): INTEGER is
 		-- sqlite3_value_numeric_type
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_value_numeric_type"
		}"
		end

	sqlite3_value_text (an_argument_l1098_c7: POINTER): POINTER is
 		-- sqlite3_value_text
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_value_text"
		}"
		end

	sqlite3_value_text16 (an_argument_l497_c7: POINTER): POINTER is
 		-- sqlite3_value_text16
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_value_text16"
		}"
		end

	sqlite3_value_text16be (an_argument_l625_c7: POINTER): POINTER is
 		-- sqlite3_value_text16be
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_value_text16be"
		}"
		end

	sqlite3_value_text16le (an_argument_l650_c7: POINTER): POINTER is
 		-- sqlite3_value_text16le
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_value_text16le"
		}"
		end

	sqlite3_value_type (an_argument_l461_c7: POINTER): INTEGER is
 		-- sqlite3_value_type
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_value_type"
		}"
		end

	sqlite3_version: POINTER is
 		-- sqlite3_version
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_version"
		}"
		end

	address_of_sqlite3_version: POINTER is
 		-- Address of sqlite3_version
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&sqlite3_version"
		}"
		end

	set_sqlite3_version (a_value: POINTER) is
		-- Set variable sqlite3_version value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_sqlite3_version"
		}"
		end

	sqlite3_vfs_find (a_z_vfs_name: POINTER): POINTER is
 		-- sqlite3_vfs_find
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_find"
		}"
		end

	sqlite3_vfs_register (an_argument_l356_c7: POINTER; a_make_dflt: INTEGER): INTEGER is
 		-- sqlite3_vfs_register
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_register"
		}"
		end

	sqlite3_vfs_unregister (an_argument_l541_c7: POINTER): INTEGER is
 		-- sqlite3_vfs_unregister
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_unregister"
		}"
		end

	sqlite3_vmprintf (an_argument_l296_c7: POINTER; an_argument_l297_c7: POINTER): POINTER is
 		-- sqlite3_vmprintf
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vmprintf"
		}"
		end

	sqlite3_vsnprintf (an_argument_l926_c7: INTEGER; an_argument_l927_c7: POINTER; an_argument_l928_c7: POINTER; an_argument_l929_c7: POINTER): POINTER is
 		-- sqlite3_vsnprintf
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vsnprintf"
		}"
		end

	sqlite3_vtab_config (an_argument_l1053_c7: POINTER; an_op: INTEGER): INTEGER is
 		-- sqlite3_vtab_config (variadic call) 
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vtab_config"
		}"
		end

	sqlite3_vtab_on_conflict (an_argument_l575_c7: POINTER): INTEGER is
 		-- sqlite3_vtab_on_conflict
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vtab_on_conflict"
		}"
		end

	sqlite3_wal_autocheckpoint (a_db: POINTER; a_n: INTEGER): INTEGER is
 		-- sqlite3_wal_autocheckpoint
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_wal_autocheckpoint"
		}"
		end

	sqlite3_wal_checkpoint (a_db: POINTER; a_z_db: POINTER): INTEGER is
 		-- sqlite3_wal_checkpoint
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_wal_checkpoint"
		}"
		end

	sqlite3_wal_checkpoint_v2 (a_db: POINTER; a_z_db: POINTER; an_e_mode: INTEGER; a_pn_log: POINTER; a_pn_ckpt: POINTER): INTEGER is
 		-- sqlite3_wal_checkpoint_v2
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_wal_checkpoint_v2"
		}"
		end

	sqlite3_wal_hook (an_argument_l54_c7: POINTER; an_argument_l55_c7: POINTER; an_argument_l56_c7: POINTER): POINTER is
 		-- sqlite3_wal_hook
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_wal_hook"
		}"
		end


end -- class SQLITE3_EXTERNALS
