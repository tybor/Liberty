-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class XLINK_TYPE_ENUM

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
            Result := ((a_value = extended_low_level)  or else
				(a_value = extended_set_low_level)  or else
				(a_value = none_low_level)  or else
				(a_value = simple_low_level) )
		end

feature {ANY} -- Setters
	default_create,
<<<<<<< HEAD
	set_extended is
=======
	set_xlink_type_extended
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := extended_low_level
		end

<<<<<<< HEAD
	set_extended_set is
=======
	set_xlink_type_extended_set
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := extended_set_low_level
		end

<<<<<<< HEAD
	set_none is
=======
	set_xlink_type_none
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := none_low_level
		end

<<<<<<< HEAD
	set_simple is
=======
	set_xlink_type_simple
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := simple_low_level
		end

<<<<<<< HEAD
feature {ANY} -- Queries
	is_extended: BOOLEAN is
=======
feature -- Queries
	is_xlink_type_extended: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=extended_low_level)
		end

<<<<<<< HEAD
	is_extended_set: BOOLEAN is
=======
	is_xlink_type_extended_set: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=extended_set_low_level)
		end

<<<<<<< HEAD
	is_none: BOOLEAN is
=======
	is_xlink_type_none: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=none_low_level)
		end

<<<<<<< HEAD
	is_simple: BOOLEAN is
=======
	is_xlink_type_simple: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=simple_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
<<<<<<< HEAD
	extended_low_level: INTEGER is
=======
	xlink_type_extended_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XLINK_TYPE_EXTENDED"
 			}"
 		end

<<<<<<< HEAD
	extended_set_low_level: INTEGER is
=======
	xlink_type_extended_set_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XLINK_TYPE_EXTENDED_SET"
 			}"
 		end

<<<<<<< HEAD
	none_low_level: INTEGER is
=======
	xlink_type_none_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XLINK_TYPE_NONE"
 			}"
 		end

<<<<<<< HEAD
	simple_low_level: INTEGER is
=======
	xlink_type_simple_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XLINK_TYPE_SIMPLE"
 			}"
 		end


end -- class XLINK_TYPE_ENUM
