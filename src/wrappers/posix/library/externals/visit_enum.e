-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class VISIT_ENUM

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
            Result := ((a_value = endorder_low_level)  or else
				(a_value = leaf_low_level)  or else
				(a_value = postorder_low_level)  or else
				(a_value = preorder_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_endorder
		do
			value := endorder_low_level
		end

	set_leaf
		do
			value := leaf_low_level
		end

	set_postorder
		do
			value := postorder_low_level
		end

	set_preorder
		do
			value := preorder_low_level
		end

<<<<<<< HEAD
feature {ANY} -- Queries
	is_endorder: BOOLEAN is
=======
feature -- Queries
	is_endorder: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=endorder_low_level)
		end

	is_leaf: BOOLEAN
		do
			Result := (value=leaf_low_level)
		end

	is_postorder: BOOLEAN
		do
			Result := (value=postorder_low_level)
		end

	is_preorder: BOOLEAN
		do
			Result := (value=preorder_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	endorder_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "endorder"
 			}"
 		end

	leaf_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "leaf"
 			}"
 		end

	postorder_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "postorder"
 			}"
 		end

	preorder_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "preorder"
 			}"
 		end


end -- class VISIT_ENUM
