-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class REG_ERRCODE_T_ENUM

insert ENUM

<<<<<<< HEAD
creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
=======
create default_create
feature -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
        do
            Result := ((a_value = badbr_low_level)  or else
				(a_value = badpat_low_level)  or else
				(a_value = badrpt_low_level)  or else
				(a_value = ebrace_low_level)  or else
				(a_value = ebrack_low_level)  or else
				(a_value = ecollate_low_level)  or else
				(a_value = ectype_low_level)  or else
				(a_value = eend_low_level)  or else
				(a_value = eescape_low_level)  or else
				(a_value = enosys_low_level)  or else
				(a_value = eparen_low_level)  or else
				(a_value = erange_low_level)  or else
				(a_value = erparen_low_level)  or else
				(a_value = esize_low_level)  or else
				(a_value = espace_low_level)  or else
				(a_value = esubreg_low_level)  or else
				(a_value = noerror_low_level)  or else
				(a_value = nomatch_low_level) )
		end

feature {ANY} -- Setters
	default_create,
<<<<<<< HEAD
	set_badbr is
=======
	set_reg_badbr
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := badbr_low_level
		end

<<<<<<< HEAD
	set_badpat is
=======
	set_reg_badpat
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := badpat_low_level
		end

<<<<<<< HEAD
	set_badrpt is
=======
	set_reg_badrpt
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := badrpt_low_level
		end

<<<<<<< HEAD
	set_ebrace is
=======
	set_reg_ebrace
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := ebrace_low_level
		end

<<<<<<< HEAD
	set_ebrack is
=======
	set_reg_ebrack
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := ebrack_low_level
		end

<<<<<<< HEAD
	set_ecollate is
=======
	set_reg_ecollate
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := ecollate_low_level
		end

<<<<<<< HEAD
	set_ectype is
=======
	set_reg_ectype
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := ectype_low_level
		end

<<<<<<< HEAD
	set_eend is
=======
	set_reg_eend
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := eend_low_level
		end

<<<<<<< HEAD
	set_eescape is
=======
	set_reg_eescape
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := eescape_low_level
		end

<<<<<<< HEAD
	set_enosys is
=======
	set_reg_enosys
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := enosys_low_level
		end

<<<<<<< HEAD
	set_eparen is
=======
	set_reg_eparen
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := eparen_low_level
		end

<<<<<<< HEAD
	set_erange is
=======
	set_reg_erange
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := erange_low_level
		end

<<<<<<< HEAD
	set_erparen is
=======
	set_reg_erparen
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := erparen_low_level
		end

<<<<<<< HEAD
	set_esize is
=======
	set_reg_esize
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := esize_low_level
		end

<<<<<<< HEAD
	set_espace is
=======
	set_reg_espace
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := espace_low_level
		end

<<<<<<< HEAD
	set_esubreg is
=======
	set_reg_esubreg
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := esubreg_low_level
		end

<<<<<<< HEAD
	set_noerror is
=======
	set_reg_noerror
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := noerror_low_level
		end

<<<<<<< HEAD
	set_nomatch is
=======
	set_reg_nomatch
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := nomatch_low_level
		end

<<<<<<< HEAD
feature {ANY} -- Queries
	is_badbr: BOOLEAN is
=======
feature -- Queries
	is_reg_badbr: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=badbr_low_level)
		end

<<<<<<< HEAD
	is_badpat: BOOLEAN is
=======
	is_reg_badpat: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=badpat_low_level)
		end

<<<<<<< HEAD
	is_badrpt: BOOLEAN is
=======
	is_reg_badrpt: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=badrpt_low_level)
		end

<<<<<<< HEAD
	is_ebrace: BOOLEAN is
=======
	is_reg_ebrace: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=ebrace_low_level)
		end

<<<<<<< HEAD
	is_ebrack: BOOLEAN is
=======
	is_reg_ebrack: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=ebrack_low_level)
		end

<<<<<<< HEAD
	is_ecollate: BOOLEAN is
=======
	is_reg_ecollate: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=ecollate_low_level)
		end

<<<<<<< HEAD
	is_ectype: BOOLEAN is
=======
	is_reg_ectype: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=ectype_low_level)
		end

<<<<<<< HEAD
	is_eend: BOOLEAN is
=======
	is_reg_eend: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=eend_low_level)
		end

<<<<<<< HEAD
	is_eescape: BOOLEAN is
=======
	is_reg_eescape: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=eescape_low_level)
		end

<<<<<<< HEAD
	is_enosys: BOOLEAN is
=======
	is_reg_enosys: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=enosys_low_level)
		end

<<<<<<< HEAD
	is_eparen: BOOLEAN is
=======
	is_reg_eparen: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=eparen_low_level)
		end

<<<<<<< HEAD
	is_erange: BOOLEAN is
=======
	is_reg_erange: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=erange_low_level)
		end

<<<<<<< HEAD
	is_erparen: BOOLEAN is
=======
	is_reg_erparen: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=erparen_low_level)
		end

<<<<<<< HEAD
	is_esize: BOOLEAN is
=======
	is_reg_esize: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=esize_low_level)
		end

<<<<<<< HEAD
	is_espace: BOOLEAN is
=======
	is_reg_espace: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=espace_low_level)
		end

<<<<<<< HEAD
	is_esubreg: BOOLEAN is
=======
	is_reg_esubreg: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=esubreg_low_level)
		end

<<<<<<< HEAD
	is_noerror: BOOLEAN is
=======
	is_reg_noerror: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=noerror_low_level)
		end

<<<<<<< HEAD
	is_nomatch: BOOLEAN is
=======
	is_reg_nomatch: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=nomatch_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
<<<<<<< HEAD
	badbr_low_level: INTEGER is
=======
	reg_badbr_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "REG_BADBR"
 			}"
 		end

<<<<<<< HEAD
	badpat_low_level: INTEGER is
=======
	reg_badpat_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "REG_BADPAT"
 			}"
 		end

<<<<<<< HEAD
	badrpt_low_level: INTEGER is
=======
	reg_badrpt_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "REG_BADRPT"
 			}"
 		end

<<<<<<< HEAD
	ebrace_low_level: INTEGER is
=======
	reg_ebrace_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "REG_EBRACE"
 			}"
 		end

<<<<<<< HEAD
	ebrack_low_level: INTEGER is
=======
	reg_ebrack_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "REG_EBRACK"
 			}"
 		end

<<<<<<< HEAD
	ecollate_low_level: INTEGER is
=======
	reg_ecollate_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "REG_ECOLLATE"
 			}"
 		end

<<<<<<< HEAD
	ectype_low_level: INTEGER is
=======
	reg_ectype_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "REG_ECTYPE"
 			}"
 		end

<<<<<<< HEAD
	eend_low_level: INTEGER is
=======
	reg_eend_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "REG_EEND"
 			}"
 		end

<<<<<<< HEAD
	eescape_low_level: INTEGER is
=======
	reg_eescape_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "REG_EESCAPE"
 			}"
 		end

<<<<<<< HEAD
	enosys_low_level: INTEGER is
=======
	reg_enosys_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "REG_ENOSYS"
 			}"
 		end

<<<<<<< HEAD
	eparen_low_level: INTEGER is
=======
	reg_eparen_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "REG_EPAREN"
 			}"
 		end

<<<<<<< HEAD
	erange_low_level: INTEGER is
=======
	reg_erange_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "REG_ERANGE"
 			}"
 		end

<<<<<<< HEAD
	erparen_low_level: INTEGER is
=======
	reg_erparen_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "REG_ERPAREN"
 			}"
 		end

<<<<<<< HEAD
	esize_low_level: INTEGER is
=======
	reg_esize_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "REG_ESIZE"
 			}"
 		end

<<<<<<< HEAD
	espace_low_level: INTEGER is
=======
	reg_espace_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "REG_ESPACE"
 			}"
 		end

<<<<<<< HEAD
	esubreg_low_level: INTEGER is
=======
	reg_esubreg_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "REG_ESUBREG"
 			}"
 		end

<<<<<<< HEAD
	noerror_low_level: INTEGER is
=======
	reg_noerror_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "REG_NOERROR"
 			}"
 		end

<<<<<<< HEAD
	nomatch_low_level: INTEGER is
=======
	reg_nomatch_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "REG_NOMATCH"
 			}"
 		end


end -- class REG_ERRCODE_T_ENUM
