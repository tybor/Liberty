-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class POSSIBLE_RELOCATIONS_TY_ENUM

-- TODO emit_description(class_descriptions.reference_at(an_enum_name))

insert ENUM

creation default_create
feature -- Validity
	is_valid_value (a_value: INTEGER): BOOLEAN is
		do
			Result := ((a_value = no_relocation_low_level)  or else
				(a_value = local_relocation_low_level)  or else
				(a_value = global_relocations_low_level) )
		end

feature -- Setters
	default_create,
	set_no_relocation is
		do
			value := no_relocation_low_level
		end

	set_local_relocation is
		do
			value := local_relocation_low_level
		end

	set_global_relocations is
		do
			value := global_relocations_low_level
		end

feature -- Queries
	no_relocation: BOOLEAN is
		do
			Result := (value=no_relocation_low_level)
		end

	local_relocation: BOOLEAN is
		do
			Result := (value=local_relocation_low_level)
		end

	global_relocations: BOOLEAN is
		do
			Result := (value=global_relocations_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	no_relocation_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "NoRelocation"
 			}"
 		end

	local_relocation_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "LocalRelocation"
 			}"
 		end

	global_relocations_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GlobalRelocations"
 			}"
 		end


end -- class POSSIBLE_RELOCATIONS_TY_ENUM