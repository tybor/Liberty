-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GFILE_TEST_ENUM

insert ENUM

create {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN
        do
            Result := (a_value & (g_file_test_exists_low_level | 
				g_file_test_is_executable_low_level | 
				g_file_test_is_regular_low_level | 
				g_file_test_is_symlink_low_level)).to_boolean
		end

feature {ANY} -- Setters
	default_create,
	set_g_file_test_exists
		do
			value := value.bit_or(g_file_test_exists_low_level)
		end

	unset_g_file_test_exists
		do
			value := value.bit_xor(g_file_test_exists_low_level)
		end

	set_g_file_test_is_executable
		do
			value := value.bit_or(g_file_test_is_executable_low_level)
		end

	unset_g_file_test_is_executable
		do
			value := value.bit_xor(g_file_test_is_executable_low_level)
		end

	set_g_file_test_is_regular
		do
			value := value.bit_or(g_file_test_is_regular_low_level)
		end

	unset_g_file_test_is_regular
		do
			value := value.bit_xor(g_file_test_is_regular_low_level)
		end

	set_g_file_test_is_symlink
		do
			value := value.bit_or(g_file_test_is_symlink_low_level)
		end

	unset_g_file_test_is_symlink
		do
			value := value.bit_xor(g_file_test_is_symlink_low_level)
		end

feature {ANY} -- Queries
	is_g_file_test_exists: BOOLEAN
		do
			Result := (value=g_file_test_exists_low_level)
		end

	is_g_file_test_is_executable: BOOLEAN
		do
			Result := (value=g_file_test_is_executable_low_level)
		end

	is_g_file_test_is_regular: BOOLEAN
		do
			Result := (value=g_file_test_is_regular_low_level)
		end

	is_g_file_test_is_symlink: BOOLEAN
		do
			Result := (value=g_file_test_is_symlink_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	g_file_test_exists_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "G_FILE_TEST_EXISTS"
 			}"
 		end

	g_file_test_is_executable_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "G_FILE_TEST_IS_EXECUTABLE"
 			}"
 		end

	g_file_test_is_regular_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "G_FILE_TEST_IS_REGULAR"
 			}"
 		end

	g_file_test_is_symlink_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "G_FILE_TEST_IS_SYMLINK"
 			}"
 		end


end -- class GFILE_TEST_ENUM
