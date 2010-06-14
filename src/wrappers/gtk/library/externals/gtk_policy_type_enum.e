-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GTK_POLICY_TYPE_ENUM

-- TODO emit_description(class_descriptions.reference_at(an_enum_name))

insert ENUM

creation default_create
feature -- Validity
	is_valid_value (a_value: INTEGER): BOOLEAN is
		do
			Result := ((a_value = always_low_level)  or else
				(a_value = automatic_low_level)  or else
				(a_value = never_low_level) )
		end

feature -- Setters
	default_create,
	set_always is
		do
			value := always_low_level
		end

	set_automatic is
		do
			value := automatic_low_level
		end

	set_never is
		do
			value := never_low_level
		end

feature -- Queries
	is_always: BOOLEAN is
		do
			Result := (value=always_low_level)
		end

	is_automatic: BOOLEAN is
		do
			Result := (value=automatic_low_level)
		end

	is_never: BOOLEAN is
		do
			Result := (value=never_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	always_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GTK_POLICY_ALWAYS"
 			}"
 		end

	automatic_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GTK_POLICY_AUTOMATIC"
 			}"
 		end

	never_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GTK_POLICY_NEVER"
 			}"
 		end


end -- class GTK_POLICY_TYPE_ENUM