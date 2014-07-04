-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class XML_ERROR_LEVEL_ENUM

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
            Result := ((a_value = error_low_level)  or else
				(a_value = fatal_low_level)  or else
				(a_value = none_low_level)  or else
				(a_value = warning_low_level) )
		end

feature {ANY} -- Setters
	default_create,
<<<<<<< HEAD
	set_error is
=======
	set_xml_err_error
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := error_low_level
		end

<<<<<<< HEAD
	set_fatal is
=======
	set_xml_err_fatal
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := fatal_low_level
		end

<<<<<<< HEAD
	set_none is
=======
	set_xml_err_none
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := none_low_level
		end

<<<<<<< HEAD
	set_warning is
=======
	set_xml_err_warning
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := warning_low_level
		end

<<<<<<< HEAD
feature {ANY} -- Queries
	is_error: BOOLEAN is
=======
feature -- Queries
	is_xml_err_error: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=error_low_level)
		end

<<<<<<< HEAD
	is_fatal: BOOLEAN is
=======
	is_xml_err_fatal: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=fatal_low_level)
		end

<<<<<<< HEAD
	is_none: BOOLEAN is
=======
	is_xml_err_none: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=none_low_level)
		end

<<<<<<< HEAD
	is_warning: BOOLEAN is
=======
	is_xml_err_warning: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=warning_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
<<<<<<< HEAD
	error_low_level: INTEGER is
=======
	xml_err_error_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_ERROR"
 			}"
 		end

<<<<<<< HEAD
	fatal_low_level: INTEGER is
=======
	xml_err_fatal_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_FATAL"
 			}"
 		end

<<<<<<< HEAD
	none_low_level: INTEGER is
=======
	xml_err_none_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_NONE"
 			}"
 		end

<<<<<<< HEAD
	warning_low_level: INTEGER is
=======
	xml_err_warning_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ERR_WARNING"
 			}"
 		end


end -- class XML_ERROR_LEVEL_ENUM
