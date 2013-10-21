-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GDKIMAGE_EXTERNALS


insert ANY undefine is_equal, copy end

		STANDARD_C_LIBRARY_TYPES
feature {} -- External calls

	gdk_image_get_type: like long_unsigned is
 		-- gdk_image_get_type
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gdk_image_get_type()"
		}"
		end


end -- class GDKIMAGE_EXTERNALS
