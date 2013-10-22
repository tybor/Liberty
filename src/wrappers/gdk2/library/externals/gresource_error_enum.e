-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GRESOURCE_ERROR_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = internal_low_level)  or else
				(a_value = not_found_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_internal is
		do
			value := internal_low_level
		end

	set_not_found is
		do
			value := not_found_low_level
		end

feature {ANY} -- Queries
	is_internal: BOOLEAN is
		do
			Result := (value=internal_low_level)
		end

	is_not_found: BOOLEAN is
		do
			Result := (value=not_found_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	internal_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_RESOURCE_ERROR_INTERNAL"
 			}"
 		end

	not_found_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_RESOURCE_ERROR_NOT_FOUND"
 			}"
 		end


end -- class GRESOURCE_ERROR_ENUM
