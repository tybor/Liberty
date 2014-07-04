-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class ACTION_ENUM

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
            Result := ((a_value = enter_low_level)  or else
				(a_value = find_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_enter
		do
			value := enter_low_level
		end

	set_find
		do
			value := find_low_level
		end

<<<<<<< HEAD
feature {ANY} -- Queries
	is_enter: BOOLEAN is
=======
feature -- Queries
	is_enter: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=enter_low_level)
		end

	is_find: BOOLEAN
		do
			Result := (value=find_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	enter_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "ENTER"
 			}"
 		end

	find_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "FIND"
 			}"
 		end


end -- class ACTION_ENUM
