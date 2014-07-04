-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class HISTORY_EXTERNALS


insert ANY undefine is_equal, copy end

		STANDARD_C_LIBRARY_TYPES
feature {} -- External calls

<<<<<<< HEAD
	add_history (an_argument_l2155_c7: POINTER) is
=======
	add_history (an_argument_l2165_c7: POINTER)
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
 		-- add_history
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "add_history"
		}"
		end

<<<<<<< HEAD
	add_history_time (an_argument_l2859_c7: POINTER) is
=======
	add_history_time (an_argument_l2852_c7: POINTER)
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
 		-- add_history_time
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "add_history_time"
		}"
		end

<<<<<<< HEAD
	append_history (an_argument_l2347_c7: INTEGER; an_argument_l2348_c7: POINTER): INTEGER is
=======
	append_history (an_argument_l2348_c7: INTEGER; an_argument_l2349_c7: POINTER): INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
 		-- append_history
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "append_history"
		}"
		end

	clear_history
 		-- clear_history
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "clear_history()"
		}"
		end

	current_history: POINTER
 		-- current_history
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "current_history()"
		}"
		end

<<<<<<< HEAD
	free_history_entry (an_argument_l2467_c7: POINTER): POINTER is
=======
	free_history_entry (an_argument_l2464_c7: POINTER): POINTER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
 		-- free_history_entry
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "free_history_entry"
		}"
		end

<<<<<<< HEAD
	get_history_event (an_argument_l2230_c7: POINTER; an_argument_l2231_c7: POINTER; an_argument_l2232_c7: INTEGER): POINTER is
=======
	get_history_event (an_argument_l2240_c7: POINTER; an_argument_l2241_c7: POINTER; an_argument_l2242_c7: INTEGER): POINTER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
 		-- get_history_event
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "get_history_event"
		}"
		end

<<<<<<< HEAD
	history_arg_extract (an_argument_l2185_c7: INTEGER; an_argument_l2186_c7: INTEGER; an_argument_l2187_c7: POINTER): POINTER is
=======
	history_arg_extract (an_argument_l2195_c7: INTEGER; an_argument_l2196_c7: INTEGER; an_argument_l2197_c7: POINTER): POINTER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
 		-- history_arg_extract
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "history_arg_extract"
		}"
		end

	history_base: INTEGER
 		-- history_base
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "history_base"
		}"
		end

	address_of_history_base: POINTER
 		-- Address of history_base
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&history_base"
		}"
		end

	set_history_base (a_value: INTEGER)
		-- Set variable history_base value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_history_base"
		}"
		end

	history_comment_char: CHARACTER
 		-- history_comment_char
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "history_comment_char"
		}"
		end

	address_of_history_comment_char: POINTER
 		-- Address of history_comment_char
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&history_comment_char"
		}"
		end

	set_history_comment_char (a_value: CHARACTER)
		-- Set variable history_comment_char value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_history_comment_char"
		}"
		end

<<<<<<< HEAD
	history_expand (an_argument_l1934_c7: POINTER; an_argument_l1935_c7: POINTER): INTEGER is
=======
	history_expand (an_argument_l1942_c7: POINTER; an_argument_l1943_c7: POINTER): INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
 		-- history_expand
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "history_expand"
		}"
		end

	history_expansion_char: CHARACTER
 		-- history_expansion_char
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "history_expansion_char"
		}"
		end

	address_of_history_expansion_char: POINTER
 		-- Address of history_expansion_char
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&history_expansion_char"
		}"
		end

	set_history_expansion_char (a_value: CHARACTER)
		-- Set variable history_expansion_char value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_history_expansion_char"
		}"
		end

<<<<<<< HEAD
	history_get (an_argument_l2631_c7: INTEGER): POINTER is
=======
	history_get (an_argument_l2626_c7: INTEGER): POINTER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
 		-- history_get
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "history_get"
		}"
		end

	history_get_history_state: POINTER
 		-- history_get_history_state
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "history_get_history_state()"
		}"
		end

<<<<<<< HEAD
	history_get_time (an_argument_l2408_c7: POINTER): like long is
=======
	history_get_time (an_argument_l2409_c7: POINTER): like long
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
 		-- history_get_time
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "history_get_time"
		}"
		end

	history_inhibit_expansion_function: POINTER
 		-- history_inhibit_expansion_function
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "history_inhibit_expansion_function"
		}"
		end

	address_of_history_inhibit_expansion_function: POINTER
 		-- Address of history_inhibit_expansion_function
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&history_inhibit_expansion_function"
		}"
		end

	set_history_inhibit_expansion_function (a_value: POINTER)
		-- Set variable history_inhibit_expansion_function value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_history_inhibit_expansion_function"
		}"
		end

	history_is_stifled: INTEGER
 		-- history_is_stifled
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "history_is_stifled()"
		}"
		end

	history_length: INTEGER
 		-- history_length
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "history_length"
		}"
		end

	address_of_history_length: POINTER
 		-- Address of history_length
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&history_length"
		}"
		end

	set_history_length (a_value: INTEGER)
		-- Set variable history_length value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_history_length"
		}"
		end

	history_list: POINTER
 		-- history_list
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "history_list()"
		}"
		end

	history_max_entries: INTEGER
 		-- history_max_entries
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "history_max_entries"
		}"
		end

	address_of_history_max_entries: POINTER
 		-- Address of history_max_entries
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&history_max_entries"
		}"
		end

	set_history_max_entries (a_value: INTEGER)
		-- Set variable history_max_entries value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_history_max_entries"
		}"
		end

	history_no_expand_chars: POINTER
 		-- history_no_expand_chars
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "history_no_expand_chars"
		}"
		end

	address_of_history_no_expand_chars: POINTER
 		-- Address of history_no_expand_chars
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&history_no_expand_chars"
		}"
		end

	set_history_no_expand_chars (a_value: POINTER)
		-- Set variable history_no_expand_chars value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_history_no_expand_chars"
		}"
		end

	history_quotes_inhibit_expansion: INTEGER
 		-- history_quotes_inhibit_expansion
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "history_quotes_inhibit_expansion"
		}"
		end

	address_of_history_quotes_inhibit_expansion: POINTER
 		-- Address of history_quotes_inhibit_expansion
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&history_quotes_inhibit_expansion"
		}"
		end

	set_history_quotes_inhibit_expansion (a_value: INTEGER)
		-- Set variable history_quotes_inhibit_expansion value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_history_quotes_inhibit_expansion"
		}"
		end

<<<<<<< HEAD
	history_search (an_argument_l248_c7: POINTER; an_argument_l249_c7: INTEGER): INTEGER is
=======
	history_search (an_argument_l263_c7: POINTER; an_argument_l264_c7: INTEGER): INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
 		-- history_search
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "history_search"
		}"
		end

	history_search_delimiter_chars: POINTER
 		-- history_search_delimiter_chars
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "history_search_delimiter_chars"
		}"
		end

	address_of_history_search_delimiter_chars: POINTER
 		-- Address of history_search_delimiter_chars
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&history_search_delimiter_chars"
		}"
		end

	set_history_search_delimiter_chars (a_value: POINTER)
		-- Set variable history_search_delimiter_chars value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_history_search_delimiter_chars"
		}"
		end

<<<<<<< HEAD
	history_search_pos (an_argument_l2613_c7: POINTER; an_argument_l2614_c7: INTEGER; an_argument_l2615_c7: INTEGER): INTEGER is
=======
	history_search_pos (an_argument_l2607_c7: POINTER; an_argument_l2608_c7: INTEGER; an_argument_l2609_c7: INTEGER): INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
 		-- history_search_pos
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "history_search_pos"
		}"
		end

<<<<<<< HEAD
	history_search_prefix (an_argument_l1990_c7: POINTER; an_argument_l1991_c7: INTEGER): INTEGER is
=======
	history_search_prefix (an_argument_l2001_c7: POINTER; an_argument_l2002_c7: INTEGER): INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
 		-- history_search_prefix
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "history_search_prefix"
		}"
		end

<<<<<<< HEAD
	history_set_history_state (an_argument_l840_c7: POINTER) is
=======
	history_set_history_state (an_argument_l838_c7: POINTER)
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
 		-- history_set_history_state
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "history_set_history_state"
		}"
		end

<<<<<<< HEAD
	history_set_pos (an_argument_l1811_c7: INTEGER): INTEGER is
=======
	history_set_pos (an_argument_l1819_c7: INTEGER): INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
 		-- history_set_pos
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "history_set_pos"
		}"
		end

	history_subst_char: CHARACTER
 		-- history_subst_char
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "history_subst_char"
		}"
		end

	address_of_history_subst_char: POINTER
 		-- Address of history_subst_char
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&history_subst_char"
		}"
		end

	set_history_subst_char (a_value: CHARACTER)
		-- Set variable history_subst_char value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_history_subst_char"
		}"
		end

<<<<<<< HEAD
	history_tokenize (an_argument_l2799_c7: POINTER): POINTER is
=======
	history_tokenize (an_argument_l2792_c7: POINTER): POINTER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
 		-- history_tokenize
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "history_tokenize"
		}"
		end

	history_total_bytes: INTEGER
 		-- history_total_bytes
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "history_total_bytes()"
		}"
		end

<<<<<<< HEAD
	history_truncate_file (an_argument_l1917_c7: POINTER; an_argument_l1918_c7: INTEGER): INTEGER is
=======
	history_truncate_file (an_argument_l1925_c7: POINTER; an_argument_l1926_c7: INTEGER): INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
 		-- history_truncate_file
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "history_truncate_file"
		}"
		end

	history_word_delimiters: POINTER
 		-- history_word_delimiters
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "history_word_delimiters"
		}"
		end

	address_of_history_word_delimiters: POINTER
 		-- Address of history_word_delimiters
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&history_word_delimiters"
		}"
		end

	set_history_word_delimiters (a_value: POINTER)
		-- Set variable history_word_delimiters value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_history_word_delimiters"
		}"
		end

	history_write_timestamps: INTEGER
 		-- history_write_timestamps
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "history_write_timestamps"
		}"
		end

	address_of_history_write_timestamps: POINTER
 		-- Address of history_write_timestamps
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&history_write_timestamps"
		}"
		end

	set_history_write_timestamps (a_value: INTEGER)
		-- Set variable history_write_timestamps value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_history_write_timestamps"
		}"
		end

	max_input_history: INTEGER
 		-- max_input_history
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "max_input_history"
		}"
		end

	address_of_max_input_history: POINTER
 		-- Address of max_input_history
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "&max_input_history"
		}"
		end

	set_max_input_history (a_value: INTEGER)
		-- Set variable max_input_history value
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "set_max_input_history"
		}"
		end

	next_history: POINTER
 		-- next_history
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "next_history()"
		}"
		end

	previous_history: POINTER
 		-- previous_history
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "previous_history()"
		}"
		end

<<<<<<< HEAD
	read_history (an_argument_l2137_c7: POINTER): INTEGER is
=======
	read_history (an_argument_l2147_c7: POINTER): INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
 		-- read_history
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "read_history"
		}"
		end

<<<<<<< HEAD
	read_history_range (an_argument_l65_c7: POINTER; an_argument_l66_c7: INTEGER; an_argument_l67_c7: INTEGER): INTEGER is
=======
	read_history_range (an_argument_l66_c7: POINTER; an_argument_l67_c7: INTEGER; an_argument_l68_c7: INTEGER): INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
 		-- read_history_range
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "read_history_range"
		}"
		end

<<<<<<< HEAD
	remove_history (an_argument_l2276_c7: INTEGER): POINTER is
=======
	remove_history (an_argument_l2282_c7: INTEGER): POINTER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
 		-- remove_history
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "remove_history"
		}"
		end

<<<<<<< HEAD
	replace_history_entry (an_argument_l2247_c7: INTEGER; an_argument_l2248_c7: POINTER; an_argument_l2249_c7: POINTER): POINTER is
=======
	replace_history_entry (an_argument_l2252_c7: INTEGER; an_argument_l2253_c7: POINTER; an_argument_l2254_c7: POINTER): POINTER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
 		-- replace_history_entry
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "replace_history_entry"
		}"
		end

<<<<<<< HEAD
	stifle_history (an_argument_l2843_c7: INTEGER) is
=======
	stifle_history (an_argument_l2836_c7: INTEGER)
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
 		-- stifle_history
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "stifle_history"
		}"
		end

	unstifle_history: INTEGER
 		-- unstifle_history
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "unstifle_history()"
		}"
		end

	using_history
 		-- using_history
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "using_history()"
		}"
		end

	where_history: INTEGER
 		-- where_history
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "where_history()"
		}"
		end

<<<<<<< HEAD
	write_history (an_argument_l2763_c7: POINTER): INTEGER is
=======
	write_history (an_argument_l2758_c7: POINTER): INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
 		-- write_history
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "write_history"
		}"
		end


end -- class HISTORY_EXTERNALS
