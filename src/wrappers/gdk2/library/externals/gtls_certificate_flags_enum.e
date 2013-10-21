-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GTLS_CERTIFICATE_FLAGS_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = bad_identity_low_level)  or else
				(a_value = expired_low_level)  or else
				(a_value = generic_error_low_level)  or else
				(a_value = insecure_low_level)  or else
				(a_value = not_activated_low_level)  or else
				(a_value = revoked_low_level)  or else
				(a_value = unknown_ca_low_level)  or else
				(a_value = validate_all_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_bad_identity is
		do
			value := bad_identity_low_level
		end

	set_expired is
		do
			value := expired_low_level
		end

	set_generic_error is
		do
			value := generic_error_low_level
		end

	set_insecure is
		do
			value := insecure_low_level
		end

	set_not_activated is
		do
			value := not_activated_low_level
		end

	set_revoked is
		do
			value := revoked_low_level
		end

	set_unknown_ca is
		do
			value := unknown_ca_low_level
		end

	set_validate_all is
		do
			value := validate_all_low_level
		end

feature {ANY} -- Queries
	is_bad_identity: BOOLEAN is
		do
			Result := (value=bad_identity_low_level)
		end

	is_expired: BOOLEAN is
		do
			Result := (value=expired_low_level)
		end

	is_generic_error: BOOLEAN is
		do
			Result := (value=generic_error_low_level)
		end

	is_insecure: BOOLEAN is
		do
			Result := (value=insecure_low_level)
		end

	is_not_activated: BOOLEAN is
		do
			Result := (value=not_activated_low_level)
		end

	is_revoked: BOOLEAN is
		do
			Result := (value=revoked_low_level)
		end

	is_unknown_ca: BOOLEAN is
		do
			Result := (value=unknown_ca_low_level)
		end

	is_validate_all: BOOLEAN is
		do
			Result := (value=validate_all_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	bad_identity_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_TLS_CERTIFICATE_BAD_IDENTITY"
 			}"
 		end

	expired_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_TLS_CERTIFICATE_EXPIRED"
 			}"
 		end

	generic_error_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_TLS_CERTIFICATE_GENERIC_ERROR"
 			}"
 		end

	insecure_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_TLS_CERTIFICATE_INSECURE"
 			}"
 		end

	not_activated_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_TLS_CERTIFICATE_NOT_ACTIVATED"
 			}"
 		end

	revoked_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_TLS_CERTIFICATE_REVOKED"
 			}"
 		end

	unknown_ca_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_TLS_CERTIFICATE_UNKNOWN_CA"
 			}"
 		end

	validate_all_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_TLS_CERTIFICATE_VALIDATE_ALL"
 			}"
 		end


end -- class GTLS_CERTIFICATE_FLAGS_ENUM
