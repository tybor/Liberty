-- This file have been created by eiffel-gcc-xml.
-- Any change will be lost by the next execution of the tool.
expanded class GDA_DATA_PROXY_ERROR
insert ENUM

creation default_create
feature -- Validity
	is_valid_value (a_value: INTEGER): BOOLEAN is
		do
			Result := ((a_value = gda_data_proxy_commit_error) or else 
				(a_value = gda_data_proxy_commit_cancelled))
		end


feature -- Setters
	default_create, set_gda_data_proxy_commit_error is
		do
			value := gda_data_proxy_commit_error
		end

	set_gda_data_proxy_commit_cancelled is
		do
			value := gda_data_proxy_commit_cancelled
		end


feature -- Queries
	is_gda_data_proxy_commit_error: BOOLEAN is
		do
			Result := (value=gda_data_proxy_commit_error)
		end

	is_gda_data_proxy_commit_cancelled: BOOLEAN is
		do
			Result := (value=gda_data_proxy_commit_cancelled)
		end


feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	gda_data_proxy_commit_error: INTEGER is
		external "C macro use <libgda/libgda.h>"
		alias "GDA_DATA_PROXY_COMMIT_ERROR"
		end

	gda_data_proxy_commit_cancelled: INTEGER is
		external "C macro use <libgda/libgda.h>"
		alias "GDA_DATA_PROXY_COMMIT_CANCELLED"
		end


end

