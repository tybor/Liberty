-- This file has been created by wrappers_generator.
-- Any change will be lost by the next execution of the tool.
deferred class SQLITE3_MUTEX_STRUCT
-- Wrapper of struct sqlite3_mutex defined in file /usr/include/sqlite3.h line 1036

insert STANDARD_C_LIBRARY_TYPES

	SQLITE_TYPES
	-- Fieldless struct
feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
       struct_size: like size_t 
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "sizeof_sqlite3_mutex"
               }"
               end

end -- class SQLITE3_MUTEX_STRUCT
-- This file has been created by wrappers_generator.
-- Any change will be lost by the next execution of the tool.