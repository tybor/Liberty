-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GKEY_FILE_FLAGS_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = keep_comments_low_level)  or else
				(a_value = keep_translations_low_level)  or else
				(a_value = none_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_keep_comments is
		do
			value := keep_comments_low_level
		end

	set_keep_translations is
		do
			value := keep_translations_low_level
		end

	set_none is
		do
			value := none_low_level
		end

feature {ANY} -- Queries
	is_keep_comments: BOOLEAN is
		do
			Result := (value=keep_comments_low_level)
		end

	is_keep_translations: BOOLEAN is
		do
			Result := (value=keep_translations_low_level)
		end

	is_none: BOOLEAN is
		do
			Result := (value=none_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	keep_comments_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_KEY_FILE_KEEP_COMMENTS"
 			}"
 		end

	keep_translations_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_KEY_FILE_KEEP_TRANSLATIONS"
 			}"
 		end

	none_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_KEY_FILE_NONE"
 			}"
 		end


end -- class GKEY_FILE_FLAGS_ENUM
