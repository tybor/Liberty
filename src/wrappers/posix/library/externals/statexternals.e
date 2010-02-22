-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class STATEXTERNALS


inherit ANY undefine is_equal, copy end

		-- TODO: insert typedefs class
feature {} -- External calls

	fstatat64 (a_fd: INTEGER_32; a_file: POINTER; a_buf: POINTER; a_flag: INTEGER_32): INTEGER_32 is
 		-- fstatat64 (node at line 15)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "fstatat64"
		}"
		end

	fstat64 (a_fd: INTEGER_32; a_buf: POINTER): INTEGER_32 is
 		-- fstat64 (node at line 186)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "fstat64"
		}"
		end

	-- `hidden' function __fxstatat64 skipped.
	futimens (a_fd: INTEGER_32; a_times: POINTER): INTEGER_32 is
 		-- futimens (node at line 222)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "futimens"
		}"
		end

	-- `hidden' function __xmknodat skipped.
	-- `hidden' function __xstat64 skipped.
	lchmod (a_file: POINTER; a_mode: NATURAL_32): INTEGER_32 is
 		-- lchmod (node at line 400)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "lchmod"
		}"
		end

	fchmodat (a_fd: INTEGER_32; a_file: POINTER; a_mode: NATURAL_32; a_flag: INTEGER_32): INTEGER_32 is
 		-- fchmodat (node at line 417)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "fchmodat"
		}"
		end

	umask (a_mask: NATURAL_32): NATURAL_32 is
 		-- umask (node at line 443)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "umask"
		}"
		end

	fstat (a_fd: INTEGER_32; a_buf: POINTER): INTEGER_32 is
 		-- fstat (node at line 458)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "fstat"
		}"
		end

	-- `hidden' function __lxstat64 skipped.
	mknod (a_path: POINTER; a_mode: NATURAL_32; a_dev: NATURAL_64): INTEGER_32 is
 		-- mknod (node at line 512)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "mknod"
		}"
		end

	fstatat (a_fd: INTEGER_32; a_file: POINTER; a_buf: POINTER; a_flag: INTEGER_32): INTEGER_32 is
 		-- fstatat (node at line 536)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "fstatat"
		}"
		end

	mknodat (a_fd: INTEGER_32; a_path: POINTER; a_mode: NATURAL_32; a_dev: NATURAL_64): INTEGER_32 is
 		-- mknodat (node at line 546)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "mknodat"
		}"
		end

	-- `hidden' function __fxstat skipped.
	-- `hidden' function __fxstat64 skipped.
	-- `hidden' function __xstat skipped.
	utimensat (a_fd: INTEGER_32; a_path: POINTER; a_times: POINTER; a_flags: INTEGER_32): INTEGER_32 is
 		-- utimensat (node at line 660)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "utimensat"
		}"
		end

	-- `hidden' function __fxstatat skipped.
	stat (a_file: POINTER; a_buf: POINTER): INTEGER_32 is
 		-- stat (node at line 738)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "stat"
		}"
		end

	-- `hidden' function __xmknod skipped.
	mkdir (a_path: POINTER; a_mode: NATURAL_32): INTEGER_32 is
 		-- mkdir (node at line 873)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "mkdir"
		}"
		end

	getumask: NATURAL_32 is
 		-- getumask (node at line 960)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "getumask()"
		}"
		end

	fchmod (a_fd: INTEGER_32; a_mode: NATURAL_32): INTEGER_32 is
 		-- fchmod (node at line 983)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "fchmod"
		}"
		end

	chmod (a_file: POINTER; a_mode: NATURAL_32): INTEGER_32 is
 		-- chmod (node at line 1043)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "chmod"
		}"
		end

	mkdirat (a_fd: INTEGER_32; a_path: POINTER; a_mode: NATURAL_32): INTEGER_32 is
 		-- mkdirat (node at line 1105)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "mkdirat"
		}"
		end

	mkfifoat (a_fd: INTEGER_32; a_path: POINTER; a_mode: NATURAL_32): INTEGER_32 is
 		-- mkfifoat (node at line 1117)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "mkfifoat"
		}"
		end

	lstat (a_file: POINTER; a_buf: POINTER): INTEGER_32 is
 		-- lstat (node at line 1199)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "lstat"
		}"
		end

	stat64 (a_file: POINTER; a_buf: POINTER): INTEGER_32 is
 		-- stat64 (node at line 1203)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "stat64"
		}"
		end

	mkfifo (a_path: POINTER; a_mode: NATURAL_32): INTEGER_32 is
 		-- mkfifo (node at line 1271)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "mkfifo"
		}"
		end

	-- `hidden' function __lxstat skipped.
	lstat64 (a_file: POINTER; a_buf: POINTER): INTEGER_32 is
 		-- lstat64 (node at line 1423)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "lstat64"
		}"
		end


end -- class STATEXTERNALS
