-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GCHECKSUM_TYPE_ENUM

insert ENUM

create {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN
        do
            Result := ((a_value = g_checksum_md5_low_level)  or else
				(a_value = g_checksum_sha1_low_level)  or else
				(a_value = g_checksum_sha256_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_g_checksum_md5
		do
			value := g_checksum_md5_low_level
		end

	set_g_checksum_sha1
		do
			value := g_checksum_sha1_low_level
		end

	set_g_checksum_sha256
		do
			value := g_checksum_sha256_low_level
		end

feature {ANY} -- Queries
	is_g_checksum_md5: BOOLEAN
		do
			Result := (value=g_checksum_md5_low_level)
		end

	is_g_checksum_sha1: BOOLEAN
		do
			Result := (value=g_checksum_sha1_low_level)
		end

	is_g_checksum_sha256: BOOLEAN
		do
			Result := (value=g_checksum_sha256_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	g_checksum_md5_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_CHECKSUM_MD5"
 			}"
 		end

	g_checksum_sha1_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_CHECKSUM_SHA1"
 			}"
 		end

	g_checksum_sha256_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_CHECKSUM_SHA256"
 			}"
 		end


end -- class GCHECKSUM_TYPE_ENUM
