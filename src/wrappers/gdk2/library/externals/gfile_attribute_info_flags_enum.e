-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GFILE_ATTRIBUTE_INFO_FLAGS_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = copy_when_moved_low_level)  or else
				(a_value = copy_with_file_low_level)  or else
				(a_value = none_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_copy_when_moved is
		do
			value := copy_when_moved_low_level
		end

	set_copy_with_file is
		do
			value := copy_with_file_low_level
		end

	set_none is
		do
			value := none_low_level
		end

feature {ANY} -- Queries
	is_copy_when_moved: BOOLEAN is
		do
			Result := (value=copy_when_moved_low_level)
		end

	is_copy_with_file: BOOLEAN is
		do
			Result := (value=copy_with_file_low_level)
		end

	is_none: BOOLEAN is
		do
			Result := (value=none_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	copy_when_moved_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_FILE_ATTRIBUTE_INFO_COPY_WHEN_MOVED"
 			}"
 		end

	copy_with_file_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_FILE_ATTRIBUTE_INFO_COPY_WITH_FILE"
 			}"
 		end

	none_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_FILE_ATTRIBUTE_INFO_NONE"
 			}"
 		end


end -- class GFILE_ATTRIBUTE_INFO_FLAGS_ENUM
