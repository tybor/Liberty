-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GUSER_DIRECTORY_ENUM

insert ENUM

create {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN
        do
            Result := ((a_value = g_user_directory_desktop_low_level)  or else
				(a_value = g_user_directory_documents_low_level)  or else
				(a_value = g_user_directory_download_low_level)  or else
				(a_value = g_user_directory_music_low_level)  or else
				(a_value = g_user_directory_pictures_low_level)  or else
				(a_value = g_user_directory_public_share_low_level)  or else
				(a_value = g_user_directory_templates_low_level)  or else
				(a_value = g_user_directory_videos_low_level)  or else
				(a_value = g_user_n_directories_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_g_user_directory_desktop
		do
			value := g_user_directory_desktop_low_level
		end

	set_g_user_directory_documents
		do
			value := g_user_directory_documents_low_level
		end

	set_g_user_directory_download
		do
			value := g_user_directory_download_low_level
		end

	set_g_user_directory_music
		do
			value := g_user_directory_music_low_level
		end

	set_g_user_directory_pictures
		do
			value := g_user_directory_pictures_low_level
		end

	set_g_user_directory_public_share
		do
			value := g_user_directory_public_share_low_level
		end

	set_g_user_directory_templates
		do
			value := g_user_directory_templates_low_level
		end

	set_g_user_directory_videos
		do
			value := g_user_directory_videos_low_level
		end

	set_g_user_n_directories
		do
			value := g_user_n_directories_low_level
		end

feature {ANY} -- Queries
	is_g_user_directory_desktop: BOOLEAN
		do
			Result := (value=g_user_directory_desktop_low_level)
		end

	is_g_user_directory_documents: BOOLEAN
		do
			Result := (value=g_user_directory_documents_low_level)
		end

	is_g_user_directory_download: BOOLEAN
		do
			Result := (value=g_user_directory_download_low_level)
		end

	is_g_user_directory_music: BOOLEAN
		do
			Result := (value=g_user_directory_music_low_level)
		end

	is_g_user_directory_pictures: BOOLEAN
		do
			Result := (value=g_user_directory_pictures_low_level)
		end

	is_g_user_directory_public_share: BOOLEAN
		do
			Result := (value=g_user_directory_public_share_low_level)
		end

	is_g_user_directory_templates: BOOLEAN
		do
			Result := (value=g_user_directory_templates_low_level)
		end

	is_g_user_directory_videos: BOOLEAN
		do
			Result := (value=g_user_directory_videos_low_level)
		end

	is_g_user_n_directories: BOOLEAN
		do
			Result := (value=g_user_n_directories_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	g_user_directory_desktop_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_USER_DIRECTORY_DESKTOP"
 			}"
 		end

	g_user_directory_documents_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_USER_DIRECTORY_DOCUMENTS"
 			}"
 		end

	g_user_directory_download_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_USER_DIRECTORY_DOWNLOAD"
 			}"
 		end

	g_user_directory_music_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_USER_DIRECTORY_MUSIC"
 			}"
 		end

	g_user_directory_pictures_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_USER_DIRECTORY_PICTURES"
 			}"
 		end

	g_user_directory_public_share_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_USER_DIRECTORY_PUBLIC_SHARE"
 			}"
 		end

	g_user_directory_templates_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_USER_DIRECTORY_TEMPLATES"
 			}"
 		end

	g_user_directory_videos_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_USER_DIRECTORY_VIDEOS"
 			}"
 		end

	g_user_n_directories_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_USER_N_DIRECTORIES"
 			}"
 		end


end -- class GUSER_DIRECTORY_ENUM
