-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GSIGNAL_MATCH_TYPE_ENUM

insert ENUM

create {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := (a_value & (closure_low_level | 
				data_low_level | 
				detail_low_level | 
				func_low_level | 
				id_low_level | 
				unblocked_low_level)).to_boolean
		end

feature {ANY} -- Setters
	default_create,
	set_closure is
		do
			value := value.bit_or(closure_low_level)
		end

	unset_closure is
		do
			value := value.bit_xor(closure_low_level)
		end

	set_data is
		do
			value := value.bit_or(data_low_level)
		end

	unset_data is
		do
			value := value.bit_xor(data_low_level)
		end

	set_detail is
		do
			value := value.bit_or(detail_low_level)
		end

	unset_detail is
		do
			value := value.bit_xor(detail_low_level)
		end

	set_func is
		do
			value := value.bit_or(func_low_level)
		end

	unset_func is
		do
			value := value.bit_xor(func_low_level)
		end

	set_id is
		do
			value := value.bit_or(id_low_level)
		end

	unset_id is
		do
			value := value.bit_xor(id_low_level)
		end

	set_unblocked is
		do
			value := value.bit_or(unblocked_low_level)
		end

	unset_unblocked is
		do
			value := value.bit_xor(unblocked_low_level)
		end

feature {ANY} -- Queries
	is_closure: BOOLEAN is
		do
			Result := (value=closure_low_level)
		end

	is_data: BOOLEAN is
		do
			Result := (value=data_low_level)
		end

	is_detail: BOOLEAN is
		do
			Result := (value=detail_low_level)
		end

	is_func: BOOLEAN is
		do
			Result := (value=func_low_level)
		end

	is_id: BOOLEAN is
		do
			Result := (value=id_low_level)
		end

	is_unblocked: BOOLEAN is
		do
			Result := (value=unblocked_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	closure_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "G_SIGNAL_MATCH_CLOSURE"
 			}"
 		end

	data_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "G_SIGNAL_MATCH_DATA"
 			}"
 		end

	detail_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "G_SIGNAL_MATCH_DETAIL"
 			}"
 		end

	func_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "G_SIGNAL_MATCH_FUNC"
 			}"
 		end

	id_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "G_SIGNAL_MATCH_ID"
 			}"
 		end

	unblocked_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "G_SIGNAL_MATCH_UNBLOCKED"
 			}"
 		end


end -- class GSIGNAL_MATCH_TYPE_ENUM
