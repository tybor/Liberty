-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GDK_TYPES


insert ANY undefine is_equal, copy end

	STANDARD_C_LIBRARY_TYPES

feature {ANY} -- C type definitions (typedefs)
<<<<<<< HEAD:src/wrappers/gdk2/library/externals/gdk_types.e
	gdk_wchar: NATURAL is
		-- typedef GdkWChar
=======
	giobject_info_ref_function: POINTER
		-- typedef GIObjectInfoRefFunction
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757:src/wrappers/gobject-introspection/library/externals/gobject_introspection_types.e
		-- Empty by design, used for anchored declarations.
	do
	ensure Result.is_default
	end

<<<<<<< HEAD:src/wrappers/gdk2/library/externals/gdk_types.e
	gdk_event_func: POINTER is
		-- typedef GdkEventFunc
=======
	giobject_info_unref_function: POINTER
		-- typedef GIObjectInfoUnrefFunction
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757:src/wrappers/gobject-introspection/library/externals/gobject_introspection_types.e
		-- Empty by design, used for anchored declarations.
	do
	ensure Result.is_default
	end

<<<<<<< HEAD:src/wrappers/gdk2/library/externals/gdk_types.e
	gdk_filter_func: POINTER is
		-- typedef GdkFilterFunc
=======
	giobject_info_get_value_function: POINTER
		-- typedef GIObjectInfoGetValueFunction
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757:src/wrappers/gobject-introspection/library/externals/gobject_introspection_types.e
		-- Empty by design, used for anchored declarations.
	do
	ensure Result.is_default
	end

<<<<<<< HEAD:src/wrappers/gdk2/library/externals/gdk_types.e
	gdk_input_function: POINTER is
		-- typedef GdkInputFunction
=======
	giobject_info_set_value_function: POINTER
		-- typedef GIObjectInfoSetValueFunction
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757:src/wrappers/gobject-introspection/library/externals/gobject_introspection_types.e
		-- Empty by design, used for anchored declarations.
	do
	ensure Result.is_default
	end

<<<<<<< HEAD:src/wrappers/gdk2/library/externals/gdk_types.e
	gdk_atom: POINTER is
		-- typedef GdkAtom
		-- Empty by design, used for anchored declarations.
	do
	ensure Result.is_default
	end

	-- GdkXEvent unwrappable: no wrapper type.
	gdk_native_window: NATURAL is
		-- typedef GdkNativeWindow
=======
	gifficlosure_callback: POINTER
		-- typedef GIFFIClosureCallback
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757:src/wrappers/gobject-introspection/library/externals/gobject_introspection_types.e
		-- Empty by design, used for anchored declarations.
	do
	ensure Result.is_default
	end

end
