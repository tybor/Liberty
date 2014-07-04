-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class XLINK_SHOW_ENUM

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
            Result := ((a_value = embed_low_level)  or else
				(a_value = new_low_level)  or else
				(a_value = none_low_level)  or else
				(a_value = replace_low_level) )
		end

feature {ANY} -- Setters
	default_create,
<<<<<<< HEAD
	set_embed is
=======
	set_xlink_show_embed
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := embed_low_level
		end

<<<<<<< HEAD
	set_new is
=======
	set_xlink_show_new
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := new_low_level
		end

<<<<<<< HEAD
	set_none is
=======
	set_xlink_show_none
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := none_low_level
		end

<<<<<<< HEAD
	set_replace is
=======
	set_xlink_show_replace
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := replace_low_level
		end

<<<<<<< HEAD
feature {ANY} -- Queries
	is_embed: BOOLEAN is
=======
feature -- Queries
	is_xlink_show_embed: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=embed_low_level)
		end

<<<<<<< HEAD
	is_new: BOOLEAN is
=======
	is_xlink_show_new: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=new_low_level)
		end

<<<<<<< HEAD
	is_none: BOOLEAN is
=======
	is_xlink_show_none: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=none_low_level)
		end

<<<<<<< HEAD
	is_replace: BOOLEAN is
=======
	is_xlink_show_replace: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=replace_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
<<<<<<< HEAD
	embed_low_level: INTEGER is
=======
	xlink_show_embed_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XLINK_SHOW_EMBED"
 			}"
 		end

<<<<<<< HEAD
	new_low_level: INTEGER is
=======
	xlink_show_new_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XLINK_SHOW_NEW"
 			}"
 		end

<<<<<<< HEAD
	none_low_level: INTEGER is
=======
	xlink_show_none_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XLINK_SHOW_NONE"
 			}"
 		end

<<<<<<< HEAD
	replace_low_level: INTEGER is
=======
	xlink_show_replace_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XLINK_SHOW_REPLACE"
 			}"
 		end


end -- class XLINK_SHOW_ENUM
