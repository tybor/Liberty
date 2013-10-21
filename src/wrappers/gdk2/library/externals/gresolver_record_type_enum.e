-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GRESOLVER_RECORD_TYPE_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = mx_low_level)  or else
				(a_value = ns_low_level)  or else
				(a_value = soa_low_level)  or else
				(a_value = srv_low_level)  or else
				(a_value = txt_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_mx is
		do
			value := mx_low_level
		end

	set_ns is
		do
			value := ns_low_level
		end

	set_soa is
		do
			value := soa_low_level
		end

	set_srv is
		do
			value := srv_low_level
		end

	set_txt is
		do
			value := txt_low_level
		end

feature {ANY} -- Queries
	is_mx: BOOLEAN is
		do
			Result := (value=mx_low_level)
		end

	is_ns: BOOLEAN is
		do
			Result := (value=ns_low_level)
		end

	is_soa: BOOLEAN is
		do
			Result := (value=soa_low_level)
		end

	is_srv: BOOLEAN is
		do
			Result := (value=srv_low_level)
		end

	is_txt: BOOLEAN is
		do
			Result := (value=txt_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	mx_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_RESOLVER_RECORD_MX"
 			}"
 		end

	ns_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_RESOLVER_RECORD_NS"
 			}"
 		end

	soa_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_RESOLVER_RECORD_SOA"
 			}"
 		end

	srv_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_RESOLVER_RECORD_SRV"
 			}"
 		end

	txt_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_RESOLVER_RECORD_TXT"
 			}"
 		end


end -- class GRESOLVER_RECORD_TYPE_ENUM
