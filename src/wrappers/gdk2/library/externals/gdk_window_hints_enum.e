-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GDK_WINDOW_HINTS_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := (a_value & (aspect_low_level | 
				base_size_low_level | 
				max_size_low_level | 
				min_size_low_level | 
				pos_low_level | 
				resize_inc_low_level | 
				user_pos_low_level | 
				user_size_low_level | 
				win_gravity_low_level)).to_boolean
		end

feature {ANY} -- Setters
	default_create,
	set_aspect is
		do
			value := value.bit_or(aspect_low_level)
		end

	unset_aspect is
		do
			value := value.bit_xor(aspect_low_level)
		end

	set_base_size is
		do
			value := value.bit_or(base_size_low_level)
		end

	unset_base_size is
		do
			value := value.bit_xor(base_size_low_level)
		end

	set_max_size is
		do
			value := value.bit_or(max_size_low_level)
		end

	unset_max_size is
		do
			value := value.bit_xor(max_size_low_level)
		end

	set_min_size is
		do
			value := value.bit_or(min_size_low_level)
		end

	unset_min_size is
		do
			value := value.bit_xor(min_size_low_level)
		end

	set_pos is
		do
			value := value.bit_or(pos_low_level)
		end

	unset_pos is
		do
			value := value.bit_xor(pos_low_level)
		end

	set_resize_inc is
		do
			value := value.bit_or(resize_inc_low_level)
		end

	unset_resize_inc is
		do
			value := value.bit_xor(resize_inc_low_level)
		end

	set_user_pos is
		do
			value := value.bit_or(user_pos_low_level)
		end

	unset_user_pos is
		do
			value := value.bit_xor(user_pos_low_level)
		end

	set_user_size is
		do
			value := value.bit_or(user_size_low_level)
		end

	unset_user_size is
		do
			value := value.bit_xor(user_size_low_level)
		end

	set_win_gravity is
		do
			value := value.bit_or(win_gravity_low_level)
		end

	unset_win_gravity is
		do
			value := value.bit_xor(win_gravity_low_level)
		end

feature {ANY} -- Queries
	is_aspect: BOOLEAN is
		do
			Result := (value=aspect_low_level)
		end

	is_base_size: BOOLEAN is
		do
			Result := (value=base_size_low_level)
		end

	is_max_size: BOOLEAN is
		do
			Result := (value=max_size_low_level)
		end

	is_min_size: BOOLEAN is
		do
			Result := (value=min_size_low_level)
		end

	is_pos: BOOLEAN is
		do
			Result := (value=pos_low_level)
		end

	is_resize_inc: BOOLEAN is
		do
			Result := (value=resize_inc_low_level)
		end

	is_user_pos: BOOLEAN is
		do
			Result := (value=user_pos_low_level)
		end

	is_user_size: BOOLEAN is
		do
			Result := (value=user_size_low_level)
		end

	is_win_gravity: BOOLEAN is
		do
			Result := (value=win_gravity_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	aspect_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "GDK_HINT_ASPECT"
 			}"
 		end

	base_size_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "GDK_HINT_BASE_SIZE"
 			}"
 		end

	max_size_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "GDK_HINT_MAX_SIZE"
 			}"
 		end

	min_size_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "GDK_HINT_MIN_SIZE"
 			}"
 		end

	pos_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "GDK_HINT_POS"
 			}"
 		end

	resize_inc_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "GDK_HINT_RESIZE_INC"
 			}"
 		end

	user_pos_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "GDK_HINT_USER_POS"
 			}"
 		end

	user_size_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "GDK_HINT_USER_SIZE"
 			}"
 		end

	win_gravity_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "GDK_HINT_WIN_GRAVITY"
 			}"
 		end


end -- class GDK_WINDOW_HINTS_ENUM
