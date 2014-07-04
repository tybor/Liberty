-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class XML_BUFFER_ALLOCATION_SCHEME_ENUM

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
            Result := ((a_value = doubleit_low_level)  or else
				(a_value = exact_low_level)  or else
				(a_value = immutable_low_level)  or else
				(a_value = io_low_level) )
		end

feature {ANY} -- Setters
	default_create,
<<<<<<< HEAD
	set_doubleit is
=======
	set_xml_buffer_alloc_doubleit
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := doubleit_low_level
		end

<<<<<<< HEAD
	set_exact is
=======
	set_xml_buffer_alloc_exact
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := exact_low_level
		end

<<<<<<< HEAD
	set_immutable is
=======
	set_xml_buffer_alloc_immutable
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := immutable_low_level
		end

<<<<<<< HEAD
	set_io is
=======
	set_xml_buffer_alloc_io
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := io_low_level
		end

<<<<<<< HEAD
feature {ANY} -- Queries
	is_doubleit: BOOLEAN is
=======
feature -- Queries
	is_xml_buffer_alloc_doubleit: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=doubleit_low_level)
		end

<<<<<<< HEAD
	is_exact: BOOLEAN is
=======
	is_xml_buffer_alloc_exact: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=exact_low_level)
		end

<<<<<<< HEAD
	is_immutable: BOOLEAN is
=======
	is_xml_buffer_alloc_immutable: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=immutable_low_level)
		end

<<<<<<< HEAD
	is_io: BOOLEAN is
=======
	is_xml_buffer_alloc_io: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=io_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
<<<<<<< HEAD
	doubleit_low_level: INTEGER is
=======
	xml_buffer_alloc_doubleit_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_BUFFER_ALLOC_DOUBLEIT"
 			}"
 		end

<<<<<<< HEAD
	exact_low_level: INTEGER is
=======
	xml_buffer_alloc_exact_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_BUFFER_ALLOC_EXACT"
 			}"
 		end

<<<<<<< HEAD
	immutable_low_level: INTEGER is
=======
	xml_buffer_alloc_immutable_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_BUFFER_ALLOC_IMMUTABLE"
 			}"
 		end

<<<<<<< HEAD
	io_low_level: INTEGER is
=======
	xml_buffer_alloc_io_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_BUFFER_ALLOC_IO"
 			}"
 		end


end -- class XML_BUFFER_ALLOCATION_SCHEME_ENUM
