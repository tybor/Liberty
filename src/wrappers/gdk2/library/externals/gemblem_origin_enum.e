-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GEMBLEM_ORIGIN_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = device_low_level)  or else
				(a_value = livemetadata_low_level)  or else
				(a_value = tag_low_level)  or else
				(a_value = unknown_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_device is
		do
			value := device_low_level
		end

	set_livemetadata is
		do
			value := livemetadata_low_level
		end

	set_tag is
		do
			value := tag_low_level
		end

	set_unknown is
		do
			value := unknown_low_level
		end

feature {ANY} -- Queries
	is_device: BOOLEAN is
		do
			Result := (value=device_low_level)
		end

	is_livemetadata: BOOLEAN is
		do
			Result := (value=livemetadata_low_level)
		end

	is_tag: BOOLEAN is
		do
			Result := (value=tag_low_level)
		end

	is_unknown: BOOLEAN is
		do
			Result := (value=unknown_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	device_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_EMBLEM_ORIGIN_DEVICE"
 			}"
 		end

	livemetadata_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_EMBLEM_ORIGIN_LIVEMETADATA"
 			}"
 		end

	tag_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_EMBLEM_ORIGIN_TAG"
 			}"
 		end

	unknown_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_EMBLEM_ORIGIN_UNKNOWN"
 			}"
 		end


end -- class GEMBLEM_ORIGIN_ENUM
