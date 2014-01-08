-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GBINDING_FLAGS_ENUM

insert ENUM

create {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = bidirectional_low_level)  or else
				(a_value = default_external_low_level)  or else
				(a_value = invert_boolean_low_level)  or else
				(a_value = sync_create_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_bidirectional is
		do
			value := bidirectional_low_level
		end

	set_default_external is
		do
			value := default_external_low_level
		end

	set_invert_boolean is
		do
			value := invert_boolean_low_level
		end

	set_sync_create is
		do
			value := sync_create_low_level
		end

feature {ANY} -- Queries
	is_bidirectional: BOOLEAN is
		do
			Result := (value=bidirectional_low_level)
		end

	is_default_external: BOOLEAN is
		do
			Result := (value=default_external_low_level)
		end

	is_invert_boolean: BOOLEAN is
		do
			Result := (value=invert_boolean_low_level)
		end

	is_sync_create: BOOLEAN is
		do
			Result := (value=sync_create_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	bidirectional_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_BINDING_BIDIRECTIONAL"
 			}"
 		end

	default_external_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_BINDING_DEFAULT"
 			}"
 		end

	invert_boolean_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_BINDING_INVERT_BOOLEAN"
 			}"
 		end

	sync_create_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_BINDING_SYNC_CREATE"
 			}"
 		end


end -- class GBINDING_FLAGS_ENUM
