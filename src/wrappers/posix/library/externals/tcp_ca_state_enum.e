-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class TCP_CA_STATE_ENUM

insert ENUM

<<<<<<< HEAD
creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
=======
create default_create
feature -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
        do
            Result := ((a_value = cwr_low_level)  or else
				(a_value = disorder_low_level)  or else
				(a_value = loss_low_level)  or else
				(a_value = open_low_level)  or else
				(a_value = recovery_low_level) )
		end

feature {ANY} -- Setters
	default_create,
<<<<<<< HEAD
	set_cwr is
=======
	set_tcp_ca_cwr
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := cwr_low_level
		end

<<<<<<< HEAD
	set_disorder is
=======
	set_tcp_ca_disorder
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := disorder_low_level
		end

<<<<<<< HEAD
	set_loss is
=======
	set_tcp_ca_loss
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := loss_low_level
		end

<<<<<<< HEAD
	set_open is
=======
	set_tcp_ca_open
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := open_low_level
		end

<<<<<<< HEAD
	set_recovery is
=======
	set_tcp_ca_recovery
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := recovery_low_level
		end

<<<<<<< HEAD
feature {ANY} -- Queries
	is_cwr: BOOLEAN is
=======
feature -- Queries
	is_tcp_ca_cwr: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=cwr_low_level)
		end

<<<<<<< HEAD
	is_disorder: BOOLEAN is
=======
	is_tcp_ca_disorder: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=disorder_low_level)
		end

<<<<<<< HEAD
	is_loss: BOOLEAN is
=======
	is_tcp_ca_loss: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=loss_low_level)
		end

<<<<<<< HEAD
	is_open: BOOLEAN is
=======
	is_tcp_ca_open: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=open_low_level)
		end

<<<<<<< HEAD
	is_recovery: BOOLEAN is
=======
	is_tcp_ca_recovery: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=recovery_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
<<<<<<< HEAD
	cwr_low_level: INTEGER is
=======
	tcp_ca_cwr_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "TCP_CA_CWR"
 			}"
 		end

<<<<<<< HEAD
	disorder_low_level: INTEGER is
=======
	tcp_ca_disorder_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "TCP_CA_Disorder"
 			}"
 		end

<<<<<<< HEAD
	loss_low_level: INTEGER is
=======
	tcp_ca_loss_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "TCP_CA_Loss"
 			}"
 		end

<<<<<<< HEAD
	open_low_level: INTEGER is
=======
	tcp_ca_open_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "TCP_CA_Open"
 			}"
 		end

<<<<<<< HEAD
	recovery_low_level: INTEGER is
=======
	tcp_ca_recovery_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "TCP_CA_Recovery"
 			}"
 		end


end -- class TCP_CA_STATE_ENUM
