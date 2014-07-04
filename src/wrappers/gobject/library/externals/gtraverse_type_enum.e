-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GTRAVERSE_TYPE_ENUM

insert ENUM

create {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN
        do
            Result := ((a_value = g_in_order_low_level)  or else
				(a_value = g_level_order_low_level)  or else
				(a_value = g_post_order_low_level)  or else
				(a_value = g_pre_order_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_g_in_order
		do
			value := g_in_order_low_level
		end

	set_g_level_order
		do
			value := g_level_order_low_level
		end

	set_g_post_order
		do
			value := g_post_order_low_level
		end

	set_g_pre_order
		do
			value := g_pre_order_low_level
		end

feature {ANY} -- Queries
	is_g_in_order: BOOLEAN
		do
			Result := (value=g_in_order_low_level)
		end

	is_g_level_order: BOOLEAN
		do
			Result := (value=g_level_order_low_level)
		end

	is_g_post_order: BOOLEAN
		do
			Result := (value=g_post_order_low_level)
		end

	is_g_pre_order: BOOLEAN
		do
			Result := (value=g_pre_order_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	g_in_order_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_IN_ORDER"
 			}"
 		end

	g_level_order_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_LEVEL_ORDER"
 			}"
 		end

	g_post_order_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_POST_ORDER"
 			}"
 		end

	g_pre_order_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_PRE_ORDER"
 			}"
 		end


end -- class GTRAVERSE_TYPE_ENUM
