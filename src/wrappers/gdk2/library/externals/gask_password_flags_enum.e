-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GASK_PASSWORD_FLAGS_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := (a_value & (anonymous_supported_low_level | 
				need_domain_low_level | 
				need_password_low_level | 
				need_username_low_level | 
				saving_supported_low_level)).to_boolean
		end

feature {ANY} -- Setters
	default_create,
	set_anonymous_supported is
		do
			value := value.bit_or(anonymous_supported_low_level)
		end

	unset_anonymous_supported is
		do
			value := value.bit_xor(anonymous_supported_low_level)
		end

	set_need_domain is
		do
			value := value.bit_or(need_domain_low_level)
		end

	unset_need_domain is
		do
			value := value.bit_xor(need_domain_low_level)
		end

	set_need_password is
		do
			value := value.bit_or(need_password_low_level)
		end

	unset_need_password is
		do
			value := value.bit_xor(need_password_low_level)
		end

	set_need_username is
		do
			value := value.bit_or(need_username_low_level)
		end

	unset_need_username is
		do
			value := value.bit_xor(need_username_low_level)
		end

	set_saving_supported is
		do
			value := value.bit_or(saving_supported_low_level)
		end

	unset_saving_supported is
		do
			value := value.bit_xor(saving_supported_low_level)
		end

feature {ANY} -- Queries
	is_anonymous_supported: BOOLEAN is
		do
			Result := (value=anonymous_supported_low_level)
		end

	is_need_domain: BOOLEAN is
		do
			Result := (value=need_domain_low_level)
		end

	is_need_password: BOOLEAN is
		do
			Result := (value=need_password_low_level)
		end

	is_need_username: BOOLEAN is
		do
			Result := (value=need_username_low_level)
		end

	is_saving_supported: BOOLEAN is
		do
			Result := (value=saving_supported_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	anonymous_supported_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "G_ASK_PASSWORD_ANONYMOUS_SUPPORTED"
 			}"
 		end

	need_domain_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "G_ASK_PASSWORD_NEED_DOMAIN"
 			}"
 		end

	need_password_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "G_ASK_PASSWORD_NEED_PASSWORD"
 			}"
 		end

	need_username_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "G_ASK_PASSWORD_NEED_USERNAME"
 			}"
 		end

	saving_supported_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "G_ASK_PASSWORD_SAVING_SUPPORTED"
 			}"
 		end


end -- class GASK_PASSWORD_FLAGS_ENUM
