-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GTRAVERSE_FLAGS_ENUM

insert ENUM

create {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN
        do
            Result := ((a_value = g_traverse_all_low_level)  or else
				(a_value = g_traverse_leafs_low_level)  or else
				(a_value = g_traverse_leaves_low_level)  or else
				(a_value = g_traverse_mask_low_level)  or else
				(a_value = g_traverse_non_leafs_low_level)  or else
				(a_value = g_traverse_non_leaves_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_g_traverse_all
		do
			value := g_traverse_all_low_level
		end

	set_g_traverse_leafs
		do
			value := g_traverse_leafs_low_level
		end

	set_g_traverse_leaves
		do
			value := g_traverse_leaves_low_level
		end

	set_g_traverse_mask
		do
			value := g_traverse_mask_low_level
		end

	set_g_traverse_non_leafs
		do
			value := g_traverse_non_leafs_low_level
		end

	set_g_traverse_non_leaves
		do
			value := g_traverse_non_leaves_low_level
		end

feature {ANY} -- Queries
	is_g_traverse_all: BOOLEAN
		do
			Result := (value=g_traverse_all_low_level)
		end

	is_g_traverse_leafs: BOOLEAN
		do
			Result := (value=g_traverse_leafs_low_level)
		end

	is_g_traverse_leaves: BOOLEAN
		do
			Result := (value=g_traverse_leaves_low_level)
		end

	is_g_traverse_mask: BOOLEAN
		do
			Result := (value=g_traverse_mask_low_level)
		end

	is_g_traverse_non_leafs: BOOLEAN
		do
			Result := (value=g_traverse_non_leafs_low_level)
		end

	is_g_traverse_non_leaves: BOOLEAN
		do
			Result := (value=g_traverse_non_leaves_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	g_traverse_all_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_TRAVERSE_ALL"
 			}"
 		end

	g_traverse_leafs_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_TRAVERSE_LEAFS"
 			}"
 		end

	g_traverse_leaves_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_TRAVERSE_LEAVES"
 			}"
 		end

	g_traverse_mask_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_TRAVERSE_MASK"
 			}"
 		end

	g_traverse_non_leafs_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_TRAVERSE_NON_LEAFS"
 			}"
 		end

	g_traverse_non_leaves_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_TRAVERSE_NON_LEAVES"
 			}"
 		end


end -- class GTRAVERSE_FLAGS_ENUM
