-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class SQLITE3_VFS_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	SQLITE_TYPES
feature {} -- Low-level setters

	sqlite3_vfs_struct_set_iversion (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for iVersion field of SQLITE3_VFS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_set_iversion"
		}"
		end

	sqlite3_vfs_struct_set_szosfile (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for szOsFile field of SQLITE3_VFS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_set_szosfile"
		}"
		end

	sqlite3_vfs_struct_set_mxpathname (a_structure: POINTER; a_value: INTEGER) is
			-- Setter for mxPathname field of SQLITE3_VFS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_set_mxpathname"
		}"
		end

	sqlite3_vfs_struct_set_pnext (a_structure: POINTER; a_value: POINTER) is
			-- Setter for pNext field of SQLITE3_VFS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_set_pnext"
		}"
		end

	sqlite3_vfs_struct_set_zname (a_structure: POINTER; a_value: POINTER) is
			-- Setter for zName field of SQLITE3_VFS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_set_zname"
		}"
		end

	sqlite3_vfs_struct_set_pappdata (a_structure: POINTER; a_value: POINTER) is
			-- Setter for pAppData field of SQLITE3_VFS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_set_pappdata"
		}"
		end

	sqlite3_vfs_struct_set_xopen (a_structure: POINTER; a_value: POINTER) is
			-- Setter for xOpen field of SQLITE3_VFS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_set_xopen"
		}"
		end

	sqlite3_vfs_struct_set_xdelete (a_structure: POINTER; a_value: POINTER) is
			-- Setter for xDelete field of SQLITE3_VFS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_set_xdelete"
		}"
		end

	sqlite3_vfs_struct_set_xaccess (a_structure: POINTER; a_value: POINTER) is
			-- Setter for xAccess field of SQLITE3_VFS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_set_xaccess"
		}"
		end

	sqlite3_vfs_struct_set_xfullpathname (a_structure: POINTER; a_value: POINTER) is
			-- Setter for xFullPathname field of SQLITE3_VFS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_set_xfullpathname"
		}"
		end

	sqlite3_vfs_struct_set_xdlopen (a_structure: POINTER; a_value: POINTER) is
			-- Setter for xDlOpen field of SQLITE3_VFS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_set_xdlopen"
		}"
		end

	sqlite3_vfs_struct_set_xdlerror (a_structure: POINTER; a_value: POINTER) is
			-- Setter for xDlError field of SQLITE3_VFS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_set_xdlerror"
		}"
		end

	sqlite3_vfs_struct_set_xdlsym (a_structure: POINTER; a_value: POINTER) is
			-- Setter for xDlSym field of SQLITE3_VFS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_set_xdlsym"
		}"
		end

	sqlite3_vfs_struct_set_xdlclose (a_structure: POINTER; a_value: POINTER) is
			-- Setter for xDlClose field of SQLITE3_VFS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_set_xdlclose"
		}"
		end

	sqlite3_vfs_struct_set_xrandomness (a_structure: POINTER; a_value: POINTER) is
			-- Setter for xRandomness field of SQLITE3_VFS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_set_xrandomness"
		}"
		end

	sqlite3_vfs_struct_set_xsleep (a_structure: POINTER; a_value: POINTER) is
			-- Setter for xSleep field of SQLITE3_VFS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_set_xsleep"
		}"
		end

	sqlite3_vfs_struct_set_xcurrenttime (a_structure: POINTER; a_value: POINTER) is
			-- Setter for xCurrentTime field of SQLITE3_VFS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_set_xcurrenttime"
		}"
		end

	sqlite3_vfs_struct_set_xgetlasterror (a_structure: POINTER; a_value: POINTER) is
			-- Setter for xGetLastError field of SQLITE3_VFS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_set_xgetlasterror"
		}"
		end

	sqlite3_vfs_struct_set_xcurrenttimeint64 (a_structure: POINTER; a_value: POINTER) is
			-- Setter for xCurrentTimeInt64 field of SQLITE3_VFS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_set_xcurrenttimeint64"
		}"
		end

	sqlite3_vfs_struct_set_xsetsystemcall (a_structure: POINTER; a_value: POINTER) is
			-- Setter for xSetSystemCall field of SQLITE3_VFS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_set_xsetsystemcall"
		}"
		end

	sqlite3_vfs_struct_set_xgetsystemcall (a_structure: POINTER; a_value: POINTER) is
			-- Setter for xGetSystemCall field of SQLITE3_VFS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_set_xgetsystemcall"
		}"
		end

	sqlite3_vfs_struct_set_xnextsystemcall (a_structure: POINTER; a_value: POINTER) is
			-- Setter for xNextSystemCall field of SQLITE3_VFS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_set_xnextsystemcall"
		}"
		end

feature {} -- Low-level queries

	sqlite3_vfs_struct_get_iversion (a_structure: POINTER): INTEGER is
			-- Query for iVersion field of SQLITE3_VFS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_get_iversion"
		}"
		end

	sqlite3_vfs_struct_get_szosfile (a_structure: POINTER): INTEGER is
			-- Query for szOsFile field of SQLITE3_VFS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_get_szosfile"
		}"
		end

	sqlite3_vfs_struct_get_mxpathname (a_structure: POINTER): INTEGER is
			-- Query for mxPathname field of SQLITE3_VFS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_get_mxpathname"
		}"
		end

	sqlite3_vfs_struct_get_pnext (a_structure: POINTER): POINTER is
			-- Query for pNext field of SQLITE3_VFS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_get_pnext"
		}"
		end

	sqlite3_vfs_struct_get_zname (a_structure: POINTER): POINTER is
			-- Query for zName field of SQLITE3_VFS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_get_zname"
		}"
		end

	sqlite3_vfs_struct_get_pappdata (a_structure: POINTER): POINTER is
			-- Query for pAppData field of SQLITE3_VFS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_get_pappdata"
		}"
		end

	sqlite3_vfs_struct_get_xopen (a_structure: POINTER): POINTER is
			-- Query for xOpen field of SQLITE3_VFS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_get_xopen"
		}"
		end

	sqlite3_vfs_struct_get_xdelete (a_structure: POINTER): POINTER is
			-- Query for xDelete field of SQLITE3_VFS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_get_xdelete"
		}"
		end

	sqlite3_vfs_struct_get_xaccess (a_structure: POINTER): POINTER is
			-- Query for xAccess field of SQLITE3_VFS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_get_xaccess"
		}"
		end

	sqlite3_vfs_struct_get_xfullpathname (a_structure: POINTER): POINTER is
			-- Query for xFullPathname field of SQLITE3_VFS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_get_xfullpathname"
		}"
		end

	sqlite3_vfs_struct_get_xdlopen (a_structure: POINTER): POINTER is
			-- Query for xDlOpen field of SQLITE3_VFS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_get_xdlopen"
		}"
		end

	sqlite3_vfs_struct_get_xdlerror (a_structure: POINTER): POINTER is
			-- Query for xDlError field of SQLITE3_VFS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_get_xdlerror"
		}"
		end

	sqlite3_vfs_struct_get_xdlsym (a_structure: POINTER): POINTER is
			-- Query for xDlSym field of SQLITE3_VFS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_get_xdlsym"
		}"
		end

	sqlite3_vfs_struct_get_xdlclose (a_structure: POINTER): POINTER is
			-- Query for xDlClose field of SQLITE3_VFS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_get_xdlclose"
		}"
		end

	sqlite3_vfs_struct_get_xrandomness (a_structure: POINTER): POINTER is
			-- Query for xRandomness field of SQLITE3_VFS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_get_xrandomness"
		}"
		end

	sqlite3_vfs_struct_get_xsleep (a_structure: POINTER): POINTER is
			-- Query for xSleep field of SQLITE3_VFS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_get_xsleep"
		}"
		end

	sqlite3_vfs_struct_get_xcurrenttime (a_structure: POINTER): POINTER is
			-- Query for xCurrentTime field of SQLITE3_VFS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_get_xcurrenttime"
		}"
		end

	sqlite3_vfs_struct_get_xgetlasterror (a_structure: POINTER): POINTER is
			-- Query for xGetLastError field of SQLITE3_VFS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_get_xgetlasterror"
		}"
		end

	sqlite3_vfs_struct_get_xcurrenttimeint64 (a_structure: POINTER): POINTER is
			-- Query for xCurrentTimeInt64 field of SQLITE3_VFS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_get_xcurrenttimeint64"
		}"
		end

	sqlite3_vfs_struct_get_xsetsystemcall (a_structure: POINTER): POINTER is
			-- Query for xSetSystemCall field of SQLITE3_VFS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_get_xsetsystemcall"
		}"
		end

	sqlite3_vfs_struct_get_xgetsystemcall (a_structure: POINTER): POINTER is
			-- Query for xGetSystemCall field of SQLITE3_VFS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_get_xgetsystemcall"
		}"
		end

	sqlite3_vfs_struct_get_xnextsystemcall (a_structure: POINTER): POINTER is
			-- Query for xNextSystemCall field of SQLITE3_VFS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sqlite3_vfs_struct_get_xnextsystemcall"
		}"
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof_sqlite3_vfs"
		}"
		end

end -- class SQLITE3_VFS_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

