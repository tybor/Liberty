-- This file has been created by wrappers_generator.
-- Any change will be lost by the next execution of the tool.
deferred class XML_MUTEX_STRUCT
-- Wrapper of struct _xmlMutex defined in file /usr/include/libxml2/libxml/threads.h line 23

insert STANDARD_C_LIBRARY_TYPES

	LIBXML2_TYPES
	-- Fieldless struct
feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
       struct_size: like size_t 
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "sizeof_xml_mutex"
               }"
               end

end -- class XML_MUTEX_STRUCT
-- This file has been created by wrappers_generator.
-- Any change will be lost by the next execution of the tool.