-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GTKSCROLLBAR_EXTERNALS


inherit ANY undefine is_equal, copy end

		-- TODO: insert typedefs class
feature {} -- External calls

	gtk_scrollbar_get_type: NATURAL_32 is
 		-- gtk_scrollbar_get_type (node at line 35499)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtk_scrollbar_get_type()"
		}"
		end


end -- class GTKSCROLLBAR_EXTERNALS