-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class UNDO_CODE_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = begin_low_level)  or else
				(a_value = delete_low_level)  or else
				(a_value = end_external_low_level)  or else
				(a_value = insert_external_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_begin is
		do
			value := begin_low_level
		end

	set_delete is
		do
			value := delete_low_level
		end

	set_end_external is
		do
			value := end_external_low_level
		end

	set_insert_external is
		do
			value := insert_external_low_level
		end

feature {ANY} -- Queries
	is_begin: BOOLEAN is
		do
			Result := (value=begin_low_level)
		end

	is_delete: BOOLEAN is
		do
			Result := (value=delete_low_level)
		end

	is_end_external: BOOLEAN is
		do
			Result := (value=end_external_low_level)
		end

	is_insert_external: BOOLEAN is
		do
			Result := (value=insert_external_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	begin_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "UNDO_BEGIN"
 			}"
 		end

	delete_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "UNDO_DELETE"
 			}"
 		end

	end_external_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "UNDO_END"
 			}"
 		end

	insert_external_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "UNDO_INSERT"
 			}"
 		end


end -- class UNDO_CODE_ENUM
