-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GDK_WINDOW_ATTRIBUTES_TYPE_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := (a_value & (colormap_low_level | 
				cursor_low_level | 
				noredir_low_level | 
				title_low_level | 
				type_hint_low_level | 
				visual_low_level | 
				wmclass_low_level | 
				x_low_level | 
				y_low_level)).to_boolean
		end

feature {ANY} -- Setters
	default_create,
	set_colormap is
		do
			value := value.bit_or(colormap_low_level)
		end

	unset_colormap is
		do
			value := value.bit_xor(colormap_low_level)
		end

	set_cursor is
		do
			value := value.bit_or(cursor_low_level)
		end

	unset_cursor is
		do
			value := value.bit_xor(cursor_low_level)
		end

	set_noredir is
		do
			value := value.bit_or(noredir_low_level)
		end

	unset_noredir is
		do
			value := value.bit_xor(noredir_low_level)
		end

	set_title is
		do
			value := value.bit_or(title_low_level)
		end

	unset_title is
		do
			value := value.bit_xor(title_low_level)
		end

	set_type_hint is
		do
			value := value.bit_or(type_hint_low_level)
		end

	unset_type_hint is
		do
			value := value.bit_xor(type_hint_low_level)
		end

	set_visual is
		do
			value := value.bit_or(visual_low_level)
		end

	unset_visual is
		do
			value := value.bit_xor(visual_low_level)
		end

	set_wmclass is
		do
			value := value.bit_or(wmclass_low_level)
		end

	unset_wmclass is
		do
			value := value.bit_xor(wmclass_low_level)
		end

	set_x is
		do
			value := value.bit_or(x_low_level)
		end

	unset_x is
		do
			value := value.bit_xor(x_low_level)
		end

	set_y is
		do
			value := value.bit_or(y_low_level)
		end

	unset_y is
		do
			value := value.bit_xor(y_low_level)
		end

feature {ANY} -- Queries
	is_colormap: BOOLEAN is
		do
			Result := (value=colormap_low_level)
		end

	is_cursor: BOOLEAN is
		do
			Result := (value=cursor_low_level)
		end

	is_noredir: BOOLEAN is
		do
			Result := (value=noredir_low_level)
		end

	is_title: BOOLEAN is
		do
			Result := (value=title_low_level)
		end

	is_type_hint: BOOLEAN is
		do
			Result := (value=type_hint_low_level)
		end

	is_visual: BOOLEAN is
		do
			Result := (value=visual_low_level)
		end

	is_wmclass: BOOLEAN is
		do
			Result := (value=wmclass_low_level)
		end

	is_x: BOOLEAN is
		do
			Result := (value=x_low_level)
		end

	is_y: BOOLEAN is
		do
			Result := (value=y_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	colormap_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "GDK_WA_COLORMAP"
 			}"
 		end

	cursor_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "GDK_WA_CURSOR"
 			}"
 		end

	noredir_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "GDK_WA_NOREDIR"
 			}"
 		end

	title_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "GDK_WA_TITLE"
 			}"
 		end

	type_hint_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "GDK_WA_TYPE_HINT"
 			}"
 		end

	visual_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "GDK_WA_VISUAL"
 			}"
 		end

	wmclass_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "GDK_WA_WMCLASS"
 			}"
 		end

	x_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "GDK_WA_X"
 			}"
 		end

	y_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "GDK_WA_Y"
 			}"
 		end


end -- class GDK_WINDOW_ATTRIBUTES_TYPE_ENUM
