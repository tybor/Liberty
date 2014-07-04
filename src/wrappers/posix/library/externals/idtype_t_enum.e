-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class IDTYPE_T_ENUM

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
            Result := ((a_value = all_low_level)  or else
				(a_value = pgid_low_level)  or else
				(a_value = pid_low_level) )
		end

feature {ANY} -- Setters
	default_create,
<<<<<<< HEAD
	set_all is
=======
	set_p_all
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := all_low_level
		end

<<<<<<< HEAD
	set_pgid is
=======
	set_p_pgid
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := pgid_low_level
		end

<<<<<<< HEAD
	set_pid is
=======
	set_p_pid
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			value := pid_low_level
		end

<<<<<<< HEAD
feature {ANY} -- Queries
	is_all: BOOLEAN is
=======
feature -- Queries
	is_p_all: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=all_low_level)
		end

<<<<<<< HEAD
	is_pgid: BOOLEAN is
=======
	is_p_pgid: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=pgid_low_level)
		end

<<<<<<< HEAD
	is_pid: BOOLEAN is
=======
	is_p_pid: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		do
			Result := (value=pid_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
<<<<<<< HEAD
	all_low_level: INTEGER is
=======
	p_all_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "P_ALL"
 			}"
 		end

<<<<<<< HEAD
	pgid_low_level: INTEGER is
=======
	p_pgid_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "P_PGID"
 			}"
 		end

<<<<<<< HEAD
	pid_low_level: INTEGER is
=======
	p_pid_low_level: INTEGER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "P_PID"
 			}"
 		end


end -- class IDTYPE_T_ENUM
