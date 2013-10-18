-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class TCP_CA_STATE_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = cwr_low_level)  or else
				(a_value = disorder_low_level)  or else
				(a_value = loss_low_level)  or else
				(a_value = open_low_level)  or else
				(a_value = recovery_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_cwr is
		do
			value := cwr_low_level
		end

	set_disorder is
		do
			value := disorder_low_level
		end

	set_loss is
		do
			value := loss_low_level
		end

	set_open is
		do
			value := open_low_level
		end

	set_recovery is
		do
			value := recovery_low_level
		end

feature {ANY} -- Queries
	is_cwr: BOOLEAN is
		do
			Result := (value=cwr_low_level)
		end

	is_disorder: BOOLEAN is
		do
			Result := (value=disorder_low_level)
		end

	is_loss: BOOLEAN is
		do
			Result := (value=loss_low_level)
		end

	is_open: BOOLEAN is
		do
			Result := (value=open_low_level)
		end

	is_recovery: BOOLEAN is
		do
			Result := (value=recovery_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	cwr_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "TCP_CA_CWR"
 			}"
 		end

	disorder_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "TCP_CA_Disorder"
 			}"
 		end

	loss_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "TCP_CA_Loss"
 			}"
 		end

	open_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "TCP_CA_Open"
 			}"
 		end

	recovery_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "TCP_CA_Recovery"
 			}"
 		end


end -- class TCP_CA_STATE_ENUM
