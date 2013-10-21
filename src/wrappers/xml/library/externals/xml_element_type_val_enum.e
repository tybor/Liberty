-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class XML_ELEMENT_TYPE_VAL_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = any_low_level)  or else
				(a_value = element_low_level)  or else
				(a_value = empty_low_level)  or else
				(a_value = mixed_low_level)  or else
				(a_value = undefined_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_any is
		do
			value := any_low_level
		end

	set_element is
		do
			value := element_low_level
		end

	set_empty is
		do
			value := empty_low_level
		end

	set_mixed is
		do
			value := mixed_low_level
		end

	set_undefined is
		do
			value := undefined_low_level
		end

feature {ANY} -- Queries
	is_any: BOOLEAN is
		do
			Result := (value=any_low_level)
		end

	is_element: BOOLEAN is
		do
			Result := (value=element_low_level)
		end

	is_empty: BOOLEAN is
		do
			Result := (value=empty_low_level)
		end

	is_mixed: BOOLEAN is
		do
			Result := (value=mixed_low_level)
		end

	is_undefined: BOOLEAN is
		do
			Result := (value=undefined_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	any_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ELEMENT_TYPE_ANY"
 			}"
 		end

	element_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ELEMENT_TYPE_ELEMENT"
 			}"
 		end

	empty_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ELEMENT_TYPE_EMPTY"
 			}"
 		end

	mixed_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ELEMENT_TYPE_MIXED"
 			}"
 		end

	undefined_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "XML_ELEMENT_TYPE_UNDEFINED"
 			}"
 		end


end -- class XML_ELEMENT_TYPE_VAL_ENUM
