-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GDBUS_SUBTREE_FLAGS_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = dispatch_to_unenumerated_nodes_low_level)  or else
				(a_value = none_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_dispatch_to_unenumerated_nodes is
		do
			value := dispatch_to_unenumerated_nodes_low_level
		end

	set_none is
		do
			value := none_low_level
		end

feature {ANY} -- Queries
	is_dispatch_to_unenumerated_nodes: BOOLEAN is
		do
			Result := (value=dispatch_to_unenumerated_nodes_low_level)
		end

	is_none: BOOLEAN is
		do
			Result := (value=none_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	dispatch_to_unenumerated_nodes_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DBUS_SUBTREE_FLAGS_DISPATCH_TO_UNENUMERATED_NODES"
 			}"
 		end

	none_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DBUS_SUBTREE_FLAGS_NONE"
 			}"
 		end


end -- class GDBUS_SUBTREE_FLAGS_ENUM
