-- Th file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class OBSTACK_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	STANDARD_C_LIBRARY_TYPES
	-- Fieldless structure
feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
       struct_size: like size_t 
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "sizeof_obstack"
               }"
               end

end -- class OBSTACK_STRUCT
-- Th file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

