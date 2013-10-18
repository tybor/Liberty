-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class IDTYPE_T_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = all_low_level)  or else
				(a_value = pgid_low_level)  or else
				(a_value = pid_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_all is
		do
			value := all_low_level
		end

	set_pgid is
		do
			value := pgid_low_level
		end

	set_pid is
		do
			value := pid_low_level
		end

feature {ANY} -- Queries
	is_all: BOOLEAN is
		do
			Result := (value=all_low_level)
		end

	is_pgid: BOOLEAN is
		do
			Result := (value=pgid_low_level)
		end

	is_pid: BOOLEAN is
		do
			Result := (value=pid_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	all_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "P_ALL"
 			}"
 		end

	pgid_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "P_PGID"
 			}"
 		end

	pid_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "P_PID"
 			}"
 		end


end -- class IDTYPE_T_ENUM
