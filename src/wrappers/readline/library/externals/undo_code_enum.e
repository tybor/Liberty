-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class UNDO_CODE_ENUM

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
            Result := ((a_value = begin_low_level)  or else
				(a_value = delete_low_level)  or else
				(a_value = end_external_low_level)  or else
				(a_value = insert_external_low_level) )
		end

feature {ANY} -- Setters
	default_create,
<<<<<<< HEAD
	set_begin is
=======
	set_undo_begin
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := begin_low_level
		end

<<<<<<< HEAD
	set_delete is
=======
	set_undo_delete
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := delete_low_level
		end

<<<<<<< HEAD
	set_end_external is
=======
	set_undo_end
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := end_external_low_level
		end

<<<<<<< HEAD
	set_insert_external is
=======
	set_undo_insert
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := insert_external_low_level
		end

<<<<<<< HEAD
feature {ANY} -- Queries
	is_begin: BOOLEAN is
=======
feature -- Queries
	is_undo_begin: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=begin_low_level)
		end

<<<<<<< HEAD
	is_delete: BOOLEAN is
=======
	is_undo_delete: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=delete_low_level)
		end

<<<<<<< HEAD
	is_end_external: BOOLEAN is
=======
	is_undo_end: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=end_external_low_level)
		end

<<<<<<< HEAD
	is_insert_external: BOOLEAN is
=======
	is_undo_insert: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=insert_external_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
<<<<<<< HEAD
	begin_low_level: INTEGER is
=======
	undo_begin_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "UNDO_BEGIN"
 			}"
 		end

<<<<<<< HEAD
	delete_low_level: INTEGER is
=======
	undo_delete_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "UNDO_DELETE"
 			}"
 		end

<<<<<<< HEAD
	end_external_low_level: INTEGER is
=======
	undo_end_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "UNDO_END"
 			}"
 		end

<<<<<<< HEAD
	insert_external_low_level: INTEGER is
=======
	undo_insert_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "UNDO_INSERT"
 			}"
 		end


end -- class UNDO_CODE_ENUM
