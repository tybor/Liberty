-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class ROUNDINGMODE_ENUM

-- TODO emit_description(class_descriptions.reference_at(an_enum_name))

insert ENUM

creation default_create
feature -- Validity
	is_valid_value (a_value: INTEGER): BOOLEAN is
		do
			Result := ((a_value = nearest_ties_to_even_low_level)  or else
				(a_value = toward_negative_low_level)  or else
				(a_value = toward_zero_low_level)  or else
				(a_value = nearest_ties_to_away_low_level) )
		end

feature -- Setters
	default_create,
	set_nearest_ties_to_even is
		do
			value := nearest_ties_to_even_low_level
		end

	set_toward_negative is
		do
			value := toward_negative_low_level
		end

	set_toward_zero is
		do
			value := toward_zero_low_level
		end

	set_nearest_ties_to_away is
		do
			value := nearest_ties_to_away_low_level
		end

feature -- Queries
	is_nearest_ties_to_even: BOOLEAN is
		do
			Result := (value=nearest_ties_to_even_low_level)
		end

	is_toward_negative: BOOLEAN is
		do
			Result := (value=toward_negative_low_level)
		end

	is_toward_zero: BOOLEAN is
		do
			Result := (value=toward_zero_low_level)
		end

	is_nearest_ties_to_away: BOOLEAN is
		do
			Result := (value=nearest_ties_to_away_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	nearest_ties_to_even_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "rmNearestTiesToEven"
 			}"
 		end

	toward_negative_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "rmTowardNegative"
 			}"
 		end

	toward_zero_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "rmTowardZero"
 			}"
 		end

	nearest_ties_to_away_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "rmNearestTiesToAway"
 			}"
 		end


end -- class ROUNDINGMODE_ENUM
