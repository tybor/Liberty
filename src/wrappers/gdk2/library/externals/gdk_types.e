-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GDK_TYPES


insert ANY undefine is_equal, copy end

	STANDARD_C_LIBRARY_TYPES

feature {ANY} -- C type definitions (typedefs)
	gdk_wchar: NATURAL is
		-- typedef GdkWChar
		-- Empty by design, used for anchored declarations.
	do
	ensure Result.is_default
	end

	gdk_event_func: POINTER is
		-- typedef GdkEventFunc
		-- Empty by design, used for anchored declarations.
	do
	ensure Result.is_default
	end

	gdk_filter_func: POINTER is
		-- typedef GdkFilterFunc
		-- Empty by design, used for anchored declarations.
	do
	ensure Result.is_default
	end

	gdk_input_function: POINTER is
		-- typedef GdkInputFunction
		-- Empty by design, used for anchored declarations.
	do
	ensure Result.is_default
	end

	gdk_atom: POINTER is
		-- typedef GdkAtom
		-- Empty by design, used for anchored declarations.
	do
	ensure Result.is_default
	end

	-- GdkXEvent unwrappable: no wrapper type.
	gdk_native_window: NATURAL is
		-- typedef GdkNativeWindow
		-- Empty by design, used for anchored declarations.
	do
	ensure Result.is_default
	end

end
