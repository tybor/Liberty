-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GIOCONDITION_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := (a_value & (err_low_level | 
				hup_low_level | 
				in_low_level | 
				nval_low_level | 
				out_external_low_level | 
				pri_low_level)).to_boolean
		end

feature {ANY} -- Setters
	default_create,
	set_err is
		do
			value := value.bit_or(err_low_level)
		end

	unset_err is
		do
			value := value.bit_xor(err_low_level)
		end

	set_hup is
		do
			value := value.bit_or(hup_low_level)
		end

	unset_hup is
		do
			value := value.bit_xor(hup_low_level)
		end

	set_in is
		do
			value := value.bit_or(in_low_level)
		end

	unset_in is
		do
			value := value.bit_xor(in_low_level)
		end

	set_nval is
		do
			value := value.bit_or(nval_low_level)
		end

	unset_nval is
		do
			value := value.bit_xor(nval_low_level)
		end

	set_out_external is
		do
			value := value.bit_or(out_external_low_level)
		end

	unset_out_external is
		do
			value := value.bit_xor(out_external_low_level)
		end

	set_pri is
		do
			value := value.bit_or(pri_low_level)
		end

	unset_pri is
		do
			value := value.bit_xor(pri_low_level)
		end

feature {ANY} -- Queries
	is_err: BOOLEAN is
		do
			Result := (value=err_low_level)
		end

	is_hup: BOOLEAN is
		do
			Result := (value=hup_low_level)
		end

	is_in: BOOLEAN is
		do
			Result := (value=in_low_level)
		end

	is_nval: BOOLEAN is
		do
			Result := (value=nval_low_level)
		end

	is_out_external: BOOLEAN is
		do
			Result := (value=out_external_low_level)
		end

	is_pri: BOOLEAN is
		do
			Result := (value=pri_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	err_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "G_IO_ERR"
 			}"
 		end

	hup_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "G_IO_HUP"
 			}"
 		end

	in_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "G_IO_IN"
 			}"
 		end

	nval_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "G_IO_NVAL"
 			}"
 		end

	out_external_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "G_IO_OUT"
 			}"
 		end

	pri_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "G_IO_PRI"
 			}"
 		end


end -- class GIOCONDITION_ENUM
