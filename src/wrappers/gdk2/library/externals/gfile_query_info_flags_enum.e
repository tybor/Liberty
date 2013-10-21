-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GFILE_QUERY_INFO_FLAGS_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = follow_symlinks_low_level)  or else
				(a_value = ne_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_follow_symlinks is
		do
			value := follow_symlinks_low_level
		end

	set_ne is
		do
			value := ne_low_level
		end

feature {ANY} -- Queries
	is_follow_symlinks: BOOLEAN is
		do
			Result := (value=follow_symlinks_low_level)
		end

	is_ne: BOOLEAN is
		do
			Result := (value=ne_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	follow_symlinks_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_FILE_QUERY_INFO_NOFOLLOW_SYMLINKS"
 			}"
 		end

	ne_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_FILE_QUERY_INFO_NONE"
 			}"
 		end


end -- class GFILE_QUERY_INFO_FLAGS_ENUM
