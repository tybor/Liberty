-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GTYPE_FLAGS_ENUM

insert ENUM

create {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := (a_value & (abstract_low_level | 
				value_abstract_low_level)).to_boolean
		end

feature {ANY} -- Setters
	default_create,
	set_abstract is
		do
			value := value.bit_or(abstract_low_level)
		end

	unset_abstract is
		do
			value := value.bit_xor(abstract_low_level)
		end

	set_value_abstract is
		do
			value := value.bit_or(value_abstract_low_level)
		end

	unset_value_abstract is
		do
			value := value.bit_xor(value_abstract_low_level)
		end

feature {ANY} -- Queries
	is_abstract: BOOLEAN is
		do
			Result := (value=abstract_low_level)
		end

	is_value_abstract: BOOLEAN is
		do
			Result := (value=value_abstract_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	abstract_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "G_TYPE_FLAG_ABSTRACT"
 			}"
 		end

	value_abstract_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "G_TYPE_FLAG_VALUE_ABSTRACT"
 			}"
 		end


end -- class GTYPE_FLAGS_ENUM
