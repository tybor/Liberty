-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class FFI_JAVA_RAW_CLOSURE_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	FFI_TYPES
feature {} -- Low-level setters

	ffi_java_raw_closure_struct_set_tramp (a_structure: POINTER; a_value: POINTER)
			-- Setter for tramp field of FFI_JAVA_RAW_CLOSURE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "ffi_java_raw_closure_struct_set_tramp"
		}"
		end

	ffi_java_raw_closure_struct_set_cif (a_structure: POINTER; a_value: POINTER)
			-- Setter for cif field of FFI_JAVA_RAW_CLOSURE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "ffi_java_raw_closure_struct_set_cif"
		}"
		end

	ffi_java_raw_closure_struct_set_fun (a_structure: POINTER; a_value: POINTER)
			-- Setter for fun field of FFI_JAVA_RAW_CLOSURE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "ffi_java_raw_closure_struct_set_fun"
		}"
		end

	ffi_java_raw_closure_struct_set_user_data (a_structure: POINTER; a_value: POINTER)
			-- Setter for user_data field of FFI_JAVA_RAW_CLOSURE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "ffi_java_raw_closure_struct_set_user_data"
		}"
		end

feature {} -- Low-level queries

	ffi_java_raw_closure_struct_get_tramp (a_structure: POINTER): POINTER
			-- Query for tramp field of FFI_JAVA_RAW_CLOSURE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "ffi_java_raw_closure_struct_get_tramp"
		}"
		end

	ffi_java_raw_closure_struct_get_cif (a_structure: POINTER): POINTER
			-- Query for cif field of FFI_JAVA_RAW_CLOSURE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "ffi_java_raw_closure_struct_get_cif"
		}"
		end

	ffi_java_raw_closure_struct_get_fun (a_structure: POINTER): POINTER
			-- Query for fun field of FFI_JAVA_RAW_CLOSURE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "ffi_java_raw_closure_struct_get_fun"
		}"
		end

	ffi_java_raw_closure_struct_get_user_data (a_structure: POINTER): POINTER
			-- Query for user_data field of FFI_JAVA_RAW_CLOSURE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "ffi_java_raw_closure_struct_get_user_data"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof_ffi_java_raw_closure"
		}"
		end

end -- class FFI_JAVA_RAW_CLOSURE_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

