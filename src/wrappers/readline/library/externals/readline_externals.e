-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class READLINE_EXTERNALS


insert ANY undefine is_equal, copy end

		STANDARD_C_LIBRARY_TYPES
feature {} -- External calls

	funmap: POINTER is
 		-- funmap
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "funmap"
		}"
		end

	address_of_funmap: POINTER is
 		-- Address of funmap
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&funmap"
		}"
		end

	set_funmap (a_value: POINTER) is
		-- Set variable funmap value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_funmap"
		}"
		end

	readline (an_argument_l1122_c7: POINTER): POINTER is
 		-- readline
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "readline"
		}"
		end

	rl_abort (an_argument_l2694_c7: INTEGER; an_argument_l2695_c7: INTEGER): INTEGER is
 		-- rl_abort
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_abort"
		}"
		end

	rl_add_defun (an_argument_l791_c7: POINTER; an_argument_l792_c7: POINTER; an_argument_l793_c7: INTEGER): INTEGER is
 		-- rl_add_defun
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_add_defun"
		}"
		end

	rl_add_funmap_entry (an_argument_l322_c7: POINTER; an_argument_l323_c7: POINTER): INTEGER is
 		-- rl_add_funmap_entry
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_add_funmap_entry"
		}"
		end

	rl_add_undo (an_argument_l615_c7: INTEGER; an_argument_l616_c7: INTEGER; an_argument_l617_c7: INTEGER; an_argument_l618_c7: POINTER) is
 		-- rl_add_undo
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_add_undo"
		}"
		end

	rl_alphabetic (an_argument_l1314_c7: INTEGER): INTEGER is
 		-- rl_alphabetic
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_alphabetic"
		}"
		end

	rl_already_prompted: INTEGER is
 		-- rl_already_prompted
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_already_prompted"
		}"
		end

	address_of_rl_already_prompted: POINTER is
 		-- Address of rl_already_prompted
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_already_prompted"
		}"
		end

	set_rl_already_prompted (a_value: INTEGER) is
		-- Set variable rl_already_prompted value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_already_prompted"
		}"
		end

	rl_arrow_keys (an_argument_l1248_c7: INTEGER; an_argument_l1249_c7: INTEGER): INTEGER is
 		-- rl_arrow_keys
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_arrow_keys"
		}"
		end

	rl_attempted_completion_function: POINTER is
 		-- rl_attempted_completion_function
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_attempted_completion_function"
		}"
		end

	address_of_rl_attempted_completion_function: POINTER is
 		-- Address of rl_attempted_completion_function
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_attempted_completion_function"
		}"
		end

	set_rl_attempted_completion_function (a_value: POINTER) is
		-- Set variable rl_attempted_completion_function value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_attempted_completion_function"
		}"
		end

	rl_attempted_completion_over: INTEGER is
 		-- rl_attempted_completion_over
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_attempted_completion_over"
		}"
		end

	address_of_rl_attempted_completion_over: POINTER is
 		-- Address of rl_attempted_completion_over
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_attempted_completion_over"
		}"
		end

	set_rl_attempted_completion_over (a_value: INTEGER) is
		-- Set variable rl_attempted_completion_over value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_attempted_completion_over"
		}"
		end

	rl_backward (an_argument_l2311_c7: INTEGER; an_argument_l2312_c7: INTEGER): INTEGER is
 		-- rl_backward
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_backward"
		}"
		end

	rl_backward_byte (an_argument_l1479_c7: INTEGER; an_argument_l1480_c7: INTEGER): INTEGER is
 		-- rl_backward_byte
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_backward_byte"
		}"
		end

	rl_backward_char (an_argument_l308_c7: INTEGER; an_argument_l309_c7: INTEGER): INTEGER is
 		-- rl_backward_char
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_backward_char"
		}"
		end

	rl_backward_char_search (an_argument_l556_c7: INTEGER; an_argument_l557_c7: INTEGER): INTEGER is
 		-- rl_backward_char_search
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_backward_char_search"
		}"
		end

	rl_backward_kill_line (an_argument_l819_c7: INTEGER; an_argument_l820_c7: INTEGER): INTEGER is
 		-- rl_backward_kill_line
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_backward_kill_line"
		}"
		end

	rl_backward_kill_word (an_argument_l836_c7: INTEGER; an_argument_l837_c7: INTEGER): INTEGER is
 		-- rl_backward_kill_word
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_backward_kill_word"
		}"
		end

	rl_backward_menu_complete (an_argument_l1703_c7: INTEGER; an_argument_l1704_c7: INTEGER): INTEGER is
 		-- rl_backward_menu_complete
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_backward_menu_complete"
		}"
		end

	rl_backward_word (an_argument_l751_c7: INTEGER; an_argument_l752_c7: INTEGER): INTEGER is
 		-- rl_backward_word
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_backward_word"
		}"
		end

	rl_basic_quote_characters: POINTER is
 		-- rl_basic_quote_characters
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_basic_quote_characters"
		}"
		end

	address_of_rl_basic_quote_characters: POINTER is
 		-- Address of rl_basic_quote_characters
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_basic_quote_characters"
		}"
		end

	set_rl_basic_quote_characters (a_value: POINTER) is
		-- Set variable rl_basic_quote_characters value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_basic_quote_characters"
		}"
		end

	rl_basic_word_break_characters: POINTER is
 		-- rl_basic_word_break_characters
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_basic_word_break_characters"
		}"
		end

	address_of_rl_basic_word_break_characters: POINTER is
 		-- Address of rl_basic_word_break_characters
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_basic_word_break_characters"
		}"
		end

	set_rl_basic_word_break_characters (a_value: POINTER) is
		-- Set variable rl_basic_word_break_characters value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_basic_word_break_characters"
		}"
		end

	rl_beg_of_line (an_argument_l2086_c7: INTEGER; an_argument_l2087_c7: INTEGER): INTEGER is
 		-- rl_beg_of_line
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_beg_of_line"
		}"
		end

	rl_begin_undo_group: INTEGER is
 		-- rl_begin_undo_group
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_begin_undo_group()"
		}"
		end

	rl_beginning_of_history (an_argument_l2307_c7: INTEGER; an_argument_l2308_c7: INTEGER): INTEGER is
 		-- rl_beginning_of_history
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_beginning_of_history"
		}"
		end

	rl_bind_key (an_argument_l1216_c7: INTEGER; an_argument_l1217_c7: POINTER): INTEGER is
 		-- rl_bind_key
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_bind_key"
		}"
		end

	rl_bind_key_if_unbound (an_argument_l535_c7: INTEGER; an_argument_l536_c7: POINTER): INTEGER is
 		-- rl_bind_key_if_unbound
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_bind_key_if_unbound"
		}"
		end

	rl_bind_key_if_unbound_in_map (an_argument_l2437_c7: INTEGER; an_argument_l2438_c7: POINTER; an_argument_l2439_c7: POINTER): INTEGER is
 		-- rl_bind_key_if_unbound_in_map
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_bind_key_if_unbound_in_map"
		}"
		end

	rl_bind_key_in_map (an_argument_l1196_c7: INTEGER; an_argument_l1197_c7: POINTER; an_argument_l1198_c7: POINTER): INTEGER is
 		-- rl_bind_key_in_map
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_bind_key_in_map"
		}"
		end

	rl_bind_keyseq (an_argument_l1886_c7: POINTER; an_argument_l1887_c7: POINTER): INTEGER is
 		-- rl_bind_keyseq
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_bind_keyseq"
		}"
		end

	rl_bind_keyseq_if_unbound (an_argument_l662_c7: POINTER; an_argument_l663_c7: POINTER): INTEGER is
 		-- rl_bind_keyseq_if_unbound
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_bind_keyseq_if_unbound"
		}"
		end

	rl_bind_keyseq_if_unbound_in_map (an_argument_l489_c7: POINTER; an_argument_l490_c7: POINTER; an_argument_l491_c7: POINTER): INTEGER is
 		-- rl_bind_keyseq_if_unbound_in_map
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_bind_keyseq_if_unbound_in_map"
		}"
		end

	rl_bind_keyseq_in_map (an_argument_l2724_c7: POINTER; an_argument_l2725_c7: POINTER; an_argument_l2726_c7: POINTER): INTEGER is
 		-- rl_bind_keyseq_in_map
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_bind_keyseq_in_map"
		}"
		end

	rl_binding_keymap: POINTER is
 		-- rl_binding_keymap
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_binding_keymap"
		}"
		end

	address_of_rl_binding_keymap: POINTER is
 		-- Address of rl_binding_keymap
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_binding_keymap"
		}"
		end

	set_rl_binding_keymap (a_value: POINTER) is
		-- Set variable rl_binding_keymap value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_binding_keymap"
		}"
		end

	rl_call_last_kbd_macro (an_argument_l1752_c7: INTEGER; an_argument_l1753_c7: INTEGER): INTEGER is
 		-- rl_call_last_kbd_macro
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_call_last_kbd_macro"
		}"
		end

	rl_callback_handler_install (an_argument_l2132_c7: POINTER; an_argument_l2133_c7: POINTER) is
 		-- rl_callback_handler_install
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_callback_handler_install"
		}"
		end

	rl_callback_handler_remove is
 		-- rl_callback_handler_remove
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_callback_handler_remove()"
		}"
		end

	rl_callback_read_char is
 		-- rl_callback_read_char
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_callback_read_char()"
		}"
		end

	rl_capitalize_word (an_argument_l1189_c7: INTEGER; an_argument_l1190_c7: INTEGER): INTEGER is
 		-- rl_capitalize_word
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_capitalize_word"
		}"
		end

	rl_catch_signals: INTEGER is
 		-- rl_catch_signals
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_catch_signals"
		}"
		end

	address_of_rl_catch_signals: POINTER is
 		-- Address of rl_catch_signals
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_catch_signals"
		}"
		end

	set_rl_catch_signals (a_value: INTEGER) is
		-- Set variable rl_catch_signals value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_catch_signals"
		}"
		end

	rl_catch_sigwinch: INTEGER is
 		-- rl_catch_sigwinch
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_catch_sigwinch"
		}"
		end

	address_of_rl_catch_sigwinch: POINTER is
 		-- Address of rl_catch_sigwinch
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_catch_sigwinch"
		}"
		end

	set_rl_catch_sigwinch (a_value: INTEGER) is
		-- Set variable rl_catch_sigwinch value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_catch_sigwinch"
		}"
		end

	rl_char_is_quoted_p: POINTER is
 		-- rl_char_is_quoted_p
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_char_is_quoted_p"
		}"
		end

	address_of_rl_char_is_quoted_p: POINTER is
 		-- Address of rl_char_is_quoted_p
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_char_is_quoted_p"
		}"
		end

	set_rl_char_is_quoted_p (a_value: POINTER) is
		-- Set variable rl_char_is_quoted_p value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_char_is_quoted_p"
		}"
		end

	rl_char_search (an_argument_l1656_c7: INTEGER; an_argument_l1657_c7: INTEGER): INTEGER is
 		-- rl_char_search
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_char_search"
		}"
		end

	rl_character_len (an_argument_l942_c7: INTEGER; an_argument_l943_c7: INTEGER): INTEGER is
 		-- rl_character_len
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_character_len"
		}"
		end

	rl_cleanup_after_signal is
 		-- rl_cleanup_after_signal
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_cleanup_after_signal()"
		}"
		end

	rl_clear_message: INTEGER is
 		-- rl_clear_message
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_clear_message()"
		}"
		end

	rl_clear_pending_input: INTEGER is
 		-- rl_clear_pending_input
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_clear_pending_input()"
		}"
		end

	rl_clear_screen (an_argument_l640_c7: INTEGER; an_argument_l641_c7: INTEGER): INTEGER is
 		-- rl_clear_screen
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_clear_screen"
		}"
		end

	rl_clear_signals: INTEGER is
 		-- rl_clear_signals
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_clear_signals()"
		}"
		end

	rl_complete (an_argument_l1954_c7: INTEGER; an_argument_l1955_c7: INTEGER): INTEGER is
 		-- rl_complete
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_complete"
		}"
		end

	rl_complete_internal (an_argument_l2355_c7: INTEGER): INTEGER is
 		-- rl_complete_internal
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_complete_internal"
		}"
		end

	rl_completer_quote_characters: POINTER is
 		-- rl_completer_quote_characters
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_completer_quote_characters"
		}"
		end

	address_of_rl_completer_quote_characters: POINTER is
 		-- Address of rl_completer_quote_characters
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_completer_quote_characters"
		}"
		end

	set_rl_completer_quote_characters (a_value: POINTER) is
		-- Set variable rl_completer_quote_characters value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_completer_quote_characters"
		}"
		end

	rl_completer_word_break_characters: POINTER is
 		-- rl_completer_word_break_characters
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_completer_word_break_characters"
		}"
		end

	address_of_rl_completer_word_break_characters: POINTER is
 		-- Address of rl_completer_word_break_characters
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_completer_word_break_characters"
		}"
		end

	set_rl_completer_word_break_characters (a_value: POINTER) is
		-- Set variable rl_completer_word_break_characters value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_completer_word_break_characters"
		}"
		end

	rl_completion_append_character: INTEGER is
 		-- rl_completion_append_character
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_completion_append_character"
		}"
		end

	address_of_rl_completion_append_character: POINTER is
 		-- Address of rl_completion_append_character
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_completion_append_character"
		}"
		end

	set_rl_completion_append_character (a_value: INTEGER) is
		-- Set variable rl_completion_append_character value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_completion_append_character"
		}"
		end

	rl_completion_display_matches_hook: POINTER is
 		-- rl_completion_display_matches_hook
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_completion_display_matches_hook"
		}"
		end

	address_of_rl_completion_display_matches_hook: POINTER is
 		-- Address of rl_completion_display_matches_hook
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_completion_display_matches_hook"
		}"
		end

	set_rl_completion_display_matches_hook (a_value: POINTER) is
		-- Set variable rl_completion_display_matches_hook value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_completion_display_matches_hook"
		}"
		end

	rl_completion_entry_function: POINTER is
 		-- rl_completion_entry_function
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_completion_entry_function"
		}"
		end

	address_of_rl_completion_entry_function: POINTER is
 		-- Address of rl_completion_entry_function
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_completion_entry_function"
		}"
		end

	set_rl_completion_entry_function (a_value: POINTER) is
		-- Set variable rl_completion_entry_function value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_completion_entry_function"
		}"
		end

	rl_completion_found_quote: INTEGER is
 		-- rl_completion_found_quote
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_completion_found_quote"
		}"
		end

	address_of_rl_completion_found_quote: POINTER is
 		-- Address of rl_completion_found_quote
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_completion_found_quote"
		}"
		end

	set_rl_completion_found_quote (a_value: INTEGER) is
		-- Set variable rl_completion_found_quote value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_completion_found_quote"
		}"
		end

	rl_completion_invoking_key: INTEGER is
 		-- rl_completion_invoking_key
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_completion_invoking_key"
		}"
		end

	address_of_rl_completion_invoking_key: POINTER is
 		-- Address of rl_completion_invoking_key
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_completion_invoking_key"
		}"
		end

	set_rl_completion_invoking_key (a_value: INTEGER) is
		-- Set variable rl_completion_invoking_key value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_completion_invoking_key"
		}"
		end

	rl_completion_mark_symlink_dirs: INTEGER is
 		-- rl_completion_mark_symlink_dirs
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_completion_mark_symlink_dirs"
		}"
		end

	address_of_rl_completion_mark_symlink_dirs: POINTER is
 		-- Address of rl_completion_mark_symlink_dirs
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_completion_mark_symlink_dirs"
		}"
		end

	set_rl_completion_mark_symlink_dirs (a_value: INTEGER) is
		-- Set variable rl_completion_mark_symlink_dirs value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_completion_mark_symlink_dirs"
		}"
		end

	rl_completion_matches (an_argument_l38_c7: POINTER; an_argument_l39_c7: POINTER): POINTER is
 		-- rl_completion_matches
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_completion_matches"
		}"
		end

	rl_completion_mode (an_argument_l1075_c7: POINTER): INTEGER is
 		-- rl_completion_mode
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_completion_mode"
		}"
		end

	rl_completion_query_items: INTEGER is
 		-- rl_completion_query_items
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_completion_query_items"
		}"
		end

	address_of_rl_completion_query_items: POINTER is
 		-- Address of rl_completion_query_items
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_completion_query_items"
		}"
		end

	set_rl_completion_query_items (a_value: INTEGER) is
		-- Set variable rl_completion_query_items value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_completion_query_items"
		}"
		end

	rl_completion_quote_character: INTEGER is
 		-- rl_completion_quote_character
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_completion_quote_character"
		}"
		end

	address_of_rl_completion_quote_character: POINTER is
 		-- Address of rl_completion_quote_character
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_completion_quote_character"
		}"
		end

	set_rl_completion_quote_character (a_value: INTEGER) is
		-- Set variable rl_completion_quote_character value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_completion_quote_character"
		}"
		end

	rl_completion_suppress_append: INTEGER is
 		-- rl_completion_suppress_append
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_completion_suppress_append"
		}"
		end

	address_of_rl_completion_suppress_append: POINTER is
 		-- Address of rl_completion_suppress_append
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_completion_suppress_append"
		}"
		end

	set_rl_completion_suppress_append (a_value: INTEGER) is
		-- Set variable rl_completion_suppress_append value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_completion_suppress_append"
		}"
		end

	rl_completion_suppress_quote: INTEGER is
 		-- rl_completion_suppress_quote
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_completion_suppress_quote"
		}"
		end

	address_of_rl_completion_suppress_quote: POINTER is
 		-- Address of rl_completion_suppress_quote
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_completion_suppress_quote"
		}"
		end

	set_rl_completion_suppress_quote (a_value: INTEGER) is
		-- Set variable rl_completion_suppress_quote value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_completion_suppress_quote"
		}"
		end

	rl_completion_type: INTEGER is
 		-- rl_completion_type
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_completion_type"
		}"
		end

	address_of_rl_completion_type: POINTER is
 		-- Address of rl_completion_type
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_completion_type"
		}"
		end

	set_rl_completion_type (a_value: INTEGER) is
		-- Set variable rl_completion_type value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_completion_type"
		}"
		end

	rl_completion_word_break_hook: POINTER is
 		-- rl_completion_word_break_hook
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_completion_word_break_hook"
		}"
		end

	address_of_rl_completion_word_break_hook: POINTER is
 		-- Address of rl_completion_word_break_hook
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_completion_word_break_hook"
		}"
		end

	set_rl_completion_word_break_hook (a_value: POINTER) is
		-- Set variable rl_completion_word_break_hook value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_completion_word_break_hook"
		}"
		end

	rl_copy_backward_word (an_argument_l2565_c7: INTEGER; an_argument_l2566_c7: INTEGER): INTEGER is
 		-- rl_copy_backward_word
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_copy_backward_word"
		}"
		end

	rl_copy_forward_word (an_argument_l2916_c7: INTEGER; an_argument_l2917_c7: INTEGER): INTEGER is
 		-- rl_copy_forward_word
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_copy_forward_word"
		}"
		end

	rl_copy_keymap (an_argument_l2578_c7: POINTER): POINTER is
 		-- rl_copy_keymap
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_copy_keymap"
		}"
		end

	rl_copy_region_to_kill (an_argument_l166_c7: INTEGER; an_argument_l167_c7: INTEGER): INTEGER is
 		-- rl_copy_region_to_kill
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_copy_region_to_kill"
		}"
		end

	rl_copy_text (an_argument_l1790_c7: INTEGER; an_argument_l1791_c7: INTEGER): POINTER is
 		-- rl_copy_text
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_copy_text"
		}"
		end

	rl_crlf: INTEGER is
 		-- rl_crlf
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_crlf()"
		}"
		end

	rl_delete (an_argument_l1252_c7: INTEGER; an_argument_l1253_c7: INTEGER): INTEGER is
 		-- rl_delete
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_delete"
		}"
		end

	rl_delete_horizontal_space (an_argument_l1940_c7: INTEGER; an_argument_l1941_c7: INTEGER): INTEGER is
 		-- rl_delete_horizontal_space
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_delete_horizontal_space"
		}"
		end

	rl_delete_or_show_completions (an_argument_l1599_c7: INTEGER; an_argument_l1600_c7: INTEGER): INTEGER is
 		-- rl_delete_or_show_completions
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_delete_or_show_completions"
		}"
		end

	rl_delete_text (an_argument_l2711_c7: INTEGER; an_argument_l2712_c7: INTEGER): INTEGER is
 		-- rl_delete_text
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_delete_text"
		}"
		end

	rl_deprep_term_function: POINTER is
 		-- rl_deprep_term_function
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_deprep_term_function"
		}"
		end

	address_of_rl_deprep_term_function: POINTER is
 		-- Address of rl_deprep_term_function
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_deprep_term_function"
		}"
		end

	set_rl_deprep_term_function (a_value: POINTER) is
		-- Set variable rl_deprep_term_function value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_deprep_term_function"
		}"
		end

	rl_deprep_terminal is
 		-- rl_deprep_terminal
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_deprep_terminal()"
		}"
		end

	rl_digit_argument (an_argument_l873_c7: INTEGER; an_argument_l874_c7: INTEGER): INTEGER is
 		-- rl_digit_argument
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_digit_argument"
		}"
		end

	rl_ding: INTEGER is
 		-- rl_ding
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_ding()"
		}"
		end

	rl_directory_completion_hook: POINTER is
 		-- rl_directory_completion_hook
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_directory_completion_hook"
		}"
		end

	address_of_rl_directory_completion_hook: POINTER is
 		-- Address of rl_directory_completion_hook
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_directory_completion_hook"
		}"
		end

	set_rl_directory_completion_hook (a_value: POINTER) is
		-- Set variable rl_directory_completion_hook value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_directory_completion_hook"
		}"
		end

	rl_directory_rewrite_hook: POINTER is
 		-- rl_directory_rewrite_hook
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_directory_rewrite_hook"
		}"
		end

	address_of_rl_directory_rewrite_hook: POINTER is
 		-- Address of rl_directory_rewrite_hook
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_directory_rewrite_hook"
		}"
		end

	set_rl_directory_rewrite_hook (a_value: POINTER) is
		-- Set variable rl_directory_rewrite_hook value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_directory_rewrite_hook"
		}"
		end

	rl_discard_argument: INTEGER is
 		-- rl_discard_argument
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_discard_argument()"
		}"
		end

	rl_discard_keymap (an_argument_l2420_c7: POINTER) is
 		-- rl_discard_keymap
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_discard_keymap"
		}"
		end

	rl_dispatching: INTEGER is
 		-- rl_dispatching
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_dispatching"
		}"
		end

	address_of_rl_dispatching: POINTER is
 		-- Address of rl_dispatching
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_dispatching"
		}"
		end

	set_rl_dispatching (a_value: INTEGER) is
		-- Set variable rl_dispatching value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_dispatching"
		}"
		end

	rl_display_match_list (an_argument_l2102_c7: POINTER; an_argument_l2103_c7: INTEGER; an_argument_l2104_c7: INTEGER) is
 		-- rl_display_match_list
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_display_match_list"
		}"
		end

	rl_display_prompt: POINTER is
 		-- rl_display_prompt
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_display_prompt"
		}"
		end

	address_of_rl_display_prompt: POINTER is
 		-- Address of rl_display_prompt
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_display_prompt"
		}"
		end

	set_rl_display_prompt (a_value: POINTER) is
		-- Set variable rl_display_prompt value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_display_prompt"
		}"
		end

	rl_do_lowercase_version (an_argument_l1660_c7: INTEGER; an_argument_l1661_c7: INTEGER): INTEGER is
 		-- rl_do_lowercase_version
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_do_lowercase_version"
		}"
		end

	rl_do_undo: INTEGER is
 		-- rl_do_undo
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_do_undo()"
		}"
		end

	rl_done: INTEGER is
 		-- rl_done
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_done"
		}"
		end

	address_of_rl_done: POINTER is
 		-- Address of rl_done
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_done"
		}"
		end

	set_rl_done (a_value: INTEGER) is
		-- Set variable rl_done value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_done"
		}"
		end

	rl_downcase_word (an_argument_l2501_c7: INTEGER; an_argument_l2502_c7: INTEGER): INTEGER is
 		-- rl_downcase_word
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_downcase_word"
		}"
		end

	rl_dump_functions (an_argument_l849_c7: INTEGER; an_argument_l850_c7: INTEGER): INTEGER is
 		-- rl_dump_functions
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_dump_functions"
		}"
		end

	rl_dump_macros (an_argument_l697_c7: INTEGER; an_argument_l698_c7: INTEGER): INTEGER is
 		-- rl_dump_macros
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_dump_macros"
		}"
		end

	rl_dump_variables (an_argument_l1264_c7: INTEGER; an_argument_l1265_c7: INTEGER): INTEGER is
 		-- rl_dump_variables
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_dump_variables"
		}"
		end

	rl_echo_signal_char (an_argument_l486_c7: INTEGER) is
 		-- rl_echo_signal_char
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_echo_signal_char"
		}"
		end

	rl_editing_mode: INTEGER is
 		-- rl_editing_mode
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_editing_mode"
		}"
		end

	address_of_rl_editing_mode: POINTER is
 		-- Address of rl_editing_mode
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_editing_mode"
		}"
		end

	set_rl_editing_mode (a_value: INTEGER) is
		-- Set variable rl_editing_mode value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_editing_mode"
		}"
		end

	rl_emacs_editing_mode (an_argument_l520_c7: INTEGER; an_argument_l521_c7: INTEGER): INTEGER is
 		-- rl_emacs_editing_mode
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_emacs_editing_mode"
		}"
		end

	rl_end: INTEGER is
 		-- rl_end
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_end"
		}"
		end

	address_of_rl_end: POINTER is
 		-- Address of rl_end
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_end"
		}"
		end

	set_rl_end (a_value: INTEGER) is
		-- Set variable rl_end value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_end"
		}"
		end

	rl_end_kbd_macro (an_argument_l993_c7: INTEGER; an_argument_l994_c7: INTEGER): INTEGER is
 		-- rl_end_kbd_macro
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_end_kbd_macro"
		}"
		end

	rl_end_of_history (an_argument_l2107_c7: INTEGER; an_argument_l2108_c7: INTEGER): INTEGER is
 		-- rl_end_of_history
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_end_of_history"
		}"
		end

	rl_end_of_line (an_argument_l1171_c7: INTEGER; an_argument_l1172_c7: INTEGER): INTEGER is
 		-- rl_end_of_line
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_end_of_line"
		}"
		end

	rl_end_undo_group: INTEGER is
 		-- rl_end_undo_group
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_end_undo_group()"
		}"
		end

	rl_erase_empty_line: INTEGER is
 		-- rl_erase_empty_line
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_erase_empty_line"
		}"
		end

	address_of_rl_erase_empty_line: POINTER is
 		-- Address of rl_erase_empty_line
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_erase_empty_line"
		}"
		end

	set_rl_erase_empty_line (a_value: INTEGER) is
		-- Set variable rl_erase_empty_line value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_erase_empty_line"
		}"
		end

	rl_event_hook: POINTER is
 		-- rl_event_hook
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_event_hook"
		}"
		end

	address_of_rl_event_hook: POINTER is
 		-- Address of rl_event_hook
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_event_hook"
		}"
		end

	set_rl_event_hook (a_value: POINTER) is
		-- Set variable rl_event_hook value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_event_hook"
		}"
		end

	rl_exchange_point_and_mark (an_argument_l1302_c7: INTEGER; an_argument_l1303_c7: INTEGER): INTEGER is
 		-- rl_exchange_point_and_mark
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_exchange_point_and_mark"
		}"
		end

	rl_execute_next (an_argument_l997_c7: INTEGER): INTEGER is
 		-- rl_execute_next
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_execute_next"
		}"
		end

	rl_executing_keymap: POINTER is
 		-- rl_executing_keymap
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_executing_keymap"
		}"
		end

	address_of_rl_executing_keymap: POINTER is
 		-- Address of rl_executing_keymap
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_executing_keymap"
		}"
		end

	set_rl_executing_keymap (a_value: POINTER) is
		-- Set variable rl_executing_keymap value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_executing_keymap"
		}"
		end

	rl_executing_macro: POINTER is
 		-- rl_executing_macro
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_executing_macro"
		}"
		end

	address_of_rl_executing_macro: POINTER is
 		-- Address of rl_executing_macro
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_executing_macro"
		}"
		end

	set_rl_executing_macro (a_value: POINTER) is
		-- Set variable rl_executing_macro value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_executing_macro"
		}"
		end

	rl_expand_prompt (an_argument_l1135_c7: POINTER): INTEGER is
 		-- rl_expand_prompt
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_expand_prompt"
		}"
		end

	rl_explicit_arg: INTEGER is
 		-- rl_explicit_arg
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_explicit_arg"
		}"
		end

	address_of_rl_explicit_arg: POINTER is
 		-- Address of rl_explicit_arg
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_explicit_arg"
		}"
		end

	set_rl_explicit_arg (a_value: INTEGER) is
		-- Set variable rl_explicit_arg value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_explicit_arg"
		}"
		end

	rl_extend_line_buffer (an_argument_l124_c7: INTEGER) is
 		-- rl_extend_line_buffer
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_extend_line_buffer"
		}"
		end

	rl_filename_completion_desired: INTEGER is
 		-- rl_filename_completion_desired
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_filename_completion_desired"
		}"
		end

	address_of_rl_filename_completion_desired: POINTER is
 		-- Address of rl_filename_completion_desired
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_filename_completion_desired"
		}"
		end

	set_rl_filename_completion_desired (a_value: INTEGER) is
		-- Set variable rl_filename_completion_desired value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_filename_completion_desired"
		}"
		end

	rl_filename_completion_function (an_argument_l1384_c7: POINTER; an_argument_l1385_c7: INTEGER): POINTER is
 		-- rl_filename_completion_function
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_filename_completion_function"
		}"
		end

	rl_filename_dequoting_function: POINTER is
 		-- rl_filename_dequoting_function
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_filename_dequoting_function"
		}"
		end

	address_of_rl_filename_dequoting_function: POINTER is
 		-- Address of rl_filename_dequoting_function
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_filename_dequoting_function"
		}"
		end

	set_rl_filename_dequoting_function (a_value: POINTER) is
		-- Set variable rl_filename_dequoting_function value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_filename_dequoting_function"
		}"
		end

	rl_filename_quote_characters: POINTER is
 		-- rl_filename_quote_characters
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_filename_quote_characters"
		}"
		end

	address_of_rl_filename_quote_characters: POINTER is
 		-- Address of rl_filename_quote_characters
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_filename_quote_characters"
		}"
		end

	set_rl_filename_quote_characters (a_value: POINTER) is
		-- Set variable rl_filename_quote_characters value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_filename_quote_characters"
		}"
		end

	rl_filename_quoting_desired: INTEGER is
 		-- rl_filename_quoting_desired
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_filename_quoting_desired"
		}"
		end

	address_of_rl_filename_quoting_desired: POINTER is
 		-- Address of rl_filename_quoting_desired
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_filename_quoting_desired"
		}"
		end

	set_rl_filename_quoting_desired (a_value: INTEGER) is
		-- Set variable rl_filename_quoting_desired value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_filename_quoting_desired"
		}"
		end

	rl_filename_quoting_function: POINTER is
 		-- rl_filename_quoting_function
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_filename_quoting_function"
		}"
		end

	address_of_rl_filename_quoting_function: POINTER is
 		-- Address of rl_filename_quoting_function
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_filename_quoting_function"
		}"
		end

	set_rl_filename_quoting_function (a_value: POINTER) is
		-- Set variable rl_filename_quoting_function value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_filename_quoting_function"
		}"
		end

	rl_filename_rewrite_hook: POINTER is
 		-- rl_filename_rewrite_hook
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_filename_rewrite_hook"
		}"
		end

	address_of_rl_filename_rewrite_hook: POINTER is
 		-- Address of rl_filename_rewrite_hook
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_filename_rewrite_hook"
		}"
		end

	set_rl_filename_rewrite_hook (a_value: POINTER) is
		-- Set variable rl_filename_rewrite_hook value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_filename_rewrite_hook"
		}"
		end

	rl_forced_update_display: INTEGER is
 		-- rl_forced_update_display
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_forced_update_display()"
		}"
		end

	rl_forward (an_argument_l432_c7: INTEGER; an_argument_l433_c7: INTEGER): INTEGER is
 		-- rl_forward
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_forward"
		}"
		end

	rl_forward_byte (an_argument_l2952_c7: INTEGER; an_argument_l2953_c7: INTEGER): INTEGER is
 		-- rl_forward_byte
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_forward_byte"
		}"
		end

	rl_forward_char (an_argument_l1880_c7: INTEGER; an_argument_l1881_c7: INTEGER): INTEGER is
 		-- rl_forward_char
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_forward_char"
		}"
		end

	rl_forward_search_history (an_argument_l827_c7: INTEGER; an_argument_l828_c7: INTEGER): INTEGER is
 		-- rl_forward_search_history
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_forward_search_history"
		}"
		end

	rl_forward_word (an_argument_l2214_c7: INTEGER; an_argument_l2215_c7: INTEGER): INTEGER is
 		-- rl_forward_word
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_forward_word"
		}"
		end

	rl_free (an_argument_l1904_c7: POINTER) is
 		-- rl_free
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_free"
		}"
		end

	rl_free_line_state is
 		-- rl_free_line_state
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_free_line_state()"
		}"
		end

	rl_free_undo_list is
 		-- rl_free_undo_list
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_free_undo_list()"
		}"
		end

	rl_function_dumper (an_argument_l705_c7: INTEGER) is
 		-- rl_function_dumper
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_function_dumper"
		}"
		end

	rl_function_of_keyseq (an_argument_l1125_c7: POINTER; an_argument_l1126_c7: POINTER; an_argument_l1127_c7: POINTER): POINTER is
 		-- rl_function_of_keyseq
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_function_of_keyseq"
		}"
		end

	rl_funmap_names: POINTER is
 		-- rl_funmap_names
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_funmap_names()"
		}"
		end

	rl_generic_bind (an_argument_l760_c7: INTEGER; an_argument_l761_c7: POINTER; an_argument_l762_c7: POINTER; an_argument_l763_c7: POINTER): INTEGER is
 		-- rl_generic_bind
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_generic_bind"
		}"
		end

	rl_get_keymap: POINTER is
 		-- rl_get_keymap
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_get_keymap()"
		}"
		end

	rl_get_keymap_by_name (an_argument_l1229_c7: POINTER): POINTER is
 		-- rl_get_keymap_by_name
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_get_keymap_by_name"
		}"
		end

	rl_get_keymap_name (an_argument_l986_c7: POINTER): POINTER is
 		-- rl_get_keymap_name
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_get_keymap_name"
		}"
		end

	rl_get_keymap_name_from_edit_mode: POINTER is
 		-- rl_get_keymap_name_from_edit_mode
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_get_keymap_name_from_edit_mode()"
		}"
		end

	rl_get_next_history (an_argument_l55_c7: INTEGER; an_argument_l56_c7: INTEGER): INTEGER is
 		-- rl_get_next_history
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_get_next_history"
		}"
		end

	rl_get_previous_history (an_argument_l1641_c7: INTEGER; an_argument_l1642_c7: INTEGER): INTEGER is
 		-- rl_get_previous_history
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_get_previous_history"
		}"
		end

	rl_get_screen_size (an_argument_l1259_c7: POINTER; an_argument_l1260_c7: POINTER) is
 		-- rl_get_screen_size
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_get_screen_size"
		}"
		end

	rl_get_termcap (an_argument_l1836_c7: POINTER): POINTER is
 		-- rl_get_termcap
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_get_termcap"
		}"
		end

	rl_getc (an_argument_l1739_c7: POINTER): INTEGER is
 		-- rl_getc
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_getc"
		}"
		end

	rl_getc_function: POINTER is
 		-- rl_getc_function
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_getc_function"
		}"
		end

	address_of_rl_getc_function: POINTER is
 		-- Address of rl_getc_function
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_getc_function"
		}"
		end

	set_rl_getc_function (a_value: POINTER) is
		-- Set variable rl_getc_function value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_getc_function"
		}"
		end

	rl_gnu_readline_p: INTEGER is
 		-- rl_gnu_readline_p
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_gnu_readline_p"
		}"
		end

	address_of_rl_gnu_readline_p: POINTER is
 		-- Address of rl_gnu_readline_p
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_gnu_readline_p"
		}"
		end

	set_rl_gnu_readline_p (a_value: INTEGER) is
		-- Set variable rl_gnu_readline_p value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_gnu_readline_p"
		}"
		end

	rl_history_search_backward (an_argument_l735_c7: INTEGER; an_argument_l736_c7: INTEGER): INTEGER is
 		-- rl_history_search_backward
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_history_search_backward"
		}"
		end

	rl_history_search_forward (an_argument_l2891_c7: INTEGER; an_argument_l2892_c7: INTEGER): INTEGER is
 		-- rl_history_search_forward
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_history_search_forward"
		}"
		end

	rl_ignore_completion_duplicates: INTEGER is
 		-- rl_ignore_completion_duplicates
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_ignore_completion_duplicates"
		}"
		end

	address_of_rl_ignore_completion_duplicates: POINTER is
 		-- Address of rl_ignore_completion_duplicates
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_ignore_completion_duplicates"
		}"
		end

	set_rl_ignore_completion_duplicates (a_value: INTEGER) is
		-- Set variable rl_ignore_completion_duplicates value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_ignore_completion_duplicates"
		}"
		end

	rl_ignore_some_completions_function: POINTER is
 		-- rl_ignore_some_completions_function
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_ignore_some_completions_function"
		}"
		end

	address_of_rl_ignore_some_completions_function: POINTER is
 		-- Address of rl_ignore_some_completions_function
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_ignore_some_completions_function"
		}"
		end

	set_rl_ignore_some_completions_function (a_value: POINTER) is
		-- Set variable rl_ignore_some_completions_function value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_ignore_some_completions_function"
		}"
		end

	rl_inhibit_completion: INTEGER is
 		-- rl_inhibit_completion
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_inhibit_completion"
		}"
		end

	address_of_rl_inhibit_completion: POINTER is
 		-- Address of rl_inhibit_completion
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_inhibit_completion"
		}"
		end

	set_rl_inhibit_completion (a_value: INTEGER) is
		-- Set variable rl_inhibit_completion value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_inhibit_completion"
		}"
		end

	rl_initialize: INTEGER is
 		-- rl_initialize
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_initialize()"
		}"
		end

	rl_initialize_funmap is
 		-- rl_initialize_funmap
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_initialize_funmap()"
		}"
		end

	rl_insert (an_argument_l403_c7: INTEGER; an_argument_l404_c7: INTEGER): INTEGER is
 		-- rl_insert
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_insert"
		}"
		end

	rl_insert_close (an_argument_l1900_c7: INTEGER; an_argument_l1901_c7: INTEGER): INTEGER is
 		-- rl_insert_close
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_insert_close"
		}"
		end

	rl_insert_comment (an_argument_l1225_c7: INTEGER; an_argument_l1226_c7: INTEGER): INTEGER is
 		-- rl_insert_comment
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_insert_comment"
		}"
		end

	rl_insert_completions (an_argument_l598_c7: INTEGER; an_argument_l599_c7: INTEGER): INTEGER is
 		-- rl_insert_completions
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_insert_completions"
		}"
		end

	rl_insert_mode: INTEGER is
 		-- rl_insert_mode
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_insert_mode"
		}"
		end

	address_of_rl_insert_mode: POINTER is
 		-- Address of rl_insert_mode
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_insert_mode"
		}"
		end

	set_rl_insert_mode (a_value: INTEGER) is
		-- Set variable rl_insert_mode value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_insert_mode"
		}"
		end

	rl_insert_text (an_argument_l365_c7: POINTER): INTEGER is
 		-- rl_insert_text
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_insert_text"
		}"
		end

	rl_instream: POINTER is
 		-- rl_instream
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_instream"
		}"
		end

	address_of_rl_instream: POINTER is
 		-- Address of rl_instream
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_instream"
		}"
		end

	set_rl_instream (a_value: POINTER) is
		-- Set variable rl_instream value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_instream"
		}"
		end

	rl_invoking_keyseqs (an_argument_l860_c7: POINTER): POINTER is
 		-- rl_invoking_keyseqs
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_invoking_keyseqs"
		}"
		end

	rl_invoking_keyseqs_in_map (an_argument_l2458_c7: POINTER; an_argument_l2459_c7: POINTER): POINTER is
 		-- rl_invoking_keyseqs_in_map
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_invoking_keyseqs_in_map"
		}"
		end

	rl_kill_full_line (an_argument_l2482_c7: INTEGER; an_argument_l2483_c7: INTEGER): INTEGER is
 		-- rl_kill_full_line
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_kill_full_line"
		}"
		end

	rl_kill_line (an_argument_l1874_c7: INTEGER; an_argument_l1875_c7: INTEGER): INTEGER is
 		-- rl_kill_line
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_kill_line"
		}"
		end

	rl_kill_region (an_argument_l204_c7: INTEGER; an_argument_l205_c7: INTEGER): INTEGER is
 		-- rl_kill_region
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_kill_region"
		}"
		end

	rl_kill_text (an_argument_l968_c7: INTEGER; an_argument_l969_c7: INTEGER): INTEGER is
 		-- rl_kill_text
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_kill_text"
		}"
		end

	rl_kill_word (an_argument_l2879_c7: INTEGER; an_argument_l2880_c7: INTEGER): INTEGER is
 		-- rl_kill_word
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_kill_word"
		}"
		end

	rl_last_func: POINTER is
 		-- rl_last_func
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_last_func"
		}"
		end

	address_of_rl_last_func: POINTER is
 		-- Address of rl_last_func
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_last_func"
		}"
		end

	set_rl_last_func (a_value: POINTER) is
		-- Set variable rl_last_func value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_last_func"
		}"
		end

	rl_library_version: POINTER is
 		-- rl_library_version
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_library_version"
		}"
		end

	address_of_rl_library_version: POINTER is
 		-- Address of rl_library_version
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_library_version"
		}"
		end

	set_rl_library_version (a_value: POINTER) is
		-- Set variable rl_library_version value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_library_version"
		}"
		end

	rl_line_buffer: POINTER is
 		-- rl_line_buffer
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_line_buffer"
		}"
		end

	address_of_rl_line_buffer: POINTER is
 		-- Address of rl_line_buffer
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_line_buffer"
		}"
		end

	set_rl_line_buffer (a_value: POINTER) is
		-- Set variable rl_line_buffer value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_line_buffer"
		}"
		end

	rl_list_funmap_names is
 		-- rl_list_funmap_names
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_list_funmap_names()"
		}"
		end

	rl_macro_bind (an_argument_l1143_c7: POINTER; an_argument_l1144_c7: POINTER; an_argument_l1145_c7: POINTER): INTEGER is
 		-- rl_macro_bind
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_macro_bind"
		}"
		end

	rl_macro_dumper (an_argument_l1341_c7: INTEGER) is
 		-- rl_macro_dumper
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_macro_dumper"
		}"
		end

	rl_make_bare_keymap: POINTER is
 		-- rl_make_bare_keymap
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_make_bare_keymap()"
		}"
		end

	rl_make_keymap: POINTER is
 		-- rl_make_keymap
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_make_keymap()"
		}"
		end

	rl_mark: INTEGER is
 		-- rl_mark
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_mark"
		}"
		end

	address_of_rl_mark: POINTER is
 		-- Address of rl_mark
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_mark"
		}"
		end

	set_rl_mark (a_value: INTEGER) is
		-- Set variable rl_mark value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_mark"
		}"
		end

	rl_maybe_replace_line: INTEGER is
 		-- rl_maybe_replace_line
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_maybe_replace_line()"
		}"
		end

	rl_maybe_save_line: INTEGER is
 		-- rl_maybe_save_line
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_maybe_save_line()"
		}"
		end

	rl_maybe_unsave_line: INTEGER is
 		-- rl_maybe_unsave_line
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_maybe_unsave_line()"
		}"
		end

	rl_menu_complete (an_argument_l200_c7: INTEGER; an_argument_l201_c7: INTEGER): INTEGER is
 		-- rl_menu_complete
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_menu_complete"
		}"
		end

	rl_menu_completion_entry_function: POINTER is
 		-- rl_menu_completion_entry_function
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_menu_completion_entry_function"
		}"
		end

	address_of_rl_menu_completion_entry_function: POINTER is
 		-- Address of rl_menu_completion_entry_function
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_menu_completion_entry_function"
		}"
		end

	set_rl_menu_completion_entry_function (a_value: POINTER) is
		-- Set variable rl_menu_completion_entry_function value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_menu_completion_entry_function"
		}"
		end

	rl_message: INTEGER is
 		-- rl_message
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_message()"
		}"
		end

	rl_modifying (an_argument_l2772_c7: INTEGER; an_argument_l2773_c7: INTEGER): INTEGER is
 		-- rl_modifying
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_modifying"
		}"
		end

	rl_named_function (an_argument_l1948_c7: POINTER): POINTER is
 		-- rl_named_function
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_named_function"
		}"
		end

	rl_newline (an_argument_l2143_c7: INTEGER; an_argument_l2144_c7: INTEGER): INTEGER is
 		-- rl_newline
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_newline"
		}"
		end

	rl_noninc_forward_search (an_argument_l1839_c7: INTEGER; an_argument_l1840_c7: INTEGER): INTEGER is
 		-- rl_noninc_forward_search
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_noninc_forward_search"
		}"
		end

	rl_noninc_forward_search_again (an_argument_l587_c7: INTEGER; an_argument_l588_c7: INTEGER): INTEGER is
 		-- rl_noninc_forward_search_again
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_noninc_forward_search_again"
		}"
		end

	rl_noninc_reverse_search (an_argument_l713_c7: INTEGER; an_argument_l714_c7: INTEGER): INTEGER is
 		-- rl_noninc_reverse_search
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_noninc_reverse_search"
		}"
		end

	rl_noninc_reverse_search_again (an_argument_l832_c7: INTEGER; an_argument_l833_c7: INTEGER): INTEGER is
 		-- rl_noninc_reverse_search_again
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_noninc_reverse_search_again"
		}"
		end

	rl_num_chars_to_read: INTEGER is
 		-- rl_num_chars_to_read
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_num_chars_to_read"
		}"
		end

	address_of_rl_num_chars_to_read: POINTER is
 		-- Address of rl_num_chars_to_read
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_num_chars_to_read"
		}"
		end

	set_rl_num_chars_to_read (a_value: INTEGER) is
		-- Set variable rl_num_chars_to_read value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_num_chars_to_read"
		}"
		end

	rl_numeric_arg: INTEGER is
 		-- rl_numeric_arg
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_numeric_arg"
		}"
		end

	address_of_rl_numeric_arg: POINTER is
 		-- Address of rl_numeric_arg
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_numeric_arg"
		}"
		end

	set_rl_numeric_arg (a_value: INTEGER) is
		-- Set variable rl_numeric_arg value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_numeric_arg"
		}"
		end

	rl_old_menu_complete (an_argument_l1425_c7: INTEGER; an_argument_l1426_c7: INTEGER): INTEGER is
 		-- rl_old_menu_complete
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_old_menu_complete"
		}"
		end

	rl_on_new_line: INTEGER is
 		-- rl_on_new_line
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_on_new_line()"
		}"
		end

	rl_on_new_line_with_prompt: INTEGER is
 		-- rl_on_new_line_with_prompt
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_on_new_line_with_prompt()"
		}"
		end

	rl_outstream: POINTER is
 		-- rl_outstream
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_outstream"
		}"
		end

	address_of_rl_outstream: POINTER is
 		-- Address of rl_outstream
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_outstream"
		}"
		end

	set_rl_outstream (a_value: POINTER) is
		-- Set variable rl_outstream value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_outstream"
		}"
		end

	rl_overwrite_mode (an_argument_l673_c7: INTEGER; an_argument_l674_c7: INTEGER): INTEGER is
 		-- rl_overwrite_mode
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_overwrite_mode"
		}"
		end

	rl_parse_and_bind (an_argument_l2094_c7: POINTER): INTEGER is
 		-- rl_parse_and_bind
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_parse_and_bind"
		}"
		end

	rl_pending_input: INTEGER is
 		-- rl_pending_input
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_pending_input"
		}"
		end

	address_of_rl_pending_input: POINTER is
 		-- Address of rl_pending_input
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_pending_input"
		}"
		end

	set_rl_pending_input (a_value: INTEGER) is
		-- Set variable rl_pending_input value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_pending_input"
		}"
		end

	rl_point: INTEGER is
 		-- rl_point
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_point"
		}"
		end

	address_of_rl_point: POINTER is
 		-- Address of rl_point
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_point"
		}"
		end

	set_rl_point (a_value: INTEGER) is
		-- Set variable rl_point value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_point"
		}"
		end

	rl_possible_completions (an_argument_l417_c7: INTEGER; an_argument_l418_c7: INTEGER): INTEGER is
 		-- rl_possible_completions
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_possible_completions"
		}"
		end

	rl_pre_input_hook: POINTER is
 		-- rl_pre_input_hook
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_pre_input_hook"
		}"
		end

	address_of_rl_pre_input_hook: POINTER is
 		-- Address of rl_pre_input_hook
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_pre_input_hook"
		}"
		end

	set_rl_pre_input_hook (a_value: POINTER) is
		-- Set variable rl_pre_input_hook value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_pre_input_hook"
		}"
		end

	rl_prefer_env_winsize: INTEGER is
 		-- rl_prefer_env_winsize
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_prefer_env_winsize"
		}"
		end

	address_of_rl_prefer_env_winsize: POINTER is
 		-- Address of rl_prefer_env_winsize
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_prefer_env_winsize"
		}"
		end

	set_rl_prefer_env_winsize (a_value: INTEGER) is
		-- Set variable rl_prefer_env_winsize value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_prefer_env_winsize"
		}"
		end

	rl_prep_term_function: POINTER is
 		-- rl_prep_term_function
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_prep_term_function"
		}"
		end

	address_of_rl_prep_term_function: POINTER is
 		-- Address of rl_prep_term_function
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_prep_term_function"
		}"
		end

	set_rl_prep_term_function (a_value: POINTER) is
		-- Set variable rl_prep_term_function value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_prep_term_function"
		}"
		end

	rl_prep_terminal (an_argument_l2423_c7: INTEGER) is
 		-- rl_prep_terminal
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_prep_terminal"
		}"
		end

	rl_prompt: POINTER is
 		-- rl_prompt
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_prompt"
		}"
		end

	address_of_rl_prompt: POINTER is
 		-- Address of rl_prompt
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_prompt"
		}"
		end

	set_rl_prompt (a_value: POINTER) is
		-- Set variable rl_prompt value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_prompt"
		}"
		end

	rl_push_macro_input (an_argument_l2239_c7: POINTER) is
 		-- rl_push_macro_input
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_push_macro_input"
		}"
		end

	rl_quoted_insert (an_argument_l1894_c7: INTEGER; an_argument_l1895_c7: INTEGER): INTEGER is
 		-- rl_quoted_insert
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_quoted_insert"
		}"
		end

	rl_re_read_init_file (an_argument_l960_c7: INTEGER; an_argument_l961_c7: INTEGER): INTEGER is
 		-- rl_re_read_init_file
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_re_read_init_file"
		}"
		end

	rl_read_init_file (an_argument_l2083_c7: POINTER): INTEGER is
 		-- rl_read_init_file
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_read_init_file"
		}"
		end

	rl_read_key: INTEGER is
 		-- rl_read_key
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_read_key()"
		}"
		end

	rl_readline_name: POINTER is
 		-- rl_readline_name
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_readline_name"
		}"
		end

	address_of_rl_readline_name: POINTER is
 		-- Address of rl_readline_name
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_readline_name"
		}"
		end

	set_rl_readline_name (a_value: POINTER) is
		-- Set variable rl_readline_name value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_readline_name"
		}"
		end

	rl_readline_state: INTEGER is
 		-- rl_readline_state
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_readline_state"
		}"
		end

	address_of_rl_readline_state: POINTER is
 		-- Address of rl_readline_state
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_readline_state"
		}"
		end

	set_rl_readline_state (a_value: INTEGER) is
		-- Set variable rl_readline_state value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_readline_state"
		}"
		end

	rl_readline_version: INTEGER is
 		-- rl_readline_version
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_readline_version"
		}"
		end

	address_of_rl_readline_version: POINTER is
 		-- Address of rl_readline_version
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_readline_version"
		}"
		end

	set_rl_readline_version (a_value: INTEGER) is
		-- Set variable rl_readline_version value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_readline_version"
		}"
		end

	rl_redisplay is
 		-- rl_redisplay
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_redisplay()"
		}"
		end

	rl_redisplay_function: POINTER is
 		-- rl_redisplay_function
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_redisplay_function"
		}"
		end

	address_of_rl_redisplay_function: POINTER is
 		-- Address of rl_redisplay_function
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_redisplay_function"
		}"
		end

	set_rl_redisplay_function (a_value: POINTER) is
		-- Set variable rl_redisplay_function value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_redisplay_function"
		}"
		end

	rl_refresh_line (an_argument_l964_c7: INTEGER; an_argument_l965_c7: INTEGER): INTEGER is
 		-- rl_refresh_line
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_refresh_line"
		}"
		end

	rl_replace_line (an_argument_l2014_c7: POINTER; an_argument_l2015_c7: INTEGER) is
 		-- rl_replace_line
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_replace_line"
		}"
		end

	rl_reset_after_signal is
 		-- rl_reset_after_signal
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_reset_after_signal()"
		}"
		end

	rl_reset_line_state: INTEGER is
 		-- rl_reset_line_state
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_reset_line_state()"
		}"
		end

	rl_reset_screen_size is
 		-- rl_reset_screen_size
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_reset_screen_size()"
		}"
		end

	rl_reset_terminal (an_argument_l25_c7: POINTER): INTEGER is
 		-- rl_reset_terminal
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_reset_terminal"
		}"
		end

	rl_resize_terminal is
 		-- rl_resize_terminal
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_resize_terminal()"
		}"
		end

	rl_restart_output (an_argument_l1078_c7: INTEGER; an_argument_l1079_c7: INTEGER): INTEGER is
 		-- rl_restart_output
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_restart_output"
		}"
		end

	rl_restore_prompt is
 		-- rl_restore_prompt
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_restore_prompt()"
		}"
		end

	rl_restore_state (an_argument_l2323_c7: POINTER): INTEGER is
 		-- rl_restore_state
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_restore_state"
		}"
		end

	rl_reverse_search_history (an_argument_l1356_c7: INTEGER; an_argument_l1357_c7: INTEGER): INTEGER is
 		-- rl_reverse_search_history
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_reverse_search_history"
		}"
		end

	rl_revert_line (an_argument_l346_c7: INTEGER; an_argument_l347_c7: INTEGER): INTEGER is
 		-- rl_revert_line
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_revert_line"
		}"
		end

	rl_rubout (an_argument_l2285_c7: INTEGER; an_argument_l2286_c7: INTEGER): INTEGER is
 		-- rl_rubout
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_rubout"
		}"
		end

	rl_rubout_or_delete (an_argument_l2079_c7: INTEGER; an_argument_l2080_c7: INTEGER): INTEGER is
 		-- rl_rubout_or_delete
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_rubout_or_delete"
		}"
		end

	rl_save_prompt is
 		-- rl_save_prompt
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_save_prompt()"
		}"
		end

	rl_save_state (an_argument_l2852_c7: POINTER): INTEGER is
 		-- rl_save_state
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_save_state"
		}"
		end

	rl_set_key (an_argument_l1241_c7: POINTER; an_argument_l1242_c7: POINTER; an_argument_l1243_c7: POINTER): INTEGER is
 		-- rl_set_key
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_set_key"
		}"
		end

	rl_set_keyboard_input_timeout (an_argument_l717_c7: INTEGER): INTEGER is
 		-- rl_set_keyboard_input_timeout
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_set_keyboard_input_timeout"
		}"
		end

	rl_set_keymap (an_argument_l1193_c7: POINTER) is
 		-- rl_set_keymap
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_set_keymap"
		}"
		end

	rl_set_keymap_from_edit_mode is
 		-- rl_set_keymap_from_edit_mode
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_set_keymap_from_edit_mode()"
		}"
		end

	rl_set_mark (an_argument_l1794_c7: INTEGER; an_argument_l1795_c7: INTEGER): INTEGER is
 		-- rl_set_mark
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_set_mark"
		}"
		end

	rl_set_paren_blink_timeout (an_argument_l2498_c7: INTEGER): INTEGER is
 		-- rl_set_paren_blink_timeout
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_set_paren_blink_timeout"
		}"
		end

	rl_set_prompt (an_argument_l1692_c7: POINTER): INTEGER is
 		-- rl_set_prompt
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_set_prompt"
		}"
		end

	rl_set_screen_size (an_argument_l1175_c7: INTEGER; an_argument_l1176_c7: INTEGER) is
 		-- rl_set_screen_size
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_set_screen_size"
		}"
		end

	rl_set_signals: INTEGER is
 		-- rl_set_signals
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_set_signals()"
		}"
		end

	rl_show_char (an_argument_l2218_c7: INTEGER): INTEGER is
 		-- rl_show_char
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_show_char"
		}"
		end

	rl_skip_csi_sequence (an_argument_l2505_c7: INTEGER; an_argument_l2506_c7: INTEGER): INTEGER is
 		-- rl_skip_csi_sequence
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_skip_csi_sequence"
		}"
		end

	rl_sort_completion_matches: INTEGER is
 		-- rl_sort_completion_matches
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_sort_completion_matches"
		}"
		end

	address_of_rl_sort_completion_matches: POINTER is
 		-- Address of rl_sort_completion_matches
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_sort_completion_matches"
		}"
		end

	set_rl_sort_completion_matches (a_value: INTEGER) is
		-- Set variable rl_sort_completion_matches value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_sort_completion_matches"
		}"
		end

	rl_special_prefixes: POINTER is
 		-- rl_special_prefixes
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_special_prefixes"
		}"
		end

	address_of_rl_special_prefixes: POINTER is
 		-- Address of rl_special_prefixes
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_special_prefixes"
		}"
		end

	set_rl_special_prefixes (a_value: POINTER) is
		-- Set variable rl_special_prefixes value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_special_prefixes"
		}"
		end

	rl_start_kbd_macro (an_argument_l1206_c7: INTEGER; an_argument_l1207_c7: INTEGER): INTEGER is
 		-- rl_start_kbd_macro
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_start_kbd_macro"
		}"
		end

	rl_startup_hook: POINTER is
 		-- rl_startup_hook
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_startup_hook"
		}"
		end

	address_of_rl_startup_hook: POINTER is
 		-- Address of rl_startup_hook
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_startup_hook"
		}"
		end

	set_rl_startup_hook (a_value: POINTER) is
		-- Set variable rl_startup_hook value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_startup_hook"
		}"
		end

	rl_stop_output (an_argument_l2862_c7: INTEGER; an_argument_l2863_c7: INTEGER): INTEGER is
 		-- rl_stop_output
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_stop_output"
		}"
		end

	rl_stuff_char (an_argument_l2006_c7: INTEGER): INTEGER is
 		-- rl_stuff_char
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_stuff_char"
		}"
		end

	rl_tab_insert (an_argument_l1814_c7: INTEGER; an_argument_l1815_c7: INTEGER): INTEGER is
 		-- rl_tab_insert
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_tab_insert"
		}"
		end

	rl_terminal_name: POINTER is
 		-- rl_terminal_name
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_terminal_name"
		}"
		end

	address_of_rl_terminal_name: POINTER is
 		-- Address of rl_terminal_name
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_terminal_name"
		}"
		end

	set_rl_terminal_name (a_value: POINTER) is
		-- Set variable rl_terminal_name value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_terminal_name"
		}"
		end

	rl_tilde_expand (an_argument_l1579_c7: INTEGER; an_argument_l1580_c7: INTEGER): INTEGER is
 		-- rl_tilde_expand
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_tilde_expand"
		}"
		end

	rl_translate_keyseq (an_argument_l91_c7: POINTER; an_argument_l92_c7: POINTER; an_argument_l93_c7: POINTER): INTEGER is
 		-- rl_translate_keyseq
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_translate_keyseq"
		}"
		end

	rl_transpose_chars (an_argument_l2671_c7: INTEGER; an_argument_l2672_c7: INTEGER): INTEGER is
 		-- rl_transpose_chars
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_transpose_chars"
		}"
		end

	rl_transpose_words (an_argument_l1388_c7: INTEGER; an_argument_l1389_c7: INTEGER): INTEGER is
 		-- rl_transpose_words
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_transpose_words"
		}"
		end

	rl_tty_set_default_bindings (an_argument_l1016_c7: POINTER) is
 		-- rl_tty_set_default_bindings
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_tty_set_default_bindings"
		}"
		end

	rl_tty_status (an_argument_l2235_c7: INTEGER; an_argument_l2236_c7: INTEGER): INTEGER is
 		-- rl_tty_status
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_tty_status"
		}"
		end

	rl_tty_unset_default_bindings (an_argument_l350_c7: POINTER) is
 		-- rl_tty_unset_default_bindings
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_tty_unset_default_bindings"
		}"
		end

	rl_unbind_command_in_map (an_argument_l1048_c7: POINTER; an_argument_l1049_c7: POINTER): INTEGER is
 		-- rl_unbind_command_in_map
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_unbind_command_in_map"
		}"
		end

	rl_unbind_function_in_map (an_argument_l1786_c7: POINTER; an_argument_l1787_c7: POINTER): INTEGER is
 		-- rl_unbind_function_in_map
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_unbind_function_in_map"
		}"
		end

	rl_unbind_key (an_argument_l2060_c7: INTEGER): INTEGER is
 		-- rl_unbind_key
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_unbind_key"
		}"
		end

	rl_unbind_key_in_map (an_argument_l2551_c7: INTEGER; an_argument_l2552_c7: POINTER): INTEGER is
 		-- rl_unbind_key_in_map
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_unbind_key_in_map"
		}"
		end

	rl_undo_command (an_argument_l1507_c7: INTEGER; an_argument_l1508_c7: INTEGER): INTEGER is
 		-- rl_undo_command
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_undo_command"
		}"
		end

	rl_undo_list: POINTER is
 		-- rl_undo_list
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_undo_list"
		}"
		end

	address_of_rl_undo_list: POINTER is
 		-- Address of rl_undo_list
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&rl_undo_list"
		}"
		end

	set_rl_undo_list (a_value: POINTER) is
		-- Set variable rl_undo_list value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_rl_undo_list"
		}"
		end

	rl_universal_argument (an_argument_l2979_c7: INTEGER; an_argument_l2980_c7: INTEGER): INTEGER is
 		-- rl_universal_argument
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_universal_argument"
		}"
		end

	rl_unix_filename_rubout (an_argument_l196_c7: INTEGER; an_argument_l197_c7: INTEGER): INTEGER is
 		-- rl_unix_filename_rubout
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_unix_filename_rubout"
		}"
		end

	rl_unix_line_discard (an_argument_l2985_c7: INTEGER; an_argument_l2986_c7: INTEGER): INTEGER is
 		-- rl_unix_line_discard
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_unix_line_discard"
		}"
		end

	rl_unix_word_rubout (an_argument_l2030_c7: INTEGER; an_argument_l2031_c7: INTEGER): INTEGER is
 		-- rl_unix_word_rubout
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_unix_word_rubout"
		}"
		end

	rl_untranslate_keyseq (an_argument_l2164_c7: INTEGER): POINTER is
 		-- rl_untranslate_keyseq
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_untranslate_keyseq"
		}"
		end

	rl_upcase_word (an_argument_l2921_c7: INTEGER; an_argument_l2922_c7: INTEGER): INTEGER is
 		-- rl_upcase_word
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_upcase_word"
		}"
		end

	rl_username_completion_function (an_argument_l2735_c7: POINTER; an_argument_l2736_c7: INTEGER): POINTER is
 		-- rl_username_completion_function
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_username_completion_function"
		}"
		end

	rl_variable_bind (an_argument_l2448_c7: POINTER; an_argument_l2449_c7: POINTER): INTEGER is
 		-- rl_variable_bind
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_variable_bind"
		}"
		end

	rl_variable_dumper (an_argument_l584_c7: INTEGER) is
 		-- rl_variable_dumper
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_variable_dumper"
		}"
		end

	rl_variable_value (an_argument_l1393_c7: POINTER): POINTER is
 		-- rl_variable_value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_variable_value"
		}"
		end

	rl_vi_append_eol (an_argument_l956_c7: INTEGER; an_argument_l957_c7: INTEGER): INTEGER is
 		-- rl_vi_append_eol
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_append_eol"
		}"
		end

	rl_vi_append_mode (an_argument_l1212_c7: INTEGER; an_argument_l1213_c7: INTEGER): INTEGER is
 		-- rl_vi_append_mode
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_append_mode"
		}"
		end

	rl_vi_arg_digit (an_argument_l877_c7: INTEGER; an_argument_l878_c7: INTEGER): INTEGER is
 		-- rl_vi_arg_digit
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_arg_digit"
		}"
		end

	rl_vi_b_word (an_argument_l2159_c7: INTEGER; an_argument_l2160_c7: INTEGER): INTEGER is
 		-- rl_vi_bWord
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_bWord"
		}"
		end

	rl_vi_back_to_indent (an_argument_l2634_c7: INTEGER; an_argument_l2635_c7: INTEGER): INTEGER is
 		-- rl_vi_back_to_indent
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_back_to_indent"
		}"
		end

	rl_vi_bracktype (an_argument_l2531_c7: INTEGER): INTEGER is
 		-- rl_vi_bracktype
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_bracktype"
		}"
		end

	rl_vi_bword (an_argument_l421_c7: INTEGER; an_argument_l422_c7: INTEGER): INTEGER is
 		-- rl_vi_bword
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_bword"
		}"
		end

	rl_vi_change_case (an_argument_l1376_c7: INTEGER; an_argument_l1377_c7: INTEGER): INTEGER is
 		-- rl_vi_change_case
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_change_case"
		}"
		end

	rl_vi_change_char (an_argument_l844_c7: INTEGER; an_argument_l845_c7: INTEGER): INTEGER is
 		-- rl_vi_change_char
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_change_char"
		}"
		end

	rl_vi_change_to (an_argument_l1722_c7: INTEGER; an_argument_l1723_c7: INTEGER): INTEGER is
 		-- rl_vi_change_to
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_change_to"
		}"
		end

	rl_vi_char_search (an_argument_l1857_c7: INTEGER; an_argument_l1858_c7: INTEGER): INTEGER is
 		-- rl_vi_char_search
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_char_search"
		}"
		end

	rl_vi_check: INTEGER is
 		-- rl_vi_check
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_check()"
		}"
		end

	rl_vi_column (an_argument_l2019_c7: INTEGER; an_argument_l2020_c7: INTEGER): INTEGER is
 		-- rl_vi_column
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_column"
		}"
		end

	rl_vi_complete (an_argument_l779_c7: INTEGER; an_argument_l780_c7: INTEGER): INTEGER is
 		-- rl_vi_complete
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_complete"
		}"
		end

	rl_vi_delete (an_argument_l407_c7: INTEGER; an_argument_l408_c7: INTEGER): INTEGER is
 		-- rl_vi_delete
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_delete"
		}"
		end

	rl_vi_delete_to (an_argument_l546_c7: INTEGER; an_argument_l547_c7: INTEGER): INTEGER is
 		-- rl_vi_delete_to
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_delete_to"
		}"
		end

	rl_vi_domove (an_argument_l1584_c7: INTEGER; an_argument_l1585_c7: POINTER): INTEGER is
 		-- rl_vi_domove
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_domove"
		}"
		end

	rl_vi_e_word (an_argument_l1503_c7: INTEGER; an_argument_l1504_c7: INTEGER): INTEGER is
 		-- rl_vi_eWord
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_eWord"
		}"
		end

	rl_vi_editing_mode (an_argument_l1004_c7: INTEGER; an_argument_l1005_c7: INTEGER): INTEGER is
 		-- rl_vi_editing_mode
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_editing_mode"
		}"
		end

	rl_vi_end_word (an_argument_l1065_c7: INTEGER; an_argument_l1066_c7: INTEGER): INTEGER is
 		-- rl_vi_end_word
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_end_word"
		}"
		end

	rl_vi_eof_maybe (an_argument_l2119_c7: INTEGER; an_argument_l2120_c7: INTEGER): INTEGER is
 		-- rl_vi_eof_maybe
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_eof_maybe"
		}"
		end

	rl_vi_eword (an_argument_l2795_c7: INTEGER; an_argument_l2796_c7: INTEGER): INTEGER is
 		-- rl_vi_eword
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_eword"
		}"
		end

	rl_vi_f_word (an_argument_l1307_c7: INTEGER; an_argument_l1308_c7: INTEGER): INTEGER is
 		-- rl_vi_fWord
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_fWord"
		}"
		end

	rl_vi_fetch_history (an_argument_l296_c7: INTEGER; an_argument_l297_c7: INTEGER): INTEGER is
 		-- rl_vi_fetch_history
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_fetch_history"
		}"
		end

	rl_vi_first_print (an_argument_l907_c7: INTEGER; an_argument_l908_c7: INTEGER): INTEGER is
 		-- rl_vi_first_print
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_first_print"
		}"
		end

	rl_vi_fword (an_argument_l2547_c7: INTEGER; an_argument_l2548_c7: INTEGER): INTEGER is
 		-- rl_vi_fword
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_fword"
		}"
		end

	rl_vi_goto_mark (an_argument_l44_c7: INTEGER; an_argument_l45_c7: INTEGER): INTEGER is
 		-- rl_vi_goto_mark
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_goto_mark"
		}"
		end

	rl_vi_insert_beg (an_argument_l1665_c7: INTEGER; an_argument_l1666_c7: INTEGER): INTEGER is
 		-- rl_vi_insert_beg
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_insert_beg"
		}"
		end

	rl_vi_insert_mode (an_argument_l313_c7: INTEGER; an_argument_l314_c7: INTEGER): INTEGER is
 		-- rl_vi_insert_mode
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_insert_mode"
		}"
		end

	rl_vi_insertion_mode (an_argument_l1232_c7: INTEGER; an_argument_l1233_c7: INTEGER): INTEGER is
 		-- rl_vi_insertion_mode
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_insertion_mode"
		}"
		end

	rl_vi_match (an_argument_l2358_c7: INTEGER; an_argument_l2359_c7: INTEGER): INTEGER is
 		-- rl_vi_match
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_match"
		}"
		end

	rl_vi_movement_mode (an_argument_l2886_c7: INTEGER; an_argument_l2887_c7: INTEGER): INTEGER is
 		-- rl_vi_movement_mode
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_movement_mode"
		}"
		end

	rl_vi_next_word (an_argument_l903_c7: INTEGER; an_argument_l904_c7: INTEGER): INTEGER is
 		-- rl_vi_next_word
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_next_word"
		}"
		end

	rl_vi_overstrike (an_argument_l1285_c7: INTEGER; an_argument_l1286_c7: INTEGER): INTEGER is
 		-- rl_vi_overstrike
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_overstrike"
		}"
		end

	rl_vi_overstrike_delete (an_argument_l726_c7: INTEGER; an_argument_l727_c7: INTEGER): INTEGER is
 		-- rl_vi_overstrike_delete
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_overstrike_delete"
		}"
		end

	rl_vi_prev_word (an_argument_l890_c7: INTEGER; an_argument_l891_c7: INTEGER): INTEGER is
 		-- rl_vi_prev_word
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_prev_word"
		}"
		end

	rl_vi_put (an_argument_l270_c7: INTEGER; an_argument_l271_c7: INTEGER): INTEGER is
 		-- rl_vi_put
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_put"
		}"
		end

	rl_vi_redo (an_argument_l1364_c7: INTEGER; an_argument_l1365_c7: INTEGER): INTEGER is
 		-- rl_vi_redo
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_redo"
		}"
		end

	rl_vi_replace (an_argument_l2808_c7: INTEGER; an_argument_l2809_c7: INTEGER): INTEGER is
 		-- rl_vi_replace
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_replace"
		}"
		end

	rl_vi_rubout (an_argument_l1535_c7: INTEGER; an_argument_l1536_c7: INTEGER): INTEGER is
 		-- rl_vi_rubout
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_rubout"
		}"
		end

	rl_vi_search (an_argument_l502_c7: INTEGER; an_argument_l503_c7: INTEGER): INTEGER is
 		-- rl_vi_search
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_search"
		}"
		end

	rl_vi_search_again (an_argument_l1447_c7: INTEGER; an_argument_l1448_c7: INTEGER): INTEGER is
 		-- rl_vi_search_again
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_search_again"
		}"
		end

	rl_vi_set_mark (an_argument_l1823_c7: INTEGER; an_argument_l1824_c7: INTEGER): INTEGER is
 		-- rl_vi_set_mark
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_set_mark"
		}"
		end

	rl_vi_start_inserting (an_argument_l1130_c7: INTEGER; an_argument_l1131_c7: INTEGER; an_argument_l1132_c7: INTEGER) is
 		-- rl_vi_start_inserting
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_start_inserting"
		}"
		end

	rl_vi_subst (an_argument_l469_c7: INTEGER; an_argument_l470_c7: INTEGER): INTEGER is
 		-- rl_vi_subst
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_subst"
		}"
		end

	rl_vi_tilde_expand (an_argument_l281_c7: INTEGER; an_argument_l282_c7: INTEGER): INTEGER is
 		-- rl_vi_tilde_expand
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_tilde_expand"
		}"
		end

	rl_vi_undo (an_argument_l796_c7: INTEGER; an_argument_l797_c7: INTEGER): INTEGER is
 		-- rl_vi_undo
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_undo"
		}"
		end

	rl_vi_yank_arg (an_argument_l183_c7: INTEGER; an_argument_l184_c7: INTEGER): INTEGER is
 		-- rl_vi_yank_arg
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_yank_arg"
		}"
		end

	rl_vi_yank_to (an_argument_l881_c7: INTEGER; an_argument_l882_c7: INTEGER): INTEGER is
 		-- rl_vi_yank_to
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_vi_yank_to"
		}"
		end

	rl_yank (an_argument_l2351_c7: INTEGER; an_argument_l2352_c7: INTEGER): INTEGER is
 		-- rl_yank
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_yank"
		}"
		end

	rl_yank_last_arg (an_argument_l1907_c7: INTEGER; an_argument_l1908_c7: INTEGER): INTEGER is
 		-- rl_yank_last_arg
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_yank_last_arg"
		}"
		end

	rl_yank_nth_arg (an_argument_l989_c7: INTEGER; an_argument_l990_c7: INTEGER): INTEGER is
 		-- rl_yank_nth_arg
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_yank_nth_arg"
		}"
		end

	rl_yank_pop (an_argument_l513_c7: INTEGER; an_argument_l514_c7: INTEGER): INTEGER is
 		-- rl_yank_pop
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "rl_yank_pop"
		}"
		end


end -- class READLINE_EXTERNALS
