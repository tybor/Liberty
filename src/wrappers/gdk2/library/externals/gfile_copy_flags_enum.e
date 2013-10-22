-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GFILE_COPY_FLAGS_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = all_metadata_low_level)  or else
				(a_value = backup_low_level)  or else
				(a_value = no_fallback_for_move_low_level)  or else
				(a_value = nofollow_symlinks_low_level)  or else
				(a_value = none_low_level)  or else
				(a_value = overwrite_low_level)  or else
				(a_value = target_default_perms_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_all_metadata is
		do
			value := all_metadata_low_level
		end

	set_backup is
		do
			value := backup_low_level
		end

	set_no_fallback_for_move is
		do
			value := no_fallback_for_move_low_level
		end

	set_nofollow_symlinks is
		do
			value := nofollow_symlinks_low_level
		end

	set_none is
		do
			value := none_low_level
		end

	set_overwrite is
		do
			value := overwrite_low_level
		end

	set_target_default_perms is
		do
			value := target_default_perms_low_level
		end

feature {ANY} -- Queries
	is_all_metadata: BOOLEAN is
		do
			Result := (value=all_metadata_low_level)
		end

	is_backup: BOOLEAN is
		do
			Result := (value=backup_low_level)
		end

	is_no_fallback_for_move: BOOLEAN is
		do
			Result := (value=no_fallback_for_move_low_level)
		end

	is_nofollow_symlinks: BOOLEAN is
		do
			Result := (value=nofollow_symlinks_low_level)
		end

	is_none: BOOLEAN is
		do
			Result := (value=none_low_level)
		end

	is_overwrite: BOOLEAN is
		do
			Result := (value=overwrite_low_level)
		end

	is_target_default_perms: BOOLEAN is
		do
			Result := (value=target_default_perms_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	all_metadata_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_FILE_COPY_ALL_METADATA"
 			}"
 		end

	backup_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_FILE_COPY_BACKUP"
 			}"
 		end

	no_fallback_for_move_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_FILE_COPY_NO_FALLBACK_FOR_MOVE"
 			}"
 		end

	nofollow_symlinks_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_FILE_COPY_NOFOLLOW_SYMLINKS"
 			}"
 		end

	none_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_FILE_COPY_NONE"
 			}"
 		end

	overwrite_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_FILE_COPY_OVERWRITE"
 			}"
 		end

	target_default_perms_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_FILE_COPY_TARGET_DEFAULT_PERMS"
 			}"
 		end


end -- class GFILE_COPY_FLAGS_ENUM
