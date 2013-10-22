-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GDK_DRAG_PROTOCOL_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = local_external_low_level)  or else
				(a_value = motif_low_level)  or else
				(a_value = none_low_level)  or else
				(a_value = ole2_low_level)  or else
				(a_value = rootwin_low_level)  or else
				(a_value = win32_dropfiles_low_level)  or else
				(a_value = xdnd_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_local_external is
		do
			value := local_external_low_level
		end

	set_motif is
		do
			value := motif_low_level
		end

	set_none is
		do
			value := none_low_level
		end

	set_ole2 is
		do
			value := ole2_low_level
		end

	set_rootwin is
		do
			value := rootwin_low_level
		end

	set_win32_dropfiles is
		do
			value := win32_dropfiles_low_level
		end

	set_xdnd is
		do
			value := xdnd_low_level
		end

feature {ANY} -- Queries
	is_local_external: BOOLEAN is
		do
			Result := (value=local_external_low_level)
		end

	is_motif: BOOLEAN is
		do
			Result := (value=motif_low_level)
		end

	is_none: BOOLEAN is
		do
			Result := (value=none_low_level)
		end

	is_ole2: BOOLEAN is
		do
			Result := (value=ole2_low_level)
		end

	is_rootwin: BOOLEAN is
		do
			Result := (value=rootwin_low_level)
		end

	is_win32_dropfiles: BOOLEAN is
		do
			Result := (value=win32_dropfiles_low_level)
		end

	is_xdnd: BOOLEAN is
		do
			Result := (value=xdnd_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	local_external_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_DRAG_PROTO_LOCAL"
 			}"
 		end

	motif_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_DRAG_PROTO_MOTIF"
 			}"
 		end

	none_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_DRAG_PROTO_NONE"
 			}"
 		end

	ole2_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_DRAG_PROTO_OLE2"
 			}"
 		end

	rootwin_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_DRAG_PROTO_ROOTWIN"
 			}"
 		end

	win32_dropfiles_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_DRAG_PROTO_WIN32_DROPFILES"
 			}"
 		end

	xdnd_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_DRAG_PROTO_XDND"
 			}"
 		end


end -- class GDK_DRAG_PROTOCOL_ENUM
