-- This file have been created by eiffel-gcc-xml.
-- Any change will be lost by the next execution of the tool.
expanded class GDA_CONNECTION_OPTIONS
insert ENUM

creation default_create
feature -- Validity
	is_valid_value (a_value: INTEGER): BOOLEAN is
		do
			Result := ((a_value = gda_connection_options_none) or else 
				(a_value = gda_connection_options_read_only) or else 
				(a_value = gda_connection_options_dont_share))
		end


feature -- Setters
	default_create, set_gda_connection_options_none is
		do
			value := gda_connection_options_none
		end

	set_gda_connection_options_read_only is
		do
			value := gda_connection_options_read_only
		end

	set_gda_connection_options_dont_share is
		do
			value := gda_connection_options_dont_share
		end


feature -- Queries
	is_gda_connection_options_none: BOOLEAN is
		do
			Result := (value=gda_connection_options_none)
		end

	is_gda_connection_options_read_only: BOOLEAN is
		do
			Result := (value=gda_connection_options_read_only)
		end

	is_gda_connection_options_dont_share: BOOLEAN is
		do
			Result := (value=gda_connection_options_dont_share)
		end


feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	gda_connection_options_none: INTEGER is
		external "C macro use <libgda/libgda.h>"
		alias "GDA_CONNECTION_OPTIONS_NONE"
		end

	gda_connection_options_read_only: INTEGER is
		external "C macro use <libgda/libgda.h>"
		alias "GDA_CONNECTION_OPTIONS_READ_ONLY"
		end

	gda_connection_options_dont_share: INTEGER is
		external "C macro use <libgda/libgda.h>"
		alias "GDA_CONNECTION_OPTIONS_DONT_SHARE"
		end


end

