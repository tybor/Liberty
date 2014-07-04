-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class MEM_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	SQLITE_TYPES
	-- Fieldless structure
<<<<<<< HEAD:src/wrappers/database/library/sqlite/externals/mem_struct.e
feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
=======
feature {ANY} -- Structure size
	struct_size: like size_t
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757:src/wrappers/xml/library/externals/xml_attribute_table_struct.e
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof_Mem"
		}"
		end

end -- class MEM_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

