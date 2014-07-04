-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class XML_EXP_NODE_TYPE_ENUM

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
            Result := ((a_value = atom_low_level)  or else
				(a_value = count_low_level)  or else
				(a_value = empty_low_level)  or else
				(a_value = forbid_low_level)  or else
				(a_value = or_external_low_level)  or else
				(a_value = seq_low_level) )
		end

feature {ANY} -- Setters
	default_create,
<<<<<<< HEAD
	set_atom is
=======
	set_xml_exp_atom
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := atom_low_level
		end

<<<<<<< HEAD
	set_count is
=======
	set_xml_exp_count
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := count_low_level
		end

<<<<<<< HEAD
	set_empty is
=======
	set_xml_exp_empty
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := empty_low_level
		end

<<<<<<< HEAD
	set_forbid is
=======
	set_xml_exp_forbid
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := forbid_low_level
		end

<<<<<<< HEAD
	set_or_external is
=======
	set_xml_exp_or
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := or_external_low_level
		end

<<<<<<< HEAD
	set_seq is
=======
	set_xml_exp_seq
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := seq_low_level
		end

<<<<<<< HEAD
feature {ANY} -- Queries
	is_atom: BOOLEAN is
=======
feature -- Queries
	is_xml_exp_atom: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=atom_low_level)
		end

<<<<<<< HEAD
	is_count: BOOLEAN is
=======
	is_xml_exp_count: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=count_low_level)
		end

<<<<<<< HEAD
	is_empty: BOOLEAN is
=======
	is_xml_exp_empty: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=empty_low_level)
		end

<<<<<<< HEAD
	is_forbid: BOOLEAN is
=======
	is_xml_exp_forbid: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=forbid_low_level)
		end

<<<<<<< HEAD
	is_or_external: BOOLEAN is
=======
	is_xml_exp_or: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=or_external_low_level)
		end

<<<<<<< HEAD
	is_seq: BOOLEAN is
=======
	is_xml_exp_seq: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=seq_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
<<<<<<< HEAD
	atom_low_level: INTEGER is
=======
	xml_exp_atom_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_EXP_ATOM"
 			}"
 		end

<<<<<<< HEAD
	count_low_level: INTEGER is
=======
	xml_exp_count_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_EXP_COUNT"
 			}"
 		end

<<<<<<< HEAD
	empty_low_level: INTEGER is
=======
	xml_exp_empty_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_EXP_EMPTY"
 			}"
 		end

<<<<<<< HEAD
	forbid_low_level: INTEGER is
=======
	xml_exp_forbid_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_EXP_FORBID"
 			}"
 		end

<<<<<<< HEAD
	or_external_low_level: INTEGER is
=======
	xml_exp_or_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_EXP_OR"
 			}"
 		end

<<<<<<< HEAD
	seq_low_level: INTEGER is
=======
	xml_exp_seq_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_EXP_SEQ"
 			}"
 		end


end -- class XML_EXP_NODE_TYPE_ENUM
