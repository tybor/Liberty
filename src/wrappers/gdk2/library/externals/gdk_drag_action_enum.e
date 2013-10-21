-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GDK_DRAG_ACTION_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := (a_value & (ask_low_level | 
				copy_external_low_level | 
				default_external_low_level | 
				link_low_level | 
				move_low_level | 
				private_low_level)).to_boolean
		end

feature {ANY} -- Setters
	default_create,
	set_ask is
		do
			value := value.bit_or(ask_low_level)
		end

	unset_ask is
		do
			value := value.bit_xor(ask_low_level)
		end

	set_copy_external is
		do
			value := value.bit_or(copy_external_low_level)
		end

	unset_copy_external is
		do
			value := value.bit_xor(copy_external_low_level)
		end

	set_default_external is
		do
			value := value.bit_or(default_external_low_level)
		end

	unset_default_external is
		do
			value := value.bit_xor(default_external_low_level)
		end

	set_link is
		do
			value := value.bit_or(link_low_level)
		end

	unset_link is
		do
			value := value.bit_xor(link_low_level)
		end

	set_move is
		do
			value := value.bit_or(move_low_level)
		end

	unset_move is
		do
			value := value.bit_xor(move_low_level)
		end

	set_private is
		do
			value := value.bit_or(private_low_level)
		end

	unset_private is
		do
			value := value.bit_xor(private_low_level)
		end

feature {ANY} -- Queries
	is_ask: BOOLEAN is
		do
			Result := (value=ask_low_level)
		end

	is_copy_external: BOOLEAN is
		do
			Result := (value=copy_external_low_level)
		end

	is_default_external: BOOLEAN is
		do
			Result := (value=default_external_low_level)
		end

	is_link: BOOLEAN is
		do
			Result := (value=link_low_level)
		end

	is_move: BOOLEAN is
		do
			Result := (value=move_low_level)
		end

	is_private: BOOLEAN is
		do
			Result := (value=private_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	ask_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "GDK_ACTION_ASK"
 			}"
 		end

	copy_external_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "GDK_ACTION_COPY"
 			}"
 		end

	default_external_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "GDK_ACTION_DEFAULT"
 			}"
 		end

	link_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "GDK_ACTION_LINK"
 			}"
 		end

	move_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "GDK_ACTION_MOVE"
 			}"
 		end

	private_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "GDK_ACTION_PRIVATE"
 			}"
 		end


end -- class GDK_DRAG_ACTION_ENUM
