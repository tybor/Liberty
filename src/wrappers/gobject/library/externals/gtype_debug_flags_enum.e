-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GTYPE_DEBUG_FLAGS_ENUM

insert ENUM

create {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN
        do
            Result := ((a_value = g_type_debug_mask_low_level)  or else
				(a_value = g_type_debug_none_low_level)  or else
				(a_value = g_type_debug_objects_low_level)  or else
				(a_value = g_type_debug_signals_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_g_type_debug_mask
		do
			value := g_type_debug_mask_low_level
		end

	set_g_type_debug_none
		do
			value := g_type_debug_none_low_level
		end

	set_g_type_debug_objects
		do
			value := g_type_debug_objects_low_level
		end

	set_g_type_debug_signals
		do
			value := g_type_debug_signals_low_level
		end

feature {ANY} -- Queries
	is_g_type_debug_mask: BOOLEAN
		do
			Result := (value=g_type_debug_mask_low_level)
		end

	is_g_type_debug_none: BOOLEAN
		do
			Result := (value=g_type_debug_none_low_level)
		end

	is_g_type_debug_objects: BOOLEAN
		do
			Result := (value=g_type_debug_objects_low_level)
		end

	is_g_type_debug_signals: BOOLEAN
		do
			Result := (value=g_type_debug_signals_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	g_type_debug_mask_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_TYPE_DEBUG_MASK"
 			}"
 		end

	g_type_debug_none_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_TYPE_DEBUG_NONE"
 			}"
 		end

	g_type_debug_objects_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_TYPE_DEBUG_OBJECTS"
 			}"
 		end

	g_type_debug_signals_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_TYPE_DEBUG_SIGNALS"
 			}"
 		end


end -- class GTYPE_DEBUG_FLAGS_ENUM
