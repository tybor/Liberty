-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class XML_PARSER_ERRORS_ENUM

insert ENUM

<<<<<<< HEAD
creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
=======
create default_create
feature -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
        do
            Result := ((a_value = c14n_create_ctxt_low_level)  or else
				(a_value = c14n_create_stack_low_level)  or else
				(a_value = c14n_invalid_node_low_level)  or else
				(a_value = c14n_relative_namespace_low_level)  or else
				(a_value = c14n_requires_utf8_low_level)  or else
				(a_value = c14n_unknow_node_low_level)  or else
				(a_value = catalog_entry_broken_low_level)  or else
				(a_value = catalog_missing_attr_low_level)  or else
				(a_value = catalog_not_catalog_low_level)  or else
				(a_value = catalog_prefer_value_low_level)  or else
				(a_value = catalog_recursion_low_level)  or else
				(a_value = check_entity_type_low_level)  or else
				(a_value = check_found_attribute_low_level)  or else
				(a_value = check_found_cdata_low_level)  or else
				(a_value = check_found_comment_low_level)  or else
				(a_value = check_found_doctype_low_level)  or else
				(a_value = check_found_element_low_level)  or else
				(a_value = check_found_entity_low_level)  or else
				(a_value = check_found_entityref_low_level)  or else
				(a_value = check_found_fragment_low_level)  or else
				(a_value = check_found_notation_low_level)  or else
				(a_value = check_found_pi_low_level)  or else
				(a_value = check_found_text_low_level)  or else
				(a_value = check_name_not_null_low_level)  or else
				(a_value = check_no_dict_low_level)  or else
				(a_value = check_no_doc_low_level)  or else
				(a_value = check_no_elem_low_level)  or else
				(a_value = check_no_href_low_level)  or else
				(a_value = check_no_name_low_level)  or else
				(a_value = check_no_next_low_level)  or else
				(a_value = check_no_parent_low_level)  or else
				(a_value = check_no_prev_low_level)  or else
				(a_value = check_not_attr_low_level)  or else
				(a_value = check_not_attr_decl_low_level)  or else
				(a_value = check_not_dtd_low_level)  or else
				(a_value = check_not_elem_decl_low_level)  or else
				(a_value = check_not_entity_decl_low_level)  or else
				(a_value = check_not_ncname_low_level)  or else
				(a_value = check_not_ns_decl_low_level)  or else
				(a_value = check_not_utf8_low_level)  or else
				(a_value = check_ns_ancestor_low_level)  or else
				(a_value = check_ns_scope_low_level)  or else
				(a_value = check_outside_dict_low_level)  or else
				(a_value = check_unknown_node_low_level)  or else
				(a_value = check_wrong_doc_low_level)  or else
				(a_value = check_wrong_name_low_level)  or else
				(a_value = check_wrong_next_low_level)  or else
				(a_value = check_wrong_parent_low_level)  or else
				(a_value = check_wrong_prev_low_level)  or else
				(a_value = dtd_attribute_default_low_level)  or else
				(a_value = dtd_attribute_redefined_low_level)  or else
				(a_value = dtd_attribute_value_low_level)  or else
				(a_value = dtd_content_error_low_level)  or else
				(a_value = dtd_content_model_low_level)  or else
				(a_value = dtd_content_not_determinist_low_level)  or else
				(a_value = dtd_different_prefix_low_level)  or else
				(a_value = dtd_dup_token_low_level)  or else
				(a_value = dtd_elem_default_namespace_low_level)  or else
				(a_value = dtd_elem_namespace_low_level)  or else
				(a_value = dtd_elem_redefined_low_level)  or else
				(a_value = dtd_empty_notation_low_level)  or else
				(a_value = dtd_entity_type_low_level)  or else
				(a_value = dtd_id_fixed_low_level)  or else
				(a_value = dtd_id_redefined_low_level)  or else
				(a_value = dtd_id_subset_low_level)  or else
				(a_value = dtd_invalid_child_low_level)  or else
				(a_value = dtd_invalid_default_low_level)  or else
				(a_value = dtd_load_error_low_level)  or else
				(a_value = dtd_missing_attribute_low_level)  or else
				(a_value = dtd_mixed_corrupt_low_level)  or else
				(a_value = dtd_multiple_id_low_level)  or else
				(a_value = dtd_no_doc_low_level)  or else
				(a_value = dtd_no_dtd_low_level)  or else
				(a_value = dtd_no_elem_name_low_level)  or else
				(a_value = dtd_no_prefix_low_level)  or else
				(a_value = dtd_no_root_low_level)  or else
				(a_value = dtd_not_empty_low_level)  or else
				(a_value = dtd_not_pcdata_low_level)  or else
				(a_value = dtd_not_standalone_low_level)  or else
				(a_value = dtd_notation_redefined_low_level)  or else
				(a_value = dtd_notation_value_low_level)  or else
				(a_value = dtd_root_name_low_level)  or else
				(a_value = dtd_standalone_defaulted_low_level)  or else
				(a_value = dtd_standalone_white_space_low_level)  or else
				(a_value = dtd_unknown_attribute_low_level)  or else
				(a_value = dtd_unknown_elem_low_level)  or else
				(a_value = dtd_unknown_entity_low_level)  or else
				(a_value = dtd_unknown_id_low_level)  or else
				(a_value = dtd_unknown_notation_low_level)  or else
				(a_value = dtd_xmlid_type_low_level)  or else
				(a_value = dtd_xmlid_value_low_level)  or else
				(a_value = err_attlist_not_finished_low_level)  or else
				(a_value = err_attlist_not_started_low_level)  or else
				(a_value = err_attribute_not_finished_low_level)  or else
				(a_value = err_attribute_not_started_low_level)  or else
				(a_value = err_attribute_redefined_low_level)  or else
				(a_value = err_attribute_without_value_low_level)  or else
				(a_value = err_cdata_not_finished_low_level)  or else
				(a_value = err_charref_at_eof_low_level)  or else
				(a_value = err_charref_in_dtd_low_level)  or else
				(a_value = err_charref_in_epilog_low_level)  or else
				(a_value = err_charref_in_prolog_low_level)  or else
				(a_value = err_comment_not_finished_low_level)  or else
				(a_value = err_condsec_invalid_low_level)  or else
				(a_value = err_condsec_invalid_keyword_low_level)  or else
				(a_value = err_condsec_not_finished_low_level)  or else
				(a_value = err_condsec_not_started_low_level)  or else
				(a_value = err_doctype_not_finished_low_level)  or else
				(a_value = err_document_empty_low_level)  or else
				(a_value = err_document_end_low_level)  or else
				(a_value = err_document_start_low_level)  or else
				(a_value = err_elemcontent_not_finished_low_level)  or else
				(a_value = err_elemcontent_not_started_low_level)  or else
				(a_value = err_encoding_name_low_level)  or else
				(a_value = err_entity_boundary_low_level)  or else
				(a_value = err_entity_char_error_low_level)  or else
				(a_value = err_entity_is_external_low_level)  or else
				(a_value = err_entity_is_parameter_low_level)  or else
				(a_value = err_entity_loop_low_level)  or else
				(a_value = err_entity_not_finished_low_level)  or else
				(a_value = err_entity_not_started_low_level)  or else
				(a_value = err_entity_pe_internal_low_level)  or else
				(a_value = err_entity_processing_low_level)  or else
				(a_value = err_entityref_at_eof_low_level)  or else
				(a_value = err_entityref_in_dtd_low_level)  or else
				(a_value = err_entityref_in_epilog_low_level)  or else
				(a_value = err_entityref_in_prolog_low_level)  or else
				(a_value = err_entityref_no_name_low_level)  or else
				(a_value = err_entityref_semicol_missing_low_level)  or else
				(a_value = err_equal_required_low_level)  or else
				(a_value = err_ext_entity_standalone_low_level)  or else
				(a_value = err_ext_subset_not_finished_low_level)  or else
				(a_value = err_extra_content_low_level)  or else
				(a_value = err_gt_required_low_level)  or else
				(a_value = err_hyphen_in_comment_low_level)  or else
				(a_value = err_internal_error_low_level)  or else
				(a_value = err_invalid_char_low_level)  or else
				(a_value = err_invalid_charref_low_level)  or else
				(a_value = err_invalid_dec_charref_low_level)  or else
				(a_value = err_invalid_encoding_low_level)  or else
				(a_value = err_invalid_hex_charref_low_level)  or else
				(a_value = err_invalid_uri_low_level)  or else
				(a_value = err_literal_not_finished_low_level)  or else
				(a_value = err_literal_not_started_low_level)  or else
				(a_value = err_lt_in_attribute_low_level)  or else
				(a_value = err_lt_required_low_level)  or else
				(a_value = err_ltslash_required_low_level)  or else
				(a_value = err_misplaced_cdata_end_low_level)  or else
				(a_value = err_missing_encoding_low_level)  or else
				(a_value = err_mixed_not_finished_low_level)  or else
				(a_value = err_mixed_not_started_low_level)  or else
				(a_value = err_name_required_low_level)  or else
				(a_value = err_nmtoken_required_low_level)  or else
				(a_value = err_no_dtd_low_level)  or else
				(a_value = err_no_memory_low_level)  or else
				(a_value = err_not_standalone_low_level)  or else
				(a_value = err_not_well_balanced_low_level)  or else
				(a_value = err_notation_not_finished_low_level)  or else
				(a_value = err_notation_not_started_low_level)  or else
				(a_value = err_notation_processing_low_level)  or else
				(a_value = err_ns_decl_error_low_level)  or else
				(a_value = err_ok_low_level)  or else
				(a_value = err_pcdata_required_low_level)  or else
				(a_value = err_peref_at_eof_low_level)  or else
				(a_value = err_peref_in_epilog_low_level)  or else
				(a_value = err_peref_in_int_subset_low_level)  or else
				(a_value = err_peref_in_prolog_low_level)  or else
				(a_value = err_peref_no_name_low_level)  or else
				(a_value = err_peref_semicol_missing_low_level)  or else
				(a_value = err_pi_not_finished_low_level)  or else
				(a_value = err_pi_not_started_low_level)  or else
				(a_value = err_pubid_required_low_level)  or else
				(a_value = err_reserved_xml_name_low_level)  or else
				(a_value = err_separator_required_low_level)  or else
				(a_value = err_space_required_low_level)  or else
				(a_value = err_standalone_value_low_level)  or else
				(a_value = err_string_not_closed_low_level)  or else
				(a_value = err_string_not_started_low_level)  or else
				(a_value = err_tag_name_mismatch_low_level)  or else
				(a_value = err_tag_not_finished_low_level)  or else
				(a_value = err_undeclared_entity_low_level)  or else
				(a_value = err_unknown_encoding_low_level)  or else
				(a_value = err_unknown_version_low_level)  or else
				(a_value = err_unparsed_entity_low_level)  or else
				(a_value = err_unsupported_encoding_low_level)  or else
				(a_value = err_uri_fragment_low_level)  or else
				(a_value = err_uri_required_low_level)  or else
				(a_value = err_value_required_low_level)  or else
				(a_value = err_version_mismatch_low_level)  or else
				(a_value = err_version_missing_low_level)  or else
				(a_value = err_xmldecl_not_finished_low_level)  or else
				(a_value = err_xmldecl_not_started_low_level)  or else
				(a_value = ftp_accnt_low_level)  or else
				(a_value = ftp_epsv_answer_low_level)  or else
				(a_value = ftp_pasv_answer_low_level)  or else
				(a_value = ftp_url_syntax_low_level)  or else
				(a_value = html_strucure_error_low_level)  or else
				(a_value = html_unknown_tag_low_level)  or else
				(a_value = http_unknown_host_low_level)  or else
				(a_value = http_url_syntax_low_level)  or else
				(a_value = http_use_ip_low_level)  or else
				(a_value = i18n_conv_failed_low_level)  or else
				(a_value = i18n_excess_handler_low_level)  or else
				(a_value = i18n_no_handler_low_level)  or else
				(a_value = i18n_no_name_low_level)  or else
				(a_value = i18n_no_output_low_level)  or else
				(a_value = io_buffer_full_low_level)  or else
				(a_value = io_eacces_low_level)  or else
				(a_value = io_eaddrinuse_low_level)  or else
				(a_value = io_eafnosupport_low_level)  or else
				(a_value = io_eagain_low_level)  or else
				(a_value = io_ealready_low_level)  or else
				(a_value = io_ebadf_low_level)  or else
				(a_value = io_ebadmsg_low_level)  or else
				(a_value = io_ebusy_low_level)  or else
				(a_value = io_ecanceled_low_level)  or else
				(a_value = io_echild_low_level)  or else
				(a_value = io_econnrefused_low_level)  or else
				(a_value = io_edeadlk_low_level)  or else
				(a_value = io_edom_low_level)  or else
				(a_value = io_eexist_low_level)  or else
				(a_value = io_efault_low_level)  or else
				(a_value = io_efbig_low_level)  or else
				(a_value = io_einprogress_low_level)  or else
				(a_value = io_eintr_low_level)  or else
				(a_value = io_einval_low_level)  or else
				(a_value = io_eio_low_level)  or else
				(a_value = io_eisconn_low_level)  or else
				(a_value = io_eisdir_low_level)  or else
				(a_value = io_emfile_low_level)  or else
				(a_value = io_emlink_low_level)  or else
				(a_value = io_emsgsize_low_level)  or else
				(a_value = io_enametoolong_low_level)  or else
				(a_value = io_encoder_low_level)  or else
				(a_value = io_enetunreach_low_level)  or else
				(a_value = io_enfile_low_level)  or else
				(a_value = io_enodev_low_level)  or else
				(a_value = io_enoent_low_level)  or else
				(a_value = io_enoexec_low_level)  or else
				(a_value = io_enolck_low_level)  or else
				(a_value = io_enomem_low_level)  or else
				(a_value = io_enospc_low_level)  or else
				(a_value = io_enosys_low_level)  or else
				(a_value = io_enotdir_low_level)  or else
				(a_value = io_enotempty_low_level)  or else
				(a_value = io_enotsock_low_level)  or else
				(a_value = io_enotsup_low_level)  or else
				(a_value = io_enotty_low_level)  or else
				(a_value = io_enxio_low_level)  or else
				(a_value = io_eperm_low_level)  or else
				(a_value = io_epipe_low_level)  or else
				(a_value = io_erange_low_level)  or else
				(a_value = io_erofs_low_level)  or else
				(a_value = io_espipe_low_level)  or else
				(a_value = io_esrch_low_level)  or else
				(a_value = io_etimedout_low_level)  or else
				(a_value = io_exdev_low_level)  or else
				(a_value = io_flush_low_level)  or else
				(a_value = io_load_error_low_level)  or else
				(a_value = io_network_attempt_low_level)  or else
				(a_value = io_no_input_low_level)  or else
				(a_value = io_unknown_low_level)  or else
				(a_value = io_write_low_level)  or else
				(a_value = module_close_low_level)  or else
				(a_value = module_open_low_level)  or else
				(a_value = ns_err_attribute_redefined_low_level)  or else
				(a_value = ns_err_colon_low_level)  or else
				(a_value = ns_err_empty_low_level)  or else
				(a_value = ns_err_qname_low_level)  or else
				(a_value = ns_err_undefined_namespace_low_level)  or else
				(a_value = ns_err_xml_namespace_low_level)  or else
				(a_value = regexp_compile_error_low_level)  or else
				(a_value = rngp_anyname_attr_ancestor_low_level)  or else
				(a_value = rngp_attr_conflict_low_level)  or else
				(a_value = rngp_attribute_children_low_level)  or else
				(a_value = rngp_attribute_content_low_level)  or else
				(a_value = rngp_attribute_empty_low_level)  or else
				(a_value = rngp_attribute_noop_low_level)  or else
				(a_value = rngp_choice_content_low_level)  or else
				(a_value = rngp_choice_empty_low_level)  or else
				(a_value = rngp_create_failure_low_level)  or else
				(a_value = rngp_data_content_low_level)  or else
				(a_value = rngp_def_choice_and_interleave_low_level)  or else
				(a_value = rngp_define_create_failed_low_level)  or else
				(a_value = rngp_define_empty_low_level)  or else
				(a_value = rngp_define_missing_low_level)  or else
				(a_value = rngp_define_name_missing_low_level)  or else
				(a_value = rngp_elem_content_empty_low_level)  or else
				(a_value = rngp_elem_content_error_low_level)  or else
				(a_value = rngp_elem_text_conflict_low_level)  or else
				(a_value = rngp_element_content_low_level)  or else
				(a_value = rngp_element_empty_low_level)  or else
				(a_value = rngp_element_name_low_level)  or else
				(a_value = rngp_element_no_content_low_level)  or else
				(a_value = rngp_empty_low_level)  or else
				(a_value = rngp_empty_construct_low_level)  or else
				(a_value = rngp_empty_content_low_level)  or else
				(a_value = rngp_empty_not_empty_low_level)  or else
				(a_value = rngp_error_type_lib_low_level)  or else
				(a_value = rngp_except_empty_low_level)  or else
				(a_value = rngp_except_missing_low_level)  or else
				(a_value = rngp_except_multiple_low_level)  or else
				(a_value = rngp_except_no_content_low_level)  or else
				(a_value = rngp_external_ref_failure_low_level)  or else
				(a_value = rngp_externalref_emtpy_low_level)  or else
				(a_value = rngp_externalref_recurse_low_level)  or else
				(a_value = rngp_forbidden_attribute_low_level)  or else
				(a_value = rngp_foreign_element_low_level)  or else
				(a_value = rngp_grammar_content_low_level)  or else
				(a_value = rngp_grammar_empty_low_level)  or else
				(a_value = rngp_grammar_missing_low_level)  or else
				(a_value = rngp_grammar_no_start_low_level)  or else
				(a_value = rngp_group_attr_conflict_low_level)  or else
				(a_value = rngp_href_error_low_level)  or else
				(a_value = rngp_include_empty_low_level)  or else
				(a_value = rngp_include_failure_low_level)  or else
				(a_value = rngp_include_recurse_low_level)  or else
				(a_value = rngp_interleave_add_low_level)  or else
				(a_value = rngp_interleave_create_failed_low_level)  or else
				(a_value = rngp_interleave_empty_low_level)  or else
				(a_value = rngp_interleave_no_content_low_level)  or else
				(a_value = rngp_invalid_define_name_low_level)  or else
				(a_value = rngp_invalid_uri_low_level)  or else
				(a_value = rngp_invalid_value_low_level)  or else
				(a_value = rngp_missing_href_low_level)  or else
				(a_value = rngp_name_missing_low_level)  or else
				(a_value = rngp_need_combine_low_level)  or else
				(a_value = rngp_notallowed_not_empty_low_level)  or else
				(a_value = rngp_nsname_attr_ancestor_low_level)  or else
				(a_value = rngp_nsname_no_ns_low_level)  or else
				(a_value = rngp_param_forbidden_low_level)  or else
				(a_value = rngp_param_name_missing_low_level)  or else
				(a_value = rngp_parentref_create_failed_low_level)  or else
				(a_value = rngp_parentref_name_invalid_low_level)  or else
				(a_value = rngp_parentref_no_name_low_level)  or else
				(a_value = rngp_parentref_no_parent_low_level)  or else
				(a_value = rngp_parentref_not_empty_low_level)  or else
				(a_value = rngp_parse_error_low_level)  or else
				(a_value = rngp_pat_anyname_except_anyname_low_level)  or else
				(a_value = rngp_pat_attr_attr_low_level)  or else
				(a_value = rngp_pat_attr_elem_low_level)  or else
				(a_value = rngp_pat_data_except_attr_low_level)  or else
				(a_value = rngp_pat_data_except_elem_low_level)  or else
				(a_value = rngp_pat_data_except_empty_low_level)  or else
				(a_value = rngp_pat_data_except_group_low_level)  or else
				(a_value = rngp_pat_data_except_interleave_low_level)  or else
				(a_value = rngp_pat_data_except_list_low_level)  or else
				(a_value = rngp_pat_data_except_onemore_low_level)  or else
				(a_value = rngp_pat_data_except_ref_low_level)  or else
				(a_value = rngp_pat_data_except_text_low_level)  or else
				(a_value = rngp_pat_list_attr_low_level)  or else
				(a_value = rngp_pat_list_elem_low_level)  or else
				(a_value = rngp_pat_list_interleave_low_level)  or else
				(a_value = rngp_pat_list_list_low_level)  or else
				(a_value = rngp_pat_list_ref_low_level)  or else
				(a_value = rngp_pat_list_text_low_level)  or else
				(a_value = rngp_pat_nsname_except_anyname_low_level)  or else
				(a_value = rngp_pat_nsname_except_nsname_low_level)  or else
				(a_value = rngp_pat_onemore_group_attr_low_level)  or else
				(a_value = rngp_pat_onemore_interleave_attr_low_level)  or else
				(a_value = rngp_pat_start_attr_low_level)  or else
				(a_value = rngp_pat_start_data_low_level)  or else
				(a_value = rngp_pat_start_empty_low_level)  or else
				(a_value = rngp_pat_start_group_low_level)  or else
				(a_value = rngp_pat_start_interleave_low_level)  or else
				(a_value = rngp_pat_start_list_low_level)  or else
				(a_value = rngp_pat_start_onemore_low_level)  or else
				(a_value = rngp_pat_start_text_low_level)  or else
				(a_value = rngp_pat_start_value_low_level)  or else
				(a_value = rngp_prefix_undefined_low_level)  or else
				(a_value = rngp_ref_create_failed_low_level)  or else
				(a_value = rngp_ref_cycle_low_level)  or else
				(a_value = rngp_ref_name_invalid_low_level)  or else
				(a_value = rngp_ref_no_def_low_level)  or else
				(a_value = rngp_ref_no_name_low_level)  or else
				(a_value = rngp_ref_not_empty_low_level)  or else
				(a_value = rngp_start_choice_and_interleave_low_level)  or else
				(a_value = rngp_start_content_low_level)  or else
				(a_value = rngp_start_empty_low_level)  or else
				(a_value = rngp_start_missing_low_level)  or else
				(a_value = rngp_text_expected_low_level)  or else
				(a_value = rngp_text_has_child_low_level)  or else
				(a_value = rngp_type_missing_low_level)  or else
				(a_value = rngp_type_not_found_low_level)  or else
				(a_value = rngp_type_value_low_level)  or else
				(a_value = rngp_unknown_attribute_low_level)  or else
				(a_value = rngp_unknown_combine_low_level)  or else
				(a_value = rngp_unknown_construct_low_level)  or else
				(a_value = rngp_unknown_type_lib_low_level)  or else
				(a_value = rngp_uri_fragment_low_level)  or else
				(a_value = rngp_uri_not_absolute_low_level)  or else
				(a_value = rngp_value_empty_low_level)  or else
				(a_value = rngp_value_no_content_low_level)  or else
				(a_value = rngp_xml_ns_low_level)  or else
				(a_value = rngp_xmlns_name_low_level)  or else
				(a_value = save_char_invalid_low_level)  or else
				(a_value = save_no_doctype_low_level)  or else
				(a_value = save_not_utf8_low_level)  or else
				(a_value = save_unknown_encoding_low_level)  or else
				(a_value = schemap_a_props_correct_2_low_level)  or else
				(a_value = schemap_a_props_correct_3_low_level)  or else
				(a_value = schemap_ag_props_correct_low_level)  or else
				(a_value = schemap_attr_noname_noref_low_level)  or else
				(a_value = schemap_attrformdefault_value_low_level)  or else
				(a_value = schemap_attrgrp_noname_noref_low_level)  or else
				(a_value = schemap_au_props_correct_low_level)  or else
				(a_value = schemap_au_props_correct_2_low_level)  or else
				(a_value = schemap_c_props_correct_low_level)  or else
				(a_value = schemap_complextype_noname_noref_low_level)  or else
				(a_value = schemap_cos_all_limited_low_level)  or else
				(a_value = schemap_cos_ct_extends_1_1_low_level)  or else
				(a_value = schemap_cos_ct_extends_1_2_low_level)  or else
				(a_value = schemap_cos_ct_extends_1_3_low_level)  or else
				(a_value = schemap_cos_st_derived_ok_2_1_low_level)  or else
				(a_value = schemap_cos_st_derived_ok_2_2_low_level)  or else
				(a_value = schemap_cos_st_restricts_1_1_low_level)  or else
				(a_value = schemap_cos_st_restricts_1_2_low_level)  or else
				(a_value = schemap_cos_st_restricts_1_3_1_low_level)  or else
				(a_value = schemap_cos_st_restricts_1_3_2_low_level)  or else
				(a_value = schemap_cos_st_restricts_2_1_low_level)  or else
				(a_value = schemap_cos_st_restricts_2_3_1_1_low_level)  or else
				(a_value = schemap_cos_st_restricts_2_3_1_2_low_level)  or else
				(a_value = schemap_cos_st_restricts_2_3_2_1_low_level)  or else
				(a_value = schemap_cos_st_restricts_2_3_2_2_low_level)  or else
				(a_value = schemap_cos_st_restricts_2_3_2_3_low_level)  or else
				(a_value = schemap_cos_st_restricts_2_3_2_4_low_level)  or else
				(a_value = schemap_cos_st_restricts_2_3_2_5_low_level)  or else
				(a_value = schemap_cos_st_restricts_3_1_low_level)  or else
				(a_value = schemap_cos_st_restricts_3_3_1_low_level)  or else
				(a_value = schemap_cos_st_restricts_3_3_1_2_low_level)  or else
				(a_value = schemap_cos_st_restricts_3_3_2_1_low_level)  or else
				(a_value = schemap_cos_st_restricts_3_3_2_2_low_level)  or else
				(a_value = schemap_cos_st_restricts_3_3_2_3_low_level)  or else
				(a_value = schemap_cos_st_restricts_3_3_2_4_low_level)  or else
				(a_value = schemap_cos_st_restricts_3_3_2_5_low_level)  or else
				(a_value = schemap_cos_valid_default_1_low_level)  or else
				(a_value = schemap_cos_valid_default_2_1_low_level)  or else
				(a_value = schemap_cos_valid_default_2_2_1_low_level)  or else
				(a_value = schemap_cos_valid_default_2_2_2_low_level)  or else
				(a_value = schemap_ct_props_correct_1_low_level)  or else
				(a_value = schemap_ct_props_correct_2_low_level)  or else
				(a_value = schemap_ct_props_correct_3_low_level)  or else
				(a_value = schemap_ct_props_correct_4_low_level)  or else
				(a_value = schemap_ct_props_correct_5_low_level)  or else
				(a_value = schemap_cvc_simple_type_low_level)  or else
				(a_value = schemap_def_and_prefix_low_level)  or else
				(a_value = schemap_derivation_ok_restriction_1_low_level)  or else
				(a_value = schemap_derivation_ok_restriction_2_1_1_low_level)  or else
				(a_value = schemap_derivation_ok_restriction_2_1_2_low_level)  or else
				(a_value = schemap_derivation_ok_restriction_2_1_3_low_level)  or else
				(a_value = schemap_derivation_ok_restriction_2_2_low_level)  or else
				(a_value = schemap_derivation_ok_restriction_3_low_level)  or else
				(a_value = schemap_derivation_ok_restriction_4_1_low_level)  or else
				(a_value = schemap_derivation_ok_restriction_4_2_low_level)  or else
				(a_value = schemap_derivation_ok_restriction_4_3_low_level)  or else
				(a_value = schemap_e_props_correct_2_low_level)  or else
				(a_value = schemap_e_props_correct_3_low_level)  or else
				(a_value = schemap_e_props_correct_4_low_level)  or else
				(a_value = schemap_e_props_correct_5_low_level)  or else
				(a_value = schemap_e_props_correct_6_low_level)  or else
				(a_value = schemap_elem_default_fixed_low_level)  or else
				(a_value = schemap_elem_noname_noref_low_level)  or else
				(a_value = schemap_elemformdefault_value_low_level)  or else
				(a_value = schemap_extension_no_base_low_level)  or else
				(a_value = schemap_facet_no_value_low_level)  or else
				(a_value = schemap_failed_build_import_low_level)  or else
				(a_value = schemap_failed_load_low_level)  or else
				(a_value = schemap_failed_parse_low_level)  or else
				(a_value = schemap_group_noname_noref_low_level)  or else
				(a_value = schemap_import_namespace_not_uri_low_level)  or else
				(a_value = schemap_import_redefine_nsname_low_level)  or else
				(a_value = schemap_import_schema_not_uri_low_level)  or else
				(a_value = schemap_include_schema_no_uri_low_level)  or else
				(a_value = schemap_include_schema_not_uri_low_level)  or else
				(a_value = schemap_internal_low_level)  or else
				(a_value = schemap_intersection_not_expressible_low_level)  or else
				(a_value = schemap_invalid_attr_combination_low_level)  or else
				(a_value = schemap_invalid_attr_inline_combination_low_level)  or else
				(a_value = schemap_invalid_attr_name_low_level)  or else
				(a_value = schemap_invalid_attr_use_low_level)  or else
				(a_value = schemap_invalid_boolean_low_level)  or else
				(a_value = schemap_invalid_enum_low_level)  or else
				(a_value = schemap_invalid_facet_low_level)  or else
				(a_value = schemap_invalid_facet_value_low_level)  or else
				(a_value = schemap_invalid_maxoccurs_low_level)  or else
				(a_value = schemap_invalid_minoccurs_low_level)  or else
				(a_value = schemap_invalid_ref_and_subtype_low_level)  or else
				(a_value = schemap_invalid_white_space_low_level)  or else
				(a_value = schemap_mg_props_correct_1_low_level)  or else
				(a_value = schemap_mg_props_correct_2_low_level)  or else
				(a_value = schemap_missing_simpletype_child_low_level)  or else
				(a_value = schemap_no_xmlns_low_level)  or else
				(a_value = schemap_no_xsi_low_level)  or else
				(a_value = schemap_noattr_noref_low_level)  or else
				(a_value = schemap_noroot_low_level)  or else
				(a_value = schemap_not_deterministic_low_level)  or else
				(a_value = schemap_not_schema_low_level)  or else
				(a_value = schemap_notation_no_name_low_level)  or else
				(a_value = schemap_nothing_to_parse_low_level)  or else
				(a_value = schemap_notype_noref_low_level)  or else
				(a_value = schemap_p_props_correct_1_low_level)  or else
				(a_value = schemap_p_props_correct_2_1_low_level)  or else
				(a_value = schemap_p_props_correct_2_2_low_level)  or else
				(a_value = schemap_prefix_undefined_low_level)  or else
				(a_value = schemap_recursive_low_level)  or else
				(a_value = schemap_redefined_attr_low_level)  or else
				(a_value = schemap_redefined_attrgroup_low_level)  or else
				(a_value = schemap_redefined_element_low_level)  or else
				(a_value = schemap_redefined_group_low_level)  or else
				(a_value = schemap_redefined_notation_low_level)  or else
				(a_value = schemap_redefined_type_low_level)  or else
				(a_value = schemap_ref_and_content_low_level)  or else
				(a_value = schemap_ref_and_subtype_low_level)  or else
				(a_value = schemap_regexp_invalid_low_level)  or else
				(a_value = schemap_restriction_noname_noref_low_level)  or else
				(a_value = schemap_s4s_attr_invalid_value_low_level)  or else
				(a_value = schemap_s4s_attr_missing_low_level)  or else
				(a_value = schemap_s4s_attr_not_allowed_low_level)  or else
				(a_value = schemap_s4s_elem_missing_low_level)  or else
				(a_value = schemap_s4s_elem_not_allowed_low_level)  or else
				(a_value = schemap_simpletype_noname_low_level)  or else
				(a_value = schemap_src_attribute_1_low_level)  or else
				(a_value = schemap_src_attribute_2_low_level)  or else
				(a_value = schemap_src_attribute_3_1_low_level)  or else
				(a_value = schemap_src_attribute_3_2_low_level)  or else
				(a_value = schemap_src_attribute_4_low_level)  or else
				(a_value = schemap_src_attribute_group_1_low_level)  or else
				(a_value = schemap_src_attribute_group_2_low_level)  or else
				(a_value = schemap_src_attribute_group_3_low_level)  or else
				(a_value = schemap_src_ct_1_low_level)  or else
				(a_value = schemap_src_element_1_low_level)  or else
				(a_value = schemap_src_element_2_1_low_level)  or else
				(a_value = schemap_src_element_2_2_low_level)  or else
				(a_value = schemap_src_element_3_low_level)  or else
				(a_value = schemap_src_import_low_level)  or else
				(a_value = schemap_src_import_1_1_low_level)  or else
				(a_value = schemap_src_import_1_2_low_level)  or else
				(a_value = schemap_src_import_2_low_level)  or else
				(a_value = schemap_src_import_2_1_low_level)  or else
				(a_value = schemap_src_import_2_2_low_level)  or else
				(a_value = schemap_src_import_3_1_low_level)  or else
				(a_value = schemap_src_import_3_2_low_level)  or else
				(a_value = schemap_src_include_low_level)  or else
				(a_value = schemap_src_list_itemtype_or_simpletype_low_level)  or else
				(a_value = schemap_src_redefine_low_level)  or else
				(a_value = schemap_src_resolve_low_level)  or else
				(a_value = schemap_src_restriction_base_or_simpletype_low_level)  or else
				(a_value = schemap_src_simple_type_1_low_level)  or else
				(a_value = schemap_src_simple_type_2_low_level)  or else
				(a_value = schemap_src_simple_type_3_low_level)  or else
				(a_value = schemap_src_simple_type_4_low_level)  or else
				(a_value = schemap_src_union_membertypes_or_simpletypes_low_level)  or else
				(a_value = schemap_st_props_correct_1_low_level)  or else
				(a_value = schemap_st_props_correct_2_low_level)  or else
				(a_value = schemap_st_props_correct_3_low_level)  or else
				(a_value = schemap_supernumerous_list_item_type_low_level)  or else
				(a_value = schemap_type_and_subtype_low_level)  or else
				(a_value = schemap_union_not_expressible_low_level)  or else
				(a_value = schemap_unknown_all_child_low_level)  or else
				(a_value = schemap_unknown_anyattribute_child_low_level)  or else
				(a_value = schemap_unknown_attr_child_low_level)  or else
				(a_value = schemap_unknown_attrgrp_child_low_level)  or else
				(a_value = schemap_unknown_attribute_group_low_level)  or else
				(a_value = schemap_unknown_base_type_low_level)  or else
				(a_value = schemap_unknown_choice_child_low_level)  or else
				(a_value = schemap_unknown_complexcontent_child_low_level)  or else
				(a_value = schemap_unknown_complextype_child_low_level)  or else
				(a_value = schemap_unknown_elem_child_low_level)  or else
				(a_value = schemap_unknown_extension_child_low_level)  or else
				(a_value = schemap_unknown_facet_child_low_level)  or else
				(a_value = schemap_unknown_facet_type_low_level)  or else
				(a_value = schemap_unknown_group_child_low_level)  or else
				(a_value = schemap_unknown_import_child_low_level)  or else
				(a_value = schemap_unknown_include_child_low_level)  or else
				(a_value = schemap_unknown_list_child_low_level)  or else
				(a_value = schemap_unknown_member_type_low_level)  or else
				(a_value = schemap_unknown_notation_child_low_level)  or else
				(a_value = schemap_unknown_prefix_low_level)  or else
				(a_value = schemap_unknown_processcontent_child_low_level)  or else
				(a_value = schemap_unknown_ref_low_level)  or else
				(a_value = schemap_unknown_restriction_child_low_level)  or else
				(a_value = schemap_unknown_schemas_child_low_level)  or else
				(a_value = schemap_unknown_sequence_child_low_level)  or else
				(a_value = schemap_unknown_simplecontent_child_low_level)  or else
				(a_value = schemap_unknown_simpletype_child_low_level)  or else
				(a_value = schemap_unknown_type_low_level)  or else
				(a_value = schemap_unknown_union_child_low_level)  or else
				(a_value = schemap_warn_attr_pointless_proh_low_level)  or else
				(a_value = schemap_warn_attr_redecl_proh_low_level)  or else
				(a_value = schemap_warn_skip_schema_low_level)  or else
				(a_value = schemap_warn_unlocated_schema_low_level)  or else
				(a_value = schemap_wildcard_invalid_ns_member_low_level)  or else
				(a_value = schematronv_assert_low_level)  or else
				(a_value = schematronv_report_low_level)  or else
				(a_value = schemav_attrinvalid_low_level)  or else
				(a_value = schemav_attrunknown_low_level)  or else
				(a_value = schemav_construct_low_level)  or else
				(a_value = schemav_cvc_attribute_1_low_level)  or else
				(a_value = schemav_cvc_attribute_2_low_level)  or else
				(a_value = schemav_cvc_attribute_3_low_level)  or else
				(a_value = schemav_cvc_attribute_4_low_level)  or else
				(a_value = schemav_cvc_au_low_level)  or else
				(a_value = schemav_cvc_complex_type_1_low_level)  or else
				(a_value = schemav_cvc_complex_type_2_1_low_level)  or else
				(a_value = schemav_cvc_complex_type_2_2_low_level)  or else
				(a_value = schemav_cvc_complex_type_2_3_low_level)  or else
				(a_value = schemav_cvc_complex_type_2_4_low_level)  or else
				(a_value = schemav_cvc_complex_type_3_1_low_level)  or else
				(a_value = schemav_cvc_complex_type_3_2_1_low_level)  or else
				(a_value = schemav_cvc_complex_type_3_2_2_low_level)  or else
				(a_value = schemav_cvc_complex_type_4_low_level)  or else
				(a_value = schemav_cvc_complex_type_5_1_low_level)  or else
				(a_value = schemav_cvc_complex_type_5_2_low_level)  or else
				(a_value = schemav_cvc_datatype_valid_1_2_1_low_level)  or else
				(a_value = schemav_cvc_datatype_valid_1_2_2_low_level)  or else
				(a_value = schemav_cvc_datatype_valid_1_2_3_low_level)  or else
				(a_value = schemav_cvc_elt_1_low_level)  or else
				(a_value = schemav_cvc_elt_2_low_level)  or else
				(a_value = schemav_cvc_elt_3_1_low_level)  or else
				(a_value = schemav_cvc_elt_3_2_1_low_level)  or else
				(a_value = schemav_cvc_elt_3_2_2_low_level)  or else
				(a_value = schemav_cvc_elt_4_1_low_level)  or else
				(a_value = schemav_cvc_elt_4_2_low_level)  or else
				(a_value = schemav_cvc_elt_4_3_low_level)  or else
				(a_value = schemav_cvc_elt_5_1_1_low_level)  or else
				(a_value = schemav_cvc_elt_5_1_2_low_level)  or else
				(a_value = schemav_cvc_elt_5_2_1_low_level)  or else
				(a_value = schemav_cvc_elt_5_2_2_1_low_level)  or else
				(a_value = schemav_cvc_elt_5_2_2_2_1_low_level)  or else
				(a_value = schemav_cvc_elt_5_2_2_2_2_low_level)  or else
				(a_value = schemav_cvc_elt_6_low_level)  or else
				(a_value = schemav_cvc_elt_7_low_level)  or else
				(a_value = schemav_cvc_enumeration_valid_low_level)  or else
				(a_value = schemav_cvc_facet_valid_low_level)  or else
				(a_value = schemav_cvc_fractiondigits_valid_low_level)  or else
				(a_value = schemav_cvc_idc_low_level)  or else
				(a_value = schemav_cvc_length_valid_low_level)  or else
				(a_value = schemav_cvc_maxexclusive_valid_low_level)  or else
				(a_value = schemav_cvc_maxinclusive_valid_low_level)  or else
				(a_value = schemav_cvc_maxlength_valid_low_level)  or else
				(a_value = schemav_cvc_minexclusive_valid_low_level)  or else
				(a_value = schemav_cvc_mininclusive_valid_low_level)  or else
				(a_value = schemav_cvc_minlength_valid_low_level)  or else
				(a_value = schemav_cvc_pattern_valid_low_level)  or else
				(a_value = schemav_cvc_totaldigits_valid_low_level)  or else
				(a_value = schemav_cvc_type_1_low_level)  or else
				(a_value = schemav_cvc_type_2_low_level)  or else
				(a_value = schemav_cvc_type_3_1_1_low_level)  or else
				(a_value = schemav_cvc_type_3_1_2_low_level)  or else
				(a_value = schemav_cvc_wildcard_low_level)  or else
				(a_value = schemav_document_element_missing_low_level)  or else
				(a_value = schemav_elemcont_low_level)  or else
				(a_value = schemav_element_content_low_level)  or else
				(a_value = schemav_extracontent_low_level)  or else
				(a_value = schemav_facet_low_level)  or else
				(a_value = schemav_havedefault_low_level)  or else
				(a_value = schemav_internal_low_level)  or else
				(a_value = schemav_invalidattr_low_level)  or else
				(a_value = schemav_invalidelem_low_level)  or else
				(a_value = schemav_isabstract_low_level)  or else
				(a_value = schemav_misc_low_level)  or else
				(a_value = schemav_missing_low_level)  or else
				(a_value = schemav_norollback_low_level)  or else
				(a_value = schemav_noroot_low_level)  or else
				(a_value = schemav_notdeterminist_low_level)  or else
				(a_value = schemav_notempty_low_level)  or else
				(a_value = schemav_notnillable_low_level)  or else
				(a_value = schemav_notsimple_low_level)  or else
				(a_value = schemav_nottoplevel_low_level)  or else
				(a_value = schemav_notype_low_level)  or else
				(a_value = schemav_undeclaredelem_low_level)  or else
				(a_value = schemav_value_low_level)  or else
				(a_value = schemav_wrongelem_low_level)  or else
				(a_value = tree_invalid_dec_low_level)  or else
				(a_value = tree_invalid_hex_low_level)  or else
				(a_value = tree_not_utf8_low_level)  or else
				(a_value = tree_unterminated_entity_low_level)  or else
				(a_value = war_catalog_pi_low_level)  or else
				(a_value = war_entity_redefined_low_level)  or else
				(a_value = war_lang_value_low_level)  or else
				(a_value = war_ns_column_low_level)  or else
				(a_value = war_ns_uri_low_level)  or else
				(a_value = war_ns_uri_relative_low_level)  or else
				(a_value = war_space_value_low_level)  or else
				(a_value = war_undeclared_entity_low_level)  or else
				(a_value = war_unknown_version_low_level)  or else
				(a_value = xinclude_build_failed_low_level)  or else
				(a_value = xinclude_deprecated_ns_low_level)  or else
				(a_value = xinclude_entity_def_mismatch_low_level)  or else
				(a_value = xinclude_fallback_not_in_include_low_level)  or else
				(a_value = xinclude_fallbacks_in_include_low_level)  or else
				(a_value = xinclude_fragment_id_low_level)  or else
				(a_value = xinclude_href_uri_low_level)  or else
				(a_value = xinclude_include_in_include_low_level)  or else
				(a_value = xinclude_invalid_char_low_level)  or else
				(a_value = xinclude_multiple_root_low_level)  or else
				(a_value = xinclude_no_fallback_low_level)  or else
				(a_value = xinclude_no_href_low_level)  or else
				(a_value = xinclude_parse_value_low_level)  or else
				(a_value = xinclude_recursion_low_level)  or else
				(a_value = xinclude_text_document_low_level)  or else
				(a_value = xinclude_text_fragment_low_level)  or else
				(a_value = xinclude_unknown_encoding_low_level)  or else
				(a_value = xinclude_xptr_failed_low_level)  or else
				(a_value = xinclude_xptr_result_low_level)  or else
				(a_value = xpath_encoding_error_low_level)  or else
				(a_value = xpath_expr_error_low_level)  or else
				(a_value = xpath_expression_ok_low_level)  or else
				(a_value = xpath_invalid_arity_low_level)  or else
				(a_value = xpath_invalid_char_error_low_level)  or else
				(a_value = xpath_invalid_ctxt_position_low_level)  or else
				(a_value = xpath_invalid_ctxt_size_low_level)  or else
				(a_value = xpath_invalid_operand_low_level)  or else
				(a_value = xpath_invalid_predicate_error_low_level)  or else
				(a_value = xpath_invalid_type_low_level)  or else
				(a_value = xpath_memory_error_low_level)  or else
				(a_value = xpath_number_error_low_level)  or else
				(a_value = xpath_start_literal_error_low_level)  or else
				(a_value = xpath_unclosed_error_low_level)  or else
				(a_value = xpath_undef_prefix_error_low_level)  or else
				(a_value = xpath_undef_variable_error_low_level)  or else
				(a_value = xpath_unfinished_literal_error_low_level)  or else
				(a_value = xpath_unknown_func_error_low_level)  or else
				(a_value = xpath_variable_ref_error_low_level)  or else
				(a_value = xptr_childseq_start_low_level)  or else
				(a_value = xptr_eval_failed_low_level)  or else
				(a_value = xptr_extra_objects_low_level)  or else
				(a_value = xptr_resource_error_low_level)  or else
				(a_value = xptr_sub_resource_error_low_level)  or else
				(a_value = xptr_syntax_error_low_level)  or else
				(a_value = xptr_unknown_scheme_low_level) )
		end

feature {ANY} -- Setters
	default_create,
<<<<<<< HEAD
	set_c14n_create_ctxt is
=======
	set_xml_c14n_create_ctxt
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := c14n_create_ctxt_low_level
		end

<<<<<<< HEAD
	set_c14n_create_stack is
=======
	set_xml_c14n_create_stack
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := c14n_create_stack_low_level
		end

<<<<<<< HEAD
	set_c14n_invalid_node is
=======
	set_xml_c14n_invalid_node
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := c14n_invalid_node_low_level
		end

<<<<<<< HEAD
	set_c14n_relative_namespace is
=======
	set_xml_c14n_relative_namespace
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := c14n_relative_namespace_low_level
		end

<<<<<<< HEAD
	set_c14n_requires_utf8 is
=======
	set_xml_c14n_requires_utf8
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := c14n_requires_utf8_low_level
		end

<<<<<<< HEAD
	set_c14n_unknow_node is
=======
	set_xml_c14n_unknow_node
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := c14n_unknow_node_low_level
		end

<<<<<<< HEAD
	set_catalog_entry_broken is
=======
	set_xml_catalog_entry_broken
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := catalog_entry_broken_low_level
		end

<<<<<<< HEAD
	set_catalog_missing_attr is
=======
	set_xml_catalog_missing_attr
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := catalog_missing_attr_low_level
		end

<<<<<<< HEAD
	set_catalog_not_catalog is
=======
	set_xml_catalog_not_catalog
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := catalog_not_catalog_low_level
		end

<<<<<<< HEAD
	set_catalog_prefer_value is
=======
	set_xml_catalog_prefer_value
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := catalog_prefer_value_low_level
		end

<<<<<<< HEAD
	set_catalog_recursion is
=======
	set_xml_catalog_recursion
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := catalog_recursion_low_level
		end

<<<<<<< HEAD
	set_check_entity_type is
=======
	set_xml_check_entity_type
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_entity_type_low_level
		end

<<<<<<< HEAD
	set_check_found_attribute is
=======
	set_xml_check_found_attribute
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_found_attribute_low_level
		end

<<<<<<< HEAD
	set_check_found_cdata is
=======
	set_xml_check_found_cdata
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_found_cdata_low_level
		end

<<<<<<< HEAD
	set_check_found_comment is
=======
	set_xml_check_found_comment
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_found_comment_low_level
		end

<<<<<<< HEAD
	set_check_found_doctype is
=======
	set_xml_check_found_doctype
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_found_doctype_low_level
		end

<<<<<<< HEAD
	set_check_found_element is
=======
	set_xml_check_found_element
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_found_element_low_level
		end

<<<<<<< HEAD
	set_check_found_entity is
=======
	set_xml_check_found_entity
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_found_entity_low_level
		end

<<<<<<< HEAD
	set_check_found_entityref is
=======
	set_xml_check_found_entityref
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_found_entityref_low_level
		end

<<<<<<< HEAD
	set_check_found_fragment is
=======
	set_xml_check_found_fragment
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_found_fragment_low_level
		end

<<<<<<< HEAD
	set_check_found_notation is
=======
	set_xml_check_found_notation
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_found_notation_low_level
		end

<<<<<<< HEAD
	set_check_found_pi is
=======
	set_xml_check_found_pi
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_found_pi_low_level
		end

<<<<<<< HEAD
	set_check_found_text is
=======
	set_xml_check_found_text
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_found_text_low_level
		end

<<<<<<< HEAD
	set_check_name_not_null is
=======
	set_xml_check_name_not_null
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_name_not_null_low_level
		end

<<<<<<< HEAD
	set_check_no_dict is
=======
	set_xml_check_no_dict
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_no_dict_low_level
		end

<<<<<<< HEAD
	set_check_no_doc is
=======
	set_xml_check_no_doc
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_no_doc_low_level
		end

<<<<<<< HEAD
	set_check_no_elem is
=======
	set_xml_check_no_elem
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_no_elem_low_level
		end

<<<<<<< HEAD
	set_check_no_href is
=======
	set_xml_check_no_href
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_no_href_low_level
		end

<<<<<<< HEAD
	set_check_no_name is
=======
	set_xml_check_no_name
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_no_name_low_level
		end

<<<<<<< HEAD
	set_check_no_next is
=======
	set_xml_check_no_next
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_no_next_low_level
		end

<<<<<<< HEAD
	set_check_no_parent is
=======
	set_xml_check_no_parent
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_no_parent_low_level
		end

<<<<<<< HEAD
	set_check_no_prev is
=======
	set_xml_check_no_prev
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_no_prev_low_level
		end

<<<<<<< HEAD
	set_check_not_attr is
=======
	set_xml_check_not_attr
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_not_attr_low_level
		end

<<<<<<< HEAD
	set_check_not_attr_decl is
=======
	set_xml_check_not_attr_decl
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_not_attr_decl_low_level
		end

<<<<<<< HEAD
	set_check_not_dtd is
=======
	set_xml_check_not_dtd
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_not_dtd_low_level
		end

<<<<<<< HEAD
	set_check_not_elem_decl is
=======
	set_xml_check_not_elem_decl
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_not_elem_decl_low_level
		end

<<<<<<< HEAD
	set_check_not_entity_decl is
=======
	set_xml_check_not_entity_decl
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_not_entity_decl_low_level
		end

<<<<<<< HEAD
	set_check_not_ncname is
=======
	set_xml_check_not_ncname
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_not_ncname_low_level
		end

<<<<<<< HEAD
	set_check_not_ns_decl is
=======
	set_xml_check_not_ns_decl
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_not_ns_decl_low_level
		end

<<<<<<< HEAD
	set_check_not_utf8 is
=======
	set_xml_check_not_utf8
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_not_utf8_low_level
		end

<<<<<<< HEAD
	set_check_ns_ancestor is
=======
	set_xml_check_ns_ancestor
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_ns_ancestor_low_level
		end

<<<<<<< HEAD
	set_check_ns_scope is
=======
	set_xml_check_ns_scope
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_ns_scope_low_level
		end

<<<<<<< HEAD
	set_check_outside_dict is
=======
	set_xml_check_outside_dict
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_outside_dict_low_level
		end

<<<<<<< HEAD
	set_check_unknown_node is
=======
	set_xml_check_unknown_node
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_unknown_node_low_level
		end

<<<<<<< HEAD
	set_check_wrong_doc is
=======
	set_xml_check_wrong_doc
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_wrong_doc_low_level
		end

<<<<<<< HEAD
	set_check_wrong_name is
=======
	set_xml_check_wrong_name
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_wrong_name_low_level
		end

<<<<<<< HEAD
	set_check_wrong_next is
=======
	set_xml_check_wrong_next
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_wrong_next_low_level
		end

<<<<<<< HEAD
	set_check_wrong_parent is
=======
	set_xml_check_wrong_parent
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_wrong_parent_low_level
		end

<<<<<<< HEAD
	set_check_wrong_prev is
=======
	set_xml_check_wrong_prev
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := check_wrong_prev_low_level
		end

<<<<<<< HEAD
	set_dtd_attribute_default is
=======
	set_xml_dtd_attribute_default
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_attribute_default_low_level
		end

<<<<<<< HEAD
	set_dtd_attribute_redefined is
=======
	set_xml_dtd_attribute_redefined
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_attribute_redefined_low_level
		end

<<<<<<< HEAD
	set_dtd_attribute_value is
=======
	set_xml_dtd_attribute_value
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_attribute_value_low_level
		end

<<<<<<< HEAD
	set_dtd_content_error is
=======
	set_xml_dtd_content_error
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_content_error_low_level
		end

<<<<<<< HEAD
	set_dtd_content_model is
=======
	set_xml_dtd_content_model
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_content_model_low_level
		end

<<<<<<< HEAD
	set_dtd_content_not_determinist is
=======
	set_xml_dtd_content_not_determinist
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_content_not_determinist_low_level
		end

<<<<<<< HEAD
	set_dtd_different_prefix is
=======
	set_xml_dtd_different_prefix
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_different_prefix_low_level
		end

<<<<<<< HEAD
	set_dtd_dup_token is
=======
	set_xml_dtd_dup_token
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_dup_token_low_level
		end

<<<<<<< HEAD
	set_dtd_elem_default_namespace is
=======
	set_xml_dtd_elem_default_namespace
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_elem_default_namespace_low_level
		end

<<<<<<< HEAD
	set_dtd_elem_namespace is
=======
	set_xml_dtd_elem_namespace
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_elem_namespace_low_level
		end

<<<<<<< HEAD
	set_dtd_elem_redefined is
=======
	set_xml_dtd_elem_redefined
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_elem_redefined_low_level
		end

<<<<<<< HEAD
	set_dtd_empty_notation is
=======
	set_xml_dtd_empty_notation
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_empty_notation_low_level
		end

<<<<<<< HEAD
	set_dtd_entity_type is
=======
	set_xml_dtd_entity_type
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_entity_type_low_level
		end

<<<<<<< HEAD
	set_dtd_id_fixed is
=======
	set_xml_dtd_id_fixed
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_id_fixed_low_level
		end

<<<<<<< HEAD
	set_dtd_id_redefined is
=======
	set_xml_dtd_id_redefined
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_id_redefined_low_level
		end

<<<<<<< HEAD
	set_dtd_id_subset is
=======
	set_xml_dtd_id_subset
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_id_subset_low_level
		end

<<<<<<< HEAD
	set_dtd_invalid_child is
=======
	set_xml_dtd_invalid_child
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_invalid_child_low_level
		end

<<<<<<< HEAD
	set_dtd_invalid_default is
=======
	set_xml_dtd_invalid_default
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_invalid_default_low_level
		end

<<<<<<< HEAD
	set_dtd_load_error is
=======
	set_xml_dtd_load_error
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_load_error_low_level
		end

<<<<<<< HEAD
	set_dtd_missing_attribute is
=======
	set_xml_dtd_missing_attribute
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_missing_attribute_low_level
		end

<<<<<<< HEAD
	set_dtd_mixed_corrupt is
=======
	set_xml_dtd_mixed_corrupt
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_mixed_corrupt_low_level
		end

<<<<<<< HEAD
	set_dtd_multiple_id is
=======
	set_xml_dtd_multiple_id
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_multiple_id_low_level
		end

<<<<<<< HEAD
	set_dtd_no_doc is
=======
	set_xml_dtd_no_doc
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_no_doc_low_level
		end

<<<<<<< HEAD
	set_dtd_no_dtd is
=======
	set_xml_dtd_no_dtd
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_no_dtd_low_level
		end

<<<<<<< HEAD
	set_dtd_no_elem_name is
=======
	set_xml_dtd_no_elem_name
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_no_elem_name_low_level
		end

<<<<<<< HEAD
	set_dtd_no_prefix is
=======
	set_xml_dtd_no_prefix
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_no_prefix_low_level
		end

<<<<<<< HEAD
	set_dtd_no_root is
=======
	set_xml_dtd_no_root
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_no_root_low_level
		end

<<<<<<< HEAD
	set_dtd_not_empty is
=======
	set_xml_dtd_not_empty
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_not_empty_low_level
		end

<<<<<<< HEAD
	set_dtd_not_pcdata is
=======
	set_xml_dtd_not_pcdata
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_not_pcdata_low_level
		end

<<<<<<< HEAD
	set_dtd_not_standalone is
=======
	set_xml_dtd_not_standalone
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_not_standalone_low_level
		end

<<<<<<< HEAD
	set_dtd_notation_redefined is
=======
	set_xml_dtd_notation_redefined
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_notation_redefined_low_level
		end

<<<<<<< HEAD
	set_dtd_notation_value is
=======
	set_xml_dtd_notation_value
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_notation_value_low_level
		end

<<<<<<< HEAD
	set_dtd_root_name is
=======
	set_xml_dtd_root_name
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_root_name_low_level
		end

<<<<<<< HEAD
	set_dtd_standalone_defaulted is
=======
	set_xml_dtd_standalone_defaulted
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_standalone_defaulted_low_level
		end

<<<<<<< HEAD
	set_dtd_standalone_white_space is
=======
	set_xml_dtd_standalone_white_space
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_standalone_white_space_low_level
		end

<<<<<<< HEAD
	set_dtd_unknown_attribute is
=======
	set_xml_dtd_unknown_attribute
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_unknown_attribute_low_level
		end

<<<<<<< HEAD
	set_dtd_unknown_elem is
=======
	set_xml_dtd_unknown_elem
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_unknown_elem_low_level
		end

<<<<<<< HEAD
	set_dtd_unknown_entity is
=======
	set_xml_dtd_unknown_entity
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_unknown_entity_low_level
		end

<<<<<<< HEAD
	set_dtd_unknown_id is
=======
	set_xml_dtd_unknown_id
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_unknown_id_low_level
		end

<<<<<<< HEAD
	set_dtd_unknown_notation is
=======
	set_xml_dtd_unknown_notation
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_unknown_notation_low_level
		end

<<<<<<< HEAD
	set_dtd_xmlid_type is
=======
	set_xml_dtd_xmlid_type
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_xmlid_type_low_level
		end

<<<<<<< HEAD
	set_dtd_xmlid_value is
=======
	set_xml_dtd_xmlid_value
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := dtd_xmlid_value_low_level
		end

<<<<<<< HEAD
	set_err_attlist_not_finished is
=======
	set_xml_err_attlist_not_finished
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_attlist_not_finished_low_level
		end

<<<<<<< HEAD
	set_err_attlist_not_started is
=======
	set_xml_err_attlist_not_started
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_attlist_not_started_low_level
		end

<<<<<<< HEAD
	set_err_attribute_not_finished is
=======
	set_xml_err_attribute_not_finished
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_attribute_not_finished_low_level
		end

<<<<<<< HEAD
	set_err_attribute_not_started is
=======
	set_xml_err_attribute_not_started
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_attribute_not_started_low_level
		end

<<<<<<< HEAD
	set_err_attribute_redefined is
=======
	set_xml_err_attribute_redefined
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_attribute_redefined_low_level
		end

<<<<<<< HEAD
	set_err_attribute_without_value is
=======
	set_xml_err_attribute_without_value
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_attribute_without_value_low_level
		end

<<<<<<< HEAD
	set_err_cdata_not_finished is
=======
	set_xml_err_cdata_not_finished
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_cdata_not_finished_low_level
		end

<<<<<<< HEAD
	set_err_charref_at_eof is
=======
	set_xml_err_charref_at_eof
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_charref_at_eof_low_level
		end

<<<<<<< HEAD
	set_err_charref_in_dtd is
=======
	set_xml_err_charref_in_dtd
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_charref_in_dtd_low_level
		end

<<<<<<< HEAD
	set_err_charref_in_epilog is
=======
	set_xml_err_charref_in_epilog
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_charref_in_epilog_low_level
		end

<<<<<<< HEAD
	set_err_charref_in_prolog is
=======
	set_xml_err_charref_in_prolog
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_charref_in_prolog_low_level
		end

<<<<<<< HEAD
	set_err_comment_not_finished is
=======
	set_xml_err_comment_not_finished
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_comment_not_finished_low_level
		end

<<<<<<< HEAD
	set_err_condsec_invalid is
=======
	set_xml_err_condsec_invalid
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_condsec_invalid_low_level
		end

<<<<<<< HEAD
	set_err_condsec_invalid_keyword is
=======
	set_xml_err_condsec_invalid_keyword
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_condsec_invalid_keyword_low_level
		end

<<<<<<< HEAD
	set_err_condsec_not_finished is
=======
	set_xml_err_condsec_not_finished
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_condsec_not_finished_low_level
		end

<<<<<<< HEAD
	set_err_condsec_not_started is
=======
	set_xml_err_condsec_not_started
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_condsec_not_started_low_level
		end

<<<<<<< HEAD
	set_err_doctype_not_finished is
=======
	set_xml_err_doctype_not_finished
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_doctype_not_finished_low_level
		end

<<<<<<< HEAD
	set_err_document_empty is
=======
	set_xml_err_document_empty
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_document_empty_low_level
		end

<<<<<<< HEAD
	set_err_document_end is
=======
	set_xml_err_document_end
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_document_end_low_level
		end

<<<<<<< HEAD
	set_err_document_start is
=======
	set_xml_err_document_start
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_document_start_low_level
		end

<<<<<<< HEAD
	set_err_elemcontent_not_finished is
=======
	set_xml_err_elemcontent_not_finished
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_elemcontent_not_finished_low_level
		end

<<<<<<< HEAD
	set_err_elemcontent_not_started is
=======
	set_xml_err_elemcontent_not_started
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_elemcontent_not_started_low_level
		end

<<<<<<< HEAD
	set_err_encoding_name is
=======
	set_xml_err_encoding_name
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_encoding_name_low_level
		end

<<<<<<< HEAD
	set_err_entity_boundary is
=======
	set_xml_err_entity_boundary
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_entity_boundary_low_level
		end

<<<<<<< HEAD
	set_err_entity_char_error is
=======
	set_xml_err_entity_char_error
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_entity_char_error_low_level
		end

<<<<<<< HEAD
	set_err_entity_is_external is
=======
	set_xml_err_entity_is_external
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_entity_is_external_low_level
		end

<<<<<<< HEAD
	set_err_entity_is_parameter is
=======
	set_xml_err_entity_is_parameter
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_entity_is_parameter_low_level
		end

<<<<<<< HEAD
	set_err_entity_loop is
=======
	set_xml_err_entity_loop
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_entity_loop_low_level
		end

<<<<<<< HEAD
	set_err_entity_not_finished is
=======
	set_xml_err_entity_not_finished
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_entity_not_finished_low_level
		end

<<<<<<< HEAD
	set_err_entity_not_started is
=======
	set_xml_err_entity_not_started
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_entity_not_started_low_level
		end

<<<<<<< HEAD
	set_err_entity_pe_internal is
=======
	set_xml_err_entity_pe_internal
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_entity_pe_internal_low_level
		end

<<<<<<< HEAD
	set_err_entity_processing is
=======
	set_xml_err_entity_processing
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_entity_processing_low_level
		end

<<<<<<< HEAD
	set_err_entityref_at_eof is
=======
	set_xml_err_entityref_at_eof
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_entityref_at_eof_low_level
		end

<<<<<<< HEAD
	set_err_entityref_in_dtd is
=======
	set_xml_err_entityref_in_dtd
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_entityref_in_dtd_low_level
		end

<<<<<<< HEAD
	set_err_entityref_in_epilog is
=======
	set_xml_err_entityref_in_epilog
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_entityref_in_epilog_low_level
		end

<<<<<<< HEAD
	set_err_entityref_in_prolog is
=======
	set_xml_err_entityref_in_prolog
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_entityref_in_prolog_low_level
		end

<<<<<<< HEAD
	set_err_entityref_no_name is
=======
	set_xml_err_entityref_no_name
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_entityref_no_name_low_level
		end

<<<<<<< HEAD
	set_err_entityref_semicol_missing is
=======
	set_xml_err_entityref_semicol_missing
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_entityref_semicol_missing_low_level
		end

<<<<<<< HEAD
	set_err_equal_required is
=======
	set_xml_err_equal_required
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_equal_required_low_level
		end

<<<<<<< HEAD
	set_err_ext_entity_standalone is
=======
	set_xml_err_ext_entity_standalone
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_ext_entity_standalone_low_level
		end

<<<<<<< HEAD
	set_err_ext_subset_not_finished is
=======
	set_xml_err_ext_subset_not_finished
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_ext_subset_not_finished_low_level
		end

<<<<<<< HEAD
	set_err_extra_content is
=======
	set_xml_err_extra_content
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_extra_content_low_level
		end

<<<<<<< HEAD
	set_err_gt_required is
=======
	set_xml_err_gt_required
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_gt_required_low_level
		end

<<<<<<< HEAD
	set_err_hyphen_in_comment is
=======
	set_xml_err_hyphen_in_comment
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_hyphen_in_comment_low_level
		end

<<<<<<< HEAD
	set_err_internal_error is
=======
	set_xml_err_internal_error
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_internal_error_low_level
		end

<<<<<<< HEAD
	set_err_invalid_char is
=======
	set_xml_err_invalid_char
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_invalid_char_low_level
		end

<<<<<<< HEAD
	set_err_invalid_charref is
=======
	set_xml_err_invalid_charref
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_invalid_charref_low_level
		end

<<<<<<< HEAD
	set_err_invalid_dec_charref is
=======
	set_xml_err_invalid_dec_charref
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_invalid_dec_charref_low_level
		end

<<<<<<< HEAD
	set_err_invalid_encoding is
=======
	set_xml_err_invalid_encoding
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_invalid_encoding_low_level
		end

<<<<<<< HEAD
	set_err_invalid_hex_charref is
=======
	set_xml_err_invalid_hex_charref
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_invalid_hex_charref_low_level
		end

<<<<<<< HEAD
	set_err_invalid_uri is
=======
	set_xml_err_invalid_uri
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_invalid_uri_low_level
		end

<<<<<<< HEAD
	set_err_literal_not_finished is
=======
	set_xml_err_literal_not_finished
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_literal_not_finished_low_level
		end

<<<<<<< HEAD
	set_err_literal_not_started is
=======
	set_xml_err_literal_not_started
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_literal_not_started_low_level
		end

<<<<<<< HEAD
	set_err_lt_in_attribute is
=======
	set_xml_err_lt_in_attribute
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_lt_in_attribute_low_level
		end

<<<<<<< HEAD
	set_err_lt_required is
=======
	set_xml_err_lt_required
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_lt_required_low_level
		end

<<<<<<< HEAD
	set_err_ltslash_required is
=======
	set_xml_err_ltslash_required
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_ltslash_required_low_level
		end

<<<<<<< HEAD
	set_err_misplaced_cdata_end is
=======
	set_xml_err_misplaced_cdata_end
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_misplaced_cdata_end_low_level
		end

<<<<<<< HEAD
	set_err_missing_encoding is
=======
	set_xml_err_missing_encoding
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_missing_encoding_low_level
		end

<<<<<<< HEAD
	set_err_mixed_not_finished is
=======
	set_xml_err_mixed_not_finished
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_mixed_not_finished_low_level
		end

<<<<<<< HEAD
	set_err_mixed_not_started is
=======
	set_xml_err_mixed_not_started
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_mixed_not_started_low_level
		end

<<<<<<< HEAD
	set_err_name_required is
=======
	set_xml_err_name_required
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_name_required_low_level
		end

<<<<<<< HEAD
	set_err_nmtoken_required is
=======
	set_xml_err_nmtoken_required
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_nmtoken_required_low_level
		end

<<<<<<< HEAD
	set_err_no_dtd is
=======
	set_xml_err_no_dtd
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_no_dtd_low_level
		end

<<<<<<< HEAD
	set_err_no_memory is
=======
	set_xml_err_no_memory
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_no_memory_low_level
		end

<<<<<<< HEAD
	set_err_not_standalone is
=======
	set_xml_err_not_standalone
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_not_standalone_low_level
		end

<<<<<<< HEAD
	set_err_not_well_balanced is
=======
	set_xml_err_not_well_balanced
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_not_well_balanced_low_level
		end

<<<<<<< HEAD
	set_err_notation_not_finished is
=======
	set_xml_err_notation_not_finished
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_notation_not_finished_low_level
		end

<<<<<<< HEAD
	set_err_notation_not_started is
=======
	set_xml_err_notation_not_started
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_notation_not_started_low_level
		end

<<<<<<< HEAD
	set_err_notation_processing is
=======
	set_xml_err_notation_processing
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_notation_processing_low_level
		end

<<<<<<< HEAD
	set_err_ns_decl_error is
=======
	set_xml_err_ns_decl_error
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_ns_decl_error_low_level
		end

<<<<<<< HEAD
	set_err_ok is
=======
	set_xml_err_ok
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_ok_low_level
		end

<<<<<<< HEAD
	set_err_pcdata_required is
=======
	set_xml_err_pcdata_required
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_pcdata_required_low_level
		end

<<<<<<< HEAD
	set_err_peref_at_eof is
=======
	set_xml_err_peref_at_eof
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_peref_at_eof_low_level
		end

<<<<<<< HEAD
	set_err_peref_in_epilog is
=======
	set_xml_err_peref_in_epilog
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_peref_in_epilog_low_level
		end

<<<<<<< HEAD
	set_err_peref_in_int_subset is
=======
	set_xml_err_peref_in_int_subset
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_peref_in_int_subset_low_level
		end

<<<<<<< HEAD
	set_err_peref_in_prolog is
=======
	set_xml_err_peref_in_prolog
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_peref_in_prolog_low_level
		end

<<<<<<< HEAD
	set_err_peref_no_name is
=======
	set_xml_err_peref_no_name
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_peref_no_name_low_level
		end

<<<<<<< HEAD
	set_err_peref_semicol_missing is
=======
	set_xml_err_peref_semicol_missing
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_peref_semicol_missing_low_level
		end

<<<<<<< HEAD
	set_err_pi_not_finished is
=======
	set_xml_err_pi_not_finished
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_pi_not_finished_low_level
		end

<<<<<<< HEAD
	set_err_pi_not_started is
=======
	set_xml_err_pi_not_started
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_pi_not_started_low_level
		end

<<<<<<< HEAD
	set_err_pubid_required is
=======
	set_xml_err_pubid_required
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_pubid_required_low_level
		end

<<<<<<< HEAD
	set_err_reserved_xml_name is
=======
	set_xml_err_reserved_xml_name
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_reserved_xml_name_low_level
		end

<<<<<<< HEAD
	set_err_separator_required is
=======
	set_xml_err_separator_required
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_separator_required_low_level
		end

<<<<<<< HEAD
	set_err_space_required is
=======
	set_xml_err_space_required
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_space_required_low_level
		end

<<<<<<< HEAD
	set_err_standalone_value is
=======
	set_xml_err_standalone_value
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_standalone_value_low_level
		end

<<<<<<< HEAD
	set_err_string_not_closed is
=======
	set_xml_err_string_not_closed
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_string_not_closed_low_level
		end

<<<<<<< HEAD
	set_err_string_not_started is
=======
	set_xml_err_string_not_started
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_string_not_started_low_level
		end

<<<<<<< HEAD
	set_err_tag_name_mismatch is
=======
	set_xml_err_tag_name_mismatch
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_tag_name_mismatch_low_level
		end

<<<<<<< HEAD
	set_err_tag_not_finished is
=======
	set_xml_err_tag_not_finished
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_tag_not_finished_low_level
		end

<<<<<<< HEAD
	set_err_undeclared_entity is
=======
	set_xml_err_undeclared_entity
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_undeclared_entity_low_level
		end

<<<<<<< HEAD
	set_err_unknown_encoding is
=======
	set_xml_err_unknown_encoding
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_unknown_encoding_low_level
		end

<<<<<<< HEAD
	set_err_unknown_version is
=======
	set_xml_err_unknown_version
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_unknown_version_low_level
		end

<<<<<<< HEAD
	set_err_unparsed_entity is
=======
	set_xml_err_unparsed_entity
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_unparsed_entity_low_level
		end

<<<<<<< HEAD
	set_err_unsupported_encoding is
=======
	set_xml_err_unsupported_encoding
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_unsupported_encoding_low_level
		end

<<<<<<< HEAD
	set_err_uri_fragment is
=======
	set_xml_err_uri_fragment
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_uri_fragment_low_level
		end

<<<<<<< HEAD
	set_err_uri_required is
=======
	set_xml_err_uri_required
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_uri_required_low_level
		end

<<<<<<< HEAD
	set_err_value_required is
=======
	set_xml_err_value_required
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_value_required_low_level
		end

<<<<<<< HEAD
	set_err_version_mismatch is
=======
	set_xml_err_version_mismatch
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_version_mismatch_low_level
		end

<<<<<<< HEAD
	set_err_version_missing is
=======
	set_xml_err_version_missing
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_version_missing_low_level
		end

<<<<<<< HEAD
	set_err_xmldecl_not_finished is
=======
	set_xml_err_xmldecl_not_finished
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_xmldecl_not_finished_low_level
		end

<<<<<<< HEAD
	set_err_xmldecl_not_started is
=======
	set_xml_err_xmldecl_not_started
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := err_xmldecl_not_started_low_level
		end

<<<<<<< HEAD
	set_ftp_accnt is
=======
	set_xml_ftp_accnt
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := ftp_accnt_low_level
		end

<<<<<<< HEAD
	set_ftp_epsv_answer is
=======
	set_xml_ftp_epsv_answer
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := ftp_epsv_answer_low_level
		end

<<<<<<< HEAD
	set_ftp_pasv_answer is
=======
	set_xml_ftp_pasv_answer
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := ftp_pasv_answer_low_level
		end

<<<<<<< HEAD
	set_ftp_url_syntax is
=======
	set_xml_ftp_url_syntax
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := ftp_url_syntax_low_level
		end

<<<<<<< HEAD
	set_html_strucure_error is
=======
	set_xml_html_strucure_error
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := html_strucure_error_low_level
		end

<<<<<<< HEAD
	set_html_unknown_tag is
=======
	set_xml_html_unknown_tag
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := html_unknown_tag_low_level
		end

<<<<<<< HEAD
	set_http_unknown_host is
=======
	set_xml_http_unknown_host
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := http_unknown_host_low_level
		end

<<<<<<< HEAD
	set_http_url_syntax is
=======
	set_xml_http_url_syntax
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := http_url_syntax_low_level
		end

<<<<<<< HEAD
	set_http_use_ip is
=======
	set_xml_http_use_ip
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := http_use_ip_low_level
		end

<<<<<<< HEAD
	set_i18n_conv_failed is
=======
	set_xml_i18n_conv_failed
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := i18n_conv_failed_low_level
		end

<<<<<<< HEAD
	set_i18n_excess_handler is
=======
	set_xml_i18n_excess_handler
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := i18n_excess_handler_low_level
		end

<<<<<<< HEAD
	set_i18n_no_handler is
=======
	set_xml_i18n_no_handler
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := i18n_no_handler_low_level
		end

<<<<<<< HEAD
	set_i18n_no_name is
=======
	set_xml_i18n_no_name
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := i18n_no_name_low_level
		end

<<<<<<< HEAD
	set_i18n_no_output is
=======
	set_xml_i18n_no_output
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := i18n_no_output_low_level
		end

<<<<<<< HEAD
	set_io_buffer_full is
=======
	set_xml_io_buffer_full
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_buffer_full_low_level
		end

<<<<<<< HEAD
	set_io_eacces is
=======
	set_xml_io_eacces
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_eacces_low_level
		end

<<<<<<< HEAD
	set_io_eaddrinuse is
=======
	set_xml_io_eaddrinuse
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_eaddrinuse_low_level
		end

<<<<<<< HEAD
	set_io_eafnosupport is
=======
	set_xml_io_eafnosupport
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_eafnosupport_low_level
		end

<<<<<<< HEAD
	set_io_eagain is
=======
	set_xml_io_eagain
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_eagain_low_level
		end

<<<<<<< HEAD
	set_io_ealready is
=======
	set_xml_io_ealready
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_ealready_low_level
		end

<<<<<<< HEAD
	set_io_ebadf is
=======
	set_xml_io_ebadf
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_ebadf_low_level
		end

<<<<<<< HEAD
	set_io_ebadmsg is
=======
	set_xml_io_ebadmsg
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_ebadmsg_low_level
		end

<<<<<<< HEAD
	set_io_ebusy is
=======
	set_xml_io_ebusy
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_ebusy_low_level
		end

<<<<<<< HEAD
	set_io_ecanceled is
=======
	set_xml_io_ecanceled
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_ecanceled_low_level
		end

<<<<<<< HEAD
	set_io_echild is
=======
	set_xml_io_echild
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_echild_low_level
		end

<<<<<<< HEAD
	set_io_econnrefused is
=======
	set_xml_io_econnrefused
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_econnrefused_low_level
		end

<<<<<<< HEAD
	set_io_edeadlk is
=======
	set_xml_io_edeadlk
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_edeadlk_low_level
		end

<<<<<<< HEAD
	set_io_edom is
=======
	set_xml_io_edom
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_edom_low_level
		end

<<<<<<< HEAD
	set_io_eexist is
=======
	set_xml_io_eexist
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_eexist_low_level
		end

<<<<<<< HEAD
	set_io_efault is
=======
	set_xml_io_efault
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_efault_low_level
		end

<<<<<<< HEAD
	set_io_efbig is
=======
	set_xml_io_efbig
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_efbig_low_level
		end

<<<<<<< HEAD
	set_io_einprogress is
=======
	set_xml_io_einprogress
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_einprogress_low_level
		end

<<<<<<< HEAD
	set_io_eintr is
=======
	set_xml_io_eintr
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_eintr_low_level
		end

<<<<<<< HEAD
	set_io_einval is
=======
	set_xml_io_einval
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_einval_low_level
		end

<<<<<<< HEAD
	set_io_eio is
=======
	set_xml_io_eio
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_eio_low_level
		end

<<<<<<< HEAD
	set_io_eisconn is
=======
	set_xml_io_eisconn
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_eisconn_low_level
		end

<<<<<<< HEAD
	set_io_eisdir is
=======
	set_xml_io_eisdir
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_eisdir_low_level
		end

<<<<<<< HEAD
	set_io_emfile is
=======
	set_xml_io_emfile
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_emfile_low_level
		end

<<<<<<< HEAD
	set_io_emlink is
=======
	set_xml_io_emlink
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_emlink_low_level
		end

<<<<<<< HEAD
	set_io_emsgsize is
=======
	set_xml_io_emsgsize
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_emsgsize_low_level
		end

<<<<<<< HEAD
	set_io_enametoolong is
=======
	set_xml_io_enametoolong
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_enametoolong_low_level
		end

<<<<<<< HEAD
	set_io_encoder is
=======
	set_xml_io_encoder
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_encoder_low_level
		end

<<<<<<< HEAD
	set_io_enetunreach is
=======
	set_xml_io_enetunreach
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_enetunreach_low_level
		end

<<<<<<< HEAD
	set_io_enfile is
=======
	set_xml_io_enfile
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_enfile_low_level
		end

<<<<<<< HEAD
	set_io_enodev is
=======
	set_xml_io_enodev
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_enodev_low_level
		end

<<<<<<< HEAD
	set_io_enoent is
=======
	set_xml_io_enoent
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_enoent_low_level
		end

<<<<<<< HEAD
	set_io_enoexec is
=======
	set_xml_io_enoexec
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_enoexec_low_level
		end

<<<<<<< HEAD
	set_io_enolck is
=======
	set_xml_io_enolck
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_enolck_low_level
		end

<<<<<<< HEAD
	set_io_enomem is
=======
	set_xml_io_enomem
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_enomem_low_level
		end

<<<<<<< HEAD
	set_io_enospc is
=======
	set_xml_io_enospc
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_enospc_low_level
		end

<<<<<<< HEAD
	set_io_enosys is
=======
	set_xml_io_enosys
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_enosys_low_level
		end

<<<<<<< HEAD
	set_io_enotdir is
=======
	set_xml_io_enotdir
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_enotdir_low_level
		end

<<<<<<< HEAD
	set_io_enotempty is
=======
	set_xml_io_enotempty
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_enotempty_low_level
		end

<<<<<<< HEAD
	set_io_enotsock is
=======
	set_xml_io_enotsock
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_enotsock_low_level
		end

<<<<<<< HEAD
	set_io_enotsup is
=======
	set_xml_io_enotsup
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_enotsup_low_level
		end

<<<<<<< HEAD
	set_io_enotty is
=======
	set_xml_io_enotty
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_enotty_low_level
		end

<<<<<<< HEAD
	set_io_enxio is
=======
	set_xml_io_enxio
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_enxio_low_level
		end

<<<<<<< HEAD
	set_io_eperm is
=======
	set_xml_io_eperm
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_eperm_low_level
		end

<<<<<<< HEAD
	set_io_epipe is
=======
	set_xml_io_epipe
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_epipe_low_level
		end

<<<<<<< HEAD
	set_io_erange is
=======
	set_xml_io_erange
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_erange_low_level
		end

<<<<<<< HEAD
	set_io_erofs is
=======
	set_xml_io_erofs
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_erofs_low_level
		end

<<<<<<< HEAD
	set_io_espipe is
=======
	set_xml_io_espipe
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_espipe_low_level
		end

<<<<<<< HEAD
	set_io_esrch is
=======
	set_xml_io_esrch
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_esrch_low_level
		end

<<<<<<< HEAD
	set_io_etimedout is
=======
	set_xml_io_etimedout
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_etimedout_low_level
		end

<<<<<<< HEAD
	set_io_exdev is
=======
	set_xml_io_exdev
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_exdev_low_level
		end

<<<<<<< HEAD
	set_io_flush is
=======
	set_xml_io_flush
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_flush_low_level
		end

<<<<<<< HEAD
	set_io_load_error is
=======
	set_xml_io_load_error
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_load_error_low_level
		end

<<<<<<< HEAD
	set_io_network_attempt is
=======
	set_xml_io_network_attempt
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_network_attempt_low_level
		end

<<<<<<< HEAD
	set_io_no_input is
=======
	set_xml_io_no_input
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_no_input_low_level
		end

<<<<<<< HEAD
	set_io_unknown is
=======
	set_xml_io_unknown
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_unknown_low_level
		end

<<<<<<< HEAD
	set_io_write is
=======
	set_xml_io_write
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_write_low_level
		end

<<<<<<< HEAD
	set_module_close is
=======
	set_xml_module_close
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := module_close_low_level
		end

<<<<<<< HEAD
	set_module_open is
=======
	set_xml_module_open
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := module_open_low_level
		end

<<<<<<< HEAD
	set_ns_err_attribute_redefined is
=======
	set_xml_ns_err_attribute_redefined
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := ns_err_attribute_redefined_low_level
		end

<<<<<<< HEAD
	set_ns_err_colon is
=======
	set_xml_ns_err_colon
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := ns_err_colon_low_level
		end

<<<<<<< HEAD
	set_ns_err_empty is
=======
	set_xml_ns_err_empty
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := ns_err_empty_low_level
		end

<<<<<<< HEAD
	set_ns_err_qname is
=======
	set_xml_ns_err_qname
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := ns_err_qname_low_level
		end

<<<<<<< HEAD
	set_ns_err_undefined_namespace is
=======
	set_xml_ns_err_undefined_namespace
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := ns_err_undefined_namespace_low_level
		end

<<<<<<< HEAD
	set_ns_err_xml_namespace is
=======
	set_xml_ns_err_xml_namespace
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := ns_err_xml_namespace_low_level
		end

<<<<<<< HEAD
	set_regexp_compile_error is
=======
	set_xml_regexp_compile_error
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := regexp_compile_error_low_level
		end

<<<<<<< HEAD
	set_rngp_anyname_attr_ancestor is
=======
	set_xml_rngp_anyname_attr_ancestor
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_anyname_attr_ancestor_low_level
		end

<<<<<<< HEAD
	set_rngp_attr_conflict is
=======
	set_xml_rngp_attr_conflict
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_attr_conflict_low_level
		end

<<<<<<< HEAD
	set_rngp_attribute_children is
=======
	set_xml_rngp_attribute_children
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_attribute_children_low_level
		end

<<<<<<< HEAD
	set_rngp_attribute_content is
=======
	set_xml_rngp_attribute_content
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_attribute_content_low_level
		end

<<<<<<< HEAD
	set_rngp_attribute_empty is
=======
	set_xml_rngp_attribute_empty
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_attribute_empty_low_level
		end

<<<<<<< HEAD
	set_rngp_attribute_noop is
=======
	set_xml_rngp_attribute_noop
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_attribute_noop_low_level
		end

<<<<<<< HEAD
	set_rngp_choice_content is
=======
	set_xml_rngp_choice_content
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_choice_content_low_level
		end

<<<<<<< HEAD
	set_rngp_choice_empty is
=======
	set_xml_rngp_choice_empty
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_choice_empty_low_level
		end

<<<<<<< HEAD
	set_rngp_create_failure is
=======
	set_xml_rngp_create_failure
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_create_failure_low_level
		end

<<<<<<< HEAD
	set_rngp_data_content is
=======
	set_xml_rngp_data_content
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_data_content_low_level
		end

<<<<<<< HEAD
	set_rngp_def_choice_and_interleave is
=======
	set_xml_rngp_def_choice_and_interleave
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_def_choice_and_interleave_low_level
		end

<<<<<<< HEAD
	set_rngp_define_create_failed is
=======
	set_xml_rngp_define_create_failed
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_define_create_failed_low_level
		end

<<<<<<< HEAD
	set_rngp_define_empty is
=======
	set_xml_rngp_define_empty
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_define_empty_low_level
		end

<<<<<<< HEAD
	set_rngp_define_missing is
=======
	set_xml_rngp_define_missing
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_define_missing_low_level
		end

<<<<<<< HEAD
	set_rngp_define_name_missing is
=======
	set_xml_rngp_define_name_missing
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_define_name_missing_low_level
		end

<<<<<<< HEAD
	set_rngp_elem_content_empty is
=======
	set_xml_rngp_elem_content_empty
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_elem_content_empty_low_level
		end

<<<<<<< HEAD
	set_rngp_elem_content_error is
=======
	set_xml_rngp_elem_content_error
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_elem_content_error_low_level
		end

<<<<<<< HEAD
	set_rngp_elem_text_conflict is
=======
	set_xml_rngp_elem_text_conflict
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_elem_text_conflict_low_level
		end

<<<<<<< HEAD
	set_rngp_element_content is
=======
	set_xml_rngp_element_content
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_element_content_low_level
		end

<<<<<<< HEAD
	set_rngp_element_empty is
=======
	set_xml_rngp_element_empty
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_element_empty_low_level
		end

<<<<<<< HEAD
	set_rngp_element_name is
=======
	set_xml_rngp_element_name
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_element_name_low_level
		end

<<<<<<< HEAD
	set_rngp_element_no_content is
=======
	set_xml_rngp_element_no_content
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_element_no_content_low_level
		end

<<<<<<< HEAD
	set_rngp_empty is
=======
	set_xml_rngp_empty
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_empty_low_level
		end

<<<<<<< HEAD
	set_rngp_empty_construct is
=======
	set_xml_rngp_empty_construct
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_empty_construct_low_level
		end

<<<<<<< HEAD
	set_rngp_empty_content is
=======
	set_xml_rngp_empty_content
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_empty_content_low_level
		end

<<<<<<< HEAD
	set_rngp_empty_not_empty is
=======
	set_xml_rngp_empty_not_empty
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_empty_not_empty_low_level
		end

<<<<<<< HEAD
	set_rngp_error_type_lib is
=======
	set_xml_rngp_error_type_lib
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_error_type_lib_low_level
		end

<<<<<<< HEAD
	set_rngp_except_empty is
=======
	set_xml_rngp_except_empty
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_except_empty_low_level
		end

<<<<<<< HEAD
	set_rngp_except_missing is
=======
	set_xml_rngp_except_missing
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_except_missing_low_level
		end

<<<<<<< HEAD
	set_rngp_except_multiple is
=======
	set_xml_rngp_except_multiple
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_except_multiple_low_level
		end

<<<<<<< HEAD
	set_rngp_except_no_content is
=======
	set_xml_rngp_except_no_content
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_except_no_content_low_level
		end

<<<<<<< HEAD
	set_rngp_external_ref_failure is
=======
	set_xml_rngp_external_ref_failure
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_external_ref_failure_low_level
		end

<<<<<<< HEAD
	set_rngp_externalref_emtpy is
=======
	set_xml_rngp_externalref_emtpy
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_externalref_emtpy_low_level
		end

<<<<<<< HEAD
	set_rngp_externalref_recurse is
=======
	set_xml_rngp_externalref_recurse
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_externalref_recurse_low_level
		end

<<<<<<< HEAD
	set_rngp_forbidden_attribute is
=======
	set_xml_rngp_forbidden_attribute
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_forbidden_attribute_low_level
		end

<<<<<<< HEAD
	set_rngp_foreign_element is
=======
	set_xml_rngp_foreign_element
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_foreign_element_low_level
		end

<<<<<<< HEAD
	set_rngp_grammar_content is
=======
	set_xml_rngp_grammar_content
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_grammar_content_low_level
		end

<<<<<<< HEAD
	set_rngp_grammar_empty is
=======
	set_xml_rngp_grammar_empty
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_grammar_empty_low_level
		end

<<<<<<< HEAD
	set_rngp_grammar_missing is
=======
	set_xml_rngp_grammar_missing
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_grammar_missing_low_level
		end

<<<<<<< HEAD
	set_rngp_grammar_no_start is
=======
	set_xml_rngp_grammar_no_start
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_grammar_no_start_low_level
		end

<<<<<<< HEAD
	set_rngp_group_attr_conflict is
=======
	set_xml_rngp_group_attr_conflict
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_group_attr_conflict_low_level
		end

<<<<<<< HEAD
	set_rngp_href_error is
=======
	set_xml_rngp_href_error
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_href_error_low_level
		end

<<<<<<< HEAD
	set_rngp_include_empty is
=======
	set_xml_rngp_include_empty
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_include_empty_low_level
		end

<<<<<<< HEAD
	set_rngp_include_failure is
=======
	set_xml_rngp_include_failure
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_include_failure_low_level
		end

<<<<<<< HEAD
	set_rngp_include_recurse is
=======
	set_xml_rngp_include_recurse
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_include_recurse_low_level
		end

<<<<<<< HEAD
	set_rngp_interleave_add is
=======
	set_xml_rngp_interleave_add
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_interleave_add_low_level
		end

<<<<<<< HEAD
	set_rngp_interleave_create_failed is
=======
	set_xml_rngp_interleave_create_failed
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_interleave_create_failed_low_level
		end

<<<<<<< HEAD
	set_rngp_interleave_empty is
=======
	set_xml_rngp_interleave_empty
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_interleave_empty_low_level
		end

<<<<<<< HEAD
	set_rngp_interleave_no_content is
=======
	set_xml_rngp_interleave_no_content
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_interleave_no_content_low_level
		end

<<<<<<< HEAD
	set_rngp_invalid_define_name is
=======
	set_xml_rngp_invalid_define_name
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_invalid_define_name_low_level
		end

<<<<<<< HEAD
	set_rngp_invalid_uri is
=======
	set_xml_rngp_invalid_uri
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_invalid_uri_low_level
		end

<<<<<<< HEAD
	set_rngp_invalid_value is
=======
	set_xml_rngp_invalid_value
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_invalid_value_low_level
		end

<<<<<<< HEAD
	set_rngp_missing_href is
=======
	set_xml_rngp_missing_href
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_missing_href_low_level
		end

<<<<<<< HEAD
	set_rngp_name_missing is
=======
	set_xml_rngp_name_missing
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_name_missing_low_level
		end

<<<<<<< HEAD
	set_rngp_need_combine is
=======
	set_xml_rngp_need_combine
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_need_combine_low_level
		end

<<<<<<< HEAD
	set_rngp_notallowed_not_empty is
=======
	set_xml_rngp_notallowed_not_empty
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_notallowed_not_empty_low_level
		end

<<<<<<< HEAD
	set_rngp_nsname_attr_ancestor is
=======
	set_xml_rngp_nsname_attr_ancestor
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_nsname_attr_ancestor_low_level
		end

<<<<<<< HEAD
	set_rngp_nsname_no_ns is
=======
	set_xml_rngp_nsname_no_ns
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_nsname_no_ns_low_level
		end

<<<<<<< HEAD
	set_rngp_param_forbidden is
=======
	set_xml_rngp_param_forbidden
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_param_forbidden_low_level
		end

<<<<<<< HEAD
	set_rngp_param_name_missing is
=======
	set_xml_rngp_param_name_missing
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_param_name_missing_low_level
		end

<<<<<<< HEAD
	set_rngp_parentref_create_failed is
=======
	set_xml_rngp_parentref_create_failed
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_parentref_create_failed_low_level
		end

<<<<<<< HEAD
	set_rngp_parentref_name_invalid is
=======
	set_xml_rngp_parentref_name_invalid
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_parentref_name_invalid_low_level
		end

<<<<<<< HEAD
	set_rngp_parentref_no_name is
=======
	set_xml_rngp_parentref_no_name
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_parentref_no_name_low_level
		end

<<<<<<< HEAD
	set_rngp_parentref_no_parent is
=======
	set_xml_rngp_parentref_no_parent
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_parentref_no_parent_low_level
		end

<<<<<<< HEAD
	set_rngp_parentref_not_empty is
=======
	set_xml_rngp_parentref_not_empty
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_parentref_not_empty_low_level
		end

<<<<<<< HEAD
	set_rngp_parse_error is
=======
	set_xml_rngp_parse_error
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_parse_error_low_level
		end

<<<<<<< HEAD
	set_rngp_pat_anyname_except_anyname is
=======
	set_xml_rngp_pat_anyname_except_anyname
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_pat_anyname_except_anyname_low_level
		end

<<<<<<< HEAD
	set_rngp_pat_attr_attr is
=======
	set_xml_rngp_pat_attr_attr
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_pat_attr_attr_low_level
		end

<<<<<<< HEAD
	set_rngp_pat_attr_elem is
=======
	set_xml_rngp_pat_attr_elem
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_pat_attr_elem_low_level
		end

<<<<<<< HEAD
	set_rngp_pat_data_except_attr is
=======
	set_xml_rngp_pat_data_except_attr
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_pat_data_except_attr_low_level
		end

<<<<<<< HEAD
	set_rngp_pat_data_except_elem is
=======
	set_xml_rngp_pat_data_except_elem
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_pat_data_except_elem_low_level
		end

<<<<<<< HEAD
	set_rngp_pat_data_except_empty is
=======
	set_xml_rngp_pat_data_except_empty
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_pat_data_except_empty_low_level
		end

<<<<<<< HEAD
	set_rngp_pat_data_except_group is
=======
	set_xml_rngp_pat_data_except_group
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_pat_data_except_group_low_level
		end

<<<<<<< HEAD
	set_rngp_pat_data_except_interleave is
=======
	set_xml_rngp_pat_data_except_interleave
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_pat_data_except_interleave_low_level
		end

<<<<<<< HEAD
	set_rngp_pat_data_except_list is
=======
	set_xml_rngp_pat_data_except_list
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_pat_data_except_list_low_level
		end

<<<<<<< HEAD
	set_rngp_pat_data_except_onemore is
=======
	set_xml_rngp_pat_data_except_onemore
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_pat_data_except_onemore_low_level
		end

<<<<<<< HEAD
	set_rngp_pat_data_except_ref is
=======
	set_xml_rngp_pat_data_except_ref
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_pat_data_except_ref_low_level
		end

<<<<<<< HEAD
	set_rngp_pat_data_except_text is
=======
	set_xml_rngp_pat_data_except_text
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_pat_data_except_text_low_level
		end

<<<<<<< HEAD
	set_rngp_pat_list_attr is
=======
	set_xml_rngp_pat_list_attr
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_pat_list_attr_low_level
		end

<<<<<<< HEAD
	set_rngp_pat_list_elem is
=======
	set_xml_rngp_pat_list_elem
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_pat_list_elem_low_level
		end

<<<<<<< HEAD
	set_rngp_pat_list_interleave is
=======
	set_xml_rngp_pat_list_interleave
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_pat_list_interleave_low_level
		end

<<<<<<< HEAD
	set_rngp_pat_list_list is
=======
	set_xml_rngp_pat_list_list
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_pat_list_list_low_level
		end

<<<<<<< HEAD
	set_rngp_pat_list_ref is
=======
	set_xml_rngp_pat_list_ref
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_pat_list_ref_low_level
		end

<<<<<<< HEAD
	set_rngp_pat_list_text is
=======
	set_xml_rngp_pat_list_text
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_pat_list_text_low_level
		end

<<<<<<< HEAD
	set_rngp_pat_nsname_except_anyname is
=======
	set_xml_rngp_pat_nsname_except_anyname
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_pat_nsname_except_anyname_low_level
		end

<<<<<<< HEAD
	set_rngp_pat_nsname_except_nsname is
=======
	set_xml_rngp_pat_nsname_except_nsname
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_pat_nsname_except_nsname_low_level
		end

<<<<<<< HEAD
	set_rngp_pat_onemore_group_attr is
=======
	set_xml_rngp_pat_onemore_group_attr
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_pat_onemore_group_attr_low_level
		end

<<<<<<< HEAD
	set_rngp_pat_onemore_interleave_attr is
=======
	set_xml_rngp_pat_onemore_interleave_attr
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_pat_onemore_interleave_attr_low_level
		end

<<<<<<< HEAD
	set_rngp_pat_start_attr is
=======
	set_xml_rngp_pat_start_attr
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_pat_start_attr_low_level
		end

<<<<<<< HEAD
	set_rngp_pat_start_data is
=======
	set_xml_rngp_pat_start_data
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_pat_start_data_low_level
		end

<<<<<<< HEAD
	set_rngp_pat_start_empty is
=======
	set_xml_rngp_pat_start_empty
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_pat_start_empty_low_level
		end

<<<<<<< HEAD
	set_rngp_pat_start_group is
=======
	set_xml_rngp_pat_start_group
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_pat_start_group_low_level
		end

<<<<<<< HEAD
	set_rngp_pat_start_interleave is
=======
	set_xml_rngp_pat_start_interleave
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_pat_start_interleave_low_level
		end

<<<<<<< HEAD
	set_rngp_pat_start_list is
=======
	set_xml_rngp_pat_start_list
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_pat_start_list_low_level
		end

<<<<<<< HEAD
	set_rngp_pat_start_onemore is
=======
	set_xml_rngp_pat_start_onemore
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_pat_start_onemore_low_level
		end

<<<<<<< HEAD
	set_rngp_pat_start_text is
=======
	set_xml_rngp_pat_start_text
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_pat_start_text_low_level
		end

<<<<<<< HEAD
	set_rngp_pat_start_value is
=======
	set_xml_rngp_pat_start_value
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_pat_start_value_low_level
		end

<<<<<<< HEAD
	set_rngp_prefix_undefined is
=======
	set_xml_rngp_prefix_undefined
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_prefix_undefined_low_level
		end

<<<<<<< HEAD
	set_rngp_ref_create_failed is
=======
	set_xml_rngp_ref_create_failed
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_ref_create_failed_low_level
		end

<<<<<<< HEAD
	set_rngp_ref_cycle is
=======
	set_xml_rngp_ref_cycle
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_ref_cycle_low_level
		end

<<<<<<< HEAD
	set_rngp_ref_name_invalid is
=======
	set_xml_rngp_ref_name_invalid
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_ref_name_invalid_low_level
		end

<<<<<<< HEAD
	set_rngp_ref_no_def is
=======
	set_xml_rngp_ref_no_def
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_ref_no_def_low_level
		end

<<<<<<< HEAD
	set_rngp_ref_no_name is
=======
	set_xml_rngp_ref_no_name
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_ref_no_name_low_level
		end

<<<<<<< HEAD
	set_rngp_ref_not_empty is
=======
	set_xml_rngp_ref_not_empty
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_ref_not_empty_low_level
		end

<<<<<<< HEAD
	set_rngp_start_choice_and_interleave is
=======
	set_xml_rngp_start_choice_and_interleave
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_start_choice_and_interleave_low_level
		end

<<<<<<< HEAD
	set_rngp_start_content is
=======
	set_xml_rngp_start_content
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_start_content_low_level
		end

<<<<<<< HEAD
	set_rngp_start_empty is
=======
	set_xml_rngp_start_empty
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_start_empty_low_level
		end

<<<<<<< HEAD
	set_rngp_start_missing is
=======
	set_xml_rngp_start_missing
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_start_missing_low_level
		end

<<<<<<< HEAD
	set_rngp_text_expected is
=======
	set_xml_rngp_text_expected
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_text_expected_low_level
		end

<<<<<<< HEAD
	set_rngp_text_has_child is
=======
	set_xml_rngp_text_has_child
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_text_has_child_low_level
		end

<<<<<<< HEAD
	set_rngp_type_missing is
=======
	set_xml_rngp_type_missing
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_type_missing_low_level
		end

<<<<<<< HEAD
	set_rngp_type_not_found is
=======
	set_xml_rngp_type_not_found
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_type_not_found_low_level
		end

<<<<<<< HEAD
	set_rngp_type_value is
=======
	set_xml_rngp_type_value
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_type_value_low_level
		end

<<<<<<< HEAD
	set_rngp_unknown_attribute is
=======
	set_xml_rngp_unknown_attribute
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_unknown_attribute_low_level
		end

<<<<<<< HEAD
	set_rngp_unknown_combine is
=======
	set_xml_rngp_unknown_combine
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_unknown_combine_low_level
		end

<<<<<<< HEAD
	set_rngp_unknown_construct is
=======
	set_xml_rngp_unknown_construct
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_unknown_construct_low_level
		end

<<<<<<< HEAD
	set_rngp_unknown_type_lib is
=======
	set_xml_rngp_unknown_type_lib
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_unknown_type_lib_low_level
		end

<<<<<<< HEAD
	set_rngp_uri_fragment is
=======
	set_xml_rngp_uri_fragment
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_uri_fragment_low_level
		end

<<<<<<< HEAD
	set_rngp_uri_not_absolute is
=======
	set_xml_rngp_uri_not_absolute
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_uri_not_absolute_low_level
		end

<<<<<<< HEAD
	set_rngp_value_empty is
=======
	set_xml_rngp_value_empty
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_value_empty_low_level
		end

<<<<<<< HEAD
	set_rngp_value_no_content is
=======
	set_xml_rngp_value_no_content
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_value_no_content_low_level
		end

<<<<<<< HEAD
	set_rngp_xml_ns is
=======
	set_xml_rngp_xml_ns
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_xml_ns_low_level
		end

<<<<<<< HEAD
	set_rngp_xmlns_name is
=======
	set_xml_rngp_xmlns_name
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := rngp_xmlns_name_low_level
		end

<<<<<<< HEAD
	set_save_char_invalid is
=======
	set_xml_save_char_invalid
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := save_char_invalid_low_level
		end

<<<<<<< HEAD
	set_save_no_doctype is
=======
	set_xml_save_no_doctype
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := save_no_doctype_low_level
		end

<<<<<<< HEAD
	set_save_not_utf8 is
=======
	set_xml_save_not_utf8
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := save_not_utf8_low_level
		end

<<<<<<< HEAD
	set_save_unknown_encoding is
=======
	set_xml_save_unknown_encoding
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := save_unknown_encoding_low_level
		end

<<<<<<< HEAD
	set_schemap_a_props_correct_2 is
=======
	set_xml_schemap_a_props_correct_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_a_props_correct_2_low_level
		end

<<<<<<< HEAD
	set_schemap_a_props_correct_3 is
=======
	set_xml_schemap_a_props_correct_3
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_a_props_correct_3_low_level
		end

<<<<<<< HEAD
	set_schemap_ag_props_correct is
=======
	set_xml_schemap_ag_props_correct
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_ag_props_correct_low_level
		end

<<<<<<< HEAD
	set_schemap_attr_noname_noref is
=======
	set_xml_schemap_attr_noname_noref
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_attr_noname_noref_low_level
		end

<<<<<<< HEAD
	set_schemap_attrformdefault_value is
=======
	set_xml_schemap_attrformdefault_value
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_attrformdefault_value_low_level
		end

<<<<<<< HEAD
	set_schemap_attrgrp_noname_noref is
=======
	set_xml_schemap_attrgrp_noname_noref
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_attrgrp_noname_noref_low_level
		end

<<<<<<< HEAD
	set_schemap_au_props_correct is
=======
	set_xml_schemap_au_props_correct
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_au_props_correct_low_level
		end

<<<<<<< HEAD
	set_schemap_au_props_correct_2 is
=======
	set_xml_schemap_au_props_correct_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_au_props_correct_2_low_level
		end

<<<<<<< HEAD
	set_schemap_c_props_correct is
=======
	set_xml_schemap_c_props_correct
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_c_props_correct_low_level
		end

<<<<<<< HEAD
	set_schemap_complextype_noname_noref is
=======
	set_xml_schemap_complextype_noname_noref
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_complextype_noname_noref_low_level
		end

<<<<<<< HEAD
	set_schemap_cos_all_limited is
=======
	set_xml_schemap_cos_all_limited
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_cos_all_limited_low_level
		end

<<<<<<< HEAD
	set_schemap_cos_ct_extends_1_1 is
=======
	set_xml_schemap_cos_ct_extends_1_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_cos_ct_extends_1_1_low_level
		end

<<<<<<< HEAD
	set_schemap_cos_ct_extends_1_2 is
=======
	set_xml_schemap_cos_ct_extends_1_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_cos_ct_extends_1_2_low_level
		end

<<<<<<< HEAD
	set_schemap_cos_ct_extends_1_3 is
=======
	set_xml_schemap_cos_ct_extends_1_3
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_cos_ct_extends_1_3_low_level
		end

<<<<<<< HEAD
	set_schemap_cos_st_derived_ok_2_1 is
=======
	set_xml_schemap_cos_st_derived_ok_2_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_cos_st_derived_ok_2_1_low_level
		end

<<<<<<< HEAD
	set_schemap_cos_st_derived_ok_2_2 is
=======
	set_xml_schemap_cos_st_derived_ok_2_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_cos_st_derived_ok_2_2_low_level
		end

<<<<<<< HEAD
	set_schemap_cos_st_restricts_1_1 is
=======
	set_xml_schemap_cos_st_restricts_1_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_cos_st_restricts_1_1_low_level
		end

<<<<<<< HEAD
	set_schemap_cos_st_restricts_1_2 is
=======
	set_xml_schemap_cos_st_restricts_1_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_cos_st_restricts_1_2_low_level
		end

<<<<<<< HEAD
	set_schemap_cos_st_restricts_1_3_1 is
=======
	set_xml_schemap_cos_st_restricts_1_3_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_cos_st_restricts_1_3_1_low_level
		end

<<<<<<< HEAD
	set_schemap_cos_st_restricts_1_3_2 is
=======
	set_xml_schemap_cos_st_restricts_1_3_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_cos_st_restricts_1_3_2_low_level
		end

<<<<<<< HEAD
	set_schemap_cos_st_restricts_2_1 is
=======
	set_xml_schemap_cos_st_restricts_2_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_cos_st_restricts_2_1_low_level
		end

<<<<<<< HEAD
	set_schemap_cos_st_restricts_2_3_1_1 is
=======
	set_xml_schemap_cos_st_restricts_2_3_1_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_cos_st_restricts_2_3_1_1_low_level
		end

<<<<<<< HEAD
	set_schemap_cos_st_restricts_2_3_1_2 is
=======
	set_xml_schemap_cos_st_restricts_2_3_1_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_cos_st_restricts_2_3_1_2_low_level
		end

<<<<<<< HEAD
	set_schemap_cos_st_restricts_2_3_2_1 is
=======
	set_xml_schemap_cos_st_restricts_2_3_2_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_cos_st_restricts_2_3_2_1_low_level
		end

<<<<<<< HEAD
	set_schemap_cos_st_restricts_2_3_2_2 is
=======
	set_xml_schemap_cos_st_restricts_2_3_2_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_cos_st_restricts_2_3_2_2_low_level
		end

<<<<<<< HEAD
	set_schemap_cos_st_restricts_2_3_2_3 is
=======
	set_xml_schemap_cos_st_restricts_2_3_2_3
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_cos_st_restricts_2_3_2_3_low_level
		end

<<<<<<< HEAD
	set_schemap_cos_st_restricts_2_3_2_4 is
=======
	set_xml_schemap_cos_st_restricts_2_3_2_4
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_cos_st_restricts_2_3_2_4_low_level
		end

<<<<<<< HEAD
	set_schemap_cos_st_restricts_2_3_2_5 is
=======
	set_xml_schemap_cos_st_restricts_2_3_2_5
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_cos_st_restricts_2_3_2_5_low_level
		end

<<<<<<< HEAD
	set_schemap_cos_st_restricts_3_1 is
=======
	set_xml_schemap_cos_st_restricts_3_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_cos_st_restricts_3_1_low_level
		end

<<<<<<< HEAD
	set_schemap_cos_st_restricts_3_3_1 is
=======
	set_xml_schemap_cos_st_restricts_3_3_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_cos_st_restricts_3_3_1_low_level
		end

<<<<<<< HEAD
	set_schemap_cos_st_restricts_3_3_1_2 is
=======
	set_xml_schemap_cos_st_restricts_3_3_1_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_cos_st_restricts_3_3_1_2_low_level
		end

<<<<<<< HEAD
	set_schemap_cos_st_restricts_3_3_2_1 is
=======
	set_xml_schemap_cos_st_restricts_3_3_2_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_cos_st_restricts_3_3_2_1_low_level
		end

<<<<<<< HEAD
	set_schemap_cos_st_restricts_3_3_2_2 is
=======
	set_xml_schemap_cos_st_restricts_3_3_2_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_cos_st_restricts_3_3_2_2_low_level
		end

<<<<<<< HEAD
	set_schemap_cos_st_restricts_3_3_2_3 is
=======
	set_xml_schemap_cos_st_restricts_3_3_2_3
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_cos_st_restricts_3_3_2_3_low_level
		end

<<<<<<< HEAD
	set_schemap_cos_st_restricts_3_3_2_4 is
=======
	set_xml_schemap_cos_st_restricts_3_3_2_4
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_cos_st_restricts_3_3_2_4_low_level
		end

<<<<<<< HEAD
	set_schemap_cos_st_restricts_3_3_2_5 is
=======
	set_xml_schemap_cos_st_restricts_3_3_2_5
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_cos_st_restricts_3_3_2_5_low_level
		end

<<<<<<< HEAD
	set_schemap_cos_valid_default_1 is
=======
	set_xml_schemap_cos_valid_default_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_cos_valid_default_1_low_level
		end

<<<<<<< HEAD
	set_schemap_cos_valid_default_2_1 is
=======
	set_xml_schemap_cos_valid_default_2_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_cos_valid_default_2_1_low_level
		end

<<<<<<< HEAD
	set_schemap_cos_valid_default_2_2_1 is
=======
	set_xml_schemap_cos_valid_default_2_2_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_cos_valid_default_2_2_1_low_level
		end

<<<<<<< HEAD
	set_schemap_cos_valid_default_2_2_2 is
=======
	set_xml_schemap_cos_valid_default_2_2_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_cos_valid_default_2_2_2_low_level
		end

<<<<<<< HEAD
	set_schemap_ct_props_correct_1 is
=======
	set_xml_schemap_ct_props_correct_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_ct_props_correct_1_low_level
		end

<<<<<<< HEAD
	set_schemap_ct_props_correct_2 is
=======
	set_xml_schemap_ct_props_correct_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_ct_props_correct_2_low_level
		end

<<<<<<< HEAD
	set_schemap_ct_props_correct_3 is
=======
	set_xml_schemap_ct_props_correct_3
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_ct_props_correct_3_low_level
		end

<<<<<<< HEAD
	set_schemap_ct_props_correct_4 is
=======
	set_xml_schemap_ct_props_correct_4
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_ct_props_correct_4_low_level
		end

<<<<<<< HEAD
	set_schemap_ct_props_correct_5 is
=======
	set_xml_schemap_ct_props_correct_5
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_ct_props_correct_5_low_level
		end

<<<<<<< HEAD
	set_schemap_cvc_simple_type is
=======
	set_xml_schemap_cvc_simple_type
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_cvc_simple_type_low_level
		end

<<<<<<< HEAD
	set_schemap_def_and_prefix is
=======
	set_xml_schemap_def_and_prefix
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_def_and_prefix_low_level
		end

<<<<<<< HEAD
	set_schemap_derivation_ok_restriction_1 is
=======
	set_xml_schemap_derivation_ok_restriction_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_derivation_ok_restriction_1_low_level
		end

<<<<<<< HEAD
	set_schemap_derivation_ok_restriction_2_1_1 is
=======
	set_xml_schemap_derivation_ok_restriction_2_1_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_derivation_ok_restriction_2_1_1_low_level
		end

<<<<<<< HEAD
	set_schemap_derivation_ok_restriction_2_1_2 is
=======
	set_xml_schemap_derivation_ok_restriction_2_1_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_derivation_ok_restriction_2_1_2_low_level
		end

<<<<<<< HEAD
	set_schemap_derivation_ok_restriction_2_1_3 is
=======
	set_xml_schemap_derivation_ok_restriction_2_1_3
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_derivation_ok_restriction_2_1_3_low_level
		end

<<<<<<< HEAD
	set_schemap_derivation_ok_restriction_2_2 is
=======
	set_xml_schemap_derivation_ok_restriction_2_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_derivation_ok_restriction_2_2_low_level
		end

<<<<<<< HEAD
	set_schemap_derivation_ok_restriction_3 is
=======
	set_xml_schemap_derivation_ok_restriction_3
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_derivation_ok_restriction_3_low_level
		end

<<<<<<< HEAD
	set_schemap_derivation_ok_restriction_4_1 is
=======
	set_xml_schemap_derivation_ok_restriction_4_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_derivation_ok_restriction_4_1_low_level
		end

<<<<<<< HEAD
	set_schemap_derivation_ok_restriction_4_2 is
=======
	set_xml_schemap_derivation_ok_restriction_4_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_derivation_ok_restriction_4_2_low_level
		end

<<<<<<< HEAD
	set_schemap_derivation_ok_restriction_4_3 is
=======
	set_xml_schemap_derivation_ok_restriction_4_3
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_derivation_ok_restriction_4_3_low_level
		end

<<<<<<< HEAD
	set_schemap_e_props_correct_2 is
=======
	set_xml_schemap_e_props_correct_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_e_props_correct_2_low_level
		end

<<<<<<< HEAD
	set_schemap_e_props_correct_3 is
=======
	set_xml_schemap_e_props_correct_3
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_e_props_correct_3_low_level
		end

<<<<<<< HEAD
	set_schemap_e_props_correct_4 is
=======
	set_xml_schemap_e_props_correct_4
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_e_props_correct_4_low_level
		end

<<<<<<< HEAD
	set_schemap_e_props_correct_5 is
=======
	set_xml_schemap_e_props_correct_5
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_e_props_correct_5_low_level
		end

<<<<<<< HEAD
	set_schemap_e_props_correct_6 is
=======
	set_xml_schemap_e_props_correct_6
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_e_props_correct_6_low_level
		end

<<<<<<< HEAD
	set_schemap_elem_default_fixed is
=======
	set_xml_schemap_elem_default_fixed
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_elem_default_fixed_low_level
		end

<<<<<<< HEAD
	set_schemap_elem_noname_noref is
=======
	set_xml_schemap_elem_noname_noref
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_elem_noname_noref_low_level
		end

<<<<<<< HEAD
	set_schemap_elemformdefault_value is
=======
	set_xml_schemap_elemformdefault_value
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_elemformdefault_value_low_level
		end

<<<<<<< HEAD
	set_schemap_extension_no_base is
=======
	set_xml_schemap_extension_no_base
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_extension_no_base_low_level
		end

<<<<<<< HEAD
	set_schemap_facet_no_value is
=======
	set_xml_schemap_facet_no_value
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_facet_no_value_low_level
		end

<<<<<<< HEAD
	set_schemap_failed_build_import is
=======
	set_xml_schemap_failed_build_import
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_failed_build_import_low_level
		end

<<<<<<< HEAD
	set_schemap_failed_load is
=======
	set_xml_schemap_failed_load
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_failed_load_low_level
		end

<<<<<<< HEAD
	set_schemap_failed_parse is
=======
	set_xml_schemap_failed_parse
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_failed_parse_low_level
		end

<<<<<<< HEAD
	set_schemap_group_noname_noref is
=======
	set_xml_schemap_group_noname_noref
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_group_noname_noref_low_level
		end

<<<<<<< HEAD
	set_schemap_import_namespace_not_uri is
=======
	set_xml_schemap_import_namespace_not_uri
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_import_namespace_not_uri_low_level
		end

<<<<<<< HEAD
	set_schemap_import_redefine_nsname is
=======
	set_xml_schemap_import_redefine_nsname
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_import_redefine_nsname_low_level
		end

<<<<<<< HEAD
	set_schemap_import_schema_not_uri is
=======
	set_xml_schemap_import_schema_not_uri
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_import_schema_not_uri_low_level
		end

<<<<<<< HEAD
	set_schemap_include_schema_no_uri is
=======
	set_xml_schemap_include_schema_no_uri
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_include_schema_no_uri_low_level
		end

<<<<<<< HEAD
	set_schemap_include_schema_not_uri is
=======
	set_xml_schemap_include_schema_not_uri
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_include_schema_not_uri_low_level
		end

<<<<<<< HEAD
	set_schemap_internal is
=======
	set_xml_schemap_internal
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_internal_low_level
		end

<<<<<<< HEAD
	set_schemap_intersection_not_expressible is
=======
	set_xml_schemap_intersection_not_expressible
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_intersection_not_expressible_low_level
		end

<<<<<<< HEAD
	set_schemap_invalid_attr_combination is
=======
	set_xml_schemap_invalid_attr_combination
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_invalid_attr_combination_low_level
		end

<<<<<<< HEAD
	set_schemap_invalid_attr_inline_combination is
=======
	set_xml_schemap_invalid_attr_inline_combination
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_invalid_attr_inline_combination_low_level
		end

<<<<<<< HEAD
	set_schemap_invalid_attr_name is
=======
	set_xml_schemap_invalid_attr_name
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_invalid_attr_name_low_level
		end

<<<<<<< HEAD
	set_schemap_invalid_attr_use is
=======
	set_xml_schemap_invalid_attr_use
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_invalid_attr_use_low_level
		end

<<<<<<< HEAD
	set_schemap_invalid_boolean is
=======
	set_xml_schemap_invalid_boolean
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_invalid_boolean_low_level
		end

<<<<<<< HEAD
	set_schemap_invalid_enum is
=======
	set_xml_schemap_invalid_enum
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_invalid_enum_low_level
		end

<<<<<<< HEAD
	set_schemap_invalid_facet is
=======
	set_xml_schemap_invalid_facet
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_invalid_facet_low_level
		end

<<<<<<< HEAD
	set_schemap_invalid_facet_value is
=======
	set_xml_schemap_invalid_facet_value
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_invalid_facet_value_low_level
		end

<<<<<<< HEAD
	set_schemap_invalid_maxoccurs is
=======
	set_xml_schemap_invalid_maxoccurs
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_invalid_maxoccurs_low_level
		end

<<<<<<< HEAD
	set_schemap_invalid_minoccurs is
=======
	set_xml_schemap_invalid_minoccurs
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_invalid_minoccurs_low_level
		end

<<<<<<< HEAD
	set_schemap_invalid_ref_and_subtype is
=======
	set_xml_schemap_invalid_ref_and_subtype
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_invalid_ref_and_subtype_low_level
		end

<<<<<<< HEAD
	set_schemap_invalid_white_space is
=======
	set_xml_schemap_invalid_white_space
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_invalid_white_space_low_level
		end

<<<<<<< HEAD
	set_schemap_mg_props_correct_1 is
=======
	set_xml_schemap_mg_props_correct_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_mg_props_correct_1_low_level
		end

<<<<<<< HEAD
	set_schemap_mg_props_correct_2 is
=======
	set_xml_schemap_mg_props_correct_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_mg_props_correct_2_low_level
		end

<<<<<<< HEAD
	set_schemap_missing_simpletype_child is
=======
	set_xml_schemap_missing_simpletype_child
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_missing_simpletype_child_low_level
		end

<<<<<<< HEAD
	set_schemap_no_xmlns is
=======
	set_xml_schemap_no_xmlns
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_no_xmlns_low_level
		end

<<<<<<< HEAD
	set_schemap_no_xsi is
=======
	set_xml_schemap_no_xsi
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_no_xsi_low_level
		end

<<<<<<< HEAD
	set_schemap_noattr_noref is
=======
	set_xml_schemap_noattr_noref
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_noattr_noref_low_level
		end

<<<<<<< HEAD
	set_schemap_noroot is
=======
	set_xml_schemap_noroot
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_noroot_low_level
		end

<<<<<<< HEAD
	set_schemap_not_deterministic is
=======
	set_xml_schemap_not_deterministic
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_not_deterministic_low_level
		end

<<<<<<< HEAD
	set_schemap_not_schema is
=======
	set_xml_schemap_not_schema
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_not_schema_low_level
		end

<<<<<<< HEAD
	set_schemap_notation_no_name is
=======
	set_xml_schemap_notation_no_name
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_notation_no_name_low_level
		end

<<<<<<< HEAD
	set_schemap_nothing_to_parse is
=======
	set_xml_schemap_nothing_to_parse
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_nothing_to_parse_low_level
		end

<<<<<<< HEAD
	set_schemap_notype_noref is
=======
	set_xml_schemap_notype_noref
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_notype_noref_low_level
		end

<<<<<<< HEAD
	set_schemap_p_props_correct_1 is
=======
	set_xml_schemap_p_props_correct_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_p_props_correct_1_low_level
		end

<<<<<<< HEAD
	set_schemap_p_props_correct_2_1 is
=======
	set_xml_schemap_p_props_correct_2_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_p_props_correct_2_1_low_level
		end

<<<<<<< HEAD
	set_schemap_p_props_correct_2_2 is
=======
	set_xml_schemap_p_props_correct_2_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_p_props_correct_2_2_low_level
		end

<<<<<<< HEAD
	set_schemap_prefix_undefined is
=======
	set_xml_schemap_prefix_undefined
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_prefix_undefined_low_level
		end

<<<<<<< HEAD
	set_schemap_recursive is
=======
	set_xml_schemap_recursive
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_recursive_low_level
		end

<<<<<<< HEAD
	set_schemap_redefined_attr is
=======
	set_xml_schemap_redefined_attr
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_redefined_attr_low_level
		end

<<<<<<< HEAD
	set_schemap_redefined_attrgroup is
=======
	set_xml_schemap_redefined_attrgroup
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_redefined_attrgroup_low_level
		end

<<<<<<< HEAD
	set_schemap_redefined_element is
=======
	set_xml_schemap_redefined_element
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_redefined_element_low_level
		end

<<<<<<< HEAD
	set_schemap_redefined_group is
=======
	set_xml_schemap_redefined_group
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_redefined_group_low_level
		end

<<<<<<< HEAD
	set_schemap_redefined_notation is
=======
	set_xml_schemap_redefined_notation
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_redefined_notation_low_level
		end

<<<<<<< HEAD
	set_schemap_redefined_type is
=======
	set_xml_schemap_redefined_type
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_redefined_type_low_level
		end

<<<<<<< HEAD
	set_schemap_ref_and_content is
=======
	set_xml_schemap_ref_and_content
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_ref_and_content_low_level
		end

<<<<<<< HEAD
	set_schemap_ref_and_subtype is
=======
	set_xml_schemap_ref_and_subtype
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_ref_and_subtype_low_level
		end

<<<<<<< HEAD
	set_schemap_regexp_invalid is
=======
	set_xml_schemap_regexp_invalid
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_regexp_invalid_low_level
		end

<<<<<<< HEAD
	set_schemap_restriction_noname_noref is
=======
	set_xml_schemap_restriction_noname_noref
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_restriction_noname_noref_low_level
		end

<<<<<<< HEAD
	set_schemap_s4s_attr_invalid_value is
=======
	set_xml_schemap_s4s_attr_invalid_value
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_s4s_attr_invalid_value_low_level
		end

<<<<<<< HEAD
	set_schemap_s4s_attr_missing is
=======
	set_xml_schemap_s4s_attr_missing
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_s4s_attr_missing_low_level
		end

<<<<<<< HEAD
	set_schemap_s4s_attr_not_allowed is
=======
	set_xml_schemap_s4s_attr_not_allowed
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_s4s_attr_not_allowed_low_level
		end

<<<<<<< HEAD
	set_schemap_s4s_elem_missing is
=======
	set_xml_schemap_s4s_elem_missing
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_s4s_elem_missing_low_level
		end

<<<<<<< HEAD
	set_schemap_s4s_elem_not_allowed is
=======
	set_xml_schemap_s4s_elem_not_allowed
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_s4s_elem_not_allowed_low_level
		end

<<<<<<< HEAD
	set_schemap_simpletype_noname is
=======
	set_xml_schemap_simpletype_noname
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_simpletype_noname_low_level
		end

<<<<<<< HEAD
	set_schemap_src_attribute_1 is
=======
	set_xml_schemap_src_attribute_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_src_attribute_1_low_level
		end

<<<<<<< HEAD
	set_schemap_src_attribute_2 is
=======
	set_xml_schemap_src_attribute_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_src_attribute_2_low_level
		end

<<<<<<< HEAD
	set_schemap_src_attribute_3_1 is
=======
	set_xml_schemap_src_attribute_3_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_src_attribute_3_1_low_level
		end

<<<<<<< HEAD
	set_schemap_src_attribute_3_2 is
=======
	set_xml_schemap_src_attribute_3_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_src_attribute_3_2_low_level
		end

<<<<<<< HEAD
	set_schemap_src_attribute_4 is
=======
	set_xml_schemap_src_attribute_4
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_src_attribute_4_low_level
		end

<<<<<<< HEAD
	set_schemap_src_attribute_group_1 is
=======
	set_xml_schemap_src_attribute_group_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_src_attribute_group_1_low_level
		end

<<<<<<< HEAD
	set_schemap_src_attribute_group_2 is
=======
	set_xml_schemap_src_attribute_group_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_src_attribute_group_2_low_level
		end

<<<<<<< HEAD
	set_schemap_src_attribute_group_3 is
=======
	set_xml_schemap_src_attribute_group_3
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_src_attribute_group_3_low_level
		end

<<<<<<< HEAD
	set_schemap_src_ct_1 is
=======
	set_xml_schemap_src_ct_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_src_ct_1_low_level
		end

<<<<<<< HEAD
	set_schemap_src_element_1 is
=======
	set_xml_schemap_src_element_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_src_element_1_low_level
		end

<<<<<<< HEAD
	set_schemap_src_element_2_1 is
=======
	set_xml_schemap_src_element_2_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_src_element_2_1_low_level
		end

<<<<<<< HEAD
	set_schemap_src_element_2_2 is
=======
	set_xml_schemap_src_element_2_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_src_element_2_2_low_level
		end

<<<<<<< HEAD
	set_schemap_src_element_3 is
=======
	set_xml_schemap_src_element_3
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_src_element_3_low_level
		end

<<<<<<< HEAD
	set_schemap_src_import is
=======
	set_xml_schemap_src_import
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_src_import_low_level
		end

<<<<<<< HEAD
	set_schemap_src_import_1_1 is
=======
	set_xml_schemap_src_import_1_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_src_import_1_1_low_level
		end

<<<<<<< HEAD
	set_schemap_src_import_1_2 is
=======
	set_xml_schemap_src_import_1_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_src_import_1_2_low_level
		end

<<<<<<< HEAD
	set_schemap_src_import_2 is
=======
	set_xml_schemap_src_import_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_src_import_2_low_level
		end

<<<<<<< HEAD
	set_schemap_src_import_2_1 is
=======
	set_xml_schemap_src_import_2_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_src_import_2_1_low_level
		end

<<<<<<< HEAD
	set_schemap_src_import_2_2 is
=======
	set_xml_schemap_src_import_2_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_src_import_2_2_low_level
		end

<<<<<<< HEAD
	set_schemap_src_import_3_1 is
=======
	set_xml_schemap_src_import_3_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_src_import_3_1_low_level
		end

<<<<<<< HEAD
	set_schemap_src_import_3_2 is
=======
	set_xml_schemap_src_import_3_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_src_import_3_2_low_level
		end

<<<<<<< HEAD
	set_schemap_src_include is
=======
	set_xml_schemap_src_include
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_src_include_low_level
		end

<<<<<<< HEAD
	set_schemap_src_list_itemtype_or_simpletype is
=======
	set_xml_schemap_src_list_itemtype_or_simpletype
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_src_list_itemtype_or_simpletype_low_level
		end

<<<<<<< HEAD
	set_schemap_src_redefine is
=======
	set_xml_schemap_src_redefine
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_src_redefine_low_level
		end

<<<<<<< HEAD
	set_schemap_src_resolve is
=======
	set_xml_schemap_src_resolve
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_src_resolve_low_level
		end

<<<<<<< HEAD
	set_schemap_src_restriction_base_or_simpletype is
=======
	set_xml_schemap_src_restriction_base_or_simpletype
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_src_restriction_base_or_simpletype_low_level
		end

<<<<<<< HEAD
	set_schemap_src_simple_type_1 is
=======
	set_xml_schemap_src_simple_type_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_src_simple_type_1_low_level
		end

<<<<<<< HEAD
	set_schemap_src_simple_type_2 is
=======
	set_xml_schemap_src_simple_type_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_src_simple_type_2_low_level
		end

<<<<<<< HEAD
	set_schemap_src_simple_type_3 is
=======
	set_xml_schemap_src_simple_type_3
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_src_simple_type_3_low_level
		end

<<<<<<< HEAD
	set_schemap_src_simple_type_4 is
=======
	set_xml_schemap_src_simple_type_4
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_src_simple_type_4_low_level
		end

<<<<<<< HEAD
	set_schemap_src_union_membertypes_or_simpletypes is
=======
	set_xml_schemap_src_union_membertypes_or_simpletypes
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_src_union_membertypes_or_simpletypes_low_level
		end

<<<<<<< HEAD
	set_schemap_st_props_correct_1 is
=======
	set_xml_schemap_st_props_correct_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_st_props_correct_1_low_level
		end

<<<<<<< HEAD
	set_schemap_st_props_correct_2 is
=======
	set_xml_schemap_st_props_correct_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_st_props_correct_2_low_level
		end

<<<<<<< HEAD
	set_schemap_st_props_correct_3 is
=======
	set_xml_schemap_st_props_correct_3
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_st_props_correct_3_low_level
		end

<<<<<<< HEAD
	set_schemap_supernumerous_list_item_type is
=======
	set_xml_schemap_supernumerous_list_item_type
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_supernumerous_list_item_type_low_level
		end

<<<<<<< HEAD
	set_schemap_type_and_subtype is
=======
	set_xml_schemap_type_and_subtype
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_type_and_subtype_low_level
		end

<<<<<<< HEAD
	set_schemap_union_not_expressible is
=======
	set_xml_schemap_union_not_expressible
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_union_not_expressible_low_level
		end

<<<<<<< HEAD
	set_schemap_unknown_all_child is
=======
	set_xml_schemap_unknown_all_child
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_unknown_all_child_low_level
		end

<<<<<<< HEAD
	set_schemap_unknown_anyattribute_child is
=======
	set_xml_schemap_unknown_anyattribute_child
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_unknown_anyattribute_child_low_level
		end

<<<<<<< HEAD
	set_schemap_unknown_attr_child is
=======
	set_xml_schemap_unknown_attr_child
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_unknown_attr_child_low_level
		end

<<<<<<< HEAD
	set_schemap_unknown_attrgrp_child is
=======
	set_xml_schemap_unknown_attrgrp_child
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_unknown_attrgrp_child_low_level
		end

<<<<<<< HEAD
	set_schemap_unknown_attribute_group is
=======
	set_xml_schemap_unknown_attribute_group
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_unknown_attribute_group_low_level
		end

<<<<<<< HEAD
	set_schemap_unknown_base_type is
=======
	set_xml_schemap_unknown_base_type
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_unknown_base_type_low_level
		end

<<<<<<< HEAD
	set_schemap_unknown_choice_child is
=======
	set_xml_schemap_unknown_choice_child
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_unknown_choice_child_low_level
		end

<<<<<<< HEAD
	set_schemap_unknown_complexcontent_child is
=======
	set_xml_schemap_unknown_complexcontent_child
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_unknown_complexcontent_child_low_level
		end

<<<<<<< HEAD
	set_schemap_unknown_complextype_child is
=======
	set_xml_schemap_unknown_complextype_child
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_unknown_complextype_child_low_level
		end

<<<<<<< HEAD
	set_schemap_unknown_elem_child is
=======
	set_xml_schemap_unknown_elem_child
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_unknown_elem_child_low_level
		end

<<<<<<< HEAD
	set_schemap_unknown_extension_child is
=======
	set_xml_schemap_unknown_extension_child
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_unknown_extension_child_low_level
		end

<<<<<<< HEAD
	set_schemap_unknown_facet_child is
=======
	set_xml_schemap_unknown_facet_child
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_unknown_facet_child_low_level
		end

<<<<<<< HEAD
	set_schemap_unknown_facet_type is
=======
	set_xml_schemap_unknown_facet_type
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_unknown_facet_type_low_level
		end

<<<<<<< HEAD
	set_schemap_unknown_group_child is
=======
	set_xml_schemap_unknown_group_child
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_unknown_group_child_low_level
		end

<<<<<<< HEAD
	set_schemap_unknown_import_child is
=======
	set_xml_schemap_unknown_import_child
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_unknown_import_child_low_level
		end

<<<<<<< HEAD
	set_schemap_unknown_include_child is
=======
	set_xml_schemap_unknown_include_child
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_unknown_include_child_low_level
		end

<<<<<<< HEAD
	set_schemap_unknown_list_child is
=======
	set_xml_schemap_unknown_list_child
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_unknown_list_child_low_level
		end

<<<<<<< HEAD
	set_schemap_unknown_member_type is
=======
	set_xml_schemap_unknown_member_type
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_unknown_member_type_low_level
		end

<<<<<<< HEAD
	set_schemap_unknown_notation_child is
=======
	set_xml_schemap_unknown_notation_child
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_unknown_notation_child_low_level
		end

<<<<<<< HEAD
	set_schemap_unknown_prefix is
=======
	set_xml_schemap_unknown_prefix
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_unknown_prefix_low_level
		end

<<<<<<< HEAD
	set_schemap_unknown_processcontent_child is
=======
	set_xml_schemap_unknown_processcontent_child
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_unknown_processcontent_child_low_level
		end

<<<<<<< HEAD
	set_schemap_unknown_ref is
=======
	set_xml_schemap_unknown_ref
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_unknown_ref_low_level
		end

<<<<<<< HEAD
	set_schemap_unknown_restriction_child is
=======
	set_xml_schemap_unknown_restriction_child
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_unknown_restriction_child_low_level
		end

<<<<<<< HEAD
	set_schemap_unknown_schemas_child is
=======
	set_xml_schemap_unknown_schemas_child
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_unknown_schemas_child_low_level
		end

<<<<<<< HEAD
	set_schemap_unknown_sequence_child is
=======
	set_xml_schemap_unknown_sequence_child
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_unknown_sequence_child_low_level
		end

<<<<<<< HEAD
	set_schemap_unknown_simplecontent_child is
=======
	set_xml_schemap_unknown_simplecontent_child
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_unknown_simplecontent_child_low_level
		end

<<<<<<< HEAD
	set_schemap_unknown_simpletype_child is
=======
	set_xml_schemap_unknown_simpletype_child
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_unknown_simpletype_child_low_level
		end

<<<<<<< HEAD
	set_schemap_unknown_type is
=======
	set_xml_schemap_unknown_type
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_unknown_type_low_level
		end

<<<<<<< HEAD
	set_schemap_unknown_union_child is
=======
	set_xml_schemap_unknown_union_child
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_unknown_union_child_low_level
		end

<<<<<<< HEAD
	set_schemap_warn_attr_pointless_proh is
=======
	set_xml_schemap_warn_attr_pointless_proh
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_warn_attr_pointless_proh_low_level
		end

<<<<<<< HEAD
	set_schemap_warn_attr_redecl_proh is
=======
	set_xml_schemap_warn_attr_redecl_proh
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_warn_attr_redecl_proh_low_level
		end

<<<<<<< HEAD
	set_schemap_warn_skip_schema is
=======
	set_xml_schemap_warn_skip_schema
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_warn_skip_schema_low_level
		end

<<<<<<< HEAD
	set_schemap_warn_unlocated_schema is
=======
	set_xml_schemap_warn_unlocated_schema
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_warn_unlocated_schema_low_level
		end

<<<<<<< HEAD
	set_schemap_wildcard_invalid_ns_member is
=======
	set_xml_schemap_wildcard_invalid_ns_member
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemap_wildcard_invalid_ns_member_low_level
		end

<<<<<<< HEAD
	set_schematronv_assert is
=======
	set_xml_schematronv_assert
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schematronv_assert_low_level
		end

<<<<<<< HEAD
	set_schematronv_report is
=======
	set_xml_schematronv_report
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schematronv_report_low_level
		end

<<<<<<< HEAD
	set_schemav_attrinvalid is
=======
	set_xml_schemav_attrinvalid
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_attrinvalid_low_level
		end

<<<<<<< HEAD
	set_schemav_attrunknown is
=======
	set_xml_schemav_attrunknown
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_attrunknown_low_level
		end

<<<<<<< HEAD
	set_schemav_construct is
=======
	set_xml_schemav_construct
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_construct_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_attribute_1 is
=======
	set_xml_schemav_cvc_attribute_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_attribute_1_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_attribute_2 is
=======
	set_xml_schemav_cvc_attribute_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_attribute_2_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_attribute_3 is
=======
	set_xml_schemav_cvc_attribute_3
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_attribute_3_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_attribute_4 is
=======
	set_xml_schemav_cvc_attribute_4
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_attribute_4_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_au is
=======
	set_xml_schemav_cvc_au
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_au_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_complex_type_1 is
=======
	set_xml_schemav_cvc_complex_type_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_complex_type_1_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_complex_type_2_1 is
=======
	set_xml_schemav_cvc_complex_type_2_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_complex_type_2_1_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_complex_type_2_2 is
=======
	set_xml_schemav_cvc_complex_type_2_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_complex_type_2_2_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_complex_type_2_3 is
=======
	set_xml_schemav_cvc_complex_type_2_3
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_complex_type_2_3_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_complex_type_2_4 is
=======
	set_xml_schemav_cvc_complex_type_2_4
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_complex_type_2_4_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_complex_type_3_1 is
=======
	set_xml_schemav_cvc_complex_type_3_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_complex_type_3_1_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_complex_type_3_2_1 is
=======
	set_xml_schemav_cvc_complex_type_3_2_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_complex_type_3_2_1_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_complex_type_3_2_2 is
=======
	set_xml_schemav_cvc_complex_type_3_2_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_complex_type_3_2_2_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_complex_type_4 is
=======
	set_xml_schemav_cvc_complex_type_4
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_complex_type_4_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_complex_type_5_1 is
=======
	set_xml_schemav_cvc_complex_type_5_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_complex_type_5_1_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_complex_type_5_2 is
=======
	set_xml_schemav_cvc_complex_type_5_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_complex_type_5_2_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_datatype_valid_1_2_1 is
=======
	set_xml_schemav_cvc_datatype_valid_1_2_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_datatype_valid_1_2_1_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_datatype_valid_1_2_2 is
=======
	set_xml_schemav_cvc_datatype_valid_1_2_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_datatype_valid_1_2_2_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_datatype_valid_1_2_3 is
=======
	set_xml_schemav_cvc_datatype_valid_1_2_3
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_datatype_valid_1_2_3_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_elt_1 is
=======
	set_xml_schemav_cvc_elt_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_elt_1_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_elt_2 is
=======
	set_xml_schemav_cvc_elt_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_elt_2_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_elt_3_1 is
=======
	set_xml_schemav_cvc_elt_3_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_elt_3_1_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_elt_3_2_1 is
=======
	set_xml_schemav_cvc_elt_3_2_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_elt_3_2_1_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_elt_3_2_2 is
=======
	set_xml_schemav_cvc_elt_3_2_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_elt_3_2_2_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_elt_4_1 is
=======
	set_xml_schemav_cvc_elt_4_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_elt_4_1_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_elt_4_2 is
=======
	set_xml_schemav_cvc_elt_4_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_elt_4_2_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_elt_4_3 is
=======
	set_xml_schemav_cvc_elt_4_3
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_elt_4_3_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_elt_5_1_1 is
=======
	set_xml_schemav_cvc_elt_5_1_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_elt_5_1_1_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_elt_5_1_2 is
=======
	set_xml_schemav_cvc_elt_5_1_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_elt_5_1_2_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_elt_5_2_1 is
=======
	set_xml_schemav_cvc_elt_5_2_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_elt_5_2_1_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_elt_5_2_2_1 is
=======
	set_xml_schemav_cvc_elt_5_2_2_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_elt_5_2_2_1_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_elt_5_2_2_2_1 is
=======
	set_xml_schemav_cvc_elt_5_2_2_2_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_elt_5_2_2_2_1_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_elt_5_2_2_2_2 is
=======
	set_xml_schemav_cvc_elt_5_2_2_2_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_elt_5_2_2_2_2_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_elt_6 is
=======
	set_xml_schemav_cvc_elt_6
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_elt_6_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_elt_7 is
=======
	set_xml_schemav_cvc_elt_7
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_elt_7_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_enumeration_valid is
=======
	set_xml_schemav_cvc_enumeration_valid
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_enumeration_valid_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_facet_valid is
=======
	set_xml_schemav_cvc_facet_valid
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_facet_valid_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_fractiondigits_valid is
=======
	set_xml_schemav_cvc_fractiondigits_valid
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_fractiondigits_valid_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_idc is
=======
	set_xml_schemav_cvc_idc
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_idc_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_length_valid is
=======
	set_xml_schemav_cvc_length_valid
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_length_valid_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_maxexclusive_valid is
=======
	set_xml_schemav_cvc_maxexclusive_valid
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_maxexclusive_valid_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_maxinclusive_valid is
=======
	set_xml_schemav_cvc_maxinclusive_valid
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_maxinclusive_valid_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_maxlength_valid is
=======
	set_xml_schemav_cvc_maxlength_valid
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_maxlength_valid_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_minexclusive_valid is
=======
	set_xml_schemav_cvc_minexclusive_valid
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_minexclusive_valid_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_mininclusive_valid is
=======
	set_xml_schemav_cvc_mininclusive_valid
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_mininclusive_valid_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_minlength_valid is
=======
	set_xml_schemav_cvc_minlength_valid
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_minlength_valid_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_pattern_valid is
=======
	set_xml_schemav_cvc_pattern_valid
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_pattern_valid_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_totaldigits_valid is
=======
	set_xml_schemav_cvc_totaldigits_valid
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_totaldigits_valid_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_type_1 is
=======
	set_xml_schemav_cvc_type_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_type_1_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_type_2 is
=======
	set_xml_schemav_cvc_type_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_type_2_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_type_3_1_1 is
=======
	set_xml_schemav_cvc_type_3_1_1
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_type_3_1_1_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_type_3_1_2 is
=======
	set_xml_schemav_cvc_type_3_1_2
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_type_3_1_2_low_level
		end

<<<<<<< HEAD
	set_schemav_cvc_wildcard is
=======
	set_xml_schemav_cvc_wildcard
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_cvc_wildcard_low_level
		end

<<<<<<< HEAD
	set_schemav_document_element_missing is
=======
	set_xml_schemav_document_element_missing
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_document_element_missing_low_level
		end

<<<<<<< HEAD
	set_schemav_elemcont is
=======
	set_xml_schemav_elemcont
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_elemcont_low_level
		end

<<<<<<< HEAD
	set_schemav_element_content is
=======
	set_xml_schemav_element_content
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_element_content_low_level
		end

<<<<<<< HEAD
	set_schemav_extracontent is
=======
	set_xml_schemav_extracontent
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_extracontent_low_level
		end

<<<<<<< HEAD
	set_schemav_facet is
=======
	set_xml_schemav_facet
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_facet_low_level
		end

<<<<<<< HEAD
	set_schemav_havedefault is
=======
	set_xml_schemav_havedefault
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_havedefault_low_level
		end

<<<<<<< HEAD
	set_schemav_internal is
=======
	set_xml_schemav_internal
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_internal_low_level
		end

<<<<<<< HEAD
	set_schemav_invalidattr is
=======
	set_xml_schemav_invalidattr
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_invalidattr_low_level
		end

<<<<<<< HEAD
	set_schemav_invalidelem is
=======
	set_xml_schemav_invalidelem
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_invalidelem_low_level
		end

<<<<<<< HEAD
	set_schemav_isabstract is
=======
	set_xml_schemav_isabstract
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_isabstract_low_level
		end

<<<<<<< HEAD
	set_schemav_misc is
=======
	set_xml_schemav_misc
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_misc_low_level
		end

<<<<<<< HEAD
	set_schemav_missing is
=======
	set_xml_schemav_missing
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_missing_low_level
		end

<<<<<<< HEAD
	set_schemav_norollback is
=======
	set_xml_schemav_norollback
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_norollback_low_level
		end

<<<<<<< HEAD
	set_schemav_noroot is
=======
	set_xml_schemav_noroot
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_noroot_low_level
		end

<<<<<<< HEAD
	set_schemav_notdeterminist is
=======
	set_xml_schemav_notdeterminist
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_notdeterminist_low_level
		end

<<<<<<< HEAD
	set_schemav_notempty is
=======
	set_xml_schemav_notempty
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_notempty_low_level
		end

<<<<<<< HEAD
	set_schemav_notnillable is
=======
	set_xml_schemav_notnillable
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_notnillable_low_level
		end

<<<<<<< HEAD
	set_schemav_notsimple is
=======
	set_xml_schemav_notsimple
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_notsimple_low_level
		end

<<<<<<< HEAD
	set_schemav_nottoplevel is
=======
	set_xml_schemav_nottoplevel
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_nottoplevel_low_level
		end

<<<<<<< HEAD
	set_schemav_notype is
=======
	set_xml_schemav_notype
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_notype_low_level
		end

<<<<<<< HEAD
	set_schemav_undeclaredelem is
=======
	set_xml_schemav_undeclaredelem
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_undeclaredelem_low_level
		end

<<<<<<< HEAD
	set_schemav_value is
=======
	set_xml_schemav_value
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_value_low_level
		end

<<<<<<< HEAD
	set_schemav_wrongelem is
=======
	set_xml_schemav_wrongelem
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := schemav_wrongelem_low_level
		end

<<<<<<< HEAD
	set_tree_invalid_dec is
=======
	set_xml_tree_invalid_dec
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := tree_invalid_dec_low_level
		end

<<<<<<< HEAD
	set_tree_invalid_hex is
=======
	set_xml_tree_invalid_hex
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := tree_invalid_hex_low_level
		end

<<<<<<< HEAD
	set_tree_not_utf8 is
=======
	set_xml_tree_not_utf8
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := tree_not_utf8_low_level
		end

<<<<<<< HEAD
	set_tree_unterminated_entity is
=======
	set_xml_tree_unterminated_entity
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := tree_unterminated_entity_low_level
		end

<<<<<<< HEAD
	set_war_catalog_pi is
=======
	set_xml_war_catalog_pi
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := war_catalog_pi_low_level
		end

<<<<<<< HEAD
	set_war_entity_redefined is
=======
	set_xml_war_entity_redefined
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := war_entity_redefined_low_level
		end

<<<<<<< HEAD
	set_war_lang_value is
=======
	set_xml_war_lang_value
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := war_lang_value_low_level
		end

<<<<<<< HEAD
	set_war_ns_column is
=======
	set_xml_war_ns_column
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := war_ns_column_low_level
		end

<<<<<<< HEAD
	set_war_ns_uri is
=======
	set_xml_war_ns_uri
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := war_ns_uri_low_level
		end

<<<<<<< HEAD
	set_war_ns_uri_relative is
=======
	set_xml_war_ns_uri_relative
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := war_ns_uri_relative_low_level
		end

<<<<<<< HEAD
	set_war_space_value is
=======
	set_xml_war_space_value
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := war_space_value_low_level
		end

<<<<<<< HEAD
	set_war_undeclared_entity is
=======
	set_xml_war_undeclared_entity
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := war_undeclared_entity_low_level
		end

<<<<<<< HEAD
	set_war_unknown_version is
=======
	set_xml_war_unknown_version
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := war_unknown_version_low_level
		end

<<<<<<< HEAD
	set_xinclude_build_failed is
=======
	set_xml_xinclude_build_failed
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xinclude_build_failed_low_level
		end

<<<<<<< HEAD
	set_xinclude_deprecated_ns is
=======
	set_xml_xinclude_deprecated_ns
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xinclude_deprecated_ns_low_level
		end

<<<<<<< HEAD
	set_xinclude_entity_def_mismatch is
=======
	set_xml_xinclude_entity_def_mismatch
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xinclude_entity_def_mismatch_low_level
		end

<<<<<<< HEAD
	set_xinclude_fallback_not_in_include is
=======
	set_xml_xinclude_fallback_not_in_include
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xinclude_fallback_not_in_include_low_level
		end

<<<<<<< HEAD
	set_xinclude_fallbacks_in_include is
=======
	set_xml_xinclude_fallbacks_in_include
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xinclude_fallbacks_in_include_low_level
		end

<<<<<<< HEAD
	set_xinclude_fragment_id is
=======
	set_xml_xinclude_fragment_id
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xinclude_fragment_id_low_level
		end

<<<<<<< HEAD
	set_xinclude_href_uri is
=======
	set_xml_xinclude_href_uri
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xinclude_href_uri_low_level
		end

<<<<<<< HEAD
	set_xinclude_include_in_include is
=======
	set_xml_xinclude_include_in_include
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xinclude_include_in_include_low_level
		end

<<<<<<< HEAD
	set_xinclude_invalid_char is
=======
	set_xml_xinclude_invalid_char
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xinclude_invalid_char_low_level
		end

<<<<<<< HEAD
	set_xinclude_multiple_root is
=======
	set_xml_xinclude_multiple_root
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xinclude_multiple_root_low_level
		end

<<<<<<< HEAD
	set_xinclude_no_fallback is
=======
	set_xml_xinclude_no_fallback
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xinclude_no_fallback_low_level
		end

<<<<<<< HEAD
	set_xinclude_no_href is
=======
	set_xml_xinclude_no_href
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xinclude_no_href_low_level
		end

<<<<<<< HEAD
	set_xinclude_parse_value is
=======
	set_xml_xinclude_parse_value
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xinclude_parse_value_low_level
		end

<<<<<<< HEAD
	set_xinclude_recursion is
=======
	set_xml_xinclude_recursion
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xinclude_recursion_low_level
		end

<<<<<<< HEAD
	set_xinclude_text_document is
=======
	set_xml_xinclude_text_document
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xinclude_text_document_low_level
		end

<<<<<<< HEAD
	set_xinclude_text_fragment is
=======
	set_xml_xinclude_text_fragment
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xinclude_text_fragment_low_level
		end

<<<<<<< HEAD
	set_xinclude_unknown_encoding is
=======
	set_xml_xinclude_unknown_encoding
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xinclude_unknown_encoding_low_level
		end

<<<<<<< HEAD
	set_xinclude_xptr_failed is
=======
	set_xml_xinclude_xptr_failed
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xinclude_xptr_failed_low_level
		end

<<<<<<< HEAD
	set_xinclude_xptr_result is
=======
	set_xml_xinclude_xptr_result
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xinclude_xptr_result_low_level
		end

<<<<<<< HEAD
	set_xpath_encoding_error is
=======
	set_xml_xpath_encoding_error
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xpath_encoding_error_low_level
		end

<<<<<<< HEAD
	set_xpath_expr_error is
=======
	set_xml_xpath_expr_error
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xpath_expr_error_low_level
		end

<<<<<<< HEAD
	set_xpath_expression_ok is
=======
	set_xml_xpath_expression_ok
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xpath_expression_ok_low_level
		end

<<<<<<< HEAD
	set_xpath_invalid_arity is
=======
	set_xml_xpath_invalid_arity
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xpath_invalid_arity_low_level
		end

<<<<<<< HEAD
	set_xpath_invalid_char_error is
=======
	set_xml_xpath_invalid_char_error
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xpath_invalid_char_error_low_level
		end

<<<<<<< HEAD
	set_xpath_invalid_ctxt_position is
=======
	set_xml_xpath_invalid_ctxt_position
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xpath_invalid_ctxt_position_low_level
		end

<<<<<<< HEAD
	set_xpath_invalid_ctxt_size is
=======
	set_xml_xpath_invalid_ctxt_size
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xpath_invalid_ctxt_size_low_level
		end

<<<<<<< HEAD
	set_xpath_invalid_operand is
=======
	set_xml_xpath_invalid_operand
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xpath_invalid_operand_low_level
		end

<<<<<<< HEAD
	set_xpath_invalid_predicate_error is
=======
	set_xml_xpath_invalid_predicate_error
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xpath_invalid_predicate_error_low_level
		end

<<<<<<< HEAD
	set_xpath_invalid_type is
=======
	set_xml_xpath_invalid_type
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xpath_invalid_type_low_level
		end

<<<<<<< HEAD
	set_xpath_memory_error is
=======
	set_xml_xpath_memory_error
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xpath_memory_error_low_level
		end

<<<<<<< HEAD
	set_xpath_number_error is
=======
	set_xml_xpath_number_error
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xpath_number_error_low_level
		end

<<<<<<< HEAD
	set_xpath_start_literal_error is
=======
	set_xml_xpath_start_literal_error
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xpath_start_literal_error_low_level
		end

<<<<<<< HEAD
	set_xpath_unclosed_error is
=======
	set_xml_xpath_unclosed_error
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xpath_unclosed_error_low_level
		end

<<<<<<< HEAD
	set_xpath_undef_prefix_error is
=======
	set_xml_xpath_undef_prefix_error
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xpath_undef_prefix_error_low_level
		end

<<<<<<< HEAD
	set_xpath_undef_variable_error is
=======
	set_xml_xpath_undef_variable_error
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xpath_undef_variable_error_low_level
		end

<<<<<<< HEAD
	set_xpath_unfinished_literal_error is
=======
	set_xml_xpath_unfinished_literal_error
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xpath_unfinished_literal_error_low_level
		end

<<<<<<< HEAD
	set_xpath_unknown_func_error is
=======
	set_xml_xpath_unknown_func_error
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xpath_unknown_func_error_low_level
		end

<<<<<<< HEAD
	set_xpath_variable_ref_error is
=======
	set_xml_xpath_variable_ref_error
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xpath_variable_ref_error_low_level
		end

<<<<<<< HEAD
	set_xptr_childseq_start is
=======
	set_xml_xptr_childseq_start
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xptr_childseq_start_low_level
		end

<<<<<<< HEAD
	set_xptr_eval_failed is
=======
	set_xml_xptr_eval_failed
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xptr_eval_failed_low_level
		end

<<<<<<< HEAD
	set_xptr_extra_objects is
=======
	set_xml_xptr_extra_objects
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xptr_extra_objects_low_level
		end

<<<<<<< HEAD
	set_xptr_resource_error is
=======
	set_xml_xptr_resource_error
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xptr_resource_error_low_level
		end

<<<<<<< HEAD
	set_xptr_sub_resource_error is
=======
	set_xml_xptr_sub_resource_error
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xptr_sub_resource_error_low_level
		end

<<<<<<< HEAD
	set_xptr_syntax_error is
=======
	set_xml_xptr_syntax_error
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xptr_syntax_error_low_level
		end

<<<<<<< HEAD
	set_xptr_unknown_scheme is
=======
	set_xml_xptr_unknown_scheme
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := xptr_unknown_scheme_low_level
		end

<<<<<<< HEAD
feature {ANY} -- Queries
	is_c14n_create_ctxt: BOOLEAN is
=======
feature -- Queries
	is_xml_c14n_create_ctxt: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=c14n_create_ctxt_low_level)
		end

<<<<<<< HEAD
	is_c14n_create_stack: BOOLEAN is
=======
	is_xml_c14n_create_stack: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=c14n_create_stack_low_level)
		end

<<<<<<< HEAD
	is_c14n_invalid_node: BOOLEAN is
=======
	is_xml_c14n_invalid_node: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=c14n_invalid_node_low_level)
		end

<<<<<<< HEAD
	is_c14n_relative_namespace: BOOLEAN is
=======
	is_xml_c14n_relative_namespace: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=c14n_relative_namespace_low_level)
		end

<<<<<<< HEAD
	is_c14n_requires_utf8: BOOLEAN is
=======
	is_xml_c14n_requires_utf8: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=c14n_requires_utf8_low_level)
		end

<<<<<<< HEAD
	is_c14n_unknow_node: BOOLEAN is
=======
	is_xml_c14n_unknow_node: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=c14n_unknow_node_low_level)
		end

<<<<<<< HEAD
	is_catalog_entry_broken: BOOLEAN is
=======
	is_xml_catalog_entry_broken: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=catalog_entry_broken_low_level)
		end

<<<<<<< HEAD
	is_catalog_missing_attr: BOOLEAN is
=======
	is_xml_catalog_missing_attr: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=catalog_missing_attr_low_level)
		end

<<<<<<< HEAD
	is_catalog_not_catalog: BOOLEAN is
=======
	is_xml_catalog_not_catalog: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=catalog_not_catalog_low_level)
		end

<<<<<<< HEAD
	is_catalog_prefer_value: BOOLEAN is
=======
	is_xml_catalog_prefer_value: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=catalog_prefer_value_low_level)
		end

<<<<<<< HEAD
	is_catalog_recursion: BOOLEAN is
=======
	is_xml_catalog_recursion: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=catalog_recursion_low_level)
		end

<<<<<<< HEAD
	is_check_entity_type: BOOLEAN is
=======
	is_xml_check_entity_type: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_entity_type_low_level)
		end

<<<<<<< HEAD
	is_check_found_attribute: BOOLEAN is
=======
	is_xml_check_found_attribute: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_found_attribute_low_level)
		end

<<<<<<< HEAD
	is_check_found_cdata: BOOLEAN is
=======
	is_xml_check_found_cdata: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_found_cdata_low_level)
		end

<<<<<<< HEAD
	is_check_found_comment: BOOLEAN is
=======
	is_xml_check_found_comment: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_found_comment_low_level)
		end

<<<<<<< HEAD
	is_check_found_doctype: BOOLEAN is
=======
	is_xml_check_found_doctype: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_found_doctype_low_level)
		end

<<<<<<< HEAD
	is_check_found_element: BOOLEAN is
=======
	is_xml_check_found_element: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_found_element_low_level)
		end

<<<<<<< HEAD
	is_check_found_entity: BOOLEAN is
=======
	is_xml_check_found_entity: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_found_entity_low_level)
		end

<<<<<<< HEAD
	is_check_found_entityref: BOOLEAN is
=======
	is_xml_check_found_entityref: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_found_entityref_low_level)
		end

<<<<<<< HEAD
	is_check_found_fragment: BOOLEAN is
=======
	is_xml_check_found_fragment: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_found_fragment_low_level)
		end

<<<<<<< HEAD
	is_check_found_notation: BOOLEAN is
=======
	is_xml_check_found_notation: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_found_notation_low_level)
		end

<<<<<<< HEAD
	is_check_found_pi: BOOLEAN is
=======
	is_xml_check_found_pi: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_found_pi_low_level)
		end

<<<<<<< HEAD
	is_check_found_text: BOOLEAN is
=======
	is_xml_check_found_text: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_found_text_low_level)
		end

<<<<<<< HEAD
	is_check_name_not_null: BOOLEAN is
=======
	is_xml_check_name_not_null: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_name_not_null_low_level)
		end

<<<<<<< HEAD
	is_check_no_dict: BOOLEAN is
=======
	is_xml_check_no_dict: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_no_dict_low_level)
		end

<<<<<<< HEAD
	is_check_no_doc: BOOLEAN is
=======
	is_xml_check_no_doc: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_no_doc_low_level)
		end

<<<<<<< HEAD
	is_check_no_elem: BOOLEAN is
=======
	is_xml_check_no_elem: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_no_elem_low_level)
		end

<<<<<<< HEAD
	is_check_no_href: BOOLEAN is
=======
	is_xml_check_no_href: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_no_href_low_level)
		end

<<<<<<< HEAD
	is_check_no_name: BOOLEAN is
=======
	is_xml_check_no_name: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_no_name_low_level)
		end

<<<<<<< HEAD
	is_check_no_next: BOOLEAN is
=======
	is_xml_check_no_next: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_no_next_low_level)
		end

<<<<<<< HEAD
	is_check_no_parent: BOOLEAN is
=======
	is_xml_check_no_parent: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_no_parent_low_level)
		end

<<<<<<< HEAD
	is_check_no_prev: BOOLEAN is
=======
	is_xml_check_no_prev: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_no_prev_low_level)
		end

<<<<<<< HEAD
	is_check_not_attr: BOOLEAN is
=======
	is_xml_check_not_attr: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_not_attr_low_level)
		end

<<<<<<< HEAD
	is_check_not_attr_decl: BOOLEAN is
=======
	is_xml_check_not_attr_decl: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_not_attr_decl_low_level)
		end

<<<<<<< HEAD
	is_check_not_dtd: BOOLEAN is
=======
	is_xml_check_not_dtd: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_not_dtd_low_level)
		end

<<<<<<< HEAD
	is_check_not_elem_decl: BOOLEAN is
=======
	is_xml_check_not_elem_decl: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_not_elem_decl_low_level)
		end

<<<<<<< HEAD
	is_check_not_entity_decl: BOOLEAN is
=======
	is_xml_check_not_entity_decl: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_not_entity_decl_low_level)
		end

<<<<<<< HEAD
	is_check_not_ncname: BOOLEAN is
=======
	is_xml_check_not_ncname: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_not_ncname_low_level)
		end

<<<<<<< HEAD
	is_check_not_ns_decl: BOOLEAN is
=======
	is_xml_check_not_ns_decl: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_not_ns_decl_low_level)
		end

<<<<<<< HEAD
	is_check_not_utf8: BOOLEAN is
=======
	is_xml_check_not_utf8: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_not_utf8_low_level)
		end

<<<<<<< HEAD
	is_check_ns_ancestor: BOOLEAN is
=======
	is_xml_check_ns_ancestor: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_ns_ancestor_low_level)
		end

<<<<<<< HEAD
	is_check_ns_scope: BOOLEAN is
=======
	is_xml_check_ns_scope: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_ns_scope_low_level)
		end

<<<<<<< HEAD
	is_check_outside_dict: BOOLEAN is
=======
	is_xml_check_outside_dict: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_outside_dict_low_level)
		end

<<<<<<< HEAD
	is_check_unknown_node: BOOLEAN is
=======
	is_xml_check_unknown_node: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_unknown_node_low_level)
		end

<<<<<<< HEAD
	is_check_wrong_doc: BOOLEAN is
=======
	is_xml_check_wrong_doc: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_wrong_doc_low_level)
		end

<<<<<<< HEAD
	is_check_wrong_name: BOOLEAN is
=======
	is_xml_check_wrong_name: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_wrong_name_low_level)
		end

<<<<<<< HEAD
	is_check_wrong_next: BOOLEAN is
=======
	is_xml_check_wrong_next: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_wrong_next_low_level)
		end

<<<<<<< HEAD
	is_check_wrong_parent: BOOLEAN is
=======
	is_xml_check_wrong_parent: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_wrong_parent_low_level)
		end

<<<<<<< HEAD
	is_check_wrong_prev: BOOLEAN is
=======
	is_xml_check_wrong_prev: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=check_wrong_prev_low_level)
		end

<<<<<<< HEAD
	is_dtd_attribute_default: BOOLEAN is
=======
	is_xml_dtd_attribute_default: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_attribute_default_low_level)
		end

<<<<<<< HEAD
	is_dtd_attribute_redefined: BOOLEAN is
=======
	is_xml_dtd_attribute_redefined: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_attribute_redefined_low_level)
		end

<<<<<<< HEAD
	is_dtd_attribute_value: BOOLEAN is
=======
	is_xml_dtd_attribute_value: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_attribute_value_low_level)
		end

<<<<<<< HEAD
	is_dtd_content_error: BOOLEAN is
=======
	is_xml_dtd_content_error: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_content_error_low_level)
		end

<<<<<<< HEAD
	is_dtd_content_model: BOOLEAN is
=======
	is_xml_dtd_content_model: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_content_model_low_level)
		end

<<<<<<< HEAD
	is_dtd_content_not_determinist: BOOLEAN is
=======
	is_xml_dtd_content_not_determinist: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_content_not_determinist_low_level)
		end

<<<<<<< HEAD
	is_dtd_different_prefix: BOOLEAN is
=======
	is_xml_dtd_different_prefix: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_different_prefix_low_level)
		end

<<<<<<< HEAD
	is_dtd_dup_token: BOOLEAN is
=======
	is_xml_dtd_dup_token: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_dup_token_low_level)
		end

<<<<<<< HEAD
	is_dtd_elem_default_namespace: BOOLEAN is
=======
	is_xml_dtd_elem_default_namespace: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_elem_default_namespace_low_level)
		end

<<<<<<< HEAD
	is_dtd_elem_namespace: BOOLEAN is
=======
	is_xml_dtd_elem_namespace: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_elem_namespace_low_level)
		end

<<<<<<< HEAD
	is_dtd_elem_redefined: BOOLEAN is
=======
	is_xml_dtd_elem_redefined: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_elem_redefined_low_level)
		end

<<<<<<< HEAD
	is_dtd_empty_notation: BOOLEAN is
=======
	is_xml_dtd_empty_notation: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_empty_notation_low_level)
		end

<<<<<<< HEAD
	is_dtd_entity_type: BOOLEAN is
=======
	is_xml_dtd_entity_type: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_entity_type_low_level)
		end

<<<<<<< HEAD
	is_dtd_id_fixed: BOOLEAN is
=======
	is_xml_dtd_id_fixed: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_id_fixed_low_level)
		end

<<<<<<< HEAD
	is_dtd_id_redefined: BOOLEAN is
=======
	is_xml_dtd_id_redefined: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_id_redefined_low_level)
		end

<<<<<<< HEAD
	is_dtd_id_subset: BOOLEAN is
=======
	is_xml_dtd_id_subset: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_id_subset_low_level)
		end

<<<<<<< HEAD
	is_dtd_invalid_child: BOOLEAN is
=======
	is_xml_dtd_invalid_child: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_invalid_child_low_level)
		end

<<<<<<< HEAD
	is_dtd_invalid_default: BOOLEAN is
=======
	is_xml_dtd_invalid_default: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_invalid_default_low_level)
		end

<<<<<<< HEAD
	is_dtd_load_error: BOOLEAN is
=======
	is_xml_dtd_load_error: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_load_error_low_level)
		end

<<<<<<< HEAD
	is_dtd_missing_attribute: BOOLEAN is
=======
	is_xml_dtd_missing_attribute: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_missing_attribute_low_level)
		end

<<<<<<< HEAD
	is_dtd_mixed_corrupt: BOOLEAN is
=======
	is_xml_dtd_mixed_corrupt: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_mixed_corrupt_low_level)
		end

<<<<<<< HEAD
	is_dtd_multiple_id: BOOLEAN is
=======
	is_xml_dtd_multiple_id: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_multiple_id_low_level)
		end

<<<<<<< HEAD
	is_dtd_no_doc: BOOLEAN is
=======
	is_xml_dtd_no_doc: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_no_doc_low_level)
		end

<<<<<<< HEAD
	is_dtd_no_dtd: BOOLEAN is
=======
	is_xml_dtd_no_dtd: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_no_dtd_low_level)
		end

<<<<<<< HEAD
	is_dtd_no_elem_name: BOOLEAN is
=======
	is_xml_dtd_no_elem_name: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_no_elem_name_low_level)
		end

<<<<<<< HEAD
	is_dtd_no_prefix: BOOLEAN is
=======
	is_xml_dtd_no_prefix: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_no_prefix_low_level)
		end

<<<<<<< HEAD
	is_dtd_no_root: BOOLEAN is
=======
	is_xml_dtd_no_root: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_no_root_low_level)
		end

<<<<<<< HEAD
	is_dtd_not_empty: BOOLEAN is
=======
	is_xml_dtd_not_empty: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_not_empty_low_level)
		end

<<<<<<< HEAD
	is_dtd_not_pcdata: BOOLEAN is
=======
	is_xml_dtd_not_pcdata: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_not_pcdata_low_level)
		end

<<<<<<< HEAD
	is_dtd_not_standalone: BOOLEAN is
=======
	is_xml_dtd_not_standalone: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_not_standalone_low_level)
		end

<<<<<<< HEAD
	is_dtd_notation_redefined: BOOLEAN is
=======
	is_xml_dtd_notation_redefined: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_notation_redefined_low_level)
		end

<<<<<<< HEAD
	is_dtd_notation_value: BOOLEAN is
=======
	is_xml_dtd_notation_value: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_notation_value_low_level)
		end

<<<<<<< HEAD
	is_dtd_root_name: BOOLEAN is
=======
	is_xml_dtd_root_name: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_root_name_low_level)
		end

<<<<<<< HEAD
	is_dtd_standalone_defaulted: BOOLEAN is
=======
	is_xml_dtd_standalone_defaulted: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_standalone_defaulted_low_level)
		end

<<<<<<< HEAD
	is_dtd_standalone_white_space: BOOLEAN is
=======
	is_xml_dtd_standalone_white_space: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_standalone_white_space_low_level)
		end

<<<<<<< HEAD
	is_dtd_unknown_attribute: BOOLEAN is
=======
	is_xml_dtd_unknown_attribute: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_unknown_attribute_low_level)
		end

<<<<<<< HEAD
	is_dtd_unknown_elem: BOOLEAN is
=======
	is_xml_dtd_unknown_elem: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_unknown_elem_low_level)
		end

<<<<<<< HEAD
	is_dtd_unknown_entity: BOOLEAN is
=======
	is_xml_dtd_unknown_entity: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_unknown_entity_low_level)
		end

<<<<<<< HEAD
	is_dtd_unknown_id: BOOLEAN is
=======
	is_xml_dtd_unknown_id: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_unknown_id_low_level)
		end

<<<<<<< HEAD
	is_dtd_unknown_notation: BOOLEAN is
=======
	is_xml_dtd_unknown_notation: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_unknown_notation_low_level)
		end

<<<<<<< HEAD
	is_dtd_xmlid_type: BOOLEAN is
=======
	is_xml_dtd_xmlid_type: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_xmlid_type_low_level)
		end

<<<<<<< HEAD
	is_dtd_xmlid_value: BOOLEAN is
=======
	is_xml_dtd_xmlid_value: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=dtd_xmlid_value_low_level)
		end

<<<<<<< HEAD
	is_err_attlist_not_finished: BOOLEAN is
=======
	is_xml_err_attlist_not_finished: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_attlist_not_finished_low_level)
		end

<<<<<<< HEAD
	is_err_attlist_not_started: BOOLEAN is
=======
	is_xml_err_attlist_not_started: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_attlist_not_started_low_level)
		end

<<<<<<< HEAD
	is_err_attribute_not_finished: BOOLEAN is
=======
	is_xml_err_attribute_not_finished: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_attribute_not_finished_low_level)
		end

<<<<<<< HEAD
	is_err_attribute_not_started: BOOLEAN is
=======
	is_xml_err_attribute_not_started: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_attribute_not_started_low_level)
		end

<<<<<<< HEAD
	is_err_attribute_redefined: BOOLEAN is
=======
	is_xml_err_attribute_redefined: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_attribute_redefined_low_level)
		end

<<<<<<< HEAD
	is_err_attribute_without_value: BOOLEAN is
=======
	is_xml_err_attribute_without_value: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_attribute_without_value_low_level)
		end

<<<<<<< HEAD
	is_err_cdata_not_finished: BOOLEAN is
=======
	is_xml_err_cdata_not_finished: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_cdata_not_finished_low_level)
		end

<<<<<<< HEAD
	is_err_charref_at_eof: BOOLEAN is
=======
	is_xml_err_charref_at_eof: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_charref_at_eof_low_level)
		end

<<<<<<< HEAD
	is_err_charref_in_dtd: BOOLEAN is
=======
	is_xml_err_charref_in_dtd: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_charref_in_dtd_low_level)
		end

<<<<<<< HEAD
	is_err_charref_in_epilog: BOOLEAN is
=======
	is_xml_err_charref_in_epilog: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_charref_in_epilog_low_level)
		end

<<<<<<< HEAD
	is_err_charref_in_prolog: BOOLEAN is
=======
	is_xml_err_charref_in_prolog: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_charref_in_prolog_low_level)
		end

<<<<<<< HEAD
	is_err_comment_not_finished: BOOLEAN is
=======
	is_xml_err_comment_not_finished: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_comment_not_finished_low_level)
		end

<<<<<<< HEAD
	is_err_condsec_invalid: BOOLEAN is
=======
	is_xml_err_condsec_invalid: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_condsec_invalid_low_level)
		end

<<<<<<< HEAD
	is_err_condsec_invalid_keyword: BOOLEAN is
=======
	is_xml_err_condsec_invalid_keyword: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_condsec_invalid_keyword_low_level)
		end

<<<<<<< HEAD
	is_err_condsec_not_finished: BOOLEAN is
=======
	is_xml_err_condsec_not_finished: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_condsec_not_finished_low_level)
		end

<<<<<<< HEAD
	is_err_condsec_not_started: BOOLEAN is
=======
	is_xml_err_condsec_not_started: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_condsec_not_started_low_level)
		end

<<<<<<< HEAD
	is_err_doctype_not_finished: BOOLEAN is
=======
	is_xml_err_doctype_not_finished: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_doctype_not_finished_low_level)
		end

<<<<<<< HEAD
	is_err_document_empty: BOOLEAN is
=======
	is_xml_err_document_empty: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_document_empty_low_level)
		end

<<<<<<< HEAD
	is_err_document_end: BOOLEAN is
=======
	is_xml_err_document_end: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_document_end_low_level)
		end

<<<<<<< HEAD
	is_err_document_start: BOOLEAN is
=======
	is_xml_err_document_start: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_document_start_low_level)
		end

<<<<<<< HEAD
	is_err_elemcontent_not_finished: BOOLEAN is
=======
	is_xml_err_elemcontent_not_finished: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_elemcontent_not_finished_low_level)
		end

<<<<<<< HEAD
	is_err_elemcontent_not_started: BOOLEAN is
=======
	is_xml_err_elemcontent_not_started: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_elemcontent_not_started_low_level)
		end

<<<<<<< HEAD
	is_err_encoding_name: BOOLEAN is
=======
	is_xml_err_encoding_name: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_encoding_name_low_level)
		end

<<<<<<< HEAD
	is_err_entity_boundary: BOOLEAN is
=======
	is_xml_err_entity_boundary: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_entity_boundary_low_level)
		end

<<<<<<< HEAD
	is_err_entity_char_error: BOOLEAN is
=======
	is_xml_err_entity_char_error: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_entity_char_error_low_level)
		end

<<<<<<< HEAD
	is_err_entity_is_external: BOOLEAN is
=======
	is_xml_err_entity_is_external: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_entity_is_external_low_level)
		end

<<<<<<< HEAD
	is_err_entity_is_parameter: BOOLEAN is
=======
	is_xml_err_entity_is_parameter: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_entity_is_parameter_low_level)
		end

<<<<<<< HEAD
	is_err_entity_loop: BOOLEAN is
=======
	is_xml_err_entity_loop: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_entity_loop_low_level)
		end

<<<<<<< HEAD
	is_err_entity_not_finished: BOOLEAN is
=======
	is_xml_err_entity_not_finished: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_entity_not_finished_low_level)
		end

<<<<<<< HEAD
	is_err_entity_not_started: BOOLEAN is
=======
	is_xml_err_entity_not_started: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_entity_not_started_low_level)
		end

<<<<<<< HEAD
	is_err_entity_pe_internal: BOOLEAN is
=======
	is_xml_err_entity_pe_internal: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_entity_pe_internal_low_level)
		end

<<<<<<< HEAD
	is_err_entity_processing: BOOLEAN is
=======
	is_xml_err_entity_processing: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_entity_processing_low_level)
		end

<<<<<<< HEAD
	is_err_entityref_at_eof: BOOLEAN is
=======
	is_xml_err_entityref_at_eof: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_entityref_at_eof_low_level)
		end

<<<<<<< HEAD
	is_err_entityref_in_dtd: BOOLEAN is
=======
	is_xml_err_entityref_in_dtd: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_entityref_in_dtd_low_level)
		end

<<<<<<< HEAD
	is_err_entityref_in_epilog: BOOLEAN is
=======
	is_xml_err_entityref_in_epilog: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_entityref_in_epilog_low_level)
		end

<<<<<<< HEAD
	is_err_entityref_in_prolog: BOOLEAN is
=======
	is_xml_err_entityref_in_prolog: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_entityref_in_prolog_low_level)
		end

<<<<<<< HEAD
	is_err_entityref_no_name: BOOLEAN is
=======
	is_xml_err_entityref_no_name: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_entityref_no_name_low_level)
		end

<<<<<<< HEAD
	is_err_entityref_semicol_missing: BOOLEAN is
=======
	is_xml_err_entityref_semicol_missing: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_entityref_semicol_missing_low_level)
		end

<<<<<<< HEAD
	is_err_equal_required: BOOLEAN is
=======
	is_xml_err_equal_required: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_equal_required_low_level)
		end

<<<<<<< HEAD
	is_err_ext_entity_standalone: BOOLEAN is
=======
	is_xml_err_ext_entity_standalone: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_ext_entity_standalone_low_level)
		end

<<<<<<< HEAD
	is_err_ext_subset_not_finished: BOOLEAN is
=======
	is_xml_err_ext_subset_not_finished: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_ext_subset_not_finished_low_level)
		end

<<<<<<< HEAD
	is_err_extra_content: BOOLEAN is
=======
	is_xml_err_extra_content: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_extra_content_low_level)
		end

<<<<<<< HEAD
	is_err_gt_required: BOOLEAN is
=======
	is_xml_err_gt_required: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_gt_required_low_level)
		end

<<<<<<< HEAD
	is_err_hyphen_in_comment: BOOLEAN is
=======
	is_xml_err_hyphen_in_comment: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_hyphen_in_comment_low_level)
		end

<<<<<<< HEAD
	is_err_internal_error: BOOLEAN is
=======
	is_xml_err_internal_error: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_internal_error_low_level)
		end

<<<<<<< HEAD
	is_err_invalid_char: BOOLEAN is
=======
	is_xml_err_invalid_char: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_invalid_char_low_level)
		end

<<<<<<< HEAD
	is_err_invalid_charref: BOOLEAN is
=======
	is_xml_err_invalid_charref: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_invalid_charref_low_level)
		end

<<<<<<< HEAD
	is_err_invalid_dec_charref: BOOLEAN is
=======
	is_xml_err_invalid_dec_charref: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_invalid_dec_charref_low_level)
		end

<<<<<<< HEAD
	is_err_invalid_encoding: BOOLEAN is
=======
	is_xml_err_invalid_encoding: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_invalid_encoding_low_level)
		end

<<<<<<< HEAD
	is_err_invalid_hex_charref: BOOLEAN is
=======
	is_xml_err_invalid_hex_charref: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_invalid_hex_charref_low_level)
		end

<<<<<<< HEAD
	is_err_invalid_uri: BOOLEAN is
=======
	is_xml_err_invalid_uri: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_invalid_uri_low_level)
		end

<<<<<<< HEAD
	is_err_literal_not_finished: BOOLEAN is
=======
	is_xml_err_literal_not_finished: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_literal_not_finished_low_level)
		end

<<<<<<< HEAD
	is_err_literal_not_started: BOOLEAN is
=======
	is_xml_err_literal_not_started: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_literal_not_started_low_level)
		end

<<<<<<< HEAD
	is_err_lt_in_attribute: BOOLEAN is
=======
	is_xml_err_lt_in_attribute: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_lt_in_attribute_low_level)
		end

<<<<<<< HEAD
	is_err_lt_required: BOOLEAN is
=======
	is_xml_err_lt_required: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_lt_required_low_level)
		end

<<<<<<< HEAD
	is_err_ltslash_required: BOOLEAN is
=======
	is_xml_err_ltslash_required: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_ltslash_required_low_level)
		end

<<<<<<< HEAD
	is_err_misplaced_cdata_end: BOOLEAN is
=======
	is_xml_err_misplaced_cdata_end: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_misplaced_cdata_end_low_level)
		end

<<<<<<< HEAD
	is_err_missing_encoding: BOOLEAN is
=======
	is_xml_err_missing_encoding: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_missing_encoding_low_level)
		end

<<<<<<< HEAD
	is_err_mixed_not_finished: BOOLEAN is
=======
	is_xml_err_mixed_not_finished: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_mixed_not_finished_low_level)
		end

<<<<<<< HEAD
	is_err_mixed_not_started: BOOLEAN is
=======
	is_xml_err_mixed_not_started: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_mixed_not_started_low_level)
		end

<<<<<<< HEAD
	is_err_name_required: BOOLEAN is
=======
	is_xml_err_name_required: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_name_required_low_level)
		end

<<<<<<< HEAD
	is_err_nmtoken_required: BOOLEAN is
=======
	is_xml_err_nmtoken_required: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_nmtoken_required_low_level)
		end

<<<<<<< HEAD
	is_err_no_dtd: BOOLEAN is
=======
	is_xml_err_no_dtd: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_no_dtd_low_level)
		end

<<<<<<< HEAD
	is_err_no_memory: BOOLEAN is
=======
	is_xml_err_no_memory: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_no_memory_low_level)
		end

<<<<<<< HEAD
	is_err_not_standalone: BOOLEAN is
=======
	is_xml_err_not_standalone: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_not_standalone_low_level)
		end

<<<<<<< HEAD
	is_err_not_well_balanced: BOOLEAN is
=======
	is_xml_err_not_well_balanced: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_not_well_balanced_low_level)
		end

<<<<<<< HEAD
	is_err_notation_not_finished: BOOLEAN is
=======
	is_xml_err_notation_not_finished: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_notation_not_finished_low_level)
		end

<<<<<<< HEAD
	is_err_notation_not_started: BOOLEAN is
=======
	is_xml_err_notation_not_started: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_notation_not_started_low_level)
		end

<<<<<<< HEAD
	is_err_notation_processing: BOOLEAN is
=======
	is_xml_err_notation_processing: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_notation_processing_low_level)
		end

<<<<<<< HEAD
	is_err_ns_decl_error: BOOLEAN is
=======
	is_xml_err_ns_decl_error: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_ns_decl_error_low_level)
		end

<<<<<<< HEAD
	is_err_ok: BOOLEAN is
=======
	is_xml_err_ok: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_ok_low_level)
		end

<<<<<<< HEAD
	is_err_pcdata_required: BOOLEAN is
=======
	is_xml_err_pcdata_required: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_pcdata_required_low_level)
		end

<<<<<<< HEAD
	is_err_peref_at_eof: BOOLEAN is
=======
	is_xml_err_peref_at_eof: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_peref_at_eof_low_level)
		end

<<<<<<< HEAD
	is_err_peref_in_epilog: BOOLEAN is
=======
	is_xml_err_peref_in_epilog: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_peref_in_epilog_low_level)
		end

<<<<<<< HEAD
	is_err_peref_in_int_subset: BOOLEAN is
=======
	is_xml_err_peref_in_int_subset: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_peref_in_int_subset_low_level)
		end

<<<<<<< HEAD
	is_err_peref_in_prolog: BOOLEAN is
=======
	is_xml_err_peref_in_prolog: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_peref_in_prolog_low_level)
		end

<<<<<<< HEAD
	is_err_peref_no_name: BOOLEAN is
=======
	is_xml_err_peref_no_name: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_peref_no_name_low_level)
		end

<<<<<<< HEAD
	is_err_peref_semicol_missing: BOOLEAN is
=======
	is_xml_err_peref_semicol_missing: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_peref_semicol_missing_low_level)
		end

<<<<<<< HEAD
	is_err_pi_not_finished: BOOLEAN is
=======
	is_xml_err_pi_not_finished: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_pi_not_finished_low_level)
		end

<<<<<<< HEAD
	is_err_pi_not_started: BOOLEAN is
=======
	is_xml_err_pi_not_started: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_pi_not_started_low_level)
		end

<<<<<<< HEAD
	is_err_pubid_required: BOOLEAN is
=======
	is_xml_err_pubid_required: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_pubid_required_low_level)
		end

<<<<<<< HEAD
	is_err_reserved_xml_name: BOOLEAN is
=======
	is_xml_err_reserved_xml_name: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_reserved_xml_name_low_level)
		end

<<<<<<< HEAD
	is_err_separator_required: BOOLEAN is
=======
	is_xml_err_separator_required: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_separator_required_low_level)
		end

<<<<<<< HEAD
	is_err_space_required: BOOLEAN is
=======
	is_xml_err_space_required: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_space_required_low_level)
		end

<<<<<<< HEAD
	is_err_standalone_value: BOOLEAN is
=======
	is_xml_err_standalone_value: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_standalone_value_low_level)
		end

<<<<<<< HEAD
	is_err_string_not_closed: BOOLEAN is
=======
	is_xml_err_string_not_closed: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_string_not_closed_low_level)
		end

<<<<<<< HEAD
	is_err_string_not_started: BOOLEAN is
=======
	is_xml_err_string_not_started: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_string_not_started_low_level)
		end

<<<<<<< HEAD
	is_err_tag_name_mismatch: BOOLEAN is
=======
	is_xml_err_tag_name_mismatch: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_tag_name_mismatch_low_level)
		end

<<<<<<< HEAD
	is_err_tag_not_finished: BOOLEAN is
=======
	is_xml_err_tag_not_finished: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_tag_not_finished_low_level)
		end

<<<<<<< HEAD
	is_err_undeclared_entity: BOOLEAN is
=======
	is_xml_err_undeclared_entity: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_undeclared_entity_low_level)
		end

<<<<<<< HEAD
	is_err_unknown_encoding: BOOLEAN is
=======
	is_xml_err_unknown_encoding: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_unknown_encoding_low_level)
		end

<<<<<<< HEAD
	is_err_unknown_version: BOOLEAN is
=======
	is_xml_err_unknown_version: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_unknown_version_low_level)
		end

<<<<<<< HEAD
	is_err_unparsed_entity: BOOLEAN is
=======
	is_xml_err_unparsed_entity: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_unparsed_entity_low_level)
		end

<<<<<<< HEAD
	is_err_unsupported_encoding: BOOLEAN is
=======
	is_xml_err_unsupported_encoding: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_unsupported_encoding_low_level)
		end

<<<<<<< HEAD
	is_err_uri_fragment: BOOLEAN is
=======
	is_xml_err_uri_fragment: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_uri_fragment_low_level)
		end

<<<<<<< HEAD
	is_err_uri_required: BOOLEAN is
=======
	is_xml_err_uri_required: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_uri_required_low_level)
		end

<<<<<<< HEAD
	is_err_value_required: BOOLEAN is
=======
	is_xml_err_value_required: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_value_required_low_level)
		end

<<<<<<< HEAD
	is_err_version_mismatch: BOOLEAN is
=======
	is_xml_err_version_mismatch: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_version_mismatch_low_level)
		end

<<<<<<< HEAD
	is_err_version_missing: BOOLEAN is
=======
	is_xml_err_version_missing: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_version_missing_low_level)
		end

<<<<<<< HEAD
	is_err_xmldecl_not_finished: BOOLEAN is
=======
	is_xml_err_xmldecl_not_finished: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_xmldecl_not_finished_low_level)
		end

<<<<<<< HEAD
	is_err_xmldecl_not_started: BOOLEAN is
=======
	is_xml_err_xmldecl_not_started: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=err_xmldecl_not_started_low_level)
		end

<<<<<<< HEAD
	is_ftp_accnt: BOOLEAN is
=======
	is_xml_ftp_accnt: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=ftp_accnt_low_level)
		end

<<<<<<< HEAD
	is_ftp_epsv_answer: BOOLEAN is
=======
	is_xml_ftp_epsv_answer: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=ftp_epsv_answer_low_level)
		end

<<<<<<< HEAD
	is_ftp_pasv_answer: BOOLEAN is
=======
	is_xml_ftp_pasv_answer: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=ftp_pasv_answer_low_level)
		end

<<<<<<< HEAD
	is_ftp_url_syntax: BOOLEAN is
=======
	is_xml_ftp_url_syntax: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=ftp_url_syntax_low_level)
		end

<<<<<<< HEAD
	is_html_strucure_error: BOOLEAN is
=======
	is_xml_html_strucure_error: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=html_strucure_error_low_level)
		end

<<<<<<< HEAD
	is_html_unknown_tag: BOOLEAN is
=======
	is_xml_html_unknown_tag: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=html_unknown_tag_low_level)
		end

<<<<<<< HEAD
	is_http_unknown_host: BOOLEAN is
=======
	is_xml_http_unknown_host: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=http_unknown_host_low_level)
		end

<<<<<<< HEAD
	is_http_url_syntax: BOOLEAN is
=======
	is_xml_http_url_syntax: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=http_url_syntax_low_level)
		end

<<<<<<< HEAD
	is_http_use_ip: BOOLEAN is
=======
	is_xml_http_use_ip: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=http_use_ip_low_level)
		end

<<<<<<< HEAD
	is_i18n_conv_failed: BOOLEAN is
=======
	is_xml_i18n_conv_failed: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=i18n_conv_failed_low_level)
		end

<<<<<<< HEAD
	is_i18n_excess_handler: BOOLEAN is
=======
	is_xml_i18n_excess_handler: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=i18n_excess_handler_low_level)
		end

<<<<<<< HEAD
	is_i18n_no_handler: BOOLEAN is
=======
	is_xml_i18n_no_handler: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=i18n_no_handler_low_level)
		end

<<<<<<< HEAD
	is_i18n_no_name: BOOLEAN is
=======
	is_xml_i18n_no_name: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=i18n_no_name_low_level)
		end

<<<<<<< HEAD
	is_i18n_no_output: BOOLEAN is
=======
	is_xml_i18n_no_output: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=i18n_no_output_low_level)
		end

<<<<<<< HEAD
	is_io_buffer_full: BOOLEAN is
=======
	is_xml_io_buffer_full: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_buffer_full_low_level)
		end

<<<<<<< HEAD
	is_io_eacces: BOOLEAN is
=======
	is_xml_io_eacces: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_eacces_low_level)
		end

<<<<<<< HEAD
	is_io_eaddrinuse: BOOLEAN is
=======
	is_xml_io_eaddrinuse: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_eaddrinuse_low_level)
		end

<<<<<<< HEAD
	is_io_eafnosupport: BOOLEAN is
=======
	is_xml_io_eafnosupport: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_eafnosupport_low_level)
		end

<<<<<<< HEAD
	is_io_eagain: BOOLEAN is
=======
	is_xml_io_eagain: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_eagain_low_level)
		end

<<<<<<< HEAD
	is_io_ealready: BOOLEAN is
=======
	is_xml_io_ealready: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_ealready_low_level)
		end

<<<<<<< HEAD
	is_io_ebadf: BOOLEAN is
=======
	is_xml_io_ebadf: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_ebadf_low_level)
		end

<<<<<<< HEAD
	is_io_ebadmsg: BOOLEAN is
=======
	is_xml_io_ebadmsg: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_ebadmsg_low_level)
		end

<<<<<<< HEAD
	is_io_ebusy: BOOLEAN is
=======
	is_xml_io_ebusy: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_ebusy_low_level)
		end

<<<<<<< HEAD
	is_io_ecanceled: BOOLEAN is
=======
	is_xml_io_ecanceled: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_ecanceled_low_level)
		end

<<<<<<< HEAD
	is_io_echild: BOOLEAN is
=======
	is_xml_io_echild: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_echild_low_level)
		end

<<<<<<< HEAD
	is_io_econnrefused: BOOLEAN is
=======
	is_xml_io_econnrefused: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_econnrefused_low_level)
		end

<<<<<<< HEAD
	is_io_edeadlk: BOOLEAN is
=======
	is_xml_io_edeadlk: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_edeadlk_low_level)
		end

<<<<<<< HEAD
	is_io_edom: BOOLEAN is
=======
	is_xml_io_edom: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_edom_low_level)
		end

<<<<<<< HEAD
	is_io_eexist: BOOLEAN is
=======
	is_xml_io_eexist: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_eexist_low_level)
		end

<<<<<<< HEAD
	is_io_efault: BOOLEAN is
=======
	is_xml_io_efault: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_efault_low_level)
		end

<<<<<<< HEAD
	is_io_efbig: BOOLEAN is
=======
	is_xml_io_efbig: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_efbig_low_level)
		end

<<<<<<< HEAD
	is_io_einprogress: BOOLEAN is
=======
	is_xml_io_einprogress: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_einprogress_low_level)
		end

<<<<<<< HEAD
	is_io_eintr: BOOLEAN is
=======
	is_xml_io_eintr: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_eintr_low_level)
		end

<<<<<<< HEAD
	is_io_einval: BOOLEAN is
=======
	is_xml_io_einval: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_einval_low_level)
		end

<<<<<<< HEAD
	is_io_eio: BOOLEAN is
=======
	is_xml_io_eio: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_eio_low_level)
		end

<<<<<<< HEAD
	is_io_eisconn: BOOLEAN is
=======
	is_xml_io_eisconn: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_eisconn_low_level)
		end

<<<<<<< HEAD
	is_io_eisdir: BOOLEAN is
=======
	is_xml_io_eisdir: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_eisdir_low_level)
		end

<<<<<<< HEAD
	is_io_emfile: BOOLEAN is
=======
	is_xml_io_emfile: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_emfile_low_level)
		end

<<<<<<< HEAD
	is_io_emlink: BOOLEAN is
=======
	is_xml_io_emlink: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_emlink_low_level)
		end

<<<<<<< HEAD
	is_io_emsgsize: BOOLEAN is
=======
	is_xml_io_emsgsize: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_emsgsize_low_level)
		end

<<<<<<< HEAD
	is_io_enametoolong: BOOLEAN is
=======
	is_xml_io_enametoolong: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_enametoolong_low_level)
		end

<<<<<<< HEAD
	is_io_encoder: BOOLEAN is
=======
	is_xml_io_encoder: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_encoder_low_level)
		end

<<<<<<< HEAD
	is_io_enetunreach: BOOLEAN is
=======
	is_xml_io_enetunreach: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_enetunreach_low_level)
		end

<<<<<<< HEAD
	is_io_enfile: BOOLEAN is
=======
	is_xml_io_enfile: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_enfile_low_level)
		end

<<<<<<< HEAD
	is_io_enodev: BOOLEAN is
=======
	is_xml_io_enodev: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_enodev_low_level)
		end

<<<<<<< HEAD
	is_io_enoent: BOOLEAN is
=======
	is_xml_io_enoent: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_enoent_low_level)
		end

<<<<<<< HEAD
	is_io_enoexec: BOOLEAN is
=======
	is_xml_io_enoexec: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_enoexec_low_level)
		end

<<<<<<< HEAD
	is_io_enolck: BOOLEAN is
=======
	is_xml_io_enolck: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_enolck_low_level)
		end

<<<<<<< HEAD
	is_io_enomem: BOOLEAN is
=======
	is_xml_io_enomem: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_enomem_low_level)
		end

<<<<<<< HEAD
	is_io_enospc: BOOLEAN is
=======
	is_xml_io_enospc: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_enospc_low_level)
		end

<<<<<<< HEAD
	is_io_enosys: BOOLEAN is
=======
	is_xml_io_enosys: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_enosys_low_level)
		end

<<<<<<< HEAD
	is_io_enotdir: BOOLEAN is
=======
	is_xml_io_enotdir: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_enotdir_low_level)
		end

<<<<<<< HEAD
	is_io_enotempty: BOOLEAN is
=======
	is_xml_io_enotempty: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_enotempty_low_level)
		end

<<<<<<< HEAD
	is_io_enotsock: BOOLEAN is
=======
	is_xml_io_enotsock: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_enotsock_low_level)
		end

<<<<<<< HEAD
	is_io_enotsup: BOOLEAN is
=======
	is_xml_io_enotsup: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_enotsup_low_level)
		end

<<<<<<< HEAD
	is_io_enotty: BOOLEAN is
=======
	is_xml_io_enotty: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_enotty_low_level)
		end

<<<<<<< HEAD
	is_io_enxio: BOOLEAN is
=======
	is_xml_io_enxio: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_enxio_low_level)
		end

<<<<<<< HEAD
	is_io_eperm: BOOLEAN is
=======
	is_xml_io_eperm: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_eperm_low_level)
		end

<<<<<<< HEAD
	is_io_epipe: BOOLEAN is
=======
	is_xml_io_epipe: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_epipe_low_level)
		end

<<<<<<< HEAD
	is_io_erange: BOOLEAN is
=======
	is_xml_io_erange: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_erange_low_level)
		end

<<<<<<< HEAD
	is_io_erofs: BOOLEAN is
=======
	is_xml_io_erofs: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_erofs_low_level)
		end

<<<<<<< HEAD
	is_io_espipe: BOOLEAN is
=======
	is_xml_io_espipe: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_espipe_low_level)
		end

<<<<<<< HEAD
	is_io_esrch: BOOLEAN is
=======
	is_xml_io_esrch: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_esrch_low_level)
		end

<<<<<<< HEAD
	is_io_etimedout: BOOLEAN is
=======
	is_xml_io_etimedout: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_etimedout_low_level)
		end

<<<<<<< HEAD
	is_io_exdev: BOOLEAN is
=======
	is_xml_io_exdev: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_exdev_low_level)
		end

<<<<<<< HEAD
	is_io_flush: BOOLEAN is
=======
	is_xml_io_flush: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_flush_low_level)
		end

<<<<<<< HEAD
	is_io_load_error: BOOLEAN is
=======
	is_xml_io_load_error: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_load_error_low_level)
		end

<<<<<<< HEAD
	is_io_network_attempt: BOOLEAN is
=======
	is_xml_io_network_attempt: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_network_attempt_low_level)
		end

<<<<<<< HEAD
	is_io_no_input: BOOLEAN is
=======
	is_xml_io_no_input: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_no_input_low_level)
		end

<<<<<<< HEAD
	is_io_unknown: BOOLEAN is
=======
	is_xml_io_unknown: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_unknown_low_level)
		end

<<<<<<< HEAD
	is_io_write: BOOLEAN is
=======
	is_xml_io_write: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_write_low_level)
		end

<<<<<<< HEAD
	is_module_close: BOOLEAN is
=======
	is_xml_module_close: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=module_close_low_level)
		end

<<<<<<< HEAD
	is_module_open: BOOLEAN is
=======
	is_xml_module_open: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=module_open_low_level)
		end

<<<<<<< HEAD
	is_ns_err_attribute_redefined: BOOLEAN is
=======
	is_xml_ns_err_attribute_redefined: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=ns_err_attribute_redefined_low_level)
		end

<<<<<<< HEAD
	is_ns_err_colon: BOOLEAN is
=======
	is_xml_ns_err_colon: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=ns_err_colon_low_level)
		end

<<<<<<< HEAD
	is_ns_err_empty: BOOLEAN is
=======
	is_xml_ns_err_empty: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=ns_err_empty_low_level)
		end

<<<<<<< HEAD
	is_ns_err_qname: BOOLEAN is
=======
	is_xml_ns_err_qname: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=ns_err_qname_low_level)
		end

<<<<<<< HEAD
	is_ns_err_undefined_namespace: BOOLEAN is
=======
	is_xml_ns_err_undefined_namespace: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=ns_err_undefined_namespace_low_level)
		end

<<<<<<< HEAD
	is_ns_err_xml_namespace: BOOLEAN is
=======
	is_xml_ns_err_xml_namespace: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=ns_err_xml_namespace_low_level)
		end

<<<<<<< HEAD
	is_regexp_compile_error: BOOLEAN is
=======
	is_xml_regexp_compile_error: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=regexp_compile_error_low_level)
		end

<<<<<<< HEAD
	is_rngp_anyname_attr_ancestor: BOOLEAN is
=======
	is_xml_rngp_anyname_attr_ancestor: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_anyname_attr_ancestor_low_level)
		end

<<<<<<< HEAD
	is_rngp_attr_conflict: BOOLEAN is
=======
	is_xml_rngp_attr_conflict: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_attr_conflict_low_level)
		end

<<<<<<< HEAD
	is_rngp_attribute_children: BOOLEAN is
=======
	is_xml_rngp_attribute_children: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_attribute_children_low_level)
		end

<<<<<<< HEAD
	is_rngp_attribute_content: BOOLEAN is
=======
	is_xml_rngp_attribute_content: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_attribute_content_low_level)
		end

<<<<<<< HEAD
	is_rngp_attribute_empty: BOOLEAN is
=======
	is_xml_rngp_attribute_empty: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_attribute_empty_low_level)
		end

<<<<<<< HEAD
	is_rngp_attribute_noop: BOOLEAN is
=======
	is_xml_rngp_attribute_noop: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_attribute_noop_low_level)
		end

<<<<<<< HEAD
	is_rngp_choice_content: BOOLEAN is
=======
	is_xml_rngp_choice_content: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_choice_content_low_level)
		end

<<<<<<< HEAD
	is_rngp_choice_empty: BOOLEAN is
=======
	is_xml_rngp_choice_empty: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_choice_empty_low_level)
		end

<<<<<<< HEAD
	is_rngp_create_failure: BOOLEAN is
=======
	is_xml_rngp_create_failure: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_create_failure_low_level)
		end

<<<<<<< HEAD
	is_rngp_data_content: BOOLEAN is
=======
	is_xml_rngp_data_content: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_data_content_low_level)
		end

<<<<<<< HEAD
	is_rngp_def_choice_and_interleave: BOOLEAN is
=======
	is_xml_rngp_def_choice_and_interleave: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_def_choice_and_interleave_low_level)
		end

<<<<<<< HEAD
	is_rngp_define_create_failed: BOOLEAN is
=======
	is_xml_rngp_define_create_failed: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_define_create_failed_low_level)
		end

<<<<<<< HEAD
	is_rngp_define_empty: BOOLEAN is
=======
	is_xml_rngp_define_empty: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_define_empty_low_level)
		end

<<<<<<< HEAD
	is_rngp_define_missing: BOOLEAN is
=======
	is_xml_rngp_define_missing: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_define_missing_low_level)
		end

<<<<<<< HEAD
	is_rngp_define_name_missing: BOOLEAN is
=======
	is_xml_rngp_define_name_missing: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_define_name_missing_low_level)
		end

<<<<<<< HEAD
	is_rngp_elem_content_empty: BOOLEAN is
=======
	is_xml_rngp_elem_content_empty: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_elem_content_empty_low_level)
		end

<<<<<<< HEAD
	is_rngp_elem_content_error: BOOLEAN is
=======
	is_xml_rngp_elem_content_error: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_elem_content_error_low_level)
		end

<<<<<<< HEAD
	is_rngp_elem_text_conflict: BOOLEAN is
=======
	is_xml_rngp_elem_text_conflict: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_elem_text_conflict_low_level)
		end

<<<<<<< HEAD
	is_rngp_element_content: BOOLEAN is
=======
	is_xml_rngp_element_content: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_element_content_low_level)
		end

<<<<<<< HEAD
	is_rngp_element_empty: BOOLEAN is
=======
	is_xml_rngp_element_empty: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_element_empty_low_level)
		end

<<<<<<< HEAD
	is_rngp_element_name: BOOLEAN is
=======
	is_xml_rngp_element_name: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_element_name_low_level)
		end

<<<<<<< HEAD
	is_rngp_element_no_content: BOOLEAN is
=======
	is_xml_rngp_element_no_content: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_element_no_content_low_level)
		end

<<<<<<< HEAD
	is_rngp_empty: BOOLEAN is
=======
	is_xml_rngp_empty: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_empty_low_level)
		end

<<<<<<< HEAD
	is_rngp_empty_construct: BOOLEAN is
=======
	is_xml_rngp_empty_construct: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_empty_construct_low_level)
		end

<<<<<<< HEAD
	is_rngp_empty_content: BOOLEAN is
=======
	is_xml_rngp_empty_content: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_empty_content_low_level)
		end

<<<<<<< HEAD
	is_rngp_empty_not_empty: BOOLEAN is
=======
	is_xml_rngp_empty_not_empty: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_empty_not_empty_low_level)
		end

<<<<<<< HEAD
	is_rngp_error_type_lib: BOOLEAN is
=======
	is_xml_rngp_error_type_lib: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_error_type_lib_low_level)
		end

<<<<<<< HEAD
	is_rngp_except_empty: BOOLEAN is
=======
	is_xml_rngp_except_empty: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_except_empty_low_level)
		end

<<<<<<< HEAD
	is_rngp_except_missing: BOOLEAN is
=======
	is_xml_rngp_except_missing: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_except_missing_low_level)
		end

<<<<<<< HEAD
	is_rngp_except_multiple: BOOLEAN is
=======
	is_xml_rngp_except_multiple: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_except_multiple_low_level)
		end

<<<<<<< HEAD
	is_rngp_except_no_content: BOOLEAN is
=======
	is_xml_rngp_except_no_content: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_except_no_content_low_level)
		end

<<<<<<< HEAD
	is_rngp_external_ref_failure: BOOLEAN is
=======
	is_xml_rngp_external_ref_failure: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_external_ref_failure_low_level)
		end

<<<<<<< HEAD
	is_rngp_externalref_emtpy: BOOLEAN is
=======
	is_xml_rngp_externalref_emtpy: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_externalref_emtpy_low_level)
		end

<<<<<<< HEAD
	is_rngp_externalref_recurse: BOOLEAN is
=======
	is_xml_rngp_externalref_recurse: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_externalref_recurse_low_level)
		end

<<<<<<< HEAD
	is_rngp_forbidden_attribute: BOOLEAN is
=======
	is_xml_rngp_forbidden_attribute: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_forbidden_attribute_low_level)
		end

<<<<<<< HEAD
	is_rngp_foreign_element: BOOLEAN is
=======
	is_xml_rngp_foreign_element: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_foreign_element_low_level)
		end

<<<<<<< HEAD
	is_rngp_grammar_content: BOOLEAN is
=======
	is_xml_rngp_grammar_content: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_grammar_content_low_level)
		end

<<<<<<< HEAD
	is_rngp_grammar_empty: BOOLEAN is
=======
	is_xml_rngp_grammar_empty: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_grammar_empty_low_level)
		end

<<<<<<< HEAD
	is_rngp_grammar_missing: BOOLEAN is
=======
	is_xml_rngp_grammar_missing: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_grammar_missing_low_level)
		end

<<<<<<< HEAD
	is_rngp_grammar_no_start: BOOLEAN is
=======
	is_xml_rngp_grammar_no_start: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_grammar_no_start_low_level)
		end

<<<<<<< HEAD
	is_rngp_group_attr_conflict: BOOLEAN is
=======
	is_xml_rngp_group_attr_conflict: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_group_attr_conflict_low_level)
		end

<<<<<<< HEAD
	is_rngp_href_error: BOOLEAN is
=======
	is_xml_rngp_href_error: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_href_error_low_level)
		end

<<<<<<< HEAD
	is_rngp_include_empty: BOOLEAN is
=======
	is_xml_rngp_include_empty: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_include_empty_low_level)
		end

<<<<<<< HEAD
	is_rngp_include_failure: BOOLEAN is
=======
	is_xml_rngp_include_failure: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_include_failure_low_level)
		end

<<<<<<< HEAD
	is_rngp_include_recurse: BOOLEAN is
=======
	is_xml_rngp_include_recurse: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_include_recurse_low_level)
		end

<<<<<<< HEAD
	is_rngp_interleave_add: BOOLEAN is
=======
	is_xml_rngp_interleave_add: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_interleave_add_low_level)
		end

<<<<<<< HEAD
	is_rngp_interleave_create_failed: BOOLEAN is
=======
	is_xml_rngp_interleave_create_failed: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_interleave_create_failed_low_level)
		end

<<<<<<< HEAD
	is_rngp_interleave_empty: BOOLEAN is
=======
	is_xml_rngp_interleave_empty: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_interleave_empty_low_level)
		end

<<<<<<< HEAD
	is_rngp_interleave_no_content: BOOLEAN is
=======
	is_xml_rngp_interleave_no_content: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_interleave_no_content_low_level)
		end

<<<<<<< HEAD
	is_rngp_invalid_define_name: BOOLEAN is
=======
	is_xml_rngp_invalid_define_name: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_invalid_define_name_low_level)
		end

<<<<<<< HEAD
	is_rngp_invalid_uri: BOOLEAN is
=======
	is_xml_rngp_invalid_uri: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_invalid_uri_low_level)
		end

<<<<<<< HEAD
	is_rngp_invalid_value: BOOLEAN is
=======
	is_xml_rngp_invalid_value: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_invalid_value_low_level)
		end

<<<<<<< HEAD
	is_rngp_missing_href: BOOLEAN is
=======
	is_xml_rngp_missing_href: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_missing_href_low_level)
		end

<<<<<<< HEAD
	is_rngp_name_missing: BOOLEAN is
=======
	is_xml_rngp_name_missing: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_name_missing_low_level)
		end

<<<<<<< HEAD
	is_rngp_need_combine: BOOLEAN is
=======
	is_xml_rngp_need_combine: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_need_combine_low_level)
		end

<<<<<<< HEAD
	is_rngp_notallowed_not_empty: BOOLEAN is
=======
	is_xml_rngp_notallowed_not_empty: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_notallowed_not_empty_low_level)
		end

<<<<<<< HEAD
	is_rngp_nsname_attr_ancestor: BOOLEAN is
=======
	is_xml_rngp_nsname_attr_ancestor: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_nsname_attr_ancestor_low_level)
		end

<<<<<<< HEAD
	is_rngp_nsname_no_ns: BOOLEAN is
=======
	is_xml_rngp_nsname_no_ns: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_nsname_no_ns_low_level)
		end

<<<<<<< HEAD
	is_rngp_param_forbidden: BOOLEAN is
=======
	is_xml_rngp_param_forbidden: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_param_forbidden_low_level)
		end

<<<<<<< HEAD
	is_rngp_param_name_missing: BOOLEAN is
=======
	is_xml_rngp_param_name_missing: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_param_name_missing_low_level)
		end

<<<<<<< HEAD
	is_rngp_parentref_create_failed: BOOLEAN is
=======
	is_xml_rngp_parentref_create_failed: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_parentref_create_failed_low_level)
		end

<<<<<<< HEAD
	is_rngp_parentref_name_invalid: BOOLEAN is
=======
	is_xml_rngp_parentref_name_invalid: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_parentref_name_invalid_low_level)
		end

<<<<<<< HEAD
	is_rngp_parentref_no_name: BOOLEAN is
=======
	is_xml_rngp_parentref_no_name: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_parentref_no_name_low_level)
		end

<<<<<<< HEAD
	is_rngp_parentref_no_parent: BOOLEAN is
=======
	is_xml_rngp_parentref_no_parent: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_parentref_no_parent_low_level)
		end

<<<<<<< HEAD
	is_rngp_parentref_not_empty: BOOLEAN is
=======
	is_xml_rngp_parentref_not_empty: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_parentref_not_empty_low_level)
		end

<<<<<<< HEAD
	is_rngp_parse_error: BOOLEAN is
=======
	is_xml_rngp_parse_error: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_parse_error_low_level)
		end

<<<<<<< HEAD
	is_rngp_pat_anyname_except_anyname: BOOLEAN is
=======
	is_xml_rngp_pat_anyname_except_anyname: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_pat_anyname_except_anyname_low_level)
		end

<<<<<<< HEAD
	is_rngp_pat_attr_attr: BOOLEAN is
=======
	is_xml_rngp_pat_attr_attr: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_pat_attr_attr_low_level)
		end

<<<<<<< HEAD
	is_rngp_pat_attr_elem: BOOLEAN is
=======
	is_xml_rngp_pat_attr_elem: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_pat_attr_elem_low_level)
		end

<<<<<<< HEAD
	is_rngp_pat_data_except_attr: BOOLEAN is
=======
	is_xml_rngp_pat_data_except_attr: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_pat_data_except_attr_low_level)
		end

<<<<<<< HEAD
	is_rngp_pat_data_except_elem: BOOLEAN is
=======
	is_xml_rngp_pat_data_except_elem: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_pat_data_except_elem_low_level)
		end

<<<<<<< HEAD
	is_rngp_pat_data_except_empty: BOOLEAN is
=======
	is_xml_rngp_pat_data_except_empty: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_pat_data_except_empty_low_level)
		end

<<<<<<< HEAD
	is_rngp_pat_data_except_group: BOOLEAN is
=======
	is_xml_rngp_pat_data_except_group: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_pat_data_except_group_low_level)
		end

<<<<<<< HEAD
	is_rngp_pat_data_except_interleave: BOOLEAN is
=======
	is_xml_rngp_pat_data_except_interleave: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_pat_data_except_interleave_low_level)
		end

<<<<<<< HEAD
	is_rngp_pat_data_except_list: BOOLEAN is
=======
	is_xml_rngp_pat_data_except_list: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_pat_data_except_list_low_level)
		end

<<<<<<< HEAD
	is_rngp_pat_data_except_onemore: BOOLEAN is
=======
	is_xml_rngp_pat_data_except_onemore: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_pat_data_except_onemore_low_level)
		end

<<<<<<< HEAD
	is_rngp_pat_data_except_ref: BOOLEAN is
=======
	is_xml_rngp_pat_data_except_ref: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_pat_data_except_ref_low_level)
		end

<<<<<<< HEAD
	is_rngp_pat_data_except_text: BOOLEAN is
=======
	is_xml_rngp_pat_data_except_text: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_pat_data_except_text_low_level)
		end

<<<<<<< HEAD
	is_rngp_pat_list_attr: BOOLEAN is
=======
	is_xml_rngp_pat_list_attr: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_pat_list_attr_low_level)
		end

<<<<<<< HEAD
	is_rngp_pat_list_elem: BOOLEAN is
=======
	is_xml_rngp_pat_list_elem: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_pat_list_elem_low_level)
		end

<<<<<<< HEAD
	is_rngp_pat_list_interleave: BOOLEAN is
=======
	is_xml_rngp_pat_list_interleave: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_pat_list_interleave_low_level)
		end

<<<<<<< HEAD
	is_rngp_pat_list_list: BOOLEAN is
=======
	is_xml_rngp_pat_list_list: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_pat_list_list_low_level)
		end

<<<<<<< HEAD
	is_rngp_pat_list_ref: BOOLEAN is
=======
	is_xml_rngp_pat_list_ref: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_pat_list_ref_low_level)
		end

<<<<<<< HEAD
	is_rngp_pat_list_text: BOOLEAN is
=======
	is_xml_rngp_pat_list_text: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_pat_list_text_low_level)
		end

<<<<<<< HEAD
	is_rngp_pat_nsname_except_anyname: BOOLEAN is
=======
	is_xml_rngp_pat_nsname_except_anyname: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_pat_nsname_except_anyname_low_level)
		end

<<<<<<< HEAD
	is_rngp_pat_nsname_except_nsname: BOOLEAN is
=======
	is_xml_rngp_pat_nsname_except_nsname: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_pat_nsname_except_nsname_low_level)
		end

<<<<<<< HEAD
	is_rngp_pat_onemore_group_attr: BOOLEAN is
=======
	is_xml_rngp_pat_onemore_group_attr: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_pat_onemore_group_attr_low_level)
		end

<<<<<<< HEAD
	is_rngp_pat_onemore_interleave_attr: BOOLEAN is
=======
	is_xml_rngp_pat_onemore_interleave_attr: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_pat_onemore_interleave_attr_low_level)
		end

<<<<<<< HEAD
	is_rngp_pat_start_attr: BOOLEAN is
=======
	is_xml_rngp_pat_start_attr: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_pat_start_attr_low_level)
		end

<<<<<<< HEAD
	is_rngp_pat_start_data: BOOLEAN is
=======
	is_xml_rngp_pat_start_data: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_pat_start_data_low_level)
		end

<<<<<<< HEAD
	is_rngp_pat_start_empty: BOOLEAN is
=======
	is_xml_rngp_pat_start_empty: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_pat_start_empty_low_level)
		end

<<<<<<< HEAD
	is_rngp_pat_start_group: BOOLEAN is
=======
	is_xml_rngp_pat_start_group: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_pat_start_group_low_level)
		end

<<<<<<< HEAD
	is_rngp_pat_start_interleave: BOOLEAN is
=======
	is_xml_rngp_pat_start_interleave: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_pat_start_interleave_low_level)
		end

<<<<<<< HEAD
	is_rngp_pat_start_list: BOOLEAN is
=======
	is_xml_rngp_pat_start_list: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_pat_start_list_low_level)
		end

<<<<<<< HEAD
	is_rngp_pat_start_onemore: BOOLEAN is
=======
	is_xml_rngp_pat_start_onemore: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_pat_start_onemore_low_level)
		end

<<<<<<< HEAD
	is_rngp_pat_start_text: BOOLEAN is
=======
	is_xml_rngp_pat_start_text: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_pat_start_text_low_level)
		end

<<<<<<< HEAD
	is_rngp_pat_start_value: BOOLEAN is
=======
	is_xml_rngp_pat_start_value: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_pat_start_value_low_level)
		end

<<<<<<< HEAD
	is_rngp_prefix_undefined: BOOLEAN is
=======
	is_xml_rngp_prefix_undefined: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_prefix_undefined_low_level)
		end

<<<<<<< HEAD
	is_rngp_ref_create_failed: BOOLEAN is
=======
	is_xml_rngp_ref_create_failed: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_ref_create_failed_low_level)
		end

<<<<<<< HEAD
	is_rngp_ref_cycle: BOOLEAN is
=======
	is_xml_rngp_ref_cycle: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_ref_cycle_low_level)
		end

<<<<<<< HEAD
	is_rngp_ref_name_invalid: BOOLEAN is
=======
	is_xml_rngp_ref_name_invalid: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_ref_name_invalid_low_level)
		end

<<<<<<< HEAD
	is_rngp_ref_no_def: BOOLEAN is
=======
	is_xml_rngp_ref_no_def: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_ref_no_def_low_level)
		end

<<<<<<< HEAD
	is_rngp_ref_no_name: BOOLEAN is
=======
	is_xml_rngp_ref_no_name: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_ref_no_name_low_level)
		end

<<<<<<< HEAD
	is_rngp_ref_not_empty: BOOLEAN is
=======
	is_xml_rngp_ref_not_empty: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_ref_not_empty_low_level)
		end

<<<<<<< HEAD
	is_rngp_start_choice_and_interleave: BOOLEAN is
=======
	is_xml_rngp_start_choice_and_interleave: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_start_choice_and_interleave_low_level)
		end

<<<<<<< HEAD
	is_rngp_start_content: BOOLEAN is
=======
	is_xml_rngp_start_content: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_start_content_low_level)
		end

<<<<<<< HEAD
	is_rngp_start_empty: BOOLEAN is
=======
	is_xml_rngp_start_empty: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_start_empty_low_level)
		end

<<<<<<< HEAD
	is_rngp_start_missing: BOOLEAN is
=======
	is_xml_rngp_start_missing: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_start_missing_low_level)
		end

<<<<<<< HEAD
	is_rngp_text_expected: BOOLEAN is
=======
	is_xml_rngp_text_expected: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_text_expected_low_level)
		end

<<<<<<< HEAD
	is_rngp_text_has_child: BOOLEAN is
=======
	is_xml_rngp_text_has_child: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_text_has_child_low_level)
		end

<<<<<<< HEAD
	is_rngp_type_missing: BOOLEAN is
=======
	is_xml_rngp_type_missing: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_type_missing_low_level)
		end

<<<<<<< HEAD
	is_rngp_type_not_found: BOOLEAN is
=======
	is_xml_rngp_type_not_found: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_type_not_found_low_level)
		end

<<<<<<< HEAD
	is_rngp_type_value: BOOLEAN is
=======
	is_xml_rngp_type_value: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_type_value_low_level)
		end

<<<<<<< HEAD
	is_rngp_unknown_attribute: BOOLEAN is
=======
	is_xml_rngp_unknown_attribute: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_unknown_attribute_low_level)
		end

<<<<<<< HEAD
	is_rngp_unknown_combine: BOOLEAN is
=======
	is_xml_rngp_unknown_combine: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_unknown_combine_low_level)
		end

<<<<<<< HEAD
	is_rngp_unknown_construct: BOOLEAN is
=======
	is_xml_rngp_unknown_construct: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_unknown_construct_low_level)
		end

<<<<<<< HEAD
	is_rngp_unknown_type_lib: BOOLEAN is
=======
	is_xml_rngp_unknown_type_lib: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_unknown_type_lib_low_level)
		end

<<<<<<< HEAD
	is_rngp_uri_fragment: BOOLEAN is
=======
	is_xml_rngp_uri_fragment: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_uri_fragment_low_level)
		end

<<<<<<< HEAD
	is_rngp_uri_not_absolute: BOOLEAN is
=======
	is_xml_rngp_uri_not_absolute: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_uri_not_absolute_low_level)
		end

<<<<<<< HEAD
	is_rngp_value_empty: BOOLEAN is
=======
	is_xml_rngp_value_empty: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_value_empty_low_level)
		end

<<<<<<< HEAD
	is_rngp_value_no_content: BOOLEAN is
=======
	is_xml_rngp_value_no_content: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_value_no_content_low_level)
		end

<<<<<<< HEAD
	is_rngp_xml_ns: BOOLEAN is
=======
	is_xml_rngp_xml_ns: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_xml_ns_low_level)
		end

<<<<<<< HEAD
	is_rngp_xmlns_name: BOOLEAN is
=======
	is_xml_rngp_xmlns_name: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=rngp_xmlns_name_low_level)
		end

<<<<<<< HEAD
	is_save_char_invalid: BOOLEAN is
=======
	is_xml_save_char_invalid: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=save_char_invalid_low_level)
		end

<<<<<<< HEAD
	is_save_no_doctype: BOOLEAN is
=======
	is_xml_save_no_doctype: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=save_no_doctype_low_level)
		end

<<<<<<< HEAD
	is_save_not_utf8: BOOLEAN is
=======
	is_xml_save_not_utf8: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=save_not_utf8_low_level)
		end

<<<<<<< HEAD
	is_save_unknown_encoding: BOOLEAN is
=======
	is_xml_save_unknown_encoding: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=save_unknown_encoding_low_level)
		end

<<<<<<< HEAD
	is_schemap_a_props_correct_2: BOOLEAN is
=======
	is_xml_schemap_a_props_correct_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_a_props_correct_2_low_level)
		end

<<<<<<< HEAD
	is_schemap_a_props_correct_3: BOOLEAN is
=======
	is_xml_schemap_a_props_correct_3: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_a_props_correct_3_low_level)
		end

<<<<<<< HEAD
	is_schemap_ag_props_correct: BOOLEAN is
=======
	is_xml_schemap_ag_props_correct: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_ag_props_correct_low_level)
		end

<<<<<<< HEAD
	is_schemap_attr_noname_noref: BOOLEAN is
=======
	is_xml_schemap_attr_noname_noref: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_attr_noname_noref_low_level)
		end

<<<<<<< HEAD
	is_schemap_attrformdefault_value: BOOLEAN is
=======
	is_xml_schemap_attrformdefault_value: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_attrformdefault_value_low_level)
		end

<<<<<<< HEAD
	is_schemap_attrgrp_noname_noref: BOOLEAN is
=======
	is_xml_schemap_attrgrp_noname_noref: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_attrgrp_noname_noref_low_level)
		end

<<<<<<< HEAD
	is_schemap_au_props_correct: BOOLEAN is
=======
	is_xml_schemap_au_props_correct: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_au_props_correct_low_level)
		end

<<<<<<< HEAD
	is_schemap_au_props_correct_2: BOOLEAN is
=======
	is_xml_schemap_au_props_correct_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_au_props_correct_2_low_level)
		end

<<<<<<< HEAD
	is_schemap_c_props_correct: BOOLEAN is
=======
	is_xml_schemap_c_props_correct: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_c_props_correct_low_level)
		end

<<<<<<< HEAD
	is_schemap_complextype_noname_noref: BOOLEAN is
=======
	is_xml_schemap_complextype_noname_noref: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_complextype_noname_noref_low_level)
		end

<<<<<<< HEAD
	is_schemap_cos_all_limited: BOOLEAN is
=======
	is_xml_schemap_cos_all_limited: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_cos_all_limited_low_level)
		end

<<<<<<< HEAD
	is_schemap_cos_ct_extends_1_1: BOOLEAN is
=======
	is_xml_schemap_cos_ct_extends_1_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_cos_ct_extends_1_1_low_level)
		end

<<<<<<< HEAD
	is_schemap_cos_ct_extends_1_2: BOOLEAN is
=======
	is_xml_schemap_cos_ct_extends_1_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_cos_ct_extends_1_2_low_level)
		end

<<<<<<< HEAD
	is_schemap_cos_ct_extends_1_3: BOOLEAN is
=======
	is_xml_schemap_cos_ct_extends_1_3: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_cos_ct_extends_1_3_low_level)
		end

<<<<<<< HEAD
	is_schemap_cos_st_derived_ok_2_1: BOOLEAN is
=======
	is_xml_schemap_cos_st_derived_ok_2_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_cos_st_derived_ok_2_1_low_level)
		end

<<<<<<< HEAD
	is_schemap_cos_st_derived_ok_2_2: BOOLEAN is
=======
	is_xml_schemap_cos_st_derived_ok_2_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_cos_st_derived_ok_2_2_low_level)
		end

<<<<<<< HEAD
	is_schemap_cos_st_restricts_1_1: BOOLEAN is
=======
	is_xml_schemap_cos_st_restricts_1_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_cos_st_restricts_1_1_low_level)
		end

<<<<<<< HEAD
	is_schemap_cos_st_restricts_1_2: BOOLEAN is
=======
	is_xml_schemap_cos_st_restricts_1_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_cos_st_restricts_1_2_low_level)
		end

<<<<<<< HEAD
	is_schemap_cos_st_restricts_1_3_1: BOOLEAN is
=======
	is_xml_schemap_cos_st_restricts_1_3_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_cos_st_restricts_1_3_1_low_level)
		end

<<<<<<< HEAD
	is_schemap_cos_st_restricts_1_3_2: BOOLEAN is
=======
	is_xml_schemap_cos_st_restricts_1_3_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_cos_st_restricts_1_3_2_low_level)
		end

<<<<<<< HEAD
	is_schemap_cos_st_restricts_2_1: BOOLEAN is
=======
	is_xml_schemap_cos_st_restricts_2_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_cos_st_restricts_2_1_low_level)
		end

<<<<<<< HEAD
	is_schemap_cos_st_restricts_2_3_1_1: BOOLEAN is
=======
	is_xml_schemap_cos_st_restricts_2_3_1_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_cos_st_restricts_2_3_1_1_low_level)
		end

<<<<<<< HEAD
	is_schemap_cos_st_restricts_2_3_1_2: BOOLEAN is
=======
	is_xml_schemap_cos_st_restricts_2_3_1_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_cos_st_restricts_2_3_1_2_low_level)
		end

<<<<<<< HEAD
	is_schemap_cos_st_restricts_2_3_2_1: BOOLEAN is
=======
	is_xml_schemap_cos_st_restricts_2_3_2_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_cos_st_restricts_2_3_2_1_low_level)
		end

<<<<<<< HEAD
	is_schemap_cos_st_restricts_2_3_2_2: BOOLEAN is
=======
	is_xml_schemap_cos_st_restricts_2_3_2_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_cos_st_restricts_2_3_2_2_low_level)
		end

<<<<<<< HEAD
	is_schemap_cos_st_restricts_2_3_2_3: BOOLEAN is
=======
	is_xml_schemap_cos_st_restricts_2_3_2_3: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_cos_st_restricts_2_3_2_3_low_level)
		end

<<<<<<< HEAD
	is_schemap_cos_st_restricts_2_3_2_4: BOOLEAN is
=======
	is_xml_schemap_cos_st_restricts_2_3_2_4: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_cos_st_restricts_2_3_2_4_low_level)
		end

<<<<<<< HEAD
	is_schemap_cos_st_restricts_2_3_2_5: BOOLEAN is
=======
	is_xml_schemap_cos_st_restricts_2_3_2_5: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_cos_st_restricts_2_3_2_5_low_level)
		end

<<<<<<< HEAD
	is_schemap_cos_st_restricts_3_1: BOOLEAN is
=======
	is_xml_schemap_cos_st_restricts_3_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_cos_st_restricts_3_1_low_level)
		end

<<<<<<< HEAD
	is_schemap_cos_st_restricts_3_3_1: BOOLEAN is
=======
	is_xml_schemap_cos_st_restricts_3_3_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_cos_st_restricts_3_3_1_low_level)
		end

<<<<<<< HEAD
	is_schemap_cos_st_restricts_3_3_1_2: BOOLEAN is
=======
	is_xml_schemap_cos_st_restricts_3_3_1_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_cos_st_restricts_3_3_1_2_low_level)
		end

<<<<<<< HEAD
	is_schemap_cos_st_restricts_3_3_2_1: BOOLEAN is
=======
	is_xml_schemap_cos_st_restricts_3_3_2_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_cos_st_restricts_3_3_2_1_low_level)
		end

<<<<<<< HEAD
	is_schemap_cos_st_restricts_3_3_2_2: BOOLEAN is
=======
	is_xml_schemap_cos_st_restricts_3_3_2_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_cos_st_restricts_3_3_2_2_low_level)
		end

<<<<<<< HEAD
	is_schemap_cos_st_restricts_3_3_2_3: BOOLEAN is
=======
	is_xml_schemap_cos_st_restricts_3_3_2_3: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_cos_st_restricts_3_3_2_3_low_level)
		end

<<<<<<< HEAD
	is_schemap_cos_st_restricts_3_3_2_4: BOOLEAN is
=======
	is_xml_schemap_cos_st_restricts_3_3_2_4: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_cos_st_restricts_3_3_2_4_low_level)
		end

<<<<<<< HEAD
	is_schemap_cos_st_restricts_3_3_2_5: BOOLEAN is
=======
	is_xml_schemap_cos_st_restricts_3_3_2_5: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_cos_st_restricts_3_3_2_5_low_level)
		end

<<<<<<< HEAD
	is_schemap_cos_valid_default_1: BOOLEAN is
=======
	is_xml_schemap_cos_valid_default_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_cos_valid_default_1_low_level)
		end

<<<<<<< HEAD
	is_schemap_cos_valid_default_2_1: BOOLEAN is
=======
	is_xml_schemap_cos_valid_default_2_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_cos_valid_default_2_1_low_level)
		end

<<<<<<< HEAD
	is_schemap_cos_valid_default_2_2_1: BOOLEAN is
=======
	is_xml_schemap_cos_valid_default_2_2_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_cos_valid_default_2_2_1_low_level)
		end

<<<<<<< HEAD
	is_schemap_cos_valid_default_2_2_2: BOOLEAN is
=======
	is_xml_schemap_cos_valid_default_2_2_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_cos_valid_default_2_2_2_low_level)
		end

<<<<<<< HEAD
	is_schemap_ct_props_correct_1: BOOLEAN is
=======
	is_xml_schemap_ct_props_correct_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_ct_props_correct_1_low_level)
		end

<<<<<<< HEAD
	is_schemap_ct_props_correct_2: BOOLEAN is
=======
	is_xml_schemap_ct_props_correct_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_ct_props_correct_2_low_level)
		end

<<<<<<< HEAD
	is_schemap_ct_props_correct_3: BOOLEAN is
=======
	is_xml_schemap_ct_props_correct_3: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_ct_props_correct_3_low_level)
		end

<<<<<<< HEAD
	is_schemap_ct_props_correct_4: BOOLEAN is
=======
	is_xml_schemap_ct_props_correct_4: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_ct_props_correct_4_low_level)
		end

<<<<<<< HEAD
	is_schemap_ct_props_correct_5: BOOLEAN is
=======
	is_xml_schemap_ct_props_correct_5: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_ct_props_correct_5_low_level)
		end

<<<<<<< HEAD
	is_schemap_cvc_simple_type: BOOLEAN is
=======
	is_xml_schemap_cvc_simple_type: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_cvc_simple_type_low_level)
		end

<<<<<<< HEAD
	is_schemap_def_and_prefix: BOOLEAN is
=======
	is_xml_schemap_def_and_prefix: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_def_and_prefix_low_level)
		end

<<<<<<< HEAD
	is_schemap_derivation_ok_restriction_1: BOOLEAN is
=======
	is_xml_schemap_derivation_ok_restriction_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_derivation_ok_restriction_1_low_level)
		end

<<<<<<< HEAD
	is_schemap_derivation_ok_restriction_2_1_1: BOOLEAN is
=======
	is_xml_schemap_derivation_ok_restriction_2_1_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_derivation_ok_restriction_2_1_1_low_level)
		end

<<<<<<< HEAD
	is_schemap_derivation_ok_restriction_2_1_2: BOOLEAN is
=======
	is_xml_schemap_derivation_ok_restriction_2_1_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_derivation_ok_restriction_2_1_2_low_level)
		end

<<<<<<< HEAD
	is_schemap_derivation_ok_restriction_2_1_3: BOOLEAN is
=======
	is_xml_schemap_derivation_ok_restriction_2_1_3: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_derivation_ok_restriction_2_1_3_low_level)
		end

<<<<<<< HEAD
	is_schemap_derivation_ok_restriction_2_2: BOOLEAN is
=======
	is_xml_schemap_derivation_ok_restriction_2_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_derivation_ok_restriction_2_2_low_level)
		end

<<<<<<< HEAD
	is_schemap_derivation_ok_restriction_3: BOOLEAN is
=======
	is_xml_schemap_derivation_ok_restriction_3: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_derivation_ok_restriction_3_low_level)
		end

<<<<<<< HEAD
	is_schemap_derivation_ok_restriction_4_1: BOOLEAN is
=======
	is_xml_schemap_derivation_ok_restriction_4_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_derivation_ok_restriction_4_1_low_level)
		end

<<<<<<< HEAD
	is_schemap_derivation_ok_restriction_4_2: BOOLEAN is
=======
	is_xml_schemap_derivation_ok_restriction_4_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_derivation_ok_restriction_4_2_low_level)
		end

<<<<<<< HEAD
	is_schemap_derivation_ok_restriction_4_3: BOOLEAN is
=======
	is_xml_schemap_derivation_ok_restriction_4_3: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_derivation_ok_restriction_4_3_low_level)
		end

<<<<<<< HEAD
	is_schemap_e_props_correct_2: BOOLEAN is
=======
	is_xml_schemap_e_props_correct_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_e_props_correct_2_low_level)
		end

<<<<<<< HEAD
	is_schemap_e_props_correct_3: BOOLEAN is
=======
	is_xml_schemap_e_props_correct_3: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_e_props_correct_3_low_level)
		end

<<<<<<< HEAD
	is_schemap_e_props_correct_4: BOOLEAN is
=======
	is_xml_schemap_e_props_correct_4: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_e_props_correct_4_low_level)
		end

<<<<<<< HEAD
	is_schemap_e_props_correct_5: BOOLEAN is
=======
	is_xml_schemap_e_props_correct_5: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_e_props_correct_5_low_level)
		end

<<<<<<< HEAD
	is_schemap_e_props_correct_6: BOOLEAN is
=======
	is_xml_schemap_e_props_correct_6: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_e_props_correct_6_low_level)
		end

<<<<<<< HEAD
	is_schemap_elem_default_fixed: BOOLEAN is
=======
	is_xml_schemap_elem_default_fixed: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_elem_default_fixed_low_level)
		end

<<<<<<< HEAD
	is_schemap_elem_noname_noref: BOOLEAN is
=======
	is_xml_schemap_elem_noname_noref: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_elem_noname_noref_low_level)
		end

<<<<<<< HEAD
	is_schemap_elemformdefault_value: BOOLEAN is
=======
	is_xml_schemap_elemformdefault_value: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_elemformdefault_value_low_level)
		end

<<<<<<< HEAD
	is_schemap_extension_no_base: BOOLEAN is
=======
	is_xml_schemap_extension_no_base: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_extension_no_base_low_level)
		end

<<<<<<< HEAD
	is_schemap_facet_no_value: BOOLEAN is
=======
	is_xml_schemap_facet_no_value: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_facet_no_value_low_level)
		end

<<<<<<< HEAD
	is_schemap_failed_build_import: BOOLEAN is
=======
	is_xml_schemap_failed_build_import: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_failed_build_import_low_level)
		end

<<<<<<< HEAD
	is_schemap_failed_load: BOOLEAN is
=======
	is_xml_schemap_failed_load: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_failed_load_low_level)
		end

<<<<<<< HEAD
	is_schemap_failed_parse: BOOLEAN is
=======
	is_xml_schemap_failed_parse: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_failed_parse_low_level)
		end

<<<<<<< HEAD
	is_schemap_group_noname_noref: BOOLEAN is
=======
	is_xml_schemap_group_noname_noref: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_group_noname_noref_low_level)
		end

<<<<<<< HEAD
	is_schemap_import_namespace_not_uri: BOOLEAN is
=======
	is_xml_schemap_import_namespace_not_uri: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_import_namespace_not_uri_low_level)
		end

<<<<<<< HEAD
	is_schemap_import_redefine_nsname: BOOLEAN is
=======
	is_xml_schemap_import_redefine_nsname: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_import_redefine_nsname_low_level)
		end

<<<<<<< HEAD
	is_schemap_import_schema_not_uri: BOOLEAN is
=======
	is_xml_schemap_import_schema_not_uri: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_import_schema_not_uri_low_level)
		end

<<<<<<< HEAD
	is_schemap_include_schema_no_uri: BOOLEAN is
=======
	is_xml_schemap_include_schema_no_uri: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_include_schema_no_uri_low_level)
		end

<<<<<<< HEAD
	is_schemap_include_schema_not_uri: BOOLEAN is
=======
	is_xml_schemap_include_schema_not_uri: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_include_schema_not_uri_low_level)
		end

<<<<<<< HEAD
	is_schemap_internal: BOOLEAN is
=======
	is_xml_schemap_internal: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_internal_low_level)
		end

<<<<<<< HEAD
	is_schemap_intersection_not_expressible: BOOLEAN is
=======
	is_xml_schemap_intersection_not_expressible: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_intersection_not_expressible_low_level)
		end

<<<<<<< HEAD
	is_schemap_invalid_attr_combination: BOOLEAN is
=======
	is_xml_schemap_invalid_attr_combination: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_invalid_attr_combination_low_level)
		end

<<<<<<< HEAD
	is_schemap_invalid_attr_inline_combination: BOOLEAN is
=======
	is_xml_schemap_invalid_attr_inline_combination: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_invalid_attr_inline_combination_low_level)
		end

<<<<<<< HEAD
	is_schemap_invalid_attr_name: BOOLEAN is
=======
	is_xml_schemap_invalid_attr_name: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_invalid_attr_name_low_level)
		end

<<<<<<< HEAD
	is_schemap_invalid_attr_use: BOOLEAN is
=======
	is_xml_schemap_invalid_attr_use: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_invalid_attr_use_low_level)
		end

<<<<<<< HEAD
	is_schemap_invalid_boolean: BOOLEAN is
=======
	is_xml_schemap_invalid_boolean: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_invalid_boolean_low_level)
		end

<<<<<<< HEAD
	is_schemap_invalid_enum: BOOLEAN is
=======
	is_xml_schemap_invalid_enum: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_invalid_enum_low_level)
		end

<<<<<<< HEAD
	is_schemap_invalid_facet: BOOLEAN is
=======
	is_xml_schemap_invalid_facet: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_invalid_facet_low_level)
		end

<<<<<<< HEAD
	is_schemap_invalid_facet_value: BOOLEAN is
=======
	is_xml_schemap_invalid_facet_value: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_invalid_facet_value_low_level)
		end

<<<<<<< HEAD
	is_schemap_invalid_maxoccurs: BOOLEAN is
=======
	is_xml_schemap_invalid_maxoccurs: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_invalid_maxoccurs_low_level)
		end

<<<<<<< HEAD
	is_schemap_invalid_minoccurs: BOOLEAN is
=======
	is_xml_schemap_invalid_minoccurs: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_invalid_minoccurs_low_level)
		end

<<<<<<< HEAD
	is_schemap_invalid_ref_and_subtype: BOOLEAN is
=======
	is_xml_schemap_invalid_ref_and_subtype: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_invalid_ref_and_subtype_low_level)
		end

<<<<<<< HEAD
	is_schemap_invalid_white_space: BOOLEAN is
=======
	is_xml_schemap_invalid_white_space: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_invalid_white_space_low_level)
		end

<<<<<<< HEAD
	is_schemap_mg_props_correct_1: BOOLEAN is
=======
	is_xml_schemap_mg_props_correct_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_mg_props_correct_1_low_level)
		end

<<<<<<< HEAD
	is_schemap_mg_props_correct_2: BOOLEAN is
=======
	is_xml_schemap_mg_props_correct_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_mg_props_correct_2_low_level)
		end

<<<<<<< HEAD
	is_schemap_missing_simpletype_child: BOOLEAN is
=======
	is_xml_schemap_missing_simpletype_child: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_missing_simpletype_child_low_level)
		end

<<<<<<< HEAD
	is_schemap_no_xmlns: BOOLEAN is
=======
	is_xml_schemap_no_xmlns: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_no_xmlns_low_level)
		end

<<<<<<< HEAD
	is_schemap_no_xsi: BOOLEAN is
=======
	is_xml_schemap_no_xsi: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_no_xsi_low_level)
		end

<<<<<<< HEAD
	is_schemap_noattr_noref: BOOLEAN is
=======
	is_xml_schemap_noattr_noref: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_noattr_noref_low_level)
		end

<<<<<<< HEAD
	is_schemap_noroot: BOOLEAN is
=======
	is_xml_schemap_noroot: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_noroot_low_level)
		end

<<<<<<< HEAD
	is_schemap_not_deterministic: BOOLEAN is
=======
	is_xml_schemap_not_deterministic: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_not_deterministic_low_level)
		end

<<<<<<< HEAD
	is_schemap_not_schema: BOOLEAN is
=======
	is_xml_schemap_not_schema: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_not_schema_low_level)
		end

<<<<<<< HEAD
	is_schemap_notation_no_name: BOOLEAN is
=======
	is_xml_schemap_notation_no_name: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_notation_no_name_low_level)
		end

<<<<<<< HEAD
	is_schemap_nothing_to_parse: BOOLEAN is
=======
	is_xml_schemap_nothing_to_parse: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_nothing_to_parse_low_level)
		end

<<<<<<< HEAD
	is_schemap_notype_noref: BOOLEAN is
=======
	is_xml_schemap_notype_noref: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_notype_noref_low_level)
		end

<<<<<<< HEAD
	is_schemap_p_props_correct_1: BOOLEAN is
=======
	is_xml_schemap_p_props_correct_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_p_props_correct_1_low_level)
		end

<<<<<<< HEAD
	is_schemap_p_props_correct_2_1: BOOLEAN is
=======
	is_xml_schemap_p_props_correct_2_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_p_props_correct_2_1_low_level)
		end

<<<<<<< HEAD
	is_schemap_p_props_correct_2_2: BOOLEAN is
=======
	is_xml_schemap_p_props_correct_2_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_p_props_correct_2_2_low_level)
		end

<<<<<<< HEAD
	is_schemap_prefix_undefined: BOOLEAN is
=======
	is_xml_schemap_prefix_undefined: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_prefix_undefined_low_level)
		end

<<<<<<< HEAD
	is_schemap_recursive: BOOLEAN is
=======
	is_xml_schemap_recursive: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_recursive_low_level)
		end

<<<<<<< HEAD
	is_schemap_redefined_attr: BOOLEAN is
=======
	is_xml_schemap_redefined_attr: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_redefined_attr_low_level)
		end

<<<<<<< HEAD
	is_schemap_redefined_attrgroup: BOOLEAN is
=======
	is_xml_schemap_redefined_attrgroup: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_redefined_attrgroup_low_level)
		end

<<<<<<< HEAD
	is_schemap_redefined_element: BOOLEAN is
=======
	is_xml_schemap_redefined_element: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_redefined_element_low_level)
		end

<<<<<<< HEAD
	is_schemap_redefined_group: BOOLEAN is
=======
	is_xml_schemap_redefined_group: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_redefined_group_low_level)
		end

<<<<<<< HEAD
	is_schemap_redefined_notation: BOOLEAN is
=======
	is_xml_schemap_redefined_notation: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_redefined_notation_low_level)
		end

<<<<<<< HEAD
	is_schemap_redefined_type: BOOLEAN is
=======
	is_xml_schemap_redefined_type: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_redefined_type_low_level)
		end

<<<<<<< HEAD
	is_schemap_ref_and_content: BOOLEAN is
=======
	is_xml_schemap_ref_and_content: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_ref_and_content_low_level)
		end

<<<<<<< HEAD
	is_schemap_ref_and_subtype: BOOLEAN is
=======
	is_xml_schemap_ref_and_subtype: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_ref_and_subtype_low_level)
		end

<<<<<<< HEAD
	is_schemap_regexp_invalid: BOOLEAN is
=======
	is_xml_schemap_regexp_invalid: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_regexp_invalid_low_level)
		end

<<<<<<< HEAD
	is_schemap_restriction_noname_noref: BOOLEAN is
=======
	is_xml_schemap_restriction_noname_noref: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_restriction_noname_noref_low_level)
		end

<<<<<<< HEAD
	is_schemap_s4s_attr_invalid_value: BOOLEAN is
=======
	is_xml_schemap_s4s_attr_invalid_value: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_s4s_attr_invalid_value_low_level)
		end

<<<<<<< HEAD
	is_schemap_s4s_attr_missing: BOOLEAN is
=======
	is_xml_schemap_s4s_attr_missing: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_s4s_attr_missing_low_level)
		end

<<<<<<< HEAD
	is_schemap_s4s_attr_not_allowed: BOOLEAN is
=======
	is_xml_schemap_s4s_attr_not_allowed: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_s4s_attr_not_allowed_low_level)
		end

<<<<<<< HEAD
	is_schemap_s4s_elem_missing: BOOLEAN is
=======
	is_xml_schemap_s4s_elem_missing: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_s4s_elem_missing_low_level)
		end

<<<<<<< HEAD
	is_schemap_s4s_elem_not_allowed: BOOLEAN is
=======
	is_xml_schemap_s4s_elem_not_allowed: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_s4s_elem_not_allowed_low_level)
		end

<<<<<<< HEAD
	is_schemap_simpletype_noname: BOOLEAN is
=======
	is_xml_schemap_simpletype_noname: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_simpletype_noname_low_level)
		end

<<<<<<< HEAD
	is_schemap_src_attribute_1: BOOLEAN is
=======
	is_xml_schemap_src_attribute_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_src_attribute_1_low_level)
		end

<<<<<<< HEAD
	is_schemap_src_attribute_2: BOOLEAN is
=======
	is_xml_schemap_src_attribute_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_src_attribute_2_low_level)
		end

<<<<<<< HEAD
	is_schemap_src_attribute_3_1: BOOLEAN is
=======
	is_xml_schemap_src_attribute_3_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_src_attribute_3_1_low_level)
		end

<<<<<<< HEAD
	is_schemap_src_attribute_3_2: BOOLEAN is
=======
	is_xml_schemap_src_attribute_3_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_src_attribute_3_2_low_level)
		end

<<<<<<< HEAD
	is_schemap_src_attribute_4: BOOLEAN is
=======
	is_xml_schemap_src_attribute_4: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_src_attribute_4_low_level)
		end

<<<<<<< HEAD
	is_schemap_src_attribute_group_1: BOOLEAN is
=======
	is_xml_schemap_src_attribute_group_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_src_attribute_group_1_low_level)
		end

<<<<<<< HEAD
	is_schemap_src_attribute_group_2: BOOLEAN is
=======
	is_xml_schemap_src_attribute_group_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_src_attribute_group_2_low_level)
		end

<<<<<<< HEAD
	is_schemap_src_attribute_group_3: BOOLEAN is
=======
	is_xml_schemap_src_attribute_group_3: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_src_attribute_group_3_low_level)
		end

<<<<<<< HEAD
	is_schemap_src_ct_1: BOOLEAN is
=======
	is_xml_schemap_src_ct_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_src_ct_1_low_level)
		end

<<<<<<< HEAD
	is_schemap_src_element_1: BOOLEAN is
=======
	is_xml_schemap_src_element_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_src_element_1_low_level)
		end

<<<<<<< HEAD
	is_schemap_src_element_2_1: BOOLEAN is
=======
	is_xml_schemap_src_element_2_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_src_element_2_1_low_level)
		end

<<<<<<< HEAD
	is_schemap_src_element_2_2: BOOLEAN is
=======
	is_xml_schemap_src_element_2_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_src_element_2_2_low_level)
		end

<<<<<<< HEAD
	is_schemap_src_element_3: BOOLEAN is
=======
	is_xml_schemap_src_element_3: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_src_element_3_low_level)
		end

<<<<<<< HEAD
	is_schemap_src_import: BOOLEAN is
=======
	is_xml_schemap_src_import: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_src_import_low_level)
		end

<<<<<<< HEAD
	is_schemap_src_import_1_1: BOOLEAN is
=======
	is_xml_schemap_src_import_1_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_src_import_1_1_low_level)
		end

<<<<<<< HEAD
	is_schemap_src_import_1_2: BOOLEAN is
=======
	is_xml_schemap_src_import_1_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_src_import_1_2_low_level)
		end

<<<<<<< HEAD
	is_schemap_src_import_2: BOOLEAN is
=======
	is_xml_schemap_src_import_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_src_import_2_low_level)
		end

<<<<<<< HEAD
	is_schemap_src_import_2_1: BOOLEAN is
=======
	is_xml_schemap_src_import_2_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_src_import_2_1_low_level)
		end

<<<<<<< HEAD
	is_schemap_src_import_2_2: BOOLEAN is
=======
	is_xml_schemap_src_import_2_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_src_import_2_2_low_level)
		end

<<<<<<< HEAD
	is_schemap_src_import_3_1: BOOLEAN is
=======
	is_xml_schemap_src_import_3_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_src_import_3_1_low_level)
		end

<<<<<<< HEAD
	is_schemap_src_import_3_2: BOOLEAN is
=======
	is_xml_schemap_src_import_3_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_src_import_3_2_low_level)
		end

<<<<<<< HEAD
	is_schemap_src_include: BOOLEAN is
=======
	is_xml_schemap_src_include: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_src_include_low_level)
		end

<<<<<<< HEAD
	is_schemap_src_list_itemtype_or_simpletype: BOOLEAN is
=======
	is_xml_schemap_src_list_itemtype_or_simpletype: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_src_list_itemtype_or_simpletype_low_level)
		end

<<<<<<< HEAD
	is_schemap_src_redefine: BOOLEAN is
=======
	is_xml_schemap_src_redefine: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_src_redefine_low_level)
		end

<<<<<<< HEAD
	is_schemap_src_resolve: BOOLEAN is
=======
	is_xml_schemap_src_resolve: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_src_resolve_low_level)
		end

<<<<<<< HEAD
	is_schemap_src_restriction_base_or_simpletype: BOOLEAN is
=======
	is_xml_schemap_src_restriction_base_or_simpletype: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_src_restriction_base_or_simpletype_low_level)
		end

<<<<<<< HEAD
	is_schemap_src_simple_type_1: BOOLEAN is
=======
	is_xml_schemap_src_simple_type_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_src_simple_type_1_low_level)
		end

<<<<<<< HEAD
	is_schemap_src_simple_type_2: BOOLEAN is
=======
	is_xml_schemap_src_simple_type_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_src_simple_type_2_low_level)
		end

<<<<<<< HEAD
	is_schemap_src_simple_type_3: BOOLEAN is
=======
	is_xml_schemap_src_simple_type_3: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_src_simple_type_3_low_level)
		end

<<<<<<< HEAD
	is_schemap_src_simple_type_4: BOOLEAN is
=======
	is_xml_schemap_src_simple_type_4: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_src_simple_type_4_low_level)
		end

<<<<<<< HEAD
	is_schemap_src_union_membertypes_or_simpletypes: BOOLEAN is
=======
	is_xml_schemap_src_union_membertypes_or_simpletypes: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_src_union_membertypes_or_simpletypes_low_level)
		end

<<<<<<< HEAD
	is_schemap_st_props_correct_1: BOOLEAN is
=======
	is_xml_schemap_st_props_correct_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_st_props_correct_1_low_level)
		end

<<<<<<< HEAD
	is_schemap_st_props_correct_2: BOOLEAN is
=======
	is_xml_schemap_st_props_correct_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_st_props_correct_2_low_level)
		end

<<<<<<< HEAD
	is_schemap_st_props_correct_3: BOOLEAN is
=======
	is_xml_schemap_st_props_correct_3: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_st_props_correct_3_low_level)
		end

<<<<<<< HEAD
	is_schemap_supernumerous_list_item_type: BOOLEAN is
=======
	is_xml_schemap_supernumerous_list_item_type: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_supernumerous_list_item_type_low_level)
		end

<<<<<<< HEAD
	is_schemap_type_and_subtype: BOOLEAN is
=======
	is_xml_schemap_type_and_subtype: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_type_and_subtype_low_level)
		end

<<<<<<< HEAD
	is_schemap_union_not_expressible: BOOLEAN is
=======
	is_xml_schemap_union_not_expressible: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_union_not_expressible_low_level)
		end

<<<<<<< HEAD
	is_schemap_unknown_all_child: BOOLEAN is
=======
	is_xml_schemap_unknown_all_child: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_unknown_all_child_low_level)
		end

<<<<<<< HEAD
	is_schemap_unknown_anyattribute_child: BOOLEAN is
=======
	is_xml_schemap_unknown_anyattribute_child: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_unknown_anyattribute_child_low_level)
		end

<<<<<<< HEAD
	is_schemap_unknown_attr_child: BOOLEAN is
=======
	is_xml_schemap_unknown_attr_child: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_unknown_attr_child_low_level)
		end

<<<<<<< HEAD
	is_schemap_unknown_attrgrp_child: BOOLEAN is
=======
	is_xml_schemap_unknown_attrgrp_child: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_unknown_attrgrp_child_low_level)
		end

<<<<<<< HEAD
	is_schemap_unknown_attribute_group: BOOLEAN is
=======
	is_xml_schemap_unknown_attribute_group: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_unknown_attribute_group_low_level)
		end

<<<<<<< HEAD
	is_schemap_unknown_base_type: BOOLEAN is
=======
	is_xml_schemap_unknown_base_type: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_unknown_base_type_low_level)
		end

<<<<<<< HEAD
	is_schemap_unknown_choice_child: BOOLEAN is
=======
	is_xml_schemap_unknown_choice_child: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_unknown_choice_child_low_level)
		end

<<<<<<< HEAD
	is_schemap_unknown_complexcontent_child: BOOLEAN is
=======
	is_xml_schemap_unknown_complexcontent_child: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_unknown_complexcontent_child_low_level)
		end

<<<<<<< HEAD
	is_schemap_unknown_complextype_child: BOOLEAN is
=======
	is_xml_schemap_unknown_complextype_child: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_unknown_complextype_child_low_level)
		end

<<<<<<< HEAD
	is_schemap_unknown_elem_child: BOOLEAN is
=======
	is_xml_schemap_unknown_elem_child: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_unknown_elem_child_low_level)
		end

<<<<<<< HEAD
	is_schemap_unknown_extension_child: BOOLEAN is
=======
	is_xml_schemap_unknown_extension_child: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_unknown_extension_child_low_level)
		end

<<<<<<< HEAD
	is_schemap_unknown_facet_child: BOOLEAN is
=======
	is_xml_schemap_unknown_facet_child: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_unknown_facet_child_low_level)
		end

<<<<<<< HEAD
	is_schemap_unknown_facet_type: BOOLEAN is
=======
	is_xml_schemap_unknown_facet_type: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_unknown_facet_type_low_level)
		end

<<<<<<< HEAD
	is_schemap_unknown_group_child: BOOLEAN is
=======
	is_xml_schemap_unknown_group_child: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_unknown_group_child_low_level)
		end

<<<<<<< HEAD
	is_schemap_unknown_import_child: BOOLEAN is
=======
	is_xml_schemap_unknown_import_child: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_unknown_import_child_low_level)
		end

<<<<<<< HEAD
	is_schemap_unknown_include_child: BOOLEAN is
=======
	is_xml_schemap_unknown_include_child: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_unknown_include_child_low_level)
		end

<<<<<<< HEAD
	is_schemap_unknown_list_child: BOOLEAN is
=======
	is_xml_schemap_unknown_list_child: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_unknown_list_child_low_level)
		end

<<<<<<< HEAD
	is_schemap_unknown_member_type: BOOLEAN is
=======
	is_xml_schemap_unknown_member_type: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_unknown_member_type_low_level)
		end

<<<<<<< HEAD
	is_schemap_unknown_notation_child: BOOLEAN is
=======
	is_xml_schemap_unknown_notation_child: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_unknown_notation_child_low_level)
		end

<<<<<<< HEAD
	is_schemap_unknown_prefix: BOOLEAN is
=======
	is_xml_schemap_unknown_prefix: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_unknown_prefix_low_level)
		end

<<<<<<< HEAD
	is_schemap_unknown_processcontent_child: BOOLEAN is
=======
	is_xml_schemap_unknown_processcontent_child: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_unknown_processcontent_child_low_level)
		end

<<<<<<< HEAD
	is_schemap_unknown_ref: BOOLEAN is
=======
	is_xml_schemap_unknown_ref: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_unknown_ref_low_level)
		end

<<<<<<< HEAD
	is_schemap_unknown_restriction_child: BOOLEAN is
=======
	is_xml_schemap_unknown_restriction_child: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_unknown_restriction_child_low_level)
		end

<<<<<<< HEAD
	is_schemap_unknown_schemas_child: BOOLEAN is
=======
	is_xml_schemap_unknown_schemas_child: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_unknown_schemas_child_low_level)
		end

<<<<<<< HEAD
	is_schemap_unknown_sequence_child: BOOLEAN is
=======
	is_xml_schemap_unknown_sequence_child: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_unknown_sequence_child_low_level)
		end

<<<<<<< HEAD
	is_schemap_unknown_simplecontent_child: BOOLEAN is
=======
	is_xml_schemap_unknown_simplecontent_child: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_unknown_simplecontent_child_low_level)
		end

<<<<<<< HEAD
	is_schemap_unknown_simpletype_child: BOOLEAN is
=======
	is_xml_schemap_unknown_simpletype_child: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_unknown_simpletype_child_low_level)
		end

<<<<<<< HEAD
	is_schemap_unknown_type: BOOLEAN is
=======
	is_xml_schemap_unknown_type: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_unknown_type_low_level)
		end

<<<<<<< HEAD
	is_schemap_unknown_union_child: BOOLEAN is
=======
	is_xml_schemap_unknown_union_child: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_unknown_union_child_low_level)
		end

<<<<<<< HEAD
	is_schemap_warn_attr_pointless_proh: BOOLEAN is
=======
	is_xml_schemap_warn_attr_pointless_proh: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_warn_attr_pointless_proh_low_level)
		end

<<<<<<< HEAD
	is_schemap_warn_attr_redecl_proh: BOOLEAN is
=======
	is_xml_schemap_warn_attr_redecl_proh: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_warn_attr_redecl_proh_low_level)
		end

<<<<<<< HEAD
	is_schemap_warn_skip_schema: BOOLEAN is
=======
	is_xml_schemap_warn_skip_schema: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_warn_skip_schema_low_level)
		end

<<<<<<< HEAD
	is_schemap_warn_unlocated_schema: BOOLEAN is
=======
	is_xml_schemap_warn_unlocated_schema: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_warn_unlocated_schema_low_level)
		end

<<<<<<< HEAD
	is_schemap_wildcard_invalid_ns_member: BOOLEAN is
=======
	is_xml_schemap_wildcard_invalid_ns_member: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemap_wildcard_invalid_ns_member_low_level)
		end

<<<<<<< HEAD
	is_schematronv_assert: BOOLEAN is
=======
	is_xml_schematronv_assert: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schematronv_assert_low_level)
		end

<<<<<<< HEAD
	is_schematronv_report: BOOLEAN is
=======
	is_xml_schematronv_report: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schematronv_report_low_level)
		end

<<<<<<< HEAD
	is_schemav_attrinvalid: BOOLEAN is
=======
	is_xml_schemav_attrinvalid: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_attrinvalid_low_level)
		end

<<<<<<< HEAD
	is_schemav_attrunknown: BOOLEAN is
=======
	is_xml_schemav_attrunknown: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_attrunknown_low_level)
		end

<<<<<<< HEAD
	is_schemav_construct: BOOLEAN is
=======
	is_xml_schemav_construct: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_construct_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_attribute_1: BOOLEAN is
=======
	is_xml_schemav_cvc_attribute_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_attribute_1_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_attribute_2: BOOLEAN is
=======
	is_xml_schemav_cvc_attribute_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_attribute_2_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_attribute_3: BOOLEAN is
=======
	is_xml_schemav_cvc_attribute_3: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_attribute_3_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_attribute_4: BOOLEAN is
=======
	is_xml_schemav_cvc_attribute_4: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_attribute_4_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_au: BOOLEAN is
=======
	is_xml_schemav_cvc_au: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_au_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_complex_type_1: BOOLEAN is
=======
	is_xml_schemav_cvc_complex_type_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_complex_type_1_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_complex_type_2_1: BOOLEAN is
=======
	is_xml_schemav_cvc_complex_type_2_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_complex_type_2_1_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_complex_type_2_2: BOOLEAN is
=======
	is_xml_schemav_cvc_complex_type_2_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_complex_type_2_2_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_complex_type_2_3: BOOLEAN is
=======
	is_xml_schemav_cvc_complex_type_2_3: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_complex_type_2_3_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_complex_type_2_4: BOOLEAN is
=======
	is_xml_schemav_cvc_complex_type_2_4: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_complex_type_2_4_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_complex_type_3_1: BOOLEAN is
=======
	is_xml_schemav_cvc_complex_type_3_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_complex_type_3_1_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_complex_type_3_2_1: BOOLEAN is
=======
	is_xml_schemav_cvc_complex_type_3_2_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_complex_type_3_2_1_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_complex_type_3_2_2: BOOLEAN is
=======
	is_xml_schemav_cvc_complex_type_3_2_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_complex_type_3_2_2_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_complex_type_4: BOOLEAN is
=======
	is_xml_schemav_cvc_complex_type_4: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_complex_type_4_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_complex_type_5_1: BOOLEAN is
=======
	is_xml_schemav_cvc_complex_type_5_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_complex_type_5_1_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_complex_type_5_2: BOOLEAN is
=======
	is_xml_schemav_cvc_complex_type_5_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_complex_type_5_2_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_datatype_valid_1_2_1: BOOLEAN is
=======
	is_xml_schemav_cvc_datatype_valid_1_2_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_datatype_valid_1_2_1_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_datatype_valid_1_2_2: BOOLEAN is
=======
	is_xml_schemav_cvc_datatype_valid_1_2_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_datatype_valid_1_2_2_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_datatype_valid_1_2_3: BOOLEAN is
=======
	is_xml_schemav_cvc_datatype_valid_1_2_3: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_datatype_valid_1_2_3_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_elt_1: BOOLEAN is
=======
	is_xml_schemav_cvc_elt_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_elt_1_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_elt_2: BOOLEAN is
=======
	is_xml_schemav_cvc_elt_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_elt_2_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_elt_3_1: BOOLEAN is
=======
	is_xml_schemav_cvc_elt_3_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_elt_3_1_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_elt_3_2_1: BOOLEAN is
=======
	is_xml_schemav_cvc_elt_3_2_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_elt_3_2_1_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_elt_3_2_2: BOOLEAN is
=======
	is_xml_schemav_cvc_elt_3_2_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_elt_3_2_2_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_elt_4_1: BOOLEAN is
=======
	is_xml_schemav_cvc_elt_4_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_elt_4_1_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_elt_4_2: BOOLEAN is
=======
	is_xml_schemav_cvc_elt_4_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_elt_4_2_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_elt_4_3: BOOLEAN is
=======
	is_xml_schemav_cvc_elt_4_3: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_elt_4_3_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_elt_5_1_1: BOOLEAN is
=======
	is_xml_schemav_cvc_elt_5_1_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_elt_5_1_1_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_elt_5_1_2: BOOLEAN is
=======
	is_xml_schemav_cvc_elt_5_1_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_elt_5_1_2_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_elt_5_2_1: BOOLEAN is
=======
	is_xml_schemav_cvc_elt_5_2_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_elt_5_2_1_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_elt_5_2_2_1: BOOLEAN is
=======
	is_xml_schemav_cvc_elt_5_2_2_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_elt_5_2_2_1_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_elt_5_2_2_2_1: BOOLEAN is
=======
	is_xml_schemav_cvc_elt_5_2_2_2_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_elt_5_2_2_2_1_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_elt_5_2_2_2_2: BOOLEAN is
=======
	is_xml_schemav_cvc_elt_5_2_2_2_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_elt_5_2_2_2_2_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_elt_6: BOOLEAN is
=======
	is_xml_schemav_cvc_elt_6: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_elt_6_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_elt_7: BOOLEAN is
=======
	is_xml_schemav_cvc_elt_7: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_elt_7_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_enumeration_valid: BOOLEAN is
=======
	is_xml_schemav_cvc_enumeration_valid: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_enumeration_valid_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_facet_valid: BOOLEAN is
=======
	is_xml_schemav_cvc_facet_valid: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_facet_valid_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_fractiondigits_valid: BOOLEAN is
=======
	is_xml_schemav_cvc_fractiondigits_valid: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_fractiondigits_valid_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_idc: BOOLEAN is
=======
	is_xml_schemav_cvc_idc: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_idc_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_length_valid: BOOLEAN is
=======
	is_xml_schemav_cvc_length_valid: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_length_valid_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_maxexclusive_valid: BOOLEAN is
=======
	is_xml_schemav_cvc_maxexclusive_valid: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_maxexclusive_valid_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_maxinclusive_valid: BOOLEAN is
=======
	is_xml_schemav_cvc_maxinclusive_valid: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_maxinclusive_valid_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_maxlength_valid: BOOLEAN is
=======
	is_xml_schemav_cvc_maxlength_valid: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_maxlength_valid_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_minexclusive_valid: BOOLEAN is
=======
	is_xml_schemav_cvc_minexclusive_valid: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_minexclusive_valid_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_mininclusive_valid: BOOLEAN is
=======
	is_xml_schemav_cvc_mininclusive_valid: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_mininclusive_valid_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_minlength_valid: BOOLEAN is
=======
	is_xml_schemav_cvc_minlength_valid: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_minlength_valid_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_pattern_valid: BOOLEAN is
=======
	is_xml_schemav_cvc_pattern_valid: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_pattern_valid_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_totaldigits_valid: BOOLEAN is
=======
	is_xml_schemav_cvc_totaldigits_valid: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_totaldigits_valid_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_type_1: BOOLEAN is
=======
	is_xml_schemav_cvc_type_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_type_1_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_type_2: BOOLEAN is
=======
	is_xml_schemav_cvc_type_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_type_2_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_type_3_1_1: BOOLEAN is
=======
	is_xml_schemav_cvc_type_3_1_1: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_type_3_1_1_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_type_3_1_2: BOOLEAN is
=======
	is_xml_schemav_cvc_type_3_1_2: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_type_3_1_2_low_level)
		end

<<<<<<< HEAD
	is_schemav_cvc_wildcard: BOOLEAN is
=======
	is_xml_schemav_cvc_wildcard: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_cvc_wildcard_low_level)
		end

<<<<<<< HEAD
	is_schemav_document_element_missing: BOOLEAN is
=======
	is_xml_schemav_document_element_missing: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_document_element_missing_low_level)
		end

<<<<<<< HEAD
	is_schemav_elemcont: BOOLEAN is
=======
	is_xml_schemav_elemcont: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_elemcont_low_level)
		end

<<<<<<< HEAD
	is_schemav_element_content: BOOLEAN is
=======
	is_xml_schemav_element_content: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_element_content_low_level)
		end

<<<<<<< HEAD
	is_schemav_extracontent: BOOLEAN is
=======
	is_xml_schemav_extracontent: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_extracontent_low_level)
		end

<<<<<<< HEAD
	is_schemav_facet: BOOLEAN is
=======
	is_xml_schemav_facet: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_facet_low_level)
		end

<<<<<<< HEAD
	is_schemav_havedefault: BOOLEAN is
=======
	is_xml_schemav_havedefault: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_havedefault_low_level)
		end

<<<<<<< HEAD
	is_schemav_internal: BOOLEAN is
=======
	is_xml_schemav_internal: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_internal_low_level)
		end

<<<<<<< HEAD
	is_schemav_invalidattr: BOOLEAN is
=======
	is_xml_schemav_invalidattr: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_invalidattr_low_level)
		end

<<<<<<< HEAD
	is_schemav_invalidelem: BOOLEAN is
=======
	is_xml_schemav_invalidelem: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_invalidelem_low_level)
		end

<<<<<<< HEAD
	is_schemav_isabstract: BOOLEAN is
=======
	is_xml_schemav_isabstract: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_isabstract_low_level)
		end

<<<<<<< HEAD
	is_schemav_misc: BOOLEAN is
=======
	is_xml_schemav_misc: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_misc_low_level)
		end

<<<<<<< HEAD
	is_schemav_missing: BOOLEAN is
=======
	is_xml_schemav_missing: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_missing_low_level)
		end

<<<<<<< HEAD
	is_schemav_norollback: BOOLEAN is
=======
	is_xml_schemav_norollback: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_norollback_low_level)
		end

<<<<<<< HEAD
	is_schemav_noroot: BOOLEAN is
=======
	is_xml_schemav_noroot: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_noroot_low_level)
		end

<<<<<<< HEAD
	is_schemav_notdeterminist: BOOLEAN is
=======
	is_xml_schemav_notdeterminist: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_notdeterminist_low_level)
		end

<<<<<<< HEAD
	is_schemav_notempty: BOOLEAN is
=======
	is_xml_schemav_notempty: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_notempty_low_level)
		end

<<<<<<< HEAD
	is_schemav_notnillable: BOOLEAN is
=======
	is_xml_schemav_notnillable: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_notnillable_low_level)
		end

<<<<<<< HEAD
	is_schemav_notsimple: BOOLEAN is
=======
	is_xml_schemav_notsimple: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_notsimple_low_level)
		end

<<<<<<< HEAD
	is_schemav_nottoplevel: BOOLEAN is
=======
	is_xml_schemav_nottoplevel: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_nottoplevel_low_level)
		end

<<<<<<< HEAD
	is_schemav_notype: BOOLEAN is
=======
	is_xml_schemav_notype: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_notype_low_level)
		end

<<<<<<< HEAD
	is_schemav_undeclaredelem: BOOLEAN is
=======
	is_xml_schemav_undeclaredelem: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_undeclaredelem_low_level)
		end

<<<<<<< HEAD
	is_schemav_value: BOOLEAN is
=======
	is_xml_schemav_value: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_value_low_level)
		end

<<<<<<< HEAD
	is_schemav_wrongelem: BOOLEAN is
=======
	is_xml_schemav_wrongelem: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=schemav_wrongelem_low_level)
		end

<<<<<<< HEAD
	is_tree_invalid_dec: BOOLEAN is
=======
	is_xml_tree_invalid_dec: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=tree_invalid_dec_low_level)
		end

<<<<<<< HEAD
	is_tree_invalid_hex: BOOLEAN is
=======
	is_xml_tree_invalid_hex: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=tree_invalid_hex_low_level)
		end

<<<<<<< HEAD
	is_tree_not_utf8: BOOLEAN is
=======
	is_xml_tree_not_utf8: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=tree_not_utf8_low_level)
		end

<<<<<<< HEAD
	is_tree_unterminated_entity: BOOLEAN is
=======
	is_xml_tree_unterminated_entity: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=tree_unterminated_entity_low_level)
		end

<<<<<<< HEAD
	is_war_catalog_pi: BOOLEAN is
=======
	is_xml_war_catalog_pi: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=war_catalog_pi_low_level)
		end

<<<<<<< HEAD
	is_war_entity_redefined: BOOLEAN is
=======
	is_xml_war_entity_redefined: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=war_entity_redefined_low_level)
		end

<<<<<<< HEAD
	is_war_lang_value: BOOLEAN is
=======
	is_xml_war_lang_value: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=war_lang_value_low_level)
		end

<<<<<<< HEAD
	is_war_ns_column: BOOLEAN is
=======
	is_xml_war_ns_column: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=war_ns_column_low_level)
		end

<<<<<<< HEAD
	is_war_ns_uri: BOOLEAN is
=======
	is_xml_war_ns_uri: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=war_ns_uri_low_level)
		end

<<<<<<< HEAD
	is_war_ns_uri_relative: BOOLEAN is
=======
	is_xml_war_ns_uri_relative: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=war_ns_uri_relative_low_level)
		end

<<<<<<< HEAD
	is_war_space_value: BOOLEAN is
=======
	is_xml_war_space_value: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=war_space_value_low_level)
		end

<<<<<<< HEAD
	is_war_undeclared_entity: BOOLEAN is
=======
	is_xml_war_undeclared_entity: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=war_undeclared_entity_low_level)
		end

<<<<<<< HEAD
	is_war_unknown_version: BOOLEAN is
=======
	is_xml_war_unknown_version: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=war_unknown_version_low_level)
		end

<<<<<<< HEAD
	is_xinclude_build_failed: BOOLEAN is
=======
	is_xml_xinclude_build_failed: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xinclude_build_failed_low_level)
		end

<<<<<<< HEAD
	is_xinclude_deprecated_ns: BOOLEAN is
=======
	is_xml_xinclude_deprecated_ns: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xinclude_deprecated_ns_low_level)
		end

<<<<<<< HEAD
	is_xinclude_entity_def_mismatch: BOOLEAN is
=======
	is_xml_xinclude_entity_def_mismatch: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xinclude_entity_def_mismatch_low_level)
		end

<<<<<<< HEAD
	is_xinclude_fallback_not_in_include: BOOLEAN is
=======
	is_xml_xinclude_fallback_not_in_include: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xinclude_fallback_not_in_include_low_level)
		end

<<<<<<< HEAD
	is_xinclude_fallbacks_in_include: BOOLEAN is
=======
	is_xml_xinclude_fallbacks_in_include: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xinclude_fallbacks_in_include_low_level)
		end

<<<<<<< HEAD
	is_xinclude_fragment_id: BOOLEAN is
=======
	is_xml_xinclude_fragment_id: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xinclude_fragment_id_low_level)
		end

<<<<<<< HEAD
	is_xinclude_href_uri: BOOLEAN is
=======
	is_xml_xinclude_href_uri: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xinclude_href_uri_low_level)
		end

<<<<<<< HEAD
	is_xinclude_include_in_include: BOOLEAN is
=======
	is_xml_xinclude_include_in_include: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xinclude_include_in_include_low_level)
		end

<<<<<<< HEAD
	is_xinclude_invalid_char: BOOLEAN is
=======
	is_xml_xinclude_invalid_char: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xinclude_invalid_char_low_level)
		end

<<<<<<< HEAD
	is_xinclude_multiple_root: BOOLEAN is
=======
	is_xml_xinclude_multiple_root: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xinclude_multiple_root_low_level)
		end

<<<<<<< HEAD
	is_xinclude_no_fallback: BOOLEAN is
=======
	is_xml_xinclude_no_fallback: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xinclude_no_fallback_low_level)
		end

<<<<<<< HEAD
	is_xinclude_no_href: BOOLEAN is
=======
	is_xml_xinclude_no_href: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xinclude_no_href_low_level)
		end

<<<<<<< HEAD
	is_xinclude_parse_value: BOOLEAN is
=======
	is_xml_xinclude_parse_value: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xinclude_parse_value_low_level)
		end

<<<<<<< HEAD
	is_xinclude_recursion: BOOLEAN is
=======
	is_xml_xinclude_recursion: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xinclude_recursion_low_level)
		end

<<<<<<< HEAD
	is_xinclude_text_document: BOOLEAN is
=======
	is_xml_xinclude_text_document: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xinclude_text_document_low_level)
		end

<<<<<<< HEAD
	is_xinclude_text_fragment: BOOLEAN is
=======
	is_xml_xinclude_text_fragment: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xinclude_text_fragment_low_level)
		end

<<<<<<< HEAD
	is_xinclude_unknown_encoding: BOOLEAN is
=======
	is_xml_xinclude_unknown_encoding: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xinclude_unknown_encoding_low_level)
		end

<<<<<<< HEAD
	is_xinclude_xptr_failed: BOOLEAN is
=======
	is_xml_xinclude_xptr_failed: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xinclude_xptr_failed_low_level)
		end

<<<<<<< HEAD
	is_xinclude_xptr_result: BOOLEAN is
=======
	is_xml_xinclude_xptr_result: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xinclude_xptr_result_low_level)
		end

<<<<<<< HEAD
	is_xpath_encoding_error: BOOLEAN is
=======
	is_xml_xpath_encoding_error: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xpath_encoding_error_low_level)
		end

<<<<<<< HEAD
	is_xpath_expr_error: BOOLEAN is
=======
	is_xml_xpath_expr_error: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xpath_expr_error_low_level)
		end

<<<<<<< HEAD
	is_xpath_expression_ok: BOOLEAN is
=======
	is_xml_xpath_expression_ok: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xpath_expression_ok_low_level)
		end

<<<<<<< HEAD
	is_xpath_invalid_arity: BOOLEAN is
=======
	is_xml_xpath_invalid_arity: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xpath_invalid_arity_low_level)
		end

<<<<<<< HEAD
	is_xpath_invalid_char_error: BOOLEAN is
=======
	is_xml_xpath_invalid_char_error: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xpath_invalid_char_error_low_level)
		end

<<<<<<< HEAD
	is_xpath_invalid_ctxt_position: BOOLEAN is
=======
	is_xml_xpath_invalid_ctxt_position: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xpath_invalid_ctxt_position_low_level)
		end

<<<<<<< HEAD
	is_xpath_invalid_ctxt_size: BOOLEAN is
=======
	is_xml_xpath_invalid_ctxt_size: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xpath_invalid_ctxt_size_low_level)
		end

<<<<<<< HEAD
	is_xpath_invalid_operand: BOOLEAN is
=======
	is_xml_xpath_invalid_operand: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xpath_invalid_operand_low_level)
		end

<<<<<<< HEAD
	is_xpath_invalid_predicate_error: BOOLEAN is
=======
	is_xml_xpath_invalid_predicate_error: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xpath_invalid_predicate_error_low_level)
		end

<<<<<<< HEAD
	is_xpath_invalid_type: BOOLEAN is
=======
	is_xml_xpath_invalid_type: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xpath_invalid_type_low_level)
		end

<<<<<<< HEAD
	is_xpath_memory_error: BOOLEAN is
=======
	is_xml_xpath_memory_error: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xpath_memory_error_low_level)
		end

<<<<<<< HEAD
	is_xpath_number_error: BOOLEAN is
=======
	is_xml_xpath_number_error: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xpath_number_error_low_level)
		end

<<<<<<< HEAD
	is_xpath_start_literal_error: BOOLEAN is
=======
	is_xml_xpath_start_literal_error: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xpath_start_literal_error_low_level)
		end

<<<<<<< HEAD
	is_xpath_unclosed_error: BOOLEAN is
=======
	is_xml_xpath_unclosed_error: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xpath_unclosed_error_low_level)
		end

<<<<<<< HEAD
	is_xpath_undef_prefix_error: BOOLEAN is
=======
	is_xml_xpath_undef_prefix_error: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xpath_undef_prefix_error_low_level)
		end

<<<<<<< HEAD
	is_xpath_undef_variable_error: BOOLEAN is
=======
	is_xml_xpath_undef_variable_error: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xpath_undef_variable_error_low_level)
		end

<<<<<<< HEAD
	is_xpath_unfinished_literal_error: BOOLEAN is
=======
	is_xml_xpath_unfinished_literal_error: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xpath_unfinished_literal_error_low_level)
		end

<<<<<<< HEAD
	is_xpath_unknown_func_error: BOOLEAN is
=======
	is_xml_xpath_unknown_func_error: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xpath_unknown_func_error_low_level)
		end

<<<<<<< HEAD
	is_xpath_variable_ref_error: BOOLEAN is
=======
	is_xml_xpath_variable_ref_error: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xpath_variable_ref_error_low_level)
		end

<<<<<<< HEAD
	is_xptr_childseq_start: BOOLEAN is
=======
	is_xml_xptr_childseq_start: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xptr_childseq_start_low_level)
		end

<<<<<<< HEAD
	is_xptr_eval_failed: BOOLEAN is
=======
	is_xml_xptr_eval_failed: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xptr_eval_failed_low_level)
		end

<<<<<<< HEAD
	is_xptr_extra_objects: BOOLEAN is
=======
	is_xml_xptr_extra_objects: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xptr_extra_objects_low_level)
		end

<<<<<<< HEAD
	is_xptr_resource_error: BOOLEAN is
=======
	is_xml_xptr_resource_error: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xptr_resource_error_low_level)
		end

<<<<<<< HEAD
	is_xptr_sub_resource_error: BOOLEAN is
=======
	is_xml_xptr_sub_resource_error: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xptr_sub_resource_error_low_level)
		end

<<<<<<< HEAD
	is_xptr_syntax_error: BOOLEAN is
=======
	is_xml_xptr_syntax_error: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xptr_syntax_error_low_level)
		end

<<<<<<< HEAD
	is_xptr_unknown_scheme: BOOLEAN is
=======
	is_xml_xptr_unknown_scheme: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=xptr_unknown_scheme_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
<<<<<<< HEAD
	c14n_create_ctxt_low_level: INTEGER is
=======
	xml_c14n_create_ctxt_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_C14N_CREATE_CTXT"
 			}"
 		end

<<<<<<< HEAD
	c14n_create_stack_low_level: INTEGER is
=======
	xml_c14n_create_stack_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_C14N_CREATE_STACK"
 			}"
 		end

<<<<<<< HEAD
	c14n_invalid_node_low_level: INTEGER is
=======
	xml_c14n_invalid_node_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_C14N_INVALID_NODE"
 			}"
 		end

<<<<<<< HEAD
	c14n_relative_namespace_low_level: INTEGER is
=======
	xml_c14n_relative_namespace_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_C14N_RELATIVE_NAMESPACE"
 			}"
 		end

<<<<<<< HEAD
	c14n_requires_utf8_low_level: INTEGER is
=======
	xml_c14n_requires_utf8_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_C14N_REQUIRES_UTF8"
 			}"
 		end

<<<<<<< HEAD
	c14n_unknow_node_low_level: INTEGER is
=======
	xml_c14n_unknow_node_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_C14N_UNKNOW_NODE"
 			}"
 		end

<<<<<<< HEAD
	catalog_entry_broken_low_level: INTEGER is
=======
	xml_catalog_entry_broken_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CATALOG_ENTRY_BROKEN"
 			}"
 		end

<<<<<<< HEAD
	catalog_missing_attr_low_level: INTEGER is
=======
	xml_catalog_missing_attr_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CATALOG_MISSING_ATTR"
 			}"
 		end

<<<<<<< HEAD
	catalog_not_catalog_low_level: INTEGER is
=======
	xml_catalog_not_catalog_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CATALOG_NOT_CATALOG"
 			}"
 		end

<<<<<<< HEAD
	catalog_prefer_value_low_level: INTEGER is
=======
	xml_catalog_prefer_value_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CATALOG_PREFER_VALUE"
 			}"
 		end

<<<<<<< HEAD
	catalog_recursion_low_level: INTEGER is
=======
	xml_catalog_recursion_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CATALOG_RECURSION"
 			}"
 		end

<<<<<<< HEAD
	check_entity_type_low_level: INTEGER is
=======
	xml_check_entity_type_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHECK_ENTITY_TYPE"
 			}"
 		end

<<<<<<< HEAD
	check_found_attribute_low_level: INTEGER is
=======
	xml_check_found_attribute_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHECK_FOUND_ATTRIBUTE"
 			}"
 		end

<<<<<<< HEAD
	check_found_cdata_low_level: INTEGER is
=======
	xml_check_found_cdata_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHECK_FOUND_CDATA"
 			}"
 		end

<<<<<<< HEAD
	check_found_comment_low_level: INTEGER is
=======
	xml_check_found_comment_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHECK_FOUND_COMMENT"
 			}"
 		end

<<<<<<< HEAD
	check_found_doctype_low_level: INTEGER is
=======
	xml_check_found_doctype_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHECK_FOUND_DOCTYPE"
 			}"
 		end

<<<<<<< HEAD
	check_found_element_low_level: INTEGER is
=======
	xml_check_found_element_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHECK_FOUND_ELEMENT"
 			}"
 		end

<<<<<<< HEAD
	check_found_entity_low_level: INTEGER is
=======
	xml_check_found_entity_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHECK_FOUND_ENTITY"
 			}"
 		end

<<<<<<< HEAD
	check_found_entityref_low_level: INTEGER is
=======
	xml_check_found_entityref_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHECK_FOUND_ENTITYREF"
 			}"
 		end

<<<<<<< HEAD
	check_found_fragment_low_level: INTEGER is
=======
	xml_check_found_fragment_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHECK_FOUND_FRAGMENT"
 			}"
 		end

<<<<<<< HEAD
	check_found_notation_low_level: INTEGER is
=======
	xml_check_found_notation_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHECK_FOUND_NOTATION"
 			}"
 		end

<<<<<<< HEAD
	check_found_pi_low_level: INTEGER is
=======
	xml_check_found_pi_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHECK_FOUND_PI"
 			}"
 		end

<<<<<<< HEAD
	check_found_text_low_level: INTEGER is
=======
	xml_check_found_text_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHECK_FOUND_TEXT"
 			}"
 		end

<<<<<<< HEAD
	check_name_not_null_low_level: INTEGER is
=======
	xml_check_name_not_null_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHECK_NAME_NOT_NULL"
 			}"
 		end

<<<<<<< HEAD
	check_no_dict_low_level: INTEGER is
=======
	xml_check_no_dict_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHECK_NO_DICT"
 			}"
 		end

<<<<<<< HEAD
	check_no_doc_low_level: INTEGER is
=======
	xml_check_no_doc_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHECK_NO_DOC"
 			}"
 		end

<<<<<<< HEAD
	check_no_elem_low_level: INTEGER is
=======
	xml_check_no_elem_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHECK_NO_ELEM"
 			}"
 		end

<<<<<<< HEAD
	check_no_href_low_level: INTEGER is
=======
	xml_check_no_href_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHECK_NO_HREF"
 			}"
 		end

<<<<<<< HEAD
	check_no_name_low_level: INTEGER is
=======
	xml_check_no_name_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHECK_NO_NAME"
 			}"
 		end

<<<<<<< HEAD
	check_no_next_low_level: INTEGER is
=======
	xml_check_no_next_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHECK_NO_NEXT"
 			}"
 		end

<<<<<<< HEAD
	check_no_parent_low_level: INTEGER is
=======
	xml_check_no_parent_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHECK_NO_PARENT"
 			}"
 		end

<<<<<<< HEAD
	check_no_prev_low_level: INTEGER is
=======
	xml_check_no_prev_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHECK_NO_PREV"
 			}"
 		end

<<<<<<< HEAD
	check_not_attr_low_level: INTEGER is
=======
	xml_check_not_attr_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHECK_NOT_ATTR"
 			}"
 		end

<<<<<<< HEAD
	check_not_attr_decl_low_level: INTEGER is
=======
	xml_check_not_attr_decl_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHECK_NOT_ATTR_DECL"
 			}"
 		end

<<<<<<< HEAD
	check_not_dtd_low_level: INTEGER is
=======
	xml_check_not_dtd_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHECK_NOT_DTD"
 			}"
 		end

<<<<<<< HEAD
	check_not_elem_decl_low_level: INTEGER is
=======
	xml_check_not_elem_decl_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHECK_NOT_ELEM_DECL"
 			}"
 		end

<<<<<<< HEAD
	check_not_entity_decl_low_level: INTEGER is
=======
	xml_check_not_entity_decl_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHECK_NOT_ENTITY_DECL"
 			}"
 		end

<<<<<<< HEAD
	check_not_ncname_low_level: INTEGER is
=======
	xml_check_not_ncname_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHECK_NOT_NCNAME"
 			}"
 		end

<<<<<<< HEAD
	check_not_ns_decl_low_level: INTEGER is
=======
	xml_check_not_ns_decl_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHECK_NOT_NS_DECL"
 			}"
 		end

<<<<<<< HEAD
	check_not_utf8_low_level: INTEGER is
=======
	xml_check_not_utf8_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHECK_NOT_UTF8"
 			}"
 		end

<<<<<<< HEAD
	check_ns_ancestor_low_level: INTEGER is
=======
	xml_check_ns_ancestor_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHECK_NS_ANCESTOR"
 			}"
 		end

<<<<<<< HEAD
	check_ns_scope_low_level: INTEGER is
=======
	xml_check_ns_scope_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHECK_NS_SCOPE"
 			}"
 		end

<<<<<<< HEAD
	check_outside_dict_low_level: INTEGER is
=======
	xml_check_outside_dict_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHECK_OUTSIDE_DICT"
 			}"
 		end

<<<<<<< HEAD
	check_unknown_node_low_level: INTEGER is
=======
	xml_check_unknown_node_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHECK_UNKNOWN_NODE"
 			}"
 		end

<<<<<<< HEAD
	check_wrong_doc_low_level: INTEGER is
=======
	xml_check_wrong_doc_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHECK_WRONG_DOC"
 			}"
 		end

<<<<<<< HEAD
	check_wrong_name_low_level: INTEGER is
=======
	xml_check_wrong_name_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHECK_WRONG_NAME"
 			}"
 		end

<<<<<<< HEAD
	check_wrong_next_low_level: INTEGER is
=======
	xml_check_wrong_next_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHECK_WRONG_NEXT"
 			}"
 		end

<<<<<<< HEAD
	check_wrong_parent_low_level: INTEGER is
=======
	xml_check_wrong_parent_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHECK_WRONG_PARENT"
 			}"
 		end

<<<<<<< HEAD
	check_wrong_prev_low_level: INTEGER is
=======
	xml_check_wrong_prev_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_CHECK_WRONG_PREV"
 			}"
 		end

<<<<<<< HEAD
	dtd_attribute_default_low_level: INTEGER is
=======
	xml_dtd_attribute_default_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_ATTRIBUTE_DEFAULT"
 			}"
 		end

<<<<<<< HEAD
	dtd_attribute_redefined_low_level: INTEGER is
=======
	xml_dtd_attribute_redefined_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_ATTRIBUTE_REDEFINED"
 			}"
 		end

<<<<<<< HEAD
	dtd_attribute_value_low_level: INTEGER is
=======
	xml_dtd_attribute_value_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_ATTRIBUTE_VALUE"
 			}"
 		end

<<<<<<< HEAD
	dtd_content_error_low_level: INTEGER is
=======
	xml_dtd_content_error_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_CONTENT_ERROR"
 			}"
 		end

<<<<<<< HEAD
	dtd_content_model_low_level: INTEGER is
=======
	xml_dtd_content_model_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_CONTENT_MODEL"
 			}"
 		end

<<<<<<< HEAD
	dtd_content_not_determinist_low_level: INTEGER is
=======
	xml_dtd_content_not_determinist_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_CONTENT_NOT_DETERMINIST"
 			}"
 		end

<<<<<<< HEAD
	dtd_different_prefix_low_level: INTEGER is
=======
	xml_dtd_different_prefix_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_DIFFERENT_PREFIX"
 			}"
 		end

<<<<<<< HEAD
	dtd_dup_token_low_level: INTEGER is
=======
	xml_dtd_dup_token_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_DUP_TOKEN"
 			}"
 		end

<<<<<<< HEAD
	dtd_elem_default_namespace_low_level: INTEGER is
=======
	xml_dtd_elem_default_namespace_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_ELEM_DEFAULT_NAMESPACE"
 			}"
 		end

<<<<<<< HEAD
	dtd_elem_namespace_low_level: INTEGER is
=======
	xml_dtd_elem_namespace_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_ELEM_NAMESPACE"
 			}"
 		end

<<<<<<< HEAD
	dtd_elem_redefined_low_level: INTEGER is
=======
	xml_dtd_elem_redefined_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_ELEM_REDEFINED"
 			}"
 		end

<<<<<<< HEAD
	dtd_empty_notation_low_level: INTEGER is
=======
	xml_dtd_empty_notation_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_EMPTY_NOTATION"
 			}"
 		end

<<<<<<< HEAD
	dtd_entity_type_low_level: INTEGER is
=======
	xml_dtd_entity_type_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_ENTITY_TYPE"
 			}"
 		end

<<<<<<< HEAD
	dtd_id_fixed_low_level: INTEGER is
=======
	xml_dtd_id_fixed_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_ID_FIXED"
 			}"
 		end

<<<<<<< HEAD
	dtd_id_redefined_low_level: INTEGER is
=======
	xml_dtd_id_redefined_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_ID_REDEFINED"
 			}"
 		end

<<<<<<< HEAD
	dtd_id_subset_low_level: INTEGER is
=======
	xml_dtd_id_subset_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_ID_SUBSET"
 			}"
 		end

<<<<<<< HEAD
	dtd_invalid_child_low_level: INTEGER is
=======
	xml_dtd_invalid_child_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_INVALID_CHILD"
 			}"
 		end

<<<<<<< HEAD
	dtd_invalid_default_low_level: INTEGER is
=======
	xml_dtd_invalid_default_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_INVALID_DEFAULT"
 			}"
 		end

<<<<<<< HEAD
	dtd_load_error_low_level: INTEGER is
=======
	xml_dtd_load_error_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_LOAD_ERROR"
 			}"
 		end

<<<<<<< HEAD
	dtd_missing_attribute_low_level: INTEGER is
=======
	xml_dtd_missing_attribute_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_MISSING_ATTRIBUTE"
 			}"
 		end

<<<<<<< HEAD
	dtd_mixed_corrupt_low_level: INTEGER is
=======
	xml_dtd_mixed_corrupt_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_MIXED_CORRUPT"
 			}"
 		end

<<<<<<< HEAD
	dtd_multiple_id_low_level: INTEGER is
=======
	xml_dtd_multiple_id_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_MULTIPLE_ID"
 			}"
 		end

<<<<<<< HEAD
	dtd_no_doc_low_level: INTEGER is
=======
	xml_dtd_no_doc_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_NO_DOC"
 			}"
 		end

<<<<<<< HEAD
	dtd_no_dtd_low_level: INTEGER is
=======
	xml_dtd_no_dtd_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_NO_DTD"
 			}"
 		end

<<<<<<< HEAD
	dtd_no_elem_name_low_level: INTEGER is
=======
	xml_dtd_no_elem_name_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_NO_ELEM_NAME"
 			}"
 		end

<<<<<<< HEAD
	dtd_no_prefix_low_level: INTEGER is
=======
	xml_dtd_no_prefix_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_NO_PREFIX"
 			}"
 		end

<<<<<<< HEAD
	dtd_no_root_low_level: INTEGER is
=======
	xml_dtd_no_root_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_NO_ROOT"
 			}"
 		end

<<<<<<< HEAD
	dtd_not_empty_low_level: INTEGER is
=======
	xml_dtd_not_empty_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_NOT_EMPTY"
 			}"
 		end

<<<<<<< HEAD
	dtd_not_pcdata_low_level: INTEGER is
=======
	xml_dtd_not_pcdata_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_NOT_PCDATA"
 			}"
 		end

<<<<<<< HEAD
	dtd_not_standalone_low_level: INTEGER is
=======
	xml_dtd_not_standalone_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_NOT_STANDALONE"
 			}"
 		end

<<<<<<< HEAD
	dtd_notation_redefined_low_level: INTEGER is
=======
	xml_dtd_notation_redefined_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_NOTATION_REDEFINED"
 			}"
 		end

<<<<<<< HEAD
	dtd_notation_value_low_level: INTEGER is
=======
	xml_dtd_notation_value_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_NOTATION_VALUE"
 			}"
 		end

<<<<<<< HEAD
	dtd_root_name_low_level: INTEGER is
=======
	xml_dtd_root_name_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_ROOT_NAME"
 			}"
 		end

<<<<<<< HEAD
	dtd_standalone_defaulted_low_level: INTEGER is
=======
	xml_dtd_standalone_defaulted_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_STANDALONE_DEFAULTED"
 			}"
 		end

<<<<<<< HEAD
	dtd_standalone_white_space_low_level: INTEGER is
=======
	xml_dtd_standalone_white_space_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_STANDALONE_WHITE_SPACE"
 			}"
 		end

<<<<<<< HEAD
	dtd_unknown_attribute_low_level: INTEGER is
=======
	xml_dtd_unknown_attribute_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_UNKNOWN_ATTRIBUTE"
 			}"
 		end

<<<<<<< HEAD
	dtd_unknown_elem_low_level: INTEGER is
=======
	xml_dtd_unknown_elem_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_UNKNOWN_ELEM"
 			}"
 		end

<<<<<<< HEAD
	dtd_unknown_entity_low_level: INTEGER is
=======
	xml_dtd_unknown_entity_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_UNKNOWN_ENTITY"
 			}"
 		end

<<<<<<< HEAD
	dtd_unknown_id_low_level: INTEGER is
=======
	xml_dtd_unknown_id_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_UNKNOWN_ID"
 			}"
 		end

<<<<<<< HEAD
	dtd_unknown_notation_low_level: INTEGER is
=======
	xml_dtd_unknown_notation_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_UNKNOWN_NOTATION"
 			}"
 		end

<<<<<<< HEAD
	dtd_xmlid_type_low_level: INTEGER is
=======
	xml_dtd_xmlid_type_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_XMLID_TYPE"
 			}"
 		end

<<<<<<< HEAD
	dtd_xmlid_value_low_level: INTEGER is
=======
	xml_dtd_xmlid_value_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_DTD_XMLID_VALUE"
 			}"
 		end

<<<<<<< HEAD
	err_attlist_not_finished_low_level: INTEGER is
=======
	xml_err_attlist_not_finished_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_ATTLIST_NOT_FINISHED"
 			}"
 		end

<<<<<<< HEAD
	err_attlist_not_started_low_level: INTEGER is
=======
	xml_err_attlist_not_started_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_ATTLIST_NOT_STARTED"
 			}"
 		end

<<<<<<< HEAD
	err_attribute_not_finished_low_level: INTEGER is
=======
	xml_err_attribute_not_finished_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_ATTRIBUTE_NOT_FINISHED"
 			}"
 		end

<<<<<<< HEAD
	err_attribute_not_started_low_level: INTEGER is
=======
	xml_err_attribute_not_started_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_ATTRIBUTE_NOT_STARTED"
 			}"
 		end

<<<<<<< HEAD
	err_attribute_redefined_low_level: INTEGER is
=======
	xml_err_attribute_redefined_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_ATTRIBUTE_REDEFINED"
 			}"
 		end

<<<<<<< HEAD
	err_attribute_without_value_low_level: INTEGER is
=======
	xml_err_attribute_without_value_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_ATTRIBUTE_WITHOUT_VALUE"
 			}"
 		end

<<<<<<< HEAD
	err_cdata_not_finished_low_level: INTEGER is
=======
	xml_err_cdata_not_finished_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_CDATA_NOT_FINISHED"
 			}"
 		end

<<<<<<< HEAD
	err_charref_at_eof_low_level: INTEGER is
=======
	xml_err_charref_at_eof_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_CHARREF_AT_EOF"
 			}"
 		end

<<<<<<< HEAD
	err_charref_in_dtd_low_level: INTEGER is
=======
	xml_err_charref_in_dtd_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_CHARREF_IN_DTD"
 			}"
 		end

<<<<<<< HEAD
	err_charref_in_epilog_low_level: INTEGER is
=======
	xml_err_charref_in_epilog_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_CHARREF_IN_EPILOG"
 			}"
 		end

<<<<<<< HEAD
	err_charref_in_prolog_low_level: INTEGER is
=======
	xml_err_charref_in_prolog_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_CHARREF_IN_PROLOG"
 			}"
 		end

<<<<<<< HEAD
	err_comment_not_finished_low_level: INTEGER is
=======
	xml_err_comment_not_finished_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_COMMENT_NOT_FINISHED"
 			}"
 		end

<<<<<<< HEAD
	err_condsec_invalid_low_level: INTEGER is
=======
	xml_err_condsec_invalid_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_CONDSEC_INVALID"
 			}"
 		end

<<<<<<< HEAD
	err_condsec_invalid_keyword_low_level: INTEGER is
=======
	xml_err_condsec_invalid_keyword_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_CONDSEC_INVALID_KEYWORD"
 			}"
 		end

<<<<<<< HEAD
	err_condsec_not_finished_low_level: INTEGER is
=======
	xml_err_condsec_not_finished_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_CONDSEC_NOT_FINISHED"
 			}"
 		end

<<<<<<< HEAD
	err_condsec_not_started_low_level: INTEGER is
=======
	xml_err_condsec_not_started_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_CONDSEC_NOT_STARTED"
 			}"
 		end

<<<<<<< HEAD
	err_doctype_not_finished_low_level: INTEGER is
=======
	xml_err_doctype_not_finished_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_DOCTYPE_NOT_FINISHED"
 			}"
 		end

<<<<<<< HEAD
	err_document_empty_low_level: INTEGER is
=======
	xml_err_document_empty_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_DOCUMENT_EMPTY"
 			}"
 		end

<<<<<<< HEAD
	err_document_end_low_level: INTEGER is
=======
	xml_err_document_end_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_DOCUMENT_END"
 			}"
 		end

<<<<<<< HEAD
	err_document_start_low_level: INTEGER is
=======
	xml_err_document_start_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_DOCUMENT_START"
 			}"
 		end

<<<<<<< HEAD
	err_elemcontent_not_finished_low_level: INTEGER is
=======
	xml_err_elemcontent_not_finished_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_ELEMCONTENT_NOT_FINISHED"
 			}"
 		end

<<<<<<< HEAD
	err_elemcontent_not_started_low_level: INTEGER is
=======
	xml_err_elemcontent_not_started_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_ELEMCONTENT_NOT_STARTED"
 			}"
 		end

<<<<<<< HEAD
	err_encoding_name_low_level: INTEGER is
=======
	xml_err_encoding_name_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_ENCODING_NAME"
 			}"
 		end

<<<<<<< HEAD
	err_entity_boundary_low_level: INTEGER is
=======
	xml_err_entity_boundary_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_ENTITY_BOUNDARY"
 			}"
 		end

<<<<<<< HEAD
	err_entity_char_error_low_level: INTEGER is
=======
	xml_err_entity_char_error_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_ENTITY_CHAR_ERROR"
 			}"
 		end

<<<<<<< HEAD
	err_entity_is_external_low_level: INTEGER is
=======
	xml_err_entity_is_external_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_ENTITY_IS_EXTERNAL"
 			}"
 		end

<<<<<<< HEAD
	err_entity_is_parameter_low_level: INTEGER is
=======
	xml_err_entity_is_parameter_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_ENTITY_IS_PARAMETER"
 			}"
 		end

<<<<<<< HEAD
	err_entity_loop_low_level: INTEGER is
=======
	xml_err_entity_loop_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_ENTITY_LOOP"
 			}"
 		end

<<<<<<< HEAD
	err_entity_not_finished_low_level: INTEGER is
=======
	xml_err_entity_not_finished_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_ENTITY_NOT_FINISHED"
 			}"
 		end

<<<<<<< HEAD
	err_entity_not_started_low_level: INTEGER is
=======
	xml_err_entity_not_started_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_ENTITY_NOT_STARTED"
 			}"
 		end

<<<<<<< HEAD
	err_entity_pe_internal_low_level: INTEGER is
=======
	xml_err_entity_pe_internal_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_ENTITY_PE_INTERNAL"
 			}"
 		end

<<<<<<< HEAD
	err_entity_processing_low_level: INTEGER is
=======
	xml_err_entity_processing_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_ENTITY_PROCESSING"
 			}"
 		end

<<<<<<< HEAD
	err_entityref_at_eof_low_level: INTEGER is
=======
	xml_err_entityref_at_eof_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_ENTITYREF_AT_EOF"
 			}"
 		end

<<<<<<< HEAD
	err_entityref_in_dtd_low_level: INTEGER is
=======
	xml_err_entityref_in_dtd_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_ENTITYREF_IN_DTD"
 			}"
 		end

<<<<<<< HEAD
	err_entityref_in_epilog_low_level: INTEGER is
=======
	xml_err_entityref_in_epilog_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_ENTITYREF_IN_EPILOG"
 			}"
 		end

<<<<<<< HEAD
	err_entityref_in_prolog_low_level: INTEGER is
=======
	xml_err_entityref_in_prolog_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_ENTITYREF_IN_PROLOG"
 			}"
 		end

<<<<<<< HEAD
	err_entityref_no_name_low_level: INTEGER is
=======
	xml_err_entityref_no_name_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_ENTITYREF_NO_NAME"
 			}"
 		end

<<<<<<< HEAD
	err_entityref_semicol_missing_low_level: INTEGER is
=======
	xml_err_entityref_semicol_missing_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_ENTITYREF_SEMICOL_MISSING"
 			}"
 		end

<<<<<<< HEAD
	err_equal_required_low_level: INTEGER is
=======
	xml_err_equal_required_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_EQUAL_REQUIRED"
 			}"
 		end

<<<<<<< HEAD
	err_ext_entity_standalone_low_level: INTEGER is
=======
	xml_err_ext_entity_standalone_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_EXT_ENTITY_STANDALONE"
 			}"
 		end

<<<<<<< HEAD
	err_ext_subset_not_finished_low_level: INTEGER is
=======
	xml_err_ext_subset_not_finished_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_EXT_SUBSET_NOT_FINISHED"
 			}"
 		end

<<<<<<< HEAD
	err_extra_content_low_level: INTEGER is
=======
	xml_err_extra_content_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_EXTRA_CONTENT"
 			}"
 		end

<<<<<<< HEAD
	err_gt_required_low_level: INTEGER is
=======
	xml_err_gt_required_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_GT_REQUIRED"
 			}"
 		end

<<<<<<< HEAD
	err_hyphen_in_comment_low_level: INTEGER is
=======
	xml_err_hyphen_in_comment_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_HYPHEN_IN_COMMENT"
 			}"
 		end

<<<<<<< HEAD
	err_internal_error_low_level: INTEGER is
=======
	xml_err_internal_error_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_INTERNAL_ERROR"
 			}"
 		end

<<<<<<< HEAD
	err_invalid_char_low_level: INTEGER is
=======
	xml_err_invalid_char_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_INVALID_CHAR"
 			}"
 		end

<<<<<<< HEAD
	err_invalid_charref_low_level: INTEGER is
=======
	xml_err_invalid_charref_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_INVALID_CHARREF"
 			}"
 		end

<<<<<<< HEAD
	err_invalid_dec_charref_low_level: INTEGER is
=======
	xml_err_invalid_dec_charref_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_INVALID_DEC_CHARREF"
 			}"
 		end

<<<<<<< HEAD
	err_invalid_encoding_low_level: INTEGER is
=======
	xml_err_invalid_encoding_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_INVALID_ENCODING"
 			}"
 		end

<<<<<<< HEAD
	err_invalid_hex_charref_low_level: INTEGER is
=======
	xml_err_invalid_hex_charref_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_INVALID_HEX_CHARREF"
 			}"
 		end

<<<<<<< HEAD
	err_invalid_uri_low_level: INTEGER is
=======
	xml_err_invalid_uri_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_INVALID_URI"
 			}"
 		end

<<<<<<< HEAD
	err_literal_not_finished_low_level: INTEGER is
=======
	xml_err_literal_not_finished_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_LITERAL_NOT_FINISHED"
 			}"
 		end

<<<<<<< HEAD
	err_literal_not_started_low_level: INTEGER is
=======
	xml_err_literal_not_started_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_LITERAL_NOT_STARTED"
 			}"
 		end

<<<<<<< HEAD
	err_lt_in_attribute_low_level: INTEGER is
=======
	xml_err_lt_in_attribute_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_LT_IN_ATTRIBUTE"
 			}"
 		end

<<<<<<< HEAD
	err_lt_required_low_level: INTEGER is
=======
	xml_err_lt_required_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_LT_REQUIRED"
 			}"
 		end

<<<<<<< HEAD
	err_ltslash_required_low_level: INTEGER is
=======
	xml_err_ltslash_required_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_LTSLASH_REQUIRED"
 			}"
 		end

<<<<<<< HEAD
	err_misplaced_cdata_end_low_level: INTEGER is
=======
	xml_err_misplaced_cdata_end_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_MISPLACED_CDATA_END"
 			}"
 		end

<<<<<<< HEAD
	err_missing_encoding_low_level: INTEGER is
=======
	xml_err_missing_encoding_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_MISSING_ENCODING"
 			}"
 		end

<<<<<<< HEAD
	err_mixed_not_finished_low_level: INTEGER is
=======
	xml_err_mixed_not_finished_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_MIXED_NOT_FINISHED"
 			}"
 		end

<<<<<<< HEAD
	err_mixed_not_started_low_level: INTEGER is
=======
	xml_err_mixed_not_started_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_MIXED_NOT_STARTED"
 			}"
 		end

<<<<<<< HEAD
	err_name_required_low_level: INTEGER is
=======
	xml_err_name_required_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_NAME_REQUIRED"
 			}"
 		end

<<<<<<< HEAD
	err_nmtoken_required_low_level: INTEGER is
=======
	xml_err_nmtoken_required_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_NMTOKEN_REQUIRED"
 			}"
 		end

<<<<<<< HEAD
	err_no_dtd_low_level: INTEGER is
=======
	xml_err_no_dtd_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_NO_DTD"
 			}"
 		end

<<<<<<< HEAD
	err_no_memory_low_level: INTEGER is
=======
	xml_err_no_memory_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_NO_MEMORY"
 			}"
 		end

<<<<<<< HEAD
	err_not_standalone_low_level: INTEGER is
=======
	xml_err_not_standalone_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_NOT_STANDALONE"
 			}"
 		end

<<<<<<< HEAD
	err_not_well_balanced_low_level: INTEGER is
=======
	xml_err_not_well_balanced_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_NOT_WELL_BALANCED"
 			}"
 		end

<<<<<<< HEAD
	err_notation_not_finished_low_level: INTEGER is
=======
	xml_err_notation_not_finished_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_NOTATION_NOT_FINISHED"
 			}"
 		end

<<<<<<< HEAD
	err_notation_not_started_low_level: INTEGER is
=======
	xml_err_notation_not_started_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_NOTATION_NOT_STARTED"
 			}"
 		end

<<<<<<< HEAD
	err_notation_processing_low_level: INTEGER is
=======
	xml_err_notation_processing_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_NOTATION_PROCESSING"
 			}"
 		end

<<<<<<< HEAD
	err_ns_decl_error_low_level: INTEGER is
=======
	xml_err_ns_decl_error_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_NS_DECL_ERROR"
 			}"
 		end

<<<<<<< HEAD
	err_ok_low_level: INTEGER is
=======
	xml_err_ok_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_OK"
 			}"
 		end

<<<<<<< HEAD
	err_pcdata_required_low_level: INTEGER is
=======
	xml_err_pcdata_required_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_PCDATA_REQUIRED"
 			}"
 		end

<<<<<<< HEAD
	err_peref_at_eof_low_level: INTEGER is
=======
	xml_err_peref_at_eof_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_PEREF_AT_EOF"
 			}"
 		end

<<<<<<< HEAD
	err_peref_in_epilog_low_level: INTEGER is
=======
	xml_err_peref_in_epilog_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_PEREF_IN_EPILOG"
 			}"
 		end

<<<<<<< HEAD
	err_peref_in_int_subset_low_level: INTEGER is
=======
	xml_err_peref_in_int_subset_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_PEREF_IN_INT_SUBSET"
 			}"
 		end

<<<<<<< HEAD
	err_peref_in_prolog_low_level: INTEGER is
=======
	xml_err_peref_in_prolog_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_PEREF_IN_PROLOG"
 			}"
 		end

<<<<<<< HEAD
	err_peref_no_name_low_level: INTEGER is
=======
	xml_err_peref_no_name_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_PEREF_NO_NAME"
 			}"
 		end

<<<<<<< HEAD
	err_peref_semicol_missing_low_level: INTEGER is
=======
	xml_err_peref_semicol_missing_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_PEREF_SEMICOL_MISSING"
 			}"
 		end

<<<<<<< HEAD
	err_pi_not_finished_low_level: INTEGER is
=======
	xml_err_pi_not_finished_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_PI_NOT_FINISHED"
 			}"
 		end

<<<<<<< HEAD
	err_pi_not_started_low_level: INTEGER is
=======
	xml_err_pi_not_started_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_PI_NOT_STARTED"
 			}"
 		end

<<<<<<< HEAD
	err_pubid_required_low_level: INTEGER is
=======
	xml_err_pubid_required_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_PUBID_REQUIRED"
 			}"
 		end

<<<<<<< HEAD
	err_reserved_xml_name_low_level: INTEGER is
=======
	xml_err_reserved_xml_name_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_RESERVED_XML_NAME"
 			}"
 		end

<<<<<<< HEAD
	err_separator_required_low_level: INTEGER is
=======
	xml_err_separator_required_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_SEPARATOR_REQUIRED"
 			}"
 		end

<<<<<<< HEAD
	err_space_required_low_level: INTEGER is
=======
	xml_err_space_required_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_SPACE_REQUIRED"
 			}"
 		end

<<<<<<< HEAD
	err_standalone_value_low_level: INTEGER is
=======
	xml_err_standalone_value_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_STANDALONE_VALUE"
 			}"
 		end

<<<<<<< HEAD
	err_string_not_closed_low_level: INTEGER is
=======
	xml_err_string_not_closed_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_STRING_NOT_CLOSED"
 			}"
 		end

<<<<<<< HEAD
	err_string_not_started_low_level: INTEGER is
=======
	xml_err_string_not_started_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_STRING_NOT_STARTED"
 			}"
 		end

<<<<<<< HEAD
	err_tag_name_mismatch_low_level: INTEGER is
=======
	xml_err_tag_name_mismatch_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_TAG_NAME_MISMATCH"
 			}"
 		end

<<<<<<< HEAD
	err_tag_not_finished_low_level: INTEGER is
=======
	xml_err_tag_not_finished_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_TAG_NOT_FINISHED"
 			}"
 		end

<<<<<<< HEAD
	err_undeclared_entity_low_level: INTEGER is
=======
	xml_err_undeclared_entity_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_UNDECLARED_ENTITY"
 			}"
 		end

<<<<<<< HEAD
	err_unknown_encoding_low_level: INTEGER is
=======
	xml_err_unknown_encoding_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_UNKNOWN_ENCODING"
 			}"
 		end

<<<<<<< HEAD
	err_unknown_version_low_level: INTEGER is
=======
	xml_err_unknown_version_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_UNKNOWN_VERSION"
 			}"
 		end

<<<<<<< HEAD
	err_unparsed_entity_low_level: INTEGER is
=======
	xml_err_unparsed_entity_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_UNPARSED_ENTITY"
 			}"
 		end

<<<<<<< HEAD
	err_unsupported_encoding_low_level: INTEGER is
=======
	xml_err_unsupported_encoding_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_UNSUPPORTED_ENCODING"
 			}"
 		end

<<<<<<< HEAD
	err_uri_fragment_low_level: INTEGER is
=======
	xml_err_uri_fragment_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_URI_FRAGMENT"
 			}"
 		end

<<<<<<< HEAD
	err_uri_required_low_level: INTEGER is
=======
	xml_err_uri_required_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_URI_REQUIRED"
 			}"
 		end

<<<<<<< HEAD
	err_value_required_low_level: INTEGER is
=======
	xml_err_value_required_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_VALUE_REQUIRED"
 			}"
 		end

<<<<<<< HEAD
	err_version_mismatch_low_level: INTEGER is
=======
	xml_err_version_mismatch_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_VERSION_MISMATCH"
 			}"
 		end

<<<<<<< HEAD
	err_version_missing_low_level: INTEGER is
=======
	xml_err_version_missing_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_VERSION_MISSING"
 			}"
 		end

<<<<<<< HEAD
	err_xmldecl_not_finished_low_level: INTEGER is
=======
	xml_err_xmldecl_not_finished_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_XMLDECL_NOT_FINISHED"
 			}"
 		end

<<<<<<< HEAD
	err_xmldecl_not_started_low_level: INTEGER is
=======
	xml_err_xmldecl_not_started_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_XMLDECL_NOT_STARTED"
 			}"
 		end

<<<<<<< HEAD
	ftp_accnt_low_level: INTEGER is
=======
	xml_ftp_accnt_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FTP_ACCNT"
 			}"
 		end

<<<<<<< HEAD
	ftp_epsv_answer_low_level: INTEGER is
=======
	xml_ftp_epsv_answer_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FTP_EPSV_ANSWER"
 			}"
 		end

<<<<<<< HEAD
	ftp_pasv_answer_low_level: INTEGER is
=======
	xml_ftp_pasv_answer_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FTP_PASV_ANSWER"
 			}"
 		end

<<<<<<< HEAD
	ftp_url_syntax_low_level: INTEGER is
=======
	xml_ftp_url_syntax_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_FTP_URL_SYNTAX"
 			}"
 		end

<<<<<<< HEAD
	html_strucure_error_low_level: INTEGER is
=======
	xml_html_strucure_error_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_HTML_STRUCURE_ERROR"
 			}"
 		end

<<<<<<< HEAD
	html_unknown_tag_low_level: INTEGER is
=======
	xml_html_unknown_tag_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_HTML_UNKNOWN_TAG"
 			}"
 		end

<<<<<<< HEAD
	http_unknown_host_low_level: INTEGER is
=======
	xml_http_unknown_host_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_HTTP_UNKNOWN_HOST"
 			}"
 		end

<<<<<<< HEAD
	http_url_syntax_low_level: INTEGER is
=======
	xml_http_url_syntax_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_HTTP_URL_SYNTAX"
 			}"
 		end

<<<<<<< HEAD
	http_use_ip_low_level: INTEGER is
=======
	xml_http_use_ip_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_HTTP_USE_IP"
 			}"
 		end

<<<<<<< HEAD
	i18n_conv_failed_low_level: INTEGER is
=======
	xml_i18n_conv_failed_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_I18N_CONV_FAILED"
 			}"
 		end

<<<<<<< HEAD
	i18n_excess_handler_low_level: INTEGER is
=======
	xml_i18n_excess_handler_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_I18N_EXCESS_HANDLER"
 			}"
 		end

<<<<<<< HEAD
	i18n_no_handler_low_level: INTEGER is
=======
	xml_i18n_no_handler_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_I18N_NO_HANDLER"
 			}"
 		end

<<<<<<< HEAD
	i18n_no_name_low_level: INTEGER is
=======
	xml_i18n_no_name_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_I18N_NO_NAME"
 			}"
 		end

<<<<<<< HEAD
	i18n_no_output_low_level: INTEGER is
=======
	xml_i18n_no_output_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_I18N_NO_OUTPUT"
 			}"
 		end

<<<<<<< HEAD
	io_buffer_full_low_level: INTEGER is
=======
	xml_io_buffer_full_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_BUFFER_FULL"
 			}"
 		end

<<<<<<< HEAD
	io_eacces_low_level: INTEGER is
=======
	xml_io_eacces_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_EACCES"
 			}"
 		end

<<<<<<< HEAD
	io_eaddrinuse_low_level: INTEGER is
=======
	xml_io_eaddrinuse_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_EADDRINUSE"
 			}"
 		end

<<<<<<< HEAD
	io_eafnosupport_low_level: INTEGER is
=======
	xml_io_eafnosupport_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_EAFNOSUPPORT"
 			}"
 		end

<<<<<<< HEAD
	io_eagain_low_level: INTEGER is
=======
	xml_io_eagain_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_EAGAIN"
 			}"
 		end

<<<<<<< HEAD
	io_ealready_low_level: INTEGER is
=======
	xml_io_ealready_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_EALREADY"
 			}"
 		end

<<<<<<< HEAD
	io_ebadf_low_level: INTEGER is
=======
	xml_io_ebadf_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_EBADF"
 			}"
 		end

<<<<<<< HEAD
	io_ebadmsg_low_level: INTEGER is
=======
	xml_io_ebadmsg_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_EBADMSG"
 			}"
 		end

<<<<<<< HEAD
	io_ebusy_low_level: INTEGER is
=======
	xml_io_ebusy_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_EBUSY"
 			}"
 		end

<<<<<<< HEAD
	io_ecanceled_low_level: INTEGER is
=======
	xml_io_ecanceled_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_ECANCELED"
 			}"
 		end

<<<<<<< HEAD
	io_echild_low_level: INTEGER is
=======
	xml_io_echild_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_ECHILD"
 			}"
 		end

<<<<<<< HEAD
	io_econnrefused_low_level: INTEGER is
=======
	xml_io_econnrefused_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_ECONNREFUSED"
 			}"
 		end

<<<<<<< HEAD
	io_edeadlk_low_level: INTEGER is
=======
	xml_io_edeadlk_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_EDEADLK"
 			}"
 		end

<<<<<<< HEAD
	io_edom_low_level: INTEGER is
=======
	xml_io_edom_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_EDOM"
 			}"
 		end

<<<<<<< HEAD
	io_eexist_low_level: INTEGER is
=======
	xml_io_eexist_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_EEXIST"
 			}"
 		end

<<<<<<< HEAD
	io_efault_low_level: INTEGER is
=======
	xml_io_efault_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_EFAULT"
 			}"
 		end

<<<<<<< HEAD
	io_efbig_low_level: INTEGER is
=======
	xml_io_efbig_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_EFBIG"
 			}"
 		end

<<<<<<< HEAD
	io_einprogress_low_level: INTEGER is
=======
	xml_io_einprogress_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_EINPROGRESS"
 			}"
 		end

<<<<<<< HEAD
	io_eintr_low_level: INTEGER is
=======
	xml_io_eintr_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_EINTR"
 			}"
 		end

<<<<<<< HEAD
	io_einval_low_level: INTEGER is
=======
	xml_io_einval_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_EINVAL"
 			}"
 		end

<<<<<<< HEAD
	io_eio_low_level: INTEGER is
=======
	xml_io_eio_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_EIO"
 			}"
 		end

<<<<<<< HEAD
	io_eisconn_low_level: INTEGER is
=======
	xml_io_eisconn_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_EISCONN"
 			}"
 		end

<<<<<<< HEAD
	io_eisdir_low_level: INTEGER is
=======
	xml_io_eisdir_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_EISDIR"
 			}"
 		end

<<<<<<< HEAD
	io_emfile_low_level: INTEGER is
=======
	xml_io_emfile_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_EMFILE"
 			}"
 		end

<<<<<<< HEAD
	io_emlink_low_level: INTEGER is
=======
	xml_io_emlink_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_EMLINK"
 			}"
 		end

<<<<<<< HEAD
	io_emsgsize_low_level: INTEGER is
=======
	xml_io_emsgsize_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_EMSGSIZE"
 			}"
 		end

<<<<<<< HEAD
	io_enametoolong_low_level: INTEGER is
=======
	xml_io_enametoolong_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_ENAMETOOLONG"
 			}"
 		end

<<<<<<< HEAD
	io_encoder_low_level: INTEGER is
=======
	xml_io_encoder_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_ENCODER"
 			}"
 		end

<<<<<<< HEAD
	io_enetunreach_low_level: INTEGER is
=======
	xml_io_enetunreach_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_ENETUNREACH"
 			}"
 		end

<<<<<<< HEAD
	io_enfile_low_level: INTEGER is
=======
	xml_io_enfile_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_ENFILE"
 			}"
 		end

<<<<<<< HEAD
	io_enodev_low_level: INTEGER is
=======
	xml_io_enodev_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_ENODEV"
 			}"
 		end

<<<<<<< HEAD
	io_enoent_low_level: INTEGER is
=======
	xml_io_enoent_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_ENOENT"
 			}"
 		end

<<<<<<< HEAD
	io_enoexec_low_level: INTEGER is
=======
	xml_io_enoexec_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_ENOEXEC"
 			}"
 		end

<<<<<<< HEAD
	io_enolck_low_level: INTEGER is
=======
	xml_io_enolck_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_ENOLCK"
 			}"
 		end

<<<<<<< HEAD
	io_enomem_low_level: INTEGER is
=======
	xml_io_enomem_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_ENOMEM"
 			}"
 		end

<<<<<<< HEAD
	io_enospc_low_level: INTEGER is
=======
	xml_io_enospc_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_ENOSPC"
 			}"
 		end

<<<<<<< HEAD
	io_enosys_low_level: INTEGER is
=======
	xml_io_enosys_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_ENOSYS"
 			}"
 		end

<<<<<<< HEAD
	io_enotdir_low_level: INTEGER is
=======
	xml_io_enotdir_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_ENOTDIR"
 			}"
 		end

<<<<<<< HEAD
	io_enotempty_low_level: INTEGER is
=======
	xml_io_enotempty_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_ENOTEMPTY"
 			}"
 		end

<<<<<<< HEAD
	io_enotsock_low_level: INTEGER is
=======
	xml_io_enotsock_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_ENOTSOCK"
 			}"
 		end

<<<<<<< HEAD
	io_enotsup_low_level: INTEGER is
=======
	xml_io_enotsup_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_ENOTSUP"
 			}"
 		end

<<<<<<< HEAD
	io_enotty_low_level: INTEGER is
=======
	xml_io_enotty_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_ENOTTY"
 			}"
 		end

<<<<<<< HEAD
	io_enxio_low_level: INTEGER is
=======
	xml_io_enxio_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_ENXIO"
 			}"
 		end

<<<<<<< HEAD
	io_eperm_low_level: INTEGER is
=======
	xml_io_eperm_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_EPERM"
 			}"
 		end

<<<<<<< HEAD
	io_epipe_low_level: INTEGER is
=======
	xml_io_epipe_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_EPIPE"
 			}"
 		end

<<<<<<< HEAD
	io_erange_low_level: INTEGER is
=======
	xml_io_erange_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_ERANGE"
 			}"
 		end

<<<<<<< HEAD
	io_erofs_low_level: INTEGER is
=======
	xml_io_erofs_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_EROFS"
 			}"
 		end

<<<<<<< HEAD
	io_espipe_low_level: INTEGER is
=======
	xml_io_espipe_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_ESPIPE"
 			}"
 		end

<<<<<<< HEAD
	io_esrch_low_level: INTEGER is
=======
	xml_io_esrch_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_ESRCH"
 			}"
 		end

<<<<<<< HEAD
	io_etimedout_low_level: INTEGER is
=======
	xml_io_etimedout_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_ETIMEDOUT"
 			}"
 		end

<<<<<<< HEAD
	io_exdev_low_level: INTEGER is
=======
	xml_io_exdev_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_EXDEV"
 			}"
 		end

<<<<<<< HEAD
	io_flush_low_level: INTEGER is
=======
	xml_io_flush_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_FLUSH"
 			}"
 		end

<<<<<<< HEAD
	io_load_error_low_level: INTEGER is
=======
	xml_io_load_error_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_LOAD_ERROR"
 			}"
 		end

<<<<<<< HEAD
	io_network_attempt_low_level: INTEGER is
=======
	xml_io_network_attempt_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_NETWORK_ATTEMPT"
 			}"
 		end

<<<<<<< HEAD
	io_no_input_low_level: INTEGER is
=======
	xml_io_no_input_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_NO_INPUT"
 			}"
 		end

<<<<<<< HEAD
	io_unknown_low_level: INTEGER is
=======
	xml_io_unknown_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_UNKNOWN"
 			}"
 		end

<<<<<<< HEAD
	io_write_low_level: INTEGER is
=======
	xml_io_write_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_IO_WRITE"
 			}"
 		end

<<<<<<< HEAD
	module_close_low_level: INTEGER is
=======
	xml_module_close_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_MODULE_CLOSE"
 			}"
 		end

<<<<<<< HEAD
	module_open_low_level: INTEGER is
=======
	xml_module_open_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_MODULE_OPEN"
 			}"
 		end

<<<<<<< HEAD
	ns_err_attribute_redefined_low_level: INTEGER is
=======
	xml_ns_err_attribute_redefined_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_NS_ERR_ATTRIBUTE_REDEFINED"
 			}"
 		end

<<<<<<< HEAD
	ns_err_colon_low_level: INTEGER is
=======
	xml_ns_err_colon_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_NS_ERR_COLON"
 			}"
 		end

<<<<<<< HEAD
	ns_err_empty_low_level: INTEGER is
=======
	xml_ns_err_empty_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_NS_ERR_EMPTY"
 			}"
 		end

<<<<<<< HEAD
	ns_err_qname_low_level: INTEGER is
=======
	xml_ns_err_qname_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_NS_ERR_QNAME"
 			}"
 		end

<<<<<<< HEAD
	ns_err_undefined_namespace_low_level: INTEGER is
=======
	xml_ns_err_undefined_namespace_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_NS_ERR_UNDEFINED_NAMESPACE"
 			}"
 		end

<<<<<<< HEAD
	ns_err_xml_namespace_low_level: INTEGER is
=======
	xml_ns_err_xml_namespace_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_NS_ERR_XML_NAMESPACE"
 			}"
 		end

<<<<<<< HEAD
	regexp_compile_error_low_level: INTEGER is
=======
	xml_regexp_compile_error_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_REGEXP_COMPILE_ERROR"
 			}"
 		end

<<<<<<< HEAD
	rngp_anyname_attr_ancestor_low_level: INTEGER is
=======
	xml_rngp_anyname_attr_ancestor_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_ANYNAME_ATTR_ANCESTOR"
 			}"
 		end

<<<<<<< HEAD
	rngp_attr_conflict_low_level: INTEGER is
=======
	xml_rngp_attr_conflict_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_ATTR_CONFLICT"
 			}"
 		end

<<<<<<< HEAD
	rngp_attribute_children_low_level: INTEGER is
=======
	xml_rngp_attribute_children_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_ATTRIBUTE_CHILDREN"
 			}"
 		end

<<<<<<< HEAD
	rngp_attribute_content_low_level: INTEGER is
=======
	xml_rngp_attribute_content_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_ATTRIBUTE_CONTENT"
 			}"
 		end

<<<<<<< HEAD
	rngp_attribute_empty_low_level: INTEGER is
=======
	xml_rngp_attribute_empty_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_ATTRIBUTE_EMPTY"
 			}"
 		end

<<<<<<< HEAD
	rngp_attribute_noop_low_level: INTEGER is
=======
	xml_rngp_attribute_noop_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_ATTRIBUTE_NOOP"
 			}"
 		end

<<<<<<< HEAD
	rngp_choice_content_low_level: INTEGER is
=======
	xml_rngp_choice_content_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_CHOICE_CONTENT"
 			}"
 		end

<<<<<<< HEAD
	rngp_choice_empty_low_level: INTEGER is
=======
	xml_rngp_choice_empty_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_CHOICE_EMPTY"
 			}"
 		end

<<<<<<< HEAD
	rngp_create_failure_low_level: INTEGER is
=======
	xml_rngp_create_failure_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_CREATE_FAILURE"
 			}"
 		end

<<<<<<< HEAD
	rngp_data_content_low_level: INTEGER is
=======
	xml_rngp_data_content_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_DATA_CONTENT"
 			}"
 		end

<<<<<<< HEAD
	rngp_def_choice_and_interleave_low_level: INTEGER is
=======
	xml_rngp_def_choice_and_interleave_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_DEF_CHOICE_AND_INTERLEAVE"
 			}"
 		end

<<<<<<< HEAD
	rngp_define_create_failed_low_level: INTEGER is
=======
	xml_rngp_define_create_failed_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_DEFINE_CREATE_FAILED"
 			}"
 		end

<<<<<<< HEAD
	rngp_define_empty_low_level: INTEGER is
=======
	xml_rngp_define_empty_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_DEFINE_EMPTY"
 			}"
 		end

<<<<<<< HEAD
	rngp_define_missing_low_level: INTEGER is
=======
	xml_rngp_define_missing_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_DEFINE_MISSING"
 			}"
 		end

<<<<<<< HEAD
	rngp_define_name_missing_low_level: INTEGER is
=======
	xml_rngp_define_name_missing_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_DEFINE_NAME_MISSING"
 			}"
 		end

<<<<<<< HEAD
	rngp_elem_content_empty_low_level: INTEGER is
=======
	xml_rngp_elem_content_empty_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_ELEM_CONTENT_EMPTY"
 			}"
 		end

<<<<<<< HEAD
	rngp_elem_content_error_low_level: INTEGER is
=======
	xml_rngp_elem_content_error_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_ELEM_CONTENT_ERROR"
 			}"
 		end

<<<<<<< HEAD
	rngp_elem_text_conflict_low_level: INTEGER is
=======
	xml_rngp_elem_text_conflict_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_ELEM_TEXT_CONFLICT"
 			}"
 		end

<<<<<<< HEAD
	rngp_element_content_low_level: INTEGER is
=======
	xml_rngp_element_content_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_ELEMENT_CONTENT"
 			}"
 		end

<<<<<<< HEAD
	rngp_element_empty_low_level: INTEGER is
=======
	xml_rngp_element_empty_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_ELEMENT_EMPTY"
 			}"
 		end

<<<<<<< HEAD
	rngp_element_name_low_level: INTEGER is
=======
	xml_rngp_element_name_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_ELEMENT_NAME"
 			}"
 		end

<<<<<<< HEAD
	rngp_element_no_content_low_level: INTEGER is
=======
	xml_rngp_element_no_content_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_ELEMENT_NO_CONTENT"
 			}"
 		end

<<<<<<< HEAD
	rngp_empty_low_level: INTEGER is
=======
	xml_rngp_empty_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_EMPTY"
 			}"
 		end

<<<<<<< HEAD
	rngp_empty_construct_low_level: INTEGER is
=======
	xml_rngp_empty_construct_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_EMPTY_CONSTRUCT"
 			}"
 		end

<<<<<<< HEAD
	rngp_empty_content_low_level: INTEGER is
=======
	xml_rngp_empty_content_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_EMPTY_CONTENT"
 			}"
 		end

<<<<<<< HEAD
	rngp_empty_not_empty_low_level: INTEGER is
=======
	xml_rngp_empty_not_empty_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_EMPTY_NOT_EMPTY"
 			}"
 		end

<<<<<<< HEAD
	rngp_error_type_lib_low_level: INTEGER is
=======
	xml_rngp_error_type_lib_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_ERROR_TYPE_LIB"
 			}"
 		end

<<<<<<< HEAD
	rngp_except_empty_low_level: INTEGER is
=======
	xml_rngp_except_empty_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_EXCEPT_EMPTY"
 			}"
 		end

<<<<<<< HEAD
	rngp_except_missing_low_level: INTEGER is
=======
	xml_rngp_except_missing_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_EXCEPT_MISSING"
 			}"
 		end

<<<<<<< HEAD
	rngp_except_multiple_low_level: INTEGER is
=======
	xml_rngp_except_multiple_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_EXCEPT_MULTIPLE"
 			}"
 		end

<<<<<<< HEAD
	rngp_except_no_content_low_level: INTEGER is
=======
	xml_rngp_except_no_content_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_EXCEPT_NO_CONTENT"
 			}"
 		end

<<<<<<< HEAD
	rngp_external_ref_failure_low_level: INTEGER is
=======
	xml_rngp_external_ref_failure_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_EXTERNAL_REF_FAILURE"
 			}"
 		end

<<<<<<< HEAD
	rngp_externalref_emtpy_low_level: INTEGER is
=======
	xml_rngp_externalref_emtpy_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_EXTERNALREF_EMTPY"
 			}"
 		end

<<<<<<< HEAD
	rngp_externalref_recurse_low_level: INTEGER is
=======
	xml_rngp_externalref_recurse_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_EXTERNALREF_RECURSE"
 			}"
 		end

<<<<<<< HEAD
	rngp_forbidden_attribute_low_level: INTEGER is
=======
	xml_rngp_forbidden_attribute_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_FORBIDDEN_ATTRIBUTE"
 			}"
 		end

<<<<<<< HEAD
	rngp_foreign_element_low_level: INTEGER is
=======
	xml_rngp_foreign_element_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_FOREIGN_ELEMENT"
 			}"
 		end

<<<<<<< HEAD
	rngp_grammar_content_low_level: INTEGER is
=======
	xml_rngp_grammar_content_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_GRAMMAR_CONTENT"
 			}"
 		end

<<<<<<< HEAD
	rngp_grammar_empty_low_level: INTEGER is
=======
	xml_rngp_grammar_empty_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_GRAMMAR_EMPTY"
 			}"
 		end

<<<<<<< HEAD
	rngp_grammar_missing_low_level: INTEGER is
=======
	xml_rngp_grammar_missing_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_GRAMMAR_MISSING"
 			}"
 		end

<<<<<<< HEAD
	rngp_grammar_no_start_low_level: INTEGER is
=======
	xml_rngp_grammar_no_start_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_GRAMMAR_NO_START"
 			}"
 		end

<<<<<<< HEAD
	rngp_group_attr_conflict_low_level: INTEGER is
=======
	xml_rngp_group_attr_conflict_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_GROUP_ATTR_CONFLICT"
 			}"
 		end

<<<<<<< HEAD
	rngp_href_error_low_level: INTEGER is
=======
	xml_rngp_href_error_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_HREF_ERROR"
 			}"
 		end

<<<<<<< HEAD
	rngp_include_empty_low_level: INTEGER is
=======
	xml_rngp_include_empty_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_INCLUDE_EMPTY"
 			}"
 		end

<<<<<<< HEAD
	rngp_include_failure_low_level: INTEGER is
=======
	xml_rngp_include_failure_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_INCLUDE_FAILURE"
 			}"
 		end

<<<<<<< HEAD
	rngp_include_recurse_low_level: INTEGER is
=======
	xml_rngp_include_recurse_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_INCLUDE_RECURSE"
 			}"
 		end

<<<<<<< HEAD
	rngp_interleave_add_low_level: INTEGER is
=======
	xml_rngp_interleave_add_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_INTERLEAVE_ADD"
 			}"
 		end

<<<<<<< HEAD
	rngp_interleave_create_failed_low_level: INTEGER is
=======
	xml_rngp_interleave_create_failed_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_INTERLEAVE_CREATE_FAILED"
 			}"
 		end

<<<<<<< HEAD
	rngp_interleave_empty_low_level: INTEGER is
=======
	xml_rngp_interleave_empty_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_INTERLEAVE_EMPTY"
 			}"
 		end

<<<<<<< HEAD
	rngp_interleave_no_content_low_level: INTEGER is
=======
	xml_rngp_interleave_no_content_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_INTERLEAVE_NO_CONTENT"
 			}"
 		end

<<<<<<< HEAD
	rngp_invalid_define_name_low_level: INTEGER is
=======
	xml_rngp_invalid_define_name_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_INVALID_DEFINE_NAME"
 			}"
 		end

<<<<<<< HEAD
	rngp_invalid_uri_low_level: INTEGER is
=======
	xml_rngp_invalid_uri_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_INVALID_URI"
 			}"
 		end

<<<<<<< HEAD
	rngp_invalid_value_low_level: INTEGER is
=======
	xml_rngp_invalid_value_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_INVALID_VALUE"
 			}"
 		end

<<<<<<< HEAD
	rngp_missing_href_low_level: INTEGER is
=======
	xml_rngp_missing_href_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_MISSING_HREF"
 			}"
 		end

<<<<<<< HEAD
	rngp_name_missing_low_level: INTEGER is
=======
	xml_rngp_name_missing_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_NAME_MISSING"
 			}"
 		end

<<<<<<< HEAD
	rngp_need_combine_low_level: INTEGER is
=======
	xml_rngp_need_combine_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_NEED_COMBINE"
 			}"
 		end

<<<<<<< HEAD
	rngp_notallowed_not_empty_low_level: INTEGER is
=======
	xml_rngp_notallowed_not_empty_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_NOTALLOWED_NOT_EMPTY"
 			}"
 		end

<<<<<<< HEAD
	rngp_nsname_attr_ancestor_low_level: INTEGER is
=======
	xml_rngp_nsname_attr_ancestor_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_NSNAME_ATTR_ANCESTOR"
 			}"
 		end

<<<<<<< HEAD
	rngp_nsname_no_ns_low_level: INTEGER is
=======
	xml_rngp_nsname_no_ns_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_NSNAME_NO_NS"
 			}"
 		end

<<<<<<< HEAD
	rngp_param_forbidden_low_level: INTEGER is
=======
	xml_rngp_param_forbidden_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PARAM_FORBIDDEN"
 			}"
 		end

<<<<<<< HEAD
	rngp_param_name_missing_low_level: INTEGER is
=======
	xml_rngp_param_name_missing_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PARAM_NAME_MISSING"
 			}"
 		end

<<<<<<< HEAD
	rngp_parentref_create_failed_low_level: INTEGER is
=======
	xml_rngp_parentref_create_failed_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PARENTREF_CREATE_FAILED"
 			}"
 		end

<<<<<<< HEAD
	rngp_parentref_name_invalid_low_level: INTEGER is
=======
	xml_rngp_parentref_name_invalid_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PARENTREF_NAME_INVALID"
 			}"
 		end

<<<<<<< HEAD
	rngp_parentref_no_name_low_level: INTEGER is
=======
	xml_rngp_parentref_no_name_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PARENTREF_NO_NAME"
 			}"
 		end

<<<<<<< HEAD
	rngp_parentref_no_parent_low_level: INTEGER is
=======
	xml_rngp_parentref_no_parent_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PARENTREF_NO_PARENT"
 			}"
 		end

<<<<<<< HEAD
	rngp_parentref_not_empty_low_level: INTEGER is
=======
	xml_rngp_parentref_not_empty_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PARENTREF_NOT_EMPTY"
 			}"
 		end

<<<<<<< HEAD
	rngp_parse_error_low_level: INTEGER is
=======
	xml_rngp_parse_error_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PARSE_ERROR"
 			}"
 		end

<<<<<<< HEAD
	rngp_pat_anyname_except_anyname_low_level: INTEGER is
=======
	xml_rngp_pat_anyname_except_anyname_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PAT_ANYNAME_EXCEPT_ANYNAME"
 			}"
 		end

<<<<<<< HEAD
	rngp_pat_attr_attr_low_level: INTEGER is
=======
	xml_rngp_pat_attr_attr_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PAT_ATTR_ATTR"
 			}"
 		end

<<<<<<< HEAD
	rngp_pat_attr_elem_low_level: INTEGER is
=======
	xml_rngp_pat_attr_elem_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PAT_ATTR_ELEM"
 			}"
 		end

<<<<<<< HEAD
	rngp_pat_data_except_attr_low_level: INTEGER is
=======
	xml_rngp_pat_data_except_attr_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PAT_DATA_EXCEPT_ATTR"
 			}"
 		end

<<<<<<< HEAD
	rngp_pat_data_except_elem_low_level: INTEGER is
=======
	xml_rngp_pat_data_except_elem_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PAT_DATA_EXCEPT_ELEM"
 			}"
 		end

<<<<<<< HEAD
	rngp_pat_data_except_empty_low_level: INTEGER is
=======
	xml_rngp_pat_data_except_empty_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PAT_DATA_EXCEPT_EMPTY"
 			}"
 		end

<<<<<<< HEAD
	rngp_pat_data_except_group_low_level: INTEGER is
=======
	xml_rngp_pat_data_except_group_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PAT_DATA_EXCEPT_GROUP"
 			}"
 		end

<<<<<<< HEAD
	rngp_pat_data_except_interleave_low_level: INTEGER is
=======
	xml_rngp_pat_data_except_interleave_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PAT_DATA_EXCEPT_INTERLEAVE"
 			}"
 		end

<<<<<<< HEAD
	rngp_pat_data_except_list_low_level: INTEGER is
=======
	xml_rngp_pat_data_except_list_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PAT_DATA_EXCEPT_LIST"
 			}"
 		end

<<<<<<< HEAD
	rngp_pat_data_except_onemore_low_level: INTEGER is
=======
	xml_rngp_pat_data_except_onemore_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PAT_DATA_EXCEPT_ONEMORE"
 			}"
 		end

<<<<<<< HEAD
	rngp_pat_data_except_ref_low_level: INTEGER is
=======
	xml_rngp_pat_data_except_ref_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PAT_DATA_EXCEPT_REF"
 			}"
 		end

<<<<<<< HEAD
	rngp_pat_data_except_text_low_level: INTEGER is
=======
	xml_rngp_pat_data_except_text_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PAT_DATA_EXCEPT_TEXT"
 			}"
 		end

<<<<<<< HEAD
	rngp_pat_list_attr_low_level: INTEGER is
=======
	xml_rngp_pat_list_attr_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PAT_LIST_ATTR"
 			}"
 		end

<<<<<<< HEAD
	rngp_pat_list_elem_low_level: INTEGER is
=======
	xml_rngp_pat_list_elem_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PAT_LIST_ELEM"
 			}"
 		end

<<<<<<< HEAD
	rngp_pat_list_interleave_low_level: INTEGER is
=======
	xml_rngp_pat_list_interleave_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PAT_LIST_INTERLEAVE"
 			}"
 		end

<<<<<<< HEAD
	rngp_pat_list_list_low_level: INTEGER is
=======
	xml_rngp_pat_list_list_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PAT_LIST_LIST"
 			}"
 		end

<<<<<<< HEAD
	rngp_pat_list_ref_low_level: INTEGER is
=======
	xml_rngp_pat_list_ref_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PAT_LIST_REF"
 			}"
 		end

<<<<<<< HEAD
	rngp_pat_list_text_low_level: INTEGER is
=======
	xml_rngp_pat_list_text_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PAT_LIST_TEXT"
 			}"
 		end

<<<<<<< HEAD
	rngp_pat_nsname_except_anyname_low_level: INTEGER is
=======
	xml_rngp_pat_nsname_except_anyname_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PAT_NSNAME_EXCEPT_ANYNAME"
 			}"
 		end

<<<<<<< HEAD
	rngp_pat_nsname_except_nsname_low_level: INTEGER is
=======
	xml_rngp_pat_nsname_except_nsname_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PAT_NSNAME_EXCEPT_NSNAME"
 			}"
 		end

<<<<<<< HEAD
	rngp_pat_onemore_group_attr_low_level: INTEGER is
=======
	xml_rngp_pat_onemore_group_attr_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PAT_ONEMORE_GROUP_ATTR"
 			}"
 		end

<<<<<<< HEAD
	rngp_pat_onemore_interleave_attr_low_level: INTEGER is
=======
	xml_rngp_pat_onemore_interleave_attr_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PAT_ONEMORE_INTERLEAVE_ATTR"
 			}"
 		end

<<<<<<< HEAD
	rngp_pat_start_attr_low_level: INTEGER is
=======
	xml_rngp_pat_start_attr_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PAT_START_ATTR"
 			}"
 		end

<<<<<<< HEAD
	rngp_pat_start_data_low_level: INTEGER is
=======
	xml_rngp_pat_start_data_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PAT_START_DATA"
 			}"
 		end

<<<<<<< HEAD
	rngp_pat_start_empty_low_level: INTEGER is
=======
	xml_rngp_pat_start_empty_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PAT_START_EMPTY"
 			}"
 		end

<<<<<<< HEAD
	rngp_pat_start_group_low_level: INTEGER is
=======
	xml_rngp_pat_start_group_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PAT_START_GROUP"
 			}"
 		end

<<<<<<< HEAD
	rngp_pat_start_interleave_low_level: INTEGER is
=======
	xml_rngp_pat_start_interleave_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PAT_START_INTERLEAVE"
 			}"
 		end

<<<<<<< HEAD
	rngp_pat_start_list_low_level: INTEGER is
=======
	xml_rngp_pat_start_list_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PAT_START_LIST"
 			}"
 		end

<<<<<<< HEAD
	rngp_pat_start_onemore_low_level: INTEGER is
=======
	xml_rngp_pat_start_onemore_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PAT_START_ONEMORE"
 			}"
 		end

<<<<<<< HEAD
	rngp_pat_start_text_low_level: INTEGER is
=======
	xml_rngp_pat_start_text_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PAT_START_TEXT"
 			}"
 		end

<<<<<<< HEAD
	rngp_pat_start_value_low_level: INTEGER is
=======
	xml_rngp_pat_start_value_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PAT_START_VALUE"
 			}"
 		end

<<<<<<< HEAD
	rngp_prefix_undefined_low_level: INTEGER is
=======
	xml_rngp_prefix_undefined_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_PREFIX_UNDEFINED"
 			}"
 		end

<<<<<<< HEAD
	rngp_ref_create_failed_low_level: INTEGER is
=======
	xml_rngp_ref_create_failed_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_REF_CREATE_FAILED"
 			}"
 		end

<<<<<<< HEAD
	rngp_ref_cycle_low_level: INTEGER is
=======
	xml_rngp_ref_cycle_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_REF_CYCLE"
 			}"
 		end

<<<<<<< HEAD
	rngp_ref_name_invalid_low_level: INTEGER is
=======
	xml_rngp_ref_name_invalid_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_REF_NAME_INVALID"
 			}"
 		end

<<<<<<< HEAD
	rngp_ref_no_def_low_level: INTEGER is
=======
	xml_rngp_ref_no_def_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_REF_NO_DEF"
 			}"
 		end

<<<<<<< HEAD
	rngp_ref_no_name_low_level: INTEGER is
=======
	xml_rngp_ref_no_name_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_REF_NO_NAME"
 			}"
 		end

<<<<<<< HEAD
	rngp_ref_not_empty_low_level: INTEGER is
=======
	xml_rngp_ref_not_empty_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_REF_NOT_EMPTY"
 			}"
 		end

<<<<<<< HEAD
	rngp_start_choice_and_interleave_low_level: INTEGER is
=======
	xml_rngp_start_choice_and_interleave_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_START_CHOICE_AND_INTERLEAVE"
 			}"
 		end

<<<<<<< HEAD
	rngp_start_content_low_level: INTEGER is
=======
	xml_rngp_start_content_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_START_CONTENT"
 			}"
 		end

<<<<<<< HEAD
	rngp_start_empty_low_level: INTEGER is
=======
	xml_rngp_start_empty_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_START_EMPTY"
 			}"
 		end

<<<<<<< HEAD
	rngp_start_missing_low_level: INTEGER is
=======
	xml_rngp_start_missing_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_START_MISSING"
 			}"
 		end

<<<<<<< HEAD
	rngp_text_expected_low_level: INTEGER is
=======
	xml_rngp_text_expected_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_TEXT_EXPECTED"
 			}"
 		end

<<<<<<< HEAD
	rngp_text_has_child_low_level: INTEGER is
=======
	xml_rngp_text_has_child_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_TEXT_HAS_CHILD"
 			}"
 		end

<<<<<<< HEAD
	rngp_type_missing_low_level: INTEGER is
=======
	xml_rngp_type_missing_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_TYPE_MISSING"
 			}"
 		end

<<<<<<< HEAD
	rngp_type_not_found_low_level: INTEGER is
=======
	xml_rngp_type_not_found_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_TYPE_NOT_FOUND"
 			}"
 		end

<<<<<<< HEAD
	rngp_type_value_low_level: INTEGER is
=======
	xml_rngp_type_value_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_TYPE_VALUE"
 			}"
 		end

<<<<<<< HEAD
	rngp_unknown_attribute_low_level: INTEGER is
=======
	xml_rngp_unknown_attribute_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_UNKNOWN_ATTRIBUTE"
 			}"
 		end

<<<<<<< HEAD
	rngp_unknown_combine_low_level: INTEGER is
=======
	xml_rngp_unknown_combine_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_UNKNOWN_COMBINE"
 			}"
 		end

<<<<<<< HEAD
	rngp_unknown_construct_low_level: INTEGER is
=======
	xml_rngp_unknown_construct_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_UNKNOWN_CONSTRUCT"
 			}"
 		end

<<<<<<< HEAD
	rngp_unknown_type_lib_low_level: INTEGER is
=======
	xml_rngp_unknown_type_lib_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_UNKNOWN_TYPE_LIB"
 			}"
 		end

<<<<<<< HEAD
	rngp_uri_fragment_low_level: INTEGER is
=======
	xml_rngp_uri_fragment_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_URI_FRAGMENT"
 			}"
 		end

<<<<<<< HEAD
	rngp_uri_not_absolute_low_level: INTEGER is
=======
	xml_rngp_uri_not_absolute_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_URI_NOT_ABSOLUTE"
 			}"
 		end

<<<<<<< HEAD
	rngp_value_empty_low_level: INTEGER is
=======
	xml_rngp_value_empty_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_VALUE_EMPTY"
 			}"
 		end

<<<<<<< HEAD
	rngp_value_no_content_low_level: INTEGER is
=======
	xml_rngp_value_no_content_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_VALUE_NO_CONTENT"
 			}"
 		end

<<<<<<< HEAD
	rngp_xml_ns_low_level: INTEGER is
=======
	xml_rngp_xml_ns_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_XML_NS"
 			}"
 		end

<<<<<<< HEAD
	rngp_xmlns_name_low_level: INTEGER is
=======
	xml_rngp_xmlns_name_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_RNGP_XMLNS_NAME"
 			}"
 		end

<<<<<<< HEAD
	save_char_invalid_low_level: INTEGER is
=======
	xml_save_char_invalid_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SAVE_CHAR_INVALID"
 			}"
 		end

<<<<<<< HEAD
	save_no_doctype_low_level: INTEGER is
=======
	xml_save_no_doctype_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SAVE_NO_DOCTYPE"
 			}"
 		end

<<<<<<< HEAD
	save_not_utf8_low_level: INTEGER is
=======
	xml_save_not_utf8_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SAVE_NOT_UTF8"
 			}"
 		end

<<<<<<< HEAD
	save_unknown_encoding_low_level: INTEGER is
=======
	xml_save_unknown_encoding_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SAVE_UNKNOWN_ENCODING"
 			}"
 		end

<<<<<<< HEAD
	schemap_a_props_correct_2_low_level: INTEGER is
=======
	xml_schemap_a_props_correct_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_A_PROPS_CORRECT_2"
 			}"
 		end

<<<<<<< HEAD
	schemap_a_props_correct_3_low_level: INTEGER is
=======
	xml_schemap_a_props_correct_3_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_A_PROPS_CORRECT_3"
 			}"
 		end

<<<<<<< HEAD
	schemap_ag_props_correct_low_level: INTEGER is
=======
	xml_schemap_ag_props_correct_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_AG_PROPS_CORRECT"
 			}"
 		end

<<<<<<< HEAD
	schemap_attr_noname_noref_low_level: INTEGER is
=======
	xml_schemap_attr_noname_noref_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_ATTR_NONAME_NOREF"
 			}"
 		end

<<<<<<< HEAD
	schemap_attrformdefault_value_low_level: INTEGER is
=======
	xml_schemap_attrformdefault_value_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_ATTRFORMDEFAULT_VALUE"
 			}"
 		end

<<<<<<< HEAD
	schemap_attrgrp_noname_noref_low_level: INTEGER is
=======
	xml_schemap_attrgrp_noname_noref_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_ATTRGRP_NONAME_NOREF"
 			}"
 		end

<<<<<<< HEAD
	schemap_au_props_correct_low_level: INTEGER is
=======
	xml_schemap_au_props_correct_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_AU_PROPS_CORRECT"
 			}"
 		end

<<<<<<< HEAD
	schemap_au_props_correct_2_low_level: INTEGER is
=======
	xml_schemap_au_props_correct_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_AU_PROPS_CORRECT_2"
 			}"
 		end

<<<<<<< HEAD
	schemap_c_props_correct_low_level: INTEGER is
=======
	xml_schemap_c_props_correct_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_C_PROPS_CORRECT"
 			}"
 		end

<<<<<<< HEAD
	schemap_complextype_noname_noref_low_level: INTEGER is
=======
	xml_schemap_complextype_noname_noref_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_COMPLEXTYPE_NONAME_NOREF"
 			}"
 		end

<<<<<<< HEAD
	schemap_cos_all_limited_low_level: INTEGER is
=======
	xml_schemap_cos_all_limited_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_COS_ALL_LIMITED"
 			}"
 		end

<<<<<<< HEAD
	schemap_cos_ct_extends_1_1_low_level: INTEGER is
=======
	xml_schemap_cos_ct_extends_1_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_COS_CT_EXTENDS_1_1"
 			}"
 		end

<<<<<<< HEAD
	schemap_cos_ct_extends_1_2_low_level: INTEGER is
=======
	xml_schemap_cos_ct_extends_1_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_COS_CT_EXTENDS_1_2"
 			}"
 		end

<<<<<<< HEAD
	schemap_cos_ct_extends_1_3_low_level: INTEGER is
=======
	xml_schemap_cos_ct_extends_1_3_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_COS_CT_EXTENDS_1_3"
 			}"
 		end

<<<<<<< HEAD
	schemap_cos_st_derived_ok_2_1_low_level: INTEGER is
=======
	xml_schemap_cos_st_derived_ok_2_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_COS_ST_DERIVED_OK_2_1"
 			}"
 		end

<<<<<<< HEAD
	schemap_cos_st_derived_ok_2_2_low_level: INTEGER is
=======
	xml_schemap_cos_st_derived_ok_2_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_COS_ST_DERIVED_OK_2_2"
 			}"
 		end

<<<<<<< HEAD
	schemap_cos_st_restricts_1_1_low_level: INTEGER is
=======
	xml_schemap_cos_st_restricts_1_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_COS_ST_RESTRICTS_1_1"
 			}"
 		end

<<<<<<< HEAD
	schemap_cos_st_restricts_1_2_low_level: INTEGER is
=======
	xml_schemap_cos_st_restricts_1_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_COS_ST_RESTRICTS_1_2"
 			}"
 		end

<<<<<<< HEAD
	schemap_cos_st_restricts_1_3_1_low_level: INTEGER is
=======
	xml_schemap_cos_st_restricts_1_3_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_COS_ST_RESTRICTS_1_3_1"
 			}"
 		end

<<<<<<< HEAD
	schemap_cos_st_restricts_1_3_2_low_level: INTEGER is
=======
	xml_schemap_cos_st_restricts_1_3_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_COS_ST_RESTRICTS_1_3_2"
 			}"
 		end

<<<<<<< HEAD
	schemap_cos_st_restricts_2_1_low_level: INTEGER is
=======
	xml_schemap_cos_st_restricts_2_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_COS_ST_RESTRICTS_2_1"
 			}"
 		end

<<<<<<< HEAD
	schemap_cos_st_restricts_2_3_1_1_low_level: INTEGER is
=======
	xml_schemap_cos_st_restricts_2_3_1_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_COS_ST_RESTRICTS_2_3_1_1"
 			}"
 		end

<<<<<<< HEAD
	schemap_cos_st_restricts_2_3_1_2_low_level: INTEGER is
=======
	xml_schemap_cos_st_restricts_2_3_1_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_COS_ST_RESTRICTS_2_3_1_2"
 			}"
 		end

<<<<<<< HEAD
	schemap_cos_st_restricts_2_3_2_1_low_level: INTEGER is
=======
	xml_schemap_cos_st_restricts_2_3_2_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_COS_ST_RESTRICTS_2_3_2_1"
 			}"
 		end

<<<<<<< HEAD
	schemap_cos_st_restricts_2_3_2_2_low_level: INTEGER is
=======
	xml_schemap_cos_st_restricts_2_3_2_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_COS_ST_RESTRICTS_2_3_2_2"
 			}"
 		end

<<<<<<< HEAD
	schemap_cos_st_restricts_2_3_2_3_low_level: INTEGER is
=======
	xml_schemap_cos_st_restricts_2_3_2_3_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_COS_ST_RESTRICTS_2_3_2_3"
 			}"
 		end

<<<<<<< HEAD
	schemap_cos_st_restricts_2_3_2_4_low_level: INTEGER is
=======
	xml_schemap_cos_st_restricts_2_3_2_4_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_COS_ST_RESTRICTS_2_3_2_4"
 			}"
 		end

<<<<<<< HEAD
	schemap_cos_st_restricts_2_3_2_5_low_level: INTEGER is
=======
	xml_schemap_cos_st_restricts_2_3_2_5_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_COS_ST_RESTRICTS_2_3_2_5"
 			}"
 		end

<<<<<<< HEAD
	schemap_cos_st_restricts_3_1_low_level: INTEGER is
=======
	xml_schemap_cos_st_restricts_3_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_COS_ST_RESTRICTS_3_1"
 			}"
 		end

<<<<<<< HEAD
	schemap_cos_st_restricts_3_3_1_low_level: INTEGER is
=======
	xml_schemap_cos_st_restricts_3_3_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_COS_ST_RESTRICTS_3_3_1"
 			}"
 		end

<<<<<<< HEAD
	schemap_cos_st_restricts_3_3_1_2_low_level: INTEGER is
=======
	xml_schemap_cos_st_restricts_3_3_1_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_COS_ST_RESTRICTS_3_3_1_2"
 			}"
 		end

<<<<<<< HEAD
	schemap_cos_st_restricts_3_3_2_1_low_level: INTEGER is
=======
	xml_schemap_cos_st_restricts_3_3_2_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_COS_ST_RESTRICTS_3_3_2_1"
 			}"
 		end

<<<<<<< HEAD
	schemap_cos_st_restricts_3_3_2_2_low_level: INTEGER is
=======
	xml_schemap_cos_st_restricts_3_3_2_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_COS_ST_RESTRICTS_3_3_2_2"
 			}"
 		end

<<<<<<< HEAD
	schemap_cos_st_restricts_3_3_2_3_low_level: INTEGER is
=======
	xml_schemap_cos_st_restricts_3_3_2_3_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_COS_ST_RESTRICTS_3_3_2_3"
 			}"
 		end

<<<<<<< HEAD
	schemap_cos_st_restricts_3_3_2_4_low_level: INTEGER is
=======
	xml_schemap_cos_st_restricts_3_3_2_4_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_COS_ST_RESTRICTS_3_3_2_4"
 			}"
 		end

<<<<<<< HEAD
	schemap_cos_st_restricts_3_3_2_5_low_level: INTEGER is
=======
	xml_schemap_cos_st_restricts_3_3_2_5_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_COS_ST_RESTRICTS_3_3_2_5"
 			}"
 		end

<<<<<<< HEAD
	schemap_cos_valid_default_1_low_level: INTEGER is
=======
	xml_schemap_cos_valid_default_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_COS_VALID_DEFAULT_1"
 			}"
 		end

<<<<<<< HEAD
	schemap_cos_valid_default_2_1_low_level: INTEGER is
=======
	xml_schemap_cos_valid_default_2_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_COS_VALID_DEFAULT_2_1"
 			}"
 		end

<<<<<<< HEAD
	schemap_cos_valid_default_2_2_1_low_level: INTEGER is
=======
	xml_schemap_cos_valid_default_2_2_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_COS_VALID_DEFAULT_2_2_1"
 			}"
 		end

<<<<<<< HEAD
	schemap_cos_valid_default_2_2_2_low_level: INTEGER is
=======
	xml_schemap_cos_valid_default_2_2_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_COS_VALID_DEFAULT_2_2_2"
 			}"
 		end

<<<<<<< HEAD
	schemap_ct_props_correct_1_low_level: INTEGER is
=======
	xml_schemap_ct_props_correct_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_CT_PROPS_CORRECT_1"
 			}"
 		end

<<<<<<< HEAD
	schemap_ct_props_correct_2_low_level: INTEGER is
=======
	xml_schemap_ct_props_correct_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_CT_PROPS_CORRECT_2"
 			}"
 		end

<<<<<<< HEAD
	schemap_ct_props_correct_3_low_level: INTEGER is
=======
	xml_schemap_ct_props_correct_3_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_CT_PROPS_CORRECT_3"
 			}"
 		end

<<<<<<< HEAD
	schemap_ct_props_correct_4_low_level: INTEGER is
=======
	xml_schemap_ct_props_correct_4_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_CT_PROPS_CORRECT_4"
 			}"
 		end

<<<<<<< HEAD
	schemap_ct_props_correct_5_low_level: INTEGER is
=======
	xml_schemap_ct_props_correct_5_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_CT_PROPS_CORRECT_5"
 			}"
 		end

<<<<<<< HEAD
	schemap_cvc_simple_type_low_level: INTEGER is
=======
	xml_schemap_cvc_simple_type_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_CVC_SIMPLE_TYPE"
 			}"
 		end

<<<<<<< HEAD
	schemap_def_and_prefix_low_level: INTEGER is
=======
	xml_schemap_def_and_prefix_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_DEF_AND_PREFIX"
 			}"
 		end

<<<<<<< HEAD
	schemap_derivation_ok_restriction_1_low_level: INTEGER is
=======
	xml_schemap_derivation_ok_restriction_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_DERIVATION_OK_RESTRICTION_1"
 			}"
 		end

<<<<<<< HEAD
	schemap_derivation_ok_restriction_2_1_1_low_level: INTEGER is
=======
	xml_schemap_derivation_ok_restriction_2_1_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_DERIVATION_OK_RESTRICTION_2_1_1"
 			}"
 		end

<<<<<<< HEAD
	schemap_derivation_ok_restriction_2_1_2_low_level: INTEGER is
=======
	xml_schemap_derivation_ok_restriction_2_1_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_DERIVATION_OK_RESTRICTION_2_1_2"
 			}"
 		end

<<<<<<< HEAD
	schemap_derivation_ok_restriction_2_1_3_low_level: INTEGER is
=======
	xml_schemap_derivation_ok_restriction_2_1_3_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_DERIVATION_OK_RESTRICTION_2_1_3"
 			}"
 		end

<<<<<<< HEAD
	schemap_derivation_ok_restriction_2_2_low_level: INTEGER is
=======
	xml_schemap_derivation_ok_restriction_2_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_DERIVATION_OK_RESTRICTION_2_2"
 			}"
 		end

<<<<<<< HEAD
	schemap_derivation_ok_restriction_3_low_level: INTEGER is
=======
	xml_schemap_derivation_ok_restriction_3_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_DERIVATION_OK_RESTRICTION_3"
 			}"
 		end

<<<<<<< HEAD
	schemap_derivation_ok_restriction_4_1_low_level: INTEGER is
=======
	xml_schemap_derivation_ok_restriction_4_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_DERIVATION_OK_RESTRICTION_4_1"
 			}"
 		end

<<<<<<< HEAD
	schemap_derivation_ok_restriction_4_2_low_level: INTEGER is
=======
	xml_schemap_derivation_ok_restriction_4_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_DERIVATION_OK_RESTRICTION_4_2"
 			}"
 		end

<<<<<<< HEAD
	schemap_derivation_ok_restriction_4_3_low_level: INTEGER is
=======
	xml_schemap_derivation_ok_restriction_4_3_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_DERIVATION_OK_RESTRICTION_4_3"
 			}"
 		end

<<<<<<< HEAD
	schemap_e_props_correct_2_low_level: INTEGER is
=======
	xml_schemap_e_props_correct_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_E_PROPS_CORRECT_2"
 			}"
 		end

<<<<<<< HEAD
	schemap_e_props_correct_3_low_level: INTEGER is
=======
	xml_schemap_e_props_correct_3_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_E_PROPS_CORRECT_3"
 			}"
 		end

<<<<<<< HEAD
	schemap_e_props_correct_4_low_level: INTEGER is
=======
	xml_schemap_e_props_correct_4_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_E_PROPS_CORRECT_4"
 			}"
 		end

<<<<<<< HEAD
	schemap_e_props_correct_5_low_level: INTEGER is
=======
	xml_schemap_e_props_correct_5_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_E_PROPS_CORRECT_5"
 			}"
 		end

<<<<<<< HEAD
	schemap_e_props_correct_6_low_level: INTEGER is
=======
	xml_schemap_e_props_correct_6_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_E_PROPS_CORRECT_6"
 			}"
 		end

<<<<<<< HEAD
	schemap_elem_default_fixed_low_level: INTEGER is
=======
	xml_schemap_elem_default_fixed_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_ELEM_DEFAULT_FIXED"
 			}"
 		end

<<<<<<< HEAD
	schemap_elem_noname_noref_low_level: INTEGER is
=======
	xml_schemap_elem_noname_noref_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_ELEM_NONAME_NOREF"
 			}"
 		end

<<<<<<< HEAD
	schemap_elemformdefault_value_low_level: INTEGER is
=======
	xml_schemap_elemformdefault_value_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_ELEMFORMDEFAULT_VALUE"
 			}"
 		end

<<<<<<< HEAD
	schemap_extension_no_base_low_level: INTEGER is
=======
	xml_schemap_extension_no_base_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_EXTENSION_NO_BASE"
 			}"
 		end

<<<<<<< HEAD
	schemap_facet_no_value_low_level: INTEGER is
=======
	xml_schemap_facet_no_value_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_FACET_NO_VALUE"
 			}"
 		end

<<<<<<< HEAD
	schemap_failed_build_import_low_level: INTEGER is
=======
	xml_schemap_failed_build_import_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_FAILED_BUILD_IMPORT"
 			}"
 		end

<<<<<<< HEAD
	schemap_failed_load_low_level: INTEGER is
=======
	xml_schemap_failed_load_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_FAILED_LOAD"
 			}"
 		end

<<<<<<< HEAD
	schemap_failed_parse_low_level: INTEGER is
=======
	xml_schemap_failed_parse_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_FAILED_PARSE"
 			}"
 		end

<<<<<<< HEAD
	schemap_group_noname_noref_low_level: INTEGER is
=======
	xml_schemap_group_noname_noref_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_GROUP_NONAME_NOREF"
 			}"
 		end

<<<<<<< HEAD
	schemap_import_namespace_not_uri_low_level: INTEGER is
=======
	xml_schemap_import_namespace_not_uri_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_IMPORT_NAMESPACE_NOT_URI"
 			}"
 		end

<<<<<<< HEAD
	schemap_import_redefine_nsname_low_level: INTEGER is
=======
	xml_schemap_import_redefine_nsname_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_IMPORT_REDEFINE_NSNAME"
 			}"
 		end

<<<<<<< HEAD
	schemap_import_schema_not_uri_low_level: INTEGER is
=======
	xml_schemap_import_schema_not_uri_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_IMPORT_SCHEMA_NOT_URI"
 			}"
 		end

<<<<<<< HEAD
	schemap_include_schema_no_uri_low_level: INTEGER is
=======
	xml_schemap_include_schema_no_uri_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_INCLUDE_SCHEMA_NO_URI"
 			}"
 		end

<<<<<<< HEAD
	schemap_include_schema_not_uri_low_level: INTEGER is
=======
	xml_schemap_include_schema_not_uri_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_INCLUDE_SCHEMA_NOT_URI"
 			}"
 		end

<<<<<<< HEAD
	schemap_internal_low_level: INTEGER is
=======
	xml_schemap_internal_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_INTERNAL"
 			}"
 		end

<<<<<<< HEAD
	schemap_intersection_not_expressible_low_level: INTEGER is
=======
	xml_schemap_intersection_not_expressible_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_INTERSECTION_NOT_EXPRESSIBLE"
 			}"
 		end

<<<<<<< HEAD
	schemap_invalid_attr_combination_low_level: INTEGER is
=======
	xml_schemap_invalid_attr_combination_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_INVALID_ATTR_COMBINATION"
 			}"
 		end

<<<<<<< HEAD
	schemap_invalid_attr_inline_combination_low_level: INTEGER is
=======
	xml_schemap_invalid_attr_inline_combination_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_INVALID_ATTR_INLINE_COMBINATION"
 			}"
 		end

<<<<<<< HEAD
	schemap_invalid_attr_name_low_level: INTEGER is
=======
	xml_schemap_invalid_attr_name_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_INVALID_ATTR_NAME"
 			}"
 		end

<<<<<<< HEAD
	schemap_invalid_attr_use_low_level: INTEGER is
=======
	xml_schemap_invalid_attr_use_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_INVALID_ATTR_USE"
 			}"
 		end

<<<<<<< HEAD
	schemap_invalid_boolean_low_level: INTEGER is
=======
	xml_schemap_invalid_boolean_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_INVALID_BOOLEAN"
 			}"
 		end

<<<<<<< HEAD
	schemap_invalid_enum_low_level: INTEGER is
=======
	xml_schemap_invalid_enum_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_INVALID_ENUM"
 			}"
 		end

<<<<<<< HEAD
	schemap_invalid_facet_low_level: INTEGER is
=======
	xml_schemap_invalid_facet_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_INVALID_FACET"
 			}"
 		end

<<<<<<< HEAD
	schemap_invalid_facet_value_low_level: INTEGER is
=======
	xml_schemap_invalid_facet_value_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_INVALID_FACET_VALUE"
 			}"
 		end

<<<<<<< HEAD
	schemap_invalid_maxoccurs_low_level: INTEGER is
=======
	xml_schemap_invalid_maxoccurs_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_INVALID_MAXOCCURS"
 			}"
 		end

<<<<<<< HEAD
	schemap_invalid_minoccurs_low_level: INTEGER is
=======
	xml_schemap_invalid_minoccurs_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_INVALID_MINOCCURS"
 			}"
 		end

<<<<<<< HEAD
	schemap_invalid_ref_and_subtype_low_level: INTEGER is
=======
	xml_schemap_invalid_ref_and_subtype_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_INVALID_REF_AND_SUBTYPE"
 			}"
 		end

<<<<<<< HEAD
	schemap_invalid_white_space_low_level: INTEGER is
=======
	xml_schemap_invalid_white_space_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_INVALID_WHITE_SPACE"
 			}"
 		end

<<<<<<< HEAD
	schemap_mg_props_correct_1_low_level: INTEGER is
=======
	xml_schemap_mg_props_correct_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_MG_PROPS_CORRECT_1"
 			}"
 		end

<<<<<<< HEAD
	schemap_mg_props_correct_2_low_level: INTEGER is
=======
	xml_schemap_mg_props_correct_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_MG_PROPS_CORRECT_2"
 			}"
 		end

<<<<<<< HEAD
	schemap_missing_simpletype_child_low_level: INTEGER is
=======
	xml_schemap_missing_simpletype_child_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_MISSING_SIMPLETYPE_CHILD"
 			}"
 		end

<<<<<<< HEAD
	schemap_no_xmlns_low_level: INTEGER is
=======
	xml_schemap_no_xmlns_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_NO_XMLNS"
 			}"
 		end

<<<<<<< HEAD
	schemap_no_xsi_low_level: INTEGER is
=======
	xml_schemap_no_xsi_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_NO_XSI"
 			}"
 		end

<<<<<<< HEAD
	schemap_noattr_noref_low_level: INTEGER is
=======
	xml_schemap_noattr_noref_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_NOATTR_NOREF"
 			}"
 		end

<<<<<<< HEAD
	schemap_noroot_low_level: INTEGER is
=======
	xml_schemap_noroot_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_NOROOT"
 			}"
 		end

<<<<<<< HEAD
	schemap_not_deterministic_low_level: INTEGER is
=======
	xml_schemap_not_deterministic_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_NOT_DETERMINISTIC"
 			}"
 		end

<<<<<<< HEAD
	schemap_not_schema_low_level: INTEGER is
=======
	xml_schemap_not_schema_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_NOT_SCHEMA"
 			}"
 		end

<<<<<<< HEAD
	schemap_notation_no_name_low_level: INTEGER is
=======
	xml_schemap_notation_no_name_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_NOTATION_NO_NAME"
 			}"
 		end

<<<<<<< HEAD
	schemap_nothing_to_parse_low_level: INTEGER is
=======
	xml_schemap_nothing_to_parse_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_NOTHING_TO_PARSE"
 			}"
 		end

<<<<<<< HEAD
	schemap_notype_noref_low_level: INTEGER is
=======
	xml_schemap_notype_noref_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_NOTYPE_NOREF"
 			}"
 		end

<<<<<<< HEAD
	schemap_p_props_correct_1_low_level: INTEGER is
=======
	xml_schemap_p_props_correct_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_P_PROPS_CORRECT_1"
 			}"
 		end

<<<<<<< HEAD
	schemap_p_props_correct_2_1_low_level: INTEGER is
=======
	xml_schemap_p_props_correct_2_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_P_PROPS_CORRECT_2_1"
 			}"
 		end

<<<<<<< HEAD
	schemap_p_props_correct_2_2_low_level: INTEGER is
=======
	xml_schemap_p_props_correct_2_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_P_PROPS_CORRECT_2_2"
 			}"
 		end

<<<<<<< HEAD
	schemap_prefix_undefined_low_level: INTEGER is
=======
	xml_schemap_prefix_undefined_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_PREFIX_UNDEFINED"
 			}"
 		end

<<<<<<< HEAD
	schemap_recursive_low_level: INTEGER is
=======
	xml_schemap_recursive_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_RECURSIVE"
 			}"
 		end

<<<<<<< HEAD
	schemap_redefined_attr_low_level: INTEGER is
=======
	xml_schemap_redefined_attr_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_REDEFINED_ATTR"
 			}"
 		end

<<<<<<< HEAD
	schemap_redefined_attrgroup_low_level: INTEGER is
=======
	xml_schemap_redefined_attrgroup_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_REDEFINED_ATTRGROUP"
 			}"
 		end

<<<<<<< HEAD
	schemap_redefined_element_low_level: INTEGER is
=======
	xml_schemap_redefined_element_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_REDEFINED_ELEMENT"
 			}"
 		end

<<<<<<< HEAD
	schemap_redefined_group_low_level: INTEGER is
=======
	xml_schemap_redefined_group_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_REDEFINED_GROUP"
 			}"
 		end

<<<<<<< HEAD
	schemap_redefined_notation_low_level: INTEGER is
=======
	xml_schemap_redefined_notation_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_REDEFINED_NOTATION"
 			}"
 		end

<<<<<<< HEAD
	schemap_redefined_type_low_level: INTEGER is
=======
	xml_schemap_redefined_type_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_REDEFINED_TYPE"
 			}"
 		end

<<<<<<< HEAD
	schemap_ref_and_content_low_level: INTEGER is
=======
	xml_schemap_ref_and_content_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_REF_AND_CONTENT"
 			}"
 		end

<<<<<<< HEAD
	schemap_ref_and_subtype_low_level: INTEGER is
=======
	xml_schemap_ref_and_subtype_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_REF_AND_SUBTYPE"
 			}"
 		end

<<<<<<< HEAD
	schemap_regexp_invalid_low_level: INTEGER is
=======
	xml_schemap_regexp_invalid_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_REGEXP_INVALID"
 			}"
 		end

<<<<<<< HEAD
	schemap_restriction_noname_noref_low_level: INTEGER is
=======
	xml_schemap_restriction_noname_noref_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_RESTRICTION_NONAME_NOREF"
 			}"
 		end

<<<<<<< HEAD
	schemap_s4s_attr_invalid_value_low_level: INTEGER is
=======
	xml_schemap_s4s_attr_invalid_value_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_S4S_ATTR_INVALID_VALUE"
 			}"
 		end

<<<<<<< HEAD
	schemap_s4s_attr_missing_low_level: INTEGER is
=======
	xml_schemap_s4s_attr_missing_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_S4S_ATTR_MISSING"
 			}"
 		end

<<<<<<< HEAD
	schemap_s4s_attr_not_allowed_low_level: INTEGER is
=======
	xml_schemap_s4s_attr_not_allowed_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_S4S_ATTR_NOT_ALLOWED"
 			}"
 		end

<<<<<<< HEAD
	schemap_s4s_elem_missing_low_level: INTEGER is
=======
	xml_schemap_s4s_elem_missing_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_S4S_ELEM_MISSING"
 			}"
 		end

<<<<<<< HEAD
	schemap_s4s_elem_not_allowed_low_level: INTEGER is
=======
	xml_schemap_s4s_elem_not_allowed_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_S4S_ELEM_NOT_ALLOWED"
 			}"
 		end

<<<<<<< HEAD
	schemap_simpletype_noname_low_level: INTEGER is
=======
	xml_schemap_simpletype_noname_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_SIMPLETYPE_NONAME"
 			}"
 		end

<<<<<<< HEAD
	schemap_src_attribute_1_low_level: INTEGER is
=======
	xml_schemap_src_attribute_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_SRC_ATTRIBUTE_1"
 			}"
 		end

<<<<<<< HEAD
	schemap_src_attribute_2_low_level: INTEGER is
=======
	xml_schemap_src_attribute_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_SRC_ATTRIBUTE_2"
 			}"
 		end

<<<<<<< HEAD
	schemap_src_attribute_3_1_low_level: INTEGER is
=======
	xml_schemap_src_attribute_3_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_SRC_ATTRIBUTE_3_1"
 			}"
 		end

<<<<<<< HEAD
	schemap_src_attribute_3_2_low_level: INTEGER is
=======
	xml_schemap_src_attribute_3_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_SRC_ATTRIBUTE_3_2"
 			}"
 		end

<<<<<<< HEAD
	schemap_src_attribute_4_low_level: INTEGER is
=======
	xml_schemap_src_attribute_4_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_SRC_ATTRIBUTE_4"
 			}"
 		end

<<<<<<< HEAD
	schemap_src_attribute_group_1_low_level: INTEGER is
=======
	xml_schemap_src_attribute_group_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_SRC_ATTRIBUTE_GROUP_1"
 			}"
 		end

<<<<<<< HEAD
	schemap_src_attribute_group_2_low_level: INTEGER is
=======
	xml_schemap_src_attribute_group_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_SRC_ATTRIBUTE_GROUP_2"
 			}"
 		end

<<<<<<< HEAD
	schemap_src_attribute_group_3_low_level: INTEGER is
=======
	xml_schemap_src_attribute_group_3_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_SRC_ATTRIBUTE_GROUP_3"
 			}"
 		end

<<<<<<< HEAD
	schemap_src_ct_1_low_level: INTEGER is
=======
	xml_schemap_src_ct_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_SRC_CT_1"
 			}"
 		end

<<<<<<< HEAD
	schemap_src_element_1_low_level: INTEGER is
=======
	xml_schemap_src_element_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_SRC_ELEMENT_1"
 			}"
 		end

<<<<<<< HEAD
	schemap_src_element_2_1_low_level: INTEGER is
=======
	xml_schemap_src_element_2_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_SRC_ELEMENT_2_1"
 			}"
 		end

<<<<<<< HEAD
	schemap_src_element_2_2_low_level: INTEGER is
=======
	xml_schemap_src_element_2_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_SRC_ELEMENT_2_2"
 			}"
 		end

<<<<<<< HEAD
	schemap_src_element_3_low_level: INTEGER is
=======
	xml_schemap_src_element_3_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_SRC_ELEMENT_3"
 			}"
 		end

<<<<<<< HEAD
	schemap_src_import_low_level: INTEGER is
=======
	xml_schemap_src_import_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_SRC_IMPORT"
 			}"
 		end

<<<<<<< HEAD
	schemap_src_import_1_1_low_level: INTEGER is
=======
	xml_schemap_src_import_1_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_SRC_IMPORT_1_1"
 			}"
 		end

<<<<<<< HEAD
	schemap_src_import_1_2_low_level: INTEGER is
=======
	xml_schemap_src_import_1_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_SRC_IMPORT_1_2"
 			}"
 		end

<<<<<<< HEAD
	schemap_src_import_2_low_level: INTEGER is
=======
	xml_schemap_src_import_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_SRC_IMPORT_2"
 			}"
 		end

<<<<<<< HEAD
	schemap_src_import_2_1_low_level: INTEGER is
=======
	xml_schemap_src_import_2_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_SRC_IMPORT_2_1"
 			}"
 		end

<<<<<<< HEAD
	schemap_src_import_2_2_low_level: INTEGER is
=======
	xml_schemap_src_import_2_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_SRC_IMPORT_2_2"
 			}"
 		end

<<<<<<< HEAD
	schemap_src_import_3_1_low_level: INTEGER is
=======
	xml_schemap_src_import_3_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_SRC_IMPORT_3_1"
 			}"
 		end

<<<<<<< HEAD
	schemap_src_import_3_2_low_level: INTEGER is
=======
	xml_schemap_src_import_3_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_SRC_IMPORT_3_2"
 			}"
 		end

<<<<<<< HEAD
	schemap_src_include_low_level: INTEGER is
=======
	xml_schemap_src_include_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_SRC_INCLUDE"
 			}"
 		end

<<<<<<< HEAD
	schemap_src_list_itemtype_or_simpletype_low_level: INTEGER is
=======
	xml_schemap_src_list_itemtype_or_simpletype_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_SRC_LIST_ITEMTYPE_OR_SIMPLETYPE"
 			}"
 		end

<<<<<<< HEAD
	schemap_src_redefine_low_level: INTEGER is
=======
	xml_schemap_src_redefine_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_SRC_REDEFINE"
 			}"
 		end

<<<<<<< HEAD
	schemap_src_resolve_low_level: INTEGER is
=======
	xml_schemap_src_resolve_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_SRC_RESOLVE"
 			}"
 		end

<<<<<<< HEAD
	schemap_src_restriction_base_or_simpletype_low_level: INTEGER is
=======
	xml_schemap_src_restriction_base_or_simpletype_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_SRC_RESTRICTION_BASE_OR_SIMPLETYPE"
 			}"
 		end

<<<<<<< HEAD
	schemap_src_simple_type_1_low_level: INTEGER is
=======
	xml_schemap_src_simple_type_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_SRC_SIMPLE_TYPE_1"
 			}"
 		end

<<<<<<< HEAD
	schemap_src_simple_type_2_low_level: INTEGER is
=======
	xml_schemap_src_simple_type_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_SRC_SIMPLE_TYPE_2"
 			}"
 		end

<<<<<<< HEAD
	schemap_src_simple_type_3_low_level: INTEGER is
=======
	xml_schemap_src_simple_type_3_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_SRC_SIMPLE_TYPE_3"
 			}"
 		end

<<<<<<< HEAD
	schemap_src_simple_type_4_low_level: INTEGER is
=======
	xml_schemap_src_simple_type_4_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_SRC_SIMPLE_TYPE_4"
 			}"
 		end

<<<<<<< HEAD
	schemap_src_union_membertypes_or_simpletypes_low_level: INTEGER is
=======
	xml_schemap_src_union_membertypes_or_simpletypes_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_SRC_UNION_MEMBERTYPES_OR_SIMPLETYPES"
 			}"
 		end

<<<<<<< HEAD
	schemap_st_props_correct_1_low_level: INTEGER is
=======
	xml_schemap_st_props_correct_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_ST_PROPS_CORRECT_1"
 			}"
 		end

<<<<<<< HEAD
	schemap_st_props_correct_2_low_level: INTEGER is
=======
	xml_schemap_st_props_correct_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_ST_PROPS_CORRECT_2"
 			}"
 		end

<<<<<<< HEAD
	schemap_st_props_correct_3_low_level: INTEGER is
=======
	xml_schemap_st_props_correct_3_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_ST_PROPS_CORRECT_3"
 			}"
 		end

<<<<<<< HEAD
	schemap_supernumerous_list_item_type_low_level: INTEGER is
=======
	xml_schemap_supernumerous_list_item_type_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_SUPERNUMEROUS_LIST_ITEM_TYPE"
 			}"
 		end

<<<<<<< HEAD
	schemap_type_and_subtype_low_level: INTEGER is
=======
	xml_schemap_type_and_subtype_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_TYPE_AND_SUBTYPE"
 			}"
 		end

<<<<<<< HEAD
	schemap_union_not_expressible_low_level: INTEGER is
=======
	xml_schemap_union_not_expressible_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_UNION_NOT_EXPRESSIBLE"
 			}"
 		end

<<<<<<< HEAD
	schemap_unknown_all_child_low_level: INTEGER is
=======
	xml_schemap_unknown_all_child_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_UNKNOWN_ALL_CHILD"
 			}"
 		end

<<<<<<< HEAD
	schemap_unknown_anyattribute_child_low_level: INTEGER is
=======
	xml_schemap_unknown_anyattribute_child_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_UNKNOWN_ANYATTRIBUTE_CHILD"
 			}"
 		end

<<<<<<< HEAD
	schemap_unknown_attr_child_low_level: INTEGER is
=======
	xml_schemap_unknown_attr_child_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_UNKNOWN_ATTR_CHILD"
 			}"
 		end

<<<<<<< HEAD
	schemap_unknown_attrgrp_child_low_level: INTEGER is
=======
	xml_schemap_unknown_attrgrp_child_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_UNKNOWN_ATTRGRP_CHILD"
 			}"
 		end

<<<<<<< HEAD
	schemap_unknown_attribute_group_low_level: INTEGER is
=======
	xml_schemap_unknown_attribute_group_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_UNKNOWN_ATTRIBUTE_GROUP"
 			}"
 		end

<<<<<<< HEAD
	schemap_unknown_base_type_low_level: INTEGER is
=======
	xml_schemap_unknown_base_type_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_UNKNOWN_BASE_TYPE"
 			}"
 		end

<<<<<<< HEAD
	schemap_unknown_choice_child_low_level: INTEGER is
=======
	xml_schemap_unknown_choice_child_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_UNKNOWN_CHOICE_CHILD"
 			}"
 		end

<<<<<<< HEAD
	schemap_unknown_complexcontent_child_low_level: INTEGER is
=======
	xml_schemap_unknown_complexcontent_child_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_UNKNOWN_COMPLEXCONTENT_CHILD"
 			}"
 		end

<<<<<<< HEAD
	schemap_unknown_complextype_child_low_level: INTEGER is
=======
	xml_schemap_unknown_complextype_child_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_UNKNOWN_COMPLEXTYPE_CHILD"
 			}"
 		end

<<<<<<< HEAD
	schemap_unknown_elem_child_low_level: INTEGER is
=======
	xml_schemap_unknown_elem_child_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_UNKNOWN_ELEM_CHILD"
 			}"
 		end

<<<<<<< HEAD
	schemap_unknown_extension_child_low_level: INTEGER is
=======
	xml_schemap_unknown_extension_child_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_UNKNOWN_EXTENSION_CHILD"
 			}"
 		end

<<<<<<< HEAD
	schemap_unknown_facet_child_low_level: INTEGER is
=======
	xml_schemap_unknown_facet_child_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_UNKNOWN_FACET_CHILD"
 			}"
 		end

<<<<<<< HEAD
	schemap_unknown_facet_type_low_level: INTEGER is
=======
	xml_schemap_unknown_facet_type_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_UNKNOWN_FACET_TYPE"
 			}"
 		end

<<<<<<< HEAD
	schemap_unknown_group_child_low_level: INTEGER is
=======
	xml_schemap_unknown_group_child_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_UNKNOWN_GROUP_CHILD"
 			}"
 		end

<<<<<<< HEAD
	schemap_unknown_import_child_low_level: INTEGER is
=======
	xml_schemap_unknown_import_child_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_UNKNOWN_IMPORT_CHILD"
 			}"
 		end

<<<<<<< HEAD
	schemap_unknown_include_child_low_level: INTEGER is
=======
	xml_schemap_unknown_include_child_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_UNKNOWN_INCLUDE_CHILD"
 			}"
 		end

<<<<<<< HEAD
	schemap_unknown_list_child_low_level: INTEGER is
=======
	xml_schemap_unknown_list_child_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_UNKNOWN_LIST_CHILD"
 			}"
 		end

<<<<<<< HEAD
	schemap_unknown_member_type_low_level: INTEGER is
=======
	xml_schemap_unknown_member_type_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_UNKNOWN_MEMBER_TYPE"
 			}"
 		end

<<<<<<< HEAD
	schemap_unknown_notation_child_low_level: INTEGER is
=======
	xml_schemap_unknown_notation_child_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_UNKNOWN_NOTATION_CHILD"
 			}"
 		end

<<<<<<< HEAD
	schemap_unknown_prefix_low_level: INTEGER is
=======
	xml_schemap_unknown_prefix_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_UNKNOWN_PREFIX"
 			}"
 		end

<<<<<<< HEAD
	schemap_unknown_processcontent_child_low_level: INTEGER is
=======
	xml_schemap_unknown_processcontent_child_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_UNKNOWN_PROCESSCONTENT_CHILD"
 			}"
 		end

<<<<<<< HEAD
	schemap_unknown_ref_low_level: INTEGER is
=======
	xml_schemap_unknown_ref_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_UNKNOWN_REF"
 			}"
 		end

<<<<<<< HEAD
	schemap_unknown_restriction_child_low_level: INTEGER is
=======
	xml_schemap_unknown_restriction_child_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_UNKNOWN_RESTRICTION_CHILD"
 			}"
 		end

<<<<<<< HEAD
	schemap_unknown_schemas_child_low_level: INTEGER is
=======
	xml_schemap_unknown_schemas_child_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_UNKNOWN_SCHEMAS_CHILD"
 			}"
 		end

<<<<<<< HEAD
	schemap_unknown_sequence_child_low_level: INTEGER is
=======
	xml_schemap_unknown_sequence_child_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_UNKNOWN_SEQUENCE_CHILD"
 			}"
 		end

<<<<<<< HEAD
	schemap_unknown_simplecontent_child_low_level: INTEGER is
=======
	xml_schemap_unknown_simplecontent_child_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_UNKNOWN_SIMPLECONTENT_CHILD"
 			}"
 		end

<<<<<<< HEAD
	schemap_unknown_simpletype_child_low_level: INTEGER is
=======
	xml_schemap_unknown_simpletype_child_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_UNKNOWN_SIMPLETYPE_CHILD"
 			}"
 		end

<<<<<<< HEAD
	schemap_unknown_type_low_level: INTEGER is
=======
	xml_schemap_unknown_type_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_UNKNOWN_TYPE"
 			}"
 		end

<<<<<<< HEAD
	schemap_unknown_union_child_low_level: INTEGER is
=======
	xml_schemap_unknown_union_child_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_UNKNOWN_UNION_CHILD"
 			}"
 		end

<<<<<<< HEAD
	schemap_warn_attr_pointless_proh_low_level: INTEGER is
=======
	xml_schemap_warn_attr_pointless_proh_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_WARN_ATTR_POINTLESS_PROH"
 			}"
 		end

<<<<<<< HEAD
	schemap_warn_attr_redecl_proh_low_level: INTEGER is
=======
	xml_schemap_warn_attr_redecl_proh_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_WARN_ATTR_REDECL_PROH"
 			}"
 		end

<<<<<<< HEAD
	schemap_warn_skip_schema_low_level: INTEGER is
=======
	xml_schemap_warn_skip_schema_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_WARN_SKIP_SCHEMA"
 			}"
 		end

<<<<<<< HEAD
	schemap_warn_unlocated_schema_low_level: INTEGER is
=======
	xml_schemap_warn_unlocated_schema_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_WARN_UNLOCATED_SCHEMA"
 			}"
 		end

<<<<<<< HEAD
	schemap_wildcard_invalid_ns_member_low_level: INTEGER is
=======
	xml_schemap_wildcard_invalid_ns_member_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAP_WILDCARD_INVALID_NS_MEMBER"
 			}"
 		end

<<<<<<< HEAD
	schematronv_assert_low_level: INTEGER is
=======
	xml_schematronv_assert_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMATRONV_ASSERT"
 			}"
 		end

<<<<<<< HEAD
	schematronv_report_low_level: INTEGER is
=======
	xml_schematronv_report_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMATRONV_REPORT"
 			}"
 		end

<<<<<<< HEAD
	schemav_attrinvalid_low_level: INTEGER is
=======
	xml_schemav_attrinvalid_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_ATTRINVALID"
 			}"
 		end

<<<<<<< HEAD
	schemav_attrunknown_low_level: INTEGER is
=======
	xml_schemav_attrunknown_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_ATTRUNKNOWN"
 			}"
 		end

<<<<<<< HEAD
	schemav_construct_low_level: INTEGER is
=======
	xml_schemav_construct_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CONSTRUCT"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_attribute_1_low_level: INTEGER is
=======
	xml_schemav_cvc_attribute_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_ATTRIBUTE_1"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_attribute_2_low_level: INTEGER is
=======
	xml_schemav_cvc_attribute_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_ATTRIBUTE_2"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_attribute_3_low_level: INTEGER is
=======
	xml_schemav_cvc_attribute_3_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_ATTRIBUTE_3"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_attribute_4_low_level: INTEGER is
=======
	xml_schemav_cvc_attribute_4_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_ATTRIBUTE_4"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_au_low_level: INTEGER is
=======
	xml_schemav_cvc_au_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_AU"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_complex_type_1_low_level: INTEGER is
=======
	xml_schemav_cvc_complex_type_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_COMPLEX_TYPE_1"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_complex_type_2_1_low_level: INTEGER is
=======
	xml_schemav_cvc_complex_type_2_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_COMPLEX_TYPE_2_1"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_complex_type_2_2_low_level: INTEGER is
=======
	xml_schemav_cvc_complex_type_2_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_COMPLEX_TYPE_2_2"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_complex_type_2_3_low_level: INTEGER is
=======
	xml_schemav_cvc_complex_type_2_3_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_COMPLEX_TYPE_2_3"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_complex_type_2_4_low_level: INTEGER is
=======
	xml_schemav_cvc_complex_type_2_4_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_COMPLEX_TYPE_2_4"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_complex_type_3_1_low_level: INTEGER is
=======
	xml_schemav_cvc_complex_type_3_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_COMPLEX_TYPE_3_1"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_complex_type_3_2_1_low_level: INTEGER is
=======
	xml_schemav_cvc_complex_type_3_2_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_COMPLEX_TYPE_3_2_1"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_complex_type_3_2_2_low_level: INTEGER is
=======
	xml_schemav_cvc_complex_type_3_2_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_COMPLEX_TYPE_3_2_2"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_complex_type_4_low_level: INTEGER is
=======
	xml_schemav_cvc_complex_type_4_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_COMPLEX_TYPE_4"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_complex_type_5_1_low_level: INTEGER is
=======
	xml_schemav_cvc_complex_type_5_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_COMPLEX_TYPE_5_1"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_complex_type_5_2_low_level: INTEGER is
=======
	xml_schemav_cvc_complex_type_5_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_COMPLEX_TYPE_5_2"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_datatype_valid_1_2_1_low_level: INTEGER is
=======
	xml_schemav_cvc_datatype_valid_1_2_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_DATATYPE_VALID_1_2_1"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_datatype_valid_1_2_2_low_level: INTEGER is
=======
	xml_schemav_cvc_datatype_valid_1_2_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_DATATYPE_VALID_1_2_2"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_datatype_valid_1_2_3_low_level: INTEGER is
=======
	xml_schemav_cvc_datatype_valid_1_2_3_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_DATATYPE_VALID_1_2_3"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_elt_1_low_level: INTEGER is
=======
	xml_schemav_cvc_elt_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_ELT_1"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_elt_2_low_level: INTEGER is
=======
	xml_schemav_cvc_elt_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_ELT_2"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_elt_3_1_low_level: INTEGER is
=======
	xml_schemav_cvc_elt_3_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_ELT_3_1"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_elt_3_2_1_low_level: INTEGER is
=======
	xml_schemav_cvc_elt_3_2_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_ELT_3_2_1"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_elt_3_2_2_low_level: INTEGER is
=======
	xml_schemav_cvc_elt_3_2_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_ELT_3_2_2"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_elt_4_1_low_level: INTEGER is
=======
	xml_schemav_cvc_elt_4_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_ELT_4_1"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_elt_4_2_low_level: INTEGER is
=======
	xml_schemav_cvc_elt_4_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_ELT_4_2"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_elt_4_3_low_level: INTEGER is
=======
	xml_schemav_cvc_elt_4_3_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_ELT_4_3"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_elt_5_1_1_low_level: INTEGER is
=======
	xml_schemav_cvc_elt_5_1_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_ELT_5_1_1"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_elt_5_1_2_low_level: INTEGER is
=======
	xml_schemav_cvc_elt_5_1_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_ELT_5_1_2"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_elt_5_2_1_low_level: INTEGER is
=======
	xml_schemav_cvc_elt_5_2_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_ELT_5_2_1"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_elt_5_2_2_1_low_level: INTEGER is
=======
	xml_schemav_cvc_elt_5_2_2_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_ELT_5_2_2_1"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_elt_5_2_2_2_1_low_level: INTEGER is
=======
	xml_schemav_cvc_elt_5_2_2_2_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_ELT_5_2_2_2_1"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_elt_5_2_2_2_2_low_level: INTEGER is
=======
	xml_schemav_cvc_elt_5_2_2_2_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_ELT_5_2_2_2_2"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_elt_6_low_level: INTEGER is
=======
	xml_schemav_cvc_elt_6_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_ELT_6"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_elt_7_low_level: INTEGER is
=======
	xml_schemav_cvc_elt_7_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_ELT_7"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_enumeration_valid_low_level: INTEGER is
=======
	xml_schemav_cvc_enumeration_valid_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_ENUMERATION_VALID"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_facet_valid_low_level: INTEGER is
=======
	xml_schemav_cvc_facet_valid_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_FACET_VALID"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_fractiondigits_valid_low_level: INTEGER is
=======
	xml_schemav_cvc_fractiondigits_valid_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_FRACTIONDIGITS_VALID"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_idc_low_level: INTEGER is
=======
	xml_schemav_cvc_idc_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_IDC"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_length_valid_low_level: INTEGER is
=======
	xml_schemav_cvc_length_valid_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_LENGTH_VALID"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_maxexclusive_valid_low_level: INTEGER is
=======
	xml_schemav_cvc_maxexclusive_valid_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_MAXEXCLUSIVE_VALID"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_maxinclusive_valid_low_level: INTEGER is
=======
	xml_schemav_cvc_maxinclusive_valid_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_MAXINCLUSIVE_VALID"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_maxlength_valid_low_level: INTEGER is
=======
	xml_schemav_cvc_maxlength_valid_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_MAXLENGTH_VALID"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_minexclusive_valid_low_level: INTEGER is
=======
	xml_schemav_cvc_minexclusive_valid_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_MINEXCLUSIVE_VALID"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_mininclusive_valid_low_level: INTEGER is
=======
	xml_schemav_cvc_mininclusive_valid_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_MININCLUSIVE_VALID"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_minlength_valid_low_level: INTEGER is
=======
	xml_schemav_cvc_minlength_valid_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_MINLENGTH_VALID"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_pattern_valid_low_level: INTEGER is
=======
	xml_schemav_cvc_pattern_valid_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_PATTERN_VALID"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_totaldigits_valid_low_level: INTEGER is
=======
	xml_schemav_cvc_totaldigits_valid_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_TOTALDIGITS_VALID"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_type_1_low_level: INTEGER is
=======
	xml_schemav_cvc_type_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_TYPE_1"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_type_2_low_level: INTEGER is
=======
	xml_schemav_cvc_type_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_TYPE_2"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_type_3_1_1_low_level: INTEGER is
=======
	xml_schemav_cvc_type_3_1_1_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_TYPE_3_1_1"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_type_3_1_2_low_level: INTEGER is
=======
	xml_schemav_cvc_type_3_1_2_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_TYPE_3_1_2"
 			}"
 		end

<<<<<<< HEAD
	schemav_cvc_wildcard_low_level: INTEGER is
=======
	xml_schemav_cvc_wildcard_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_CVC_WILDCARD"
 			}"
 		end

<<<<<<< HEAD
	schemav_document_element_missing_low_level: INTEGER is
=======
	xml_schemav_document_element_missing_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_DOCUMENT_ELEMENT_MISSING"
 			}"
 		end

<<<<<<< HEAD
	schemav_elemcont_low_level: INTEGER is
=======
	xml_schemav_elemcont_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_ELEMCONT"
 			}"
 		end

<<<<<<< HEAD
	schemav_element_content_low_level: INTEGER is
=======
	xml_schemav_element_content_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_ELEMENT_CONTENT"
 			}"
 		end

<<<<<<< HEAD
	schemav_extracontent_low_level: INTEGER is
=======
	xml_schemav_extracontent_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_EXTRACONTENT"
 			}"
 		end

<<<<<<< HEAD
	schemav_facet_low_level: INTEGER is
=======
	xml_schemav_facet_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_FACET"
 			}"
 		end

<<<<<<< HEAD
	schemav_havedefault_low_level: INTEGER is
=======
	xml_schemav_havedefault_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_HAVEDEFAULT"
 			}"
 		end

<<<<<<< HEAD
	schemav_internal_low_level: INTEGER is
=======
	xml_schemav_internal_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_INTERNAL"
 			}"
 		end

<<<<<<< HEAD
	schemav_invalidattr_low_level: INTEGER is
=======
	xml_schemav_invalidattr_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_INVALIDATTR"
 			}"
 		end

<<<<<<< HEAD
	schemav_invalidelem_low_level: INTEGER is
=======
	xml_schemav_invalidelem_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_INVALIDELEM"
 			}"
 		end

<<<<<<< HEAD
	schemav_isabstract_low_level: INTEGER is
=======
	xml_schemav_isabstract_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_ISABSTRACT"
 			}"
 		end

<<<<<<< HEAD
	schemav_misc_low_level: INTEGER is
=======
	xml_schemav_misc_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_MISC"
 			}"
 		end

<<<<<<< HEAD
	schemav_missing_low_level: INTEGER is
=======
	xml_schemav_missing_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_MISSING"
 			}"
 		end

<<<<<<< HEAD
	schemav_norollback_low_level: INTEGER is
=======
	xml_schemav_norollback_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_NOROLLBACK"
 			}"
 		end

<<<<<<< HEAD
	schemav_noroot_low_level: INTEGER is
=======
	xml_schemav_noroot_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_NOROOT"
 			}"
 		end

<<<<<<< HEAD
	schemav_notdeterminist_low_level: INTEGER is
=======
	xml_schemav_notdeterminist_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_NOTDETERMINIST"
 			}"
 		end

<<<<<<< HEAD
	schemav_notempty_low_level: INTEGER is
=======
	xml_schemav_notempty_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_NOTEMPTY"
 			}"
 		end

<<<<<<< HEAD
	schemav_notnillable_low_level: INTEGER is
=======
	xml_schemav_notnillable_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_NOTNILLABLE"
 			}"
 		end

<<<<<<< HEAD
	schemav_notsimple_low_level: INTEGER is
=======
	xml_schemav_notsimple_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_NOTSIMPLE"
 			}"
 		end

<<<<<<< HEAD
	schemav_nottoplevel_low_level: INTEGER is
=======
	xml_schemav_nottoplevel_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_NOTTOPLEVEL"
 			}"
 		end

<<<<<<< HEAD
	schemav_notype_low_level: INTEGER is
=======
	xml_schemav_notype_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_NOTYPE"
 			}"
 		end

<<<<<<< HEAD
	schemav_undeclaredelem_low_level: INTEGER is
=======
	xml_schemav_undeclaredelem_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_UNDECLAREDELEM"
 			}"
 		end

<<<<<<< HEAD
	schemav_value_low_level: INTEGER is
=======
	xml_schemav_value_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_VALUE"
 			}"
 		end

<<<<<<< HEAD
	schemav_wrongelem_low_level: INTEGER is
=======
	xml_schemav_wrongelem_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_SCHEMAV_WRONGELEM"
 			}"
 		end

<<<<<<< HEAD
	tree_invalid_dec_low_level: INTEGER is
=======
	xml_tree_invalid_dec_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_TREE_INVALID_DEC"
 			}"
 		end

<<<<<<< HEAD
	tree_invalid_hex_low_level: INTEGER is
=======
	xml_tree_invalid_hex_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_TREE_INVALID_HEX"
 			}"
 		end

<<<<<<< HEAD
	tree_not_utf8_low_level: INTEGER is
=======
	xml_tree_not_utf8_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_TREE_NOT_UTF8"
 			}"
 		end

<<<<<<< HEAD
	tree_unterminated_entity_low_level: INTEGER is
=======
	xml_tree_unterminated_entity_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_TREE_UNTERMINATED_ENTITY"
 			}"
 		end

<<<<<<< HEAD
	war_catalog_pi_low_level: INTEGER is
=======
	xml_war_catalog_pi_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WAR_CATALOG_PI"
 			}"
 		end

<<<<<<< HEAD
	war_entity_redefined_low_level: INTEGER is
=======
	xml_war_entity_redefined_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WAR_ENTITY_REDEFINED"
 			}"
 		end

<<<<<<< HEAD
	war_lang_value_low_level: INTEGER is
=======
	xml_war_lang_value_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WAR_LANG_VALUE"
 			}"
 		end

<<<<<<< HEAD
	war_ns_column_low_level: INTEGER is
=======
	xml_war_ns_column_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WAR_NS_COLUMN"
 			}"
 		end

<<<<<<< HEAD
	war_ns_uri_low_level: INTEGER is
=======
	xml_war_ns_uri_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WAR_NS_URI"
 			}"
 		end

<<<<<<< HEAD
	war_ns_uri_relative_low_level: INTEGER is
=======
	xml_war_ns_uri_relative_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WAR_NS_URI_RELATIVE"
 			}"
 		end

<<<<<<< HEAD
	war_space_value_low_level: INTEGER is
=======
	xml_war_space_value_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WAR_SPACE_VALUE"
 			}"
 		end

<<<<<<< HEAD
	war_undeclared_entity_low_level: INTEGER is
=======
	xml_war_undeclared_entity_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WAR_UNDECLARED_ENTITY"
 			}"
 		end

<<<<<<< HEAD
	war_unknown_version_low_level: INTEGER is
=======
	xml_war_unknown_version_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_WAR_UNKNOWN_VERSION"
 			}"
 		end

<<<<<<< HEAD
	xinclude_build_failed_low_level: INTEGER is
=======
	xml_xinclude_build_failed_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XINCLUDE_BUILD_FAILED"
 			}"
 		end

<<<<<<< HEAD
	xinclude_deprecated_ns_low_level: INTEGER is
=======
	xml_xinclude_deprecated_ns_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XINCLUDE_DEPRECATED_NS"
 			}"
 		end

<<<<<<< HEAD
	xinclude_entity_def_mismatch_low_level: INTEGER is
=======
	xml_xinclude_entity_def_mismatch_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XINCLUDE_ENTITY_DEF_MISMATCH"
 			}"
 		end

<<<<<<< HEAD
	xinclude_fallback_not_in_include_low_level: INTEGER is
=======
	xml_xinclude_fallback_not_in_include_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XINCLUDE_FALLBACK_NOT_IN_INCLUDE"
 			}"
 		end

<<<<<<< HEAD
	xinclude_fallbacks_in_include_low_level: INTEGER is
=======
	xml_xinclude_fallbacks_in_include_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XINCLUDE_FALLBACKS_IN_INCLUDE"
 			}"
 		end

<<<<<<< HEAD
	xinclude_fragment_id_low_level: INTEGER is
=======
	xml_xinclude_fragment_id_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XINCLUDE_FRAGMENT_ID"
 			}"
 		end

<<<<<<< HEAD
	xinclude_href_uri_low_level: INTEGER is
=======
	xml_xinclude_href_uri_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XINCLUDE_HREF_URI"
 			}"
 		end

<<<<<<< HEAD
	xinclude_include_in_include_low_level: INTEGER is
=======
	xml_xinclude_include_in_include_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XINCLUDE_INCLUDE_IN_INCLUDE"
 			}"
 		end

<<<<<<< HEAD
	xinclude_invalid_char_low_level: INTEGER is
=======
	xml_xinclude_invalid_char_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XINCLUDE_INVALID_CHAR"
 			}"
 		end

<<<<<<< HEAD
	xinclude_multiple_root_low_level: INTEGER is
=======
	xml_xinclude_multiple_root_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XINCLUDE_MULTIPLE_ROOT"
 			}"
 		end

<<<<<<< HEAD
	xinclude_no_fallback_low_level: INTEGER is
=======
	xml_xinclude_no_fallback_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XINCLUDE_NO_FALLBACK"
 			}"
 		end

<<<<<<< HEAD
	xinclude_no_href_low_level: INTEGER is
=======
	xml_xinclude_no_href_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XINCLUDE_NO_HREF"
 			}"
 		end

<<<<<<< HEAD
	xinclude_parse_value_low_level: INTEGER is
=======
	xml_xinclude_parse_value_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XINCLUDE_PARSE_VALUE"
 			}"
 		end

<<<<<<< HEAD
	xinclude_recursion_low_level: INTEGER is
=======
	xml_xinclude_recursion_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XINCLUDE_RECURSION"
 			}"
 		end

<<<<<<< HEAD
	xinclude_text_document_low_level: INTEGER is
=======
	xml_xinclude_text_document_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XINCLUDE_TEXT_DOCUMENT"
 			}"
 		end

<<<<<<< HEAD
	xinclude_text_fragment_low_level: INTEGER is
=======
	xml_xinclude_text_fragment_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XINCLUDE_TEXT_FRAGMENT"
 			}"
 		end

<<<<<<< HEAD
	xinclude_unknown_encoding_low_level: INTEGER is
=======
	xml_xinclude_unknown_encoding_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XINCLUDE_UNKNOWN_ENCODING"
 			}"
 		end

<<<<<<< HEAD
	xinclude_xptr_failed_low_level: INTEGER is
=======
	xml_xinclude_xptr_failed_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XINCLUDE_XPTR_FAILED"
 			}"
 		end

<<<<<<< HEAD
	xinclude_xptr_result_low_level: INTEGER is
=======
	xml_xinclude_xptr_result_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XINCLUDE_XPTR_RESULT"
 			}"
 		end

<<<<<<< HEAD
	xpath_encoding_error_low_level: INTEGER is
=======
	xml_xpath_encoding_error_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XPATH_ENCODING_ERROR"
 			}"
 		end

<<<<<<< HEAD
	xpath_expr_error_low_level: INTEGER is
=======
	xml_xpath_expr_error_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XPATH_EXPR_ERROR"
 			}"
 		end

<<<<<<< HEAD
	xpath_expression_ok_low_level: INTEGER is
=======
	xml_xpath_expression_ok_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XPATH_EXPRESSION_OK"
 			}"
 		end

<<<<<<< HEAD
	xpath_invalid_arity_low_level: INTEGER is
=======
	xml_xpath_invalid_arity_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XPATH_INVALID_ARITY"
 			}"
 		end

<<<<<<< HEAD
	xpath_invalid_char_error_low_level: INTEGER is
=======
	xml_xpath_invalid_char_error_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XPATH_INVALID_CHAR_ERROR"
 			}"
 		end

<<<<<<< HEAD
	xpath_invalid_ctxt_position_low_level: INTEGER is
=======
	xml_xpath_invalid_ctxt_position_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XPATH_INVALID_CTXT_POSITION"
 			}"
 		end

<<<<<<< HEAD
	xpath_invalid_ctxt_size_low_level: INTEGER is
=======
	xml_xpath_invalid_ctxt_size_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XPATH_INVALID_CTXT_SIZE"
 			}"
 		end

<<<<<<< HEAD
	xpath_invalid_operand_low_level: INTEGER is
=======
	xml_xpath_invalid_operand_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XPATH_INVALID_OPERAND"
 			}"
 		end

<<<<<<< HEAD
	xpath_invalid_predicate_error_low_level: INTEGER is
=======
	xml_xpath_invalid_predicate_error_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XPATH_INVALID_PREDICATE_ERROR"
 			}"
 		end

<<<<<<< HEAD
	xpath_invalid_type_low_level: INTEGER is
=======
	xml_xpath_invalid_type_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XPATH_INVALID_TYPE"
 			}"
 		end

<<<<<<< HEAD
	xpath_memory_error_low_level: INTEGER is
=======
	xml_xpath_memory_error_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XPATH_MEMORY_ERROR"
 			}"
 		end

<<<<<<< HEAD
	xpath_number_error_low_level: INTEGER is
=======
	xml_xpath_number_error_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XPATH_NUMBER_ERROR"
 			}"
 		end

<<<<<<< HEAD
	xpath_start_literal_error_low_level: INTEGER is
=======
	xml_xpath_start_literal_error_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XPATH_START_LITERAL_ERROR"
 			}"
 		end

<<<<<<< HEAD
	xpath_unclosed_error_low_level: INTEGER is
=======
	xml_xpath_unclosed_error_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XPATH_UNCLOSED_ERROR"
 			}"
 		end

<<<<<<< HEAD
	xpath_undef_prefix_error_low_level: INTEGER is
=======
	xml_xpath_undef_prefix_error_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XPATH_UNDEF_PREFIX_ERROR"
 			}"
 		end

<<<<<<< HEAD
	xpath_undef_variable_error_low_level: INTEGER is
=======
	xml_xpath_undef_variable_error_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XPATH_UNDEF_VARIABLE_ERROR"
 			}"
 		end

<<<<<<< HEAD
	xpath_unfinished_literal_error_low_level: INTEGER is
=======
	xml_xpath_unfinished_literal_error_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XPATH_UNFINISHED_LITERAL_ERROR"
 			}"
 		end

<<<<<<< HEAD
	xpath_unknown_func_error_low_level: INTEGER is
=======
	xml_xpath_unknown_func_error_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XPATH_UNKNOWN_FUNC_ERROR"
 			}"
 		end

<<<<<<< HEAD
	xpath_variable_ref_error_low_level: INTEGER is
=======
	xml_xpath_variable_ref_error_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XPATH_VARIABLE_REF_ERROR"
 			}"
 		end

<<<<<<< HEAD
	xptr_childseq_start_low_level: INTEGER is
=======
	xml_xptr_childseq_start_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XPTR_CHILDSEQ_START"
 			}"
 		end

<<<<<<< HEAD
	xptr_eval_failed_low_level: INTEGER is
=======
	xml_xptr_eval_failed_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XPTR_EVAL_FAILED"
 			}"
 		end

<<<<<<< HEAD
	xptr_extra_objects_low_level: INTEGER is
=======
	xml_xptr_extra_objects_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XPTR_EXTRA_OBJECTS"
 			}"
 		end

<<<<<<< HEAD
	xptr_resource_error_low_level: INTEGER is
=======
	xml_xptr_resource_error_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XPTR_RESOURCE_ERROR"
 			}"
 		end

<<<<<<< HEAD
	xptr_sub_resource_error_low_level: INTEGER is
=======
	xml_xptr_sub_resource_error_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XPTR_SUB_RESOURCE_ERROR"
 			}"
 		end

<<<<<<< HEAD
	xptr_syntax_error_low_level: INTEGER is
=======
	xml_xptr_syntax_error_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XPTR_SYNTAX_ERROR"
 			}"
 		end

<<<<<<< HEAD
	xptr_unknown_scheme_low_level: INTEGER is
=======
	xml_xptr_unknown_scheme_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_XPTR_UNKNOWN_SCHEME"
 			}"
 		end


end -- class XML_PARSER_ERRORS_ENUM
