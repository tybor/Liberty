-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GFILE_TYPE_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = directory_low_level)  or else
				(a_value = mountable_low_level)  or else
				(a_value = regular_low_level)  or else
				(a_value = shortcut_low_level)  or else
				(a_value = special_low_level)  or else
				(a_value = symbolic_link_low_level)  or else
				(a_value = unknown_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_directory is
		do
			value := directory_low_level
		end

	set_mountable is
		do
			value := mountable_low_level
		end

	set_regular is
		do
			value := regular_low_level
		end

	set_shortcut is
		do
			value := shortcut_low_level
		end

	set_special is
		do
			value := special_low_level
		end

	set_symbolic_link is
		do
			value := symbolic_link_low_level
		end

	set_unknown is
		do
			value := unknown_low_level
		end

feature {ANY} -- Queries
	is_directory: BOOLEAN is
		do
			Result := (value=directory_low_level)
		end

	is_mountable: BOOLEAN is
		do
			Result := (value=mountable_low_level)
		end

	is_regular: BOOLEAN is
		do
			Result := (value=regular_low_level)
		end

	is_shortcut: BOOLEAN is
		do
			Result := (value=shortcut_low_level)
		end

	is_special: BOOLEAN is
		do
			Result := (value=special_low_level)
		end

	is_symbolic_link: BOOLEAN is
		do
			Result := (value=symbolic_link_low_level)
		end

	is_unknown: BOOLEAN is
		do
			Result := (value=unknown_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	directory_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_FILE_TYPE_DIRECTORY"
 			}"
 		end

	mountable_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_FILE_TYPE_MOUNTABLE"
 			}"
 		end

	regular_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_FILE_TYPE_REGULAR"
 			}"
 		end

	shortcut_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_FILE_TYPE_SHORTCUT"
 			}"
 		end

	special_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_FILE_TYPE_SPECIAL"
 			}"
 		end

	symbolic_link_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_FILE_TYPE_SYMBOLIC_LINK"
 			}"
 		end

	unknown_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_FILE_TYPE_UNKNOWN"
 			}"
 		end


end -- class GFILE_TYPE_ENUM
