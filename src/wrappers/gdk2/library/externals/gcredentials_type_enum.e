-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GCREDENTIALS_TYPE_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = freebsd_cmsgcred_low_level)  or else
				(a_value = invalid_low_level)  or else
				(a_value = linux_ucred_low_level)  or else
				(a_value = openbsd_sockpeercred_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_freebsd_cmsgcred is
		do
			value := freebsd_cmsgcred_low_level
		end

	set_invalid is
		do
			value := invalid_low_level
		end

	set_linux_ucred is
		do
			value := linux_ucred_low_level
		end

	set_openbsd_sockpeercred is
		do
			value := openbsd_sockpeercred_low_level
		end

feature {ANY} -- Queries
	is_freebsd_cmsgcred: BOOLEAN is
		do
			Result := (value=freebsd_cmsgcred_low_level)
		end

	is_invalid: BOOLEAN is
		do
			Result := (value=invalid_low_level)
		end

	is_linux_ucred: BOOLEAN is
		do
			Result := (value=linux_ucred_low_level)
		end

	is_openbsd_sockpeercred: BOOLEAN is
		do
			Result := (value=openbsd_sockpeercred_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	freebsd_cmsgcred_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_CREDENTIALS_TYPE_FREEBSD_CMSGCRED"
 			}"
 		end

	invalid_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_CREDENTIALS_TYPE_INVALID"
 			}"
 		end

	linux_ucred_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_CREDENTIALS_TYPE_LINUX_UCRED"
 			}"
 		end

	openbsd_sockpeercred_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_CREDENTIALS_TYPE_OPENBSD_SOCKPEERCRED"
 			}"
 		end


end -- class GCREDENTIALS_TYPE_ENUM
