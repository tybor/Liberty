-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class TCP_MD5SIG_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	POSIX_TYPES
feature {} -- Low-level setters

	tcp_md5sig_struct_set_tcpm_keylen (a_structure: POINTER; a_value: NATURAL_16)
			-- Setter for tcpm_keylen field of TCP_MD5SIG_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "tcp_md5sig_struct_set_tcpm_keylen"
		}"
		end

	tcp_md5sig_struct_set_tcpm_key (a_structure: POINTER; a_value: POINTER)
			-- Setter for tcpm_key field of TCP_MD5SIG_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "tcp_md5sig_struct_set_tcpm_key"
		}"
		end

feature {} -- Low-level queries

	-- Unwrappable field tcpm_addr.
	-- Unwrappable field __tcpm_pad1.
	tcp_md5sig_struct_get_tcpm_keylen (a_structure: POINTER): NATURAL_16
			-- Query for tcpm_keylen field of TCP_MD5SIG_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "tcp_md5sig_struct_get_tcpm_keylen"
		}"
		end

	-- Unwrappable field __tcpm_pad2.
	tcp_md5sig_struct_get_tcpm_key (a_structure: POINTER): POINTER
			-- Query for tcpm_key field of TCP_MD5SIG_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "tcp_md5sig_struct_get_tcpm_key"
		}"
		end

<<<<<<< HEAD
feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
=======
feature -- Structure size
	struct_size: like size_t
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof_tcp_md5sig"
		}"
		end

end -- class TCP_MD5SIG_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

