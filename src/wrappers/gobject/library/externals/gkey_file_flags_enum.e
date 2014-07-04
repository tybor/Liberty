-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GKEY_FILE_FLAGS_ENUM

insert ENUM

create {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN
        do
            Result := ((a_value = g_key_file_keep_comments_low_level)  or else
				(a_value = g_key_file_keep_translations_low_level)  or else
				(a_value = g_key_file_none_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_g_key_file_keep_comments
		do
			value := g_key_file_keep_comments_low_level
		end

	set_g_key_file_keep_translations
		do
			value := g_key_file_keep_translations_low_level
		end

	set_g_key_file_none
		do
			value := g_key_file_none_low_level
		end

feature {ANY} -- Queries
	is_g_key_file_keep_comments: BOOLEAN
		do
			Result := (value=g_key_file_keep_comments_low_level)
		end

	is_g_key_file_keep_translations: BOOLEAN
		do
			Result := (value=g_key_file_keep_translations_low_level)
		end

	is_g_key_file_none: BOOLEAN
		do
			Result := (value=g_key_file_none_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	g_key_file_keep_comments_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_KEY_FILE_KEEP_COMMENTS"
 			}"
 		end

	g_key_file_keep_translations_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_KEY_FILE_KEEP_TRANSLATIONS"
 			}"
 		end

	g_key_file_none_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_KEY_FILE_NONE"
 			}"
 		end


end -- class GKEY_FILE_FLAGS_ENUM
