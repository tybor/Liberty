-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class XLINK_ACTUATE_ENUM

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
            Result := ((a_value = auto_low_level)  or else
				(a_value = none_low_level)  or else
				(a_value = onrequest_low_level) )
		end

feature {ANY} -- Setters
	default_create,
<<<<<<< HEAD
	set_auto is
=======
	set_xlink_actuate_auto
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := auto_low_level
		end

<<<<<<< HEAD
	set_none is
=======
	set_xlink_actuate_none
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := none_low_level
		end

<<<<<<< HEAD
	set_onrequest is
=======
	set_xlink_actuate_onrequest
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := onrequest_low_level
		end

<<<<<<< HEAD
feature {ANY} -- Queries
	is_auto: BOOLEAN is
=======
feature -- Queries
	is_xlink_actuate_auto: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=auto_low_level)
		end

<<<<<<< HEAD
	is_none: BOOLEAN is
=======
	is_xlink_actuate_none: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=none_low_level)
		end

<<<<<<< HEAD
	is_onrequest: BOOLEAN is
=======
	is_xlink_actuate_onrequest: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=onrequest_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
<<<<<<< HEAD
	auto_low_level: INTEGER is
=======
	xlink_actuate_auto_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XLINK_ACTUATE_AUTO"
 			}"
 		end

<<<<<<< HEAD
	none_low_level: INTEGER is
=======
	xlink_actuate_none_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XLINK_ACTUATE_NONE"
 			}"
 		end

<<<<<<< HEAD
	onrequest_low_level: INTEGER is
=======
	xlink_actuate_onrequest_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XLINK_ACTUATE_ONREQUEST"
 			}"
 		end


end -- class XLINK_ACTUATE_ENUM
