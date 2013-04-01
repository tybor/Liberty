class GI_REPOSITORY
	-- Gnome Introspection Repository 

	-- This type is a singleton: there is exactly one object of this type in a process

	-- It provides information to all the features of libraries, classes and functions provided by

inherit 
	WRAPPER
		redefine default_create end 
	C_OWNED
		redefine default_create end 
	-- Note: it actually is a G_OBJECT but it is almost not relevant for the use we are going to make of GIr

insert 
	SINGLETON 
		redefine default_create end 
	GIREPOSITORY_EXTERNALS

creation default_create 

feature {}
	default_create is
   		-- Creates the singleton process-global default GIRepository.
		
		-- It is not currently supported to have multiple repositories in a
		-- particular process, but this function is provided in the unlikely
		-- eventuality that it would become possible, and as a convenience for
		-- higher level language bindings to conform to the GObject method call
		-- conventions.

		do
			from_external_pointer(g_irepository_get_default);

			-- Note: All methods (C functions) on GIRepository also accept NULL as an instance parameter to mean this default repository, which is usually more convenient for C.
		end

feature 
 	prepend_search_path (a_directory: ABSTRACT_STRING) is
		-- Prepends `a_directory' to the search path that is used to search
		-- shared libraries referenced by imported namespaces.  Multiple calls
		-- to this function all contribute to the final list of paths. The list
		-- of paths is unique and shared for all GIRepository instances across
		-- the process, but it doesn't affect namespaces imported before the
		-- call.

		-- If the library is not found in the directories configured in this
		-- way, loading will fall back to the system library path (ie.
		-- LD_LIBRARY_PATH and DT_RPATH in ELF systems). See the documentation
		-- of your dynamic linker for full details.
	do
		g_irepository_prepend_library_path (a_directory.to_external)
	end

 --   -----------------------------------------------------------------------------------------------------------------------
 --
 --  g_irepository_get_search_path ()
 --
 -- GSList *            g_irepository_get_search_path       (void);
 --
 --   Returns the search path the GIRepository will use when looking for typelibs. The string is internal to GIRespository
 --   and should not be freed, nor should the elements.
 --
 --   Returns : list of strings. [element-type filename][transfer none]
 --
 --   -----------------------------------------------------------------------------------------------------------------------
 --
 --  g_irepository_load_typelib ()
 --
 -- const char *        g_irepository_load_typelib          (GIRepository *repository,
 --                                                          GITypelib *typelib,
 --                                                          GIRepositoryLoadFlags flags,
 --                                                          GError **error);
 --
 --   -----------------------------------------------------------------------------------------------------------------------
 --
 --  g_irepository_is_registered ()
 --
 -- gboolean            g_irepository_is_registered         (GIRepository *repository,
 --                                                          const gchar *namespace_,
 --                                                          const gchar *version);
 --
 --   Check whether a particular namespace (and optionally, a specific version thereof) is currently loaded. This function is
 --   likely to only be useful in unusual circumstances; in order to act upon metadata in the namespace, you should call
 --   g_irepository_require() instead which will ensure the namespace is loaded, and return as quickly as this function will
 --   if it has already been loaded.
 --
 --   repository : A GIRepository, may be NULL for the default. [allow-none]
 --   namespace_ : Namespace of interest
 --   version :    Required version, may be NULL for latest. [allow-none]
 --   Returns :    TRUE if namespace-version is loaded, FALSE otherwise
 --
 --   -----------------------------------------------------------------------------------------------------------------------
 --
	find_by_name (a_name_space, a_name: ABSTRACT_STRING): GI_BASE_INFO is
		-- Searches for `a_name' entry in `a_namespace'. Before calling this function for a particular namespace, you must call
		--  `load' once to load the namespace, or otherwise ensure the namespace has already been loaded.
 		
		--   namespace_ : Namespace which will be searched
 		--   Returns :    GIBaseInfo representing metadata about name, or NULL. [transfer full]

		-- Note: `load' feature is known as "require" in other languages. It has been renamed because "require" is a reserved word in Eiffel
	require 
		a_name_space /= Void
		a_name /= Void
	local p: POINTER
	do
		p := g_irepository_find_by_name (handle,a_namespace.to_external, a_name.to_external)
		if p.is_not_null then
			create Result.from_external_pointer(p)
		end
	end

	load (a_name_space, a_version: ABSTRACT_STRING): GI_TYPELIB is
		-- The GObject Introspection typelib object representing `a_name_space'
		-- (e.g. "Gtk"). It will force `a_name_space' to be loaded if it isn't
		-- already. If `a_name_space' is not loaded, this function will search
		-- for a ".typelib" file using the repository search path. In addition,
		-- `a_version' of namespace may be specified. If version is not
		-- specified, the latest will be used.

		-- TODO: add support for flags and error usage. 
		--   flags :      Set of GIRepositoryLoadFlags, may be 0
		--   error :      a GError.
 		local a_ptr: POINTER
		do
			a_ptr:=g_irepository_require(handle,a_name_space.to_external, null_or_string(a_version),
			0, -- GIRepositoryLoadFlags flags,
			default_pointer  -- GError **error);
			)
			if a_ptr.is_not_null then
				create Result.from_external_pointer(a_ptr)
			end
		end

	--
	--  g_irepository_require_private ()
	--
	-- GITypelib *         g_irepository_require_private       (GIRepository *repository,
	--                                                          const gchar *typelib_dir,
	--                                                          const gchar *namespace_,
	--                                                          const gchar *version,
	--                                                          GIRepositoryLoadFlags flags,
	--                                                          GError **error);
	--
	--   Force the namespace namespace_ to be loaded if it isn't already. If namespace_ is not loaded, this function will search
	--   for a ".typelib" file within the private directory only. In addition, a version version of namespace should be
	--   specified. If version is not specified, the latest will be used.
	--
	--   repository :  Repository, may be NULL for the default. [allow-none]
	--   typelib_dir : Private directory where to find the requested typelib
	--   namespace_ :  GI namespace to use, e.g. "Gtk"
	--   version :     Version of namespace, may be NULL for latest. [allow-none]
	--   flags :       Set of GIRepositoryLoadFlags, may be 0
	--   error :       a GError.
	--   Returns :     a pointer to the GITypelib if successful, NULL otherwise. [transfer none]
	--
	
	dependencies (a_namespace: ABSTRACT_STRING): TRAVERSABLE[STRING] is 
			-- All the transitive dependencies for 'a_namespace', including
			-- version. The strings are of the form "namespace-version".

			-- Note: The namespace must have already been loaded using a
			-- feature such as `load' before calling this.
		require namespace_no_void: a_namespace/=Void
		local ptr: POINTER
		do
			ptr := g_irepository_get_dependencies (handle, a_namespace.to_external)
			create {STRING_ARRAY} Result.from_external_null_array(ptr)
			-- TODO: STRING_ARRAY is extremely weak is  Zero-terminated string array of versioned dependencies. [transfer full]
		end
 
 --   -----------------------------------------------------------------------------------------------------------------------
 --
 --  g_irepository_get_loaded_namespaces ()
 --
 -- gchar **            g_irepository_get_loaded_namespaces (GIRepository *repository);
 --
 --   Return the list of currently loaded namespaces.
 --
 --   repository : A GIRepository, may be NULL for the default. [allow-none]
 --   Returns :    List of namespaces. [element-type utf8][transfer full]
 --
 --   -----------------------------------------------------------------------------------------------------------------------
 --
 --  g_irepository_find_by_gtype ()
 --
 -- GIBaseInfo *        g_irepository_find_by_gtype         (GIRepository *repository,
 --                                                          GType gtype);
 --
 --   Searches all loaded namespaces for a particular GType. Note that in order to locate the metadata, the namespace
 --   corresponding to the type must first have been loaded. There is currently no mechanism for determining the namespace
 --   which corresponds to an arbitrary GType - thus, this function will operate most reliably when you know the GType to
 --   originate from be from a loaded namespace.
 --
 --   repository : A GIRepository, may be NULL for the default. [allow-none]
 --   gtype :      GType to search for
 --   Returns :    GIBaseInfo representing metadata about type, or NULL. [transfer full]
 --
 --   -----------------------------------------------------------------------------------------------------------------------
 --
 --  g_irepository_get_n_infos ()
 --
 -- gint                g_irepository_get_n_infos           (GIRepository *repository,
 --                                                          const gchar *namespace_);
 --
 --   This function returns the number of metadata entries in given namespace namespace_. The namespace must have already
 --   been loaded before calling this function.
 --
 --   repository : A GIRepository, may be NULL for the default. [allow-none]
 --   namespace_ : Namespace to inspect
 --   Returns :    number of metadata entries
 --
 --   -----------------------------------------------------------------------------------------------------------------------
 --
 --  g_irepository_get_info ()
 --
 -- GIBaseInfo *        g_irepository_get_info              (GIRepository *repository,
 --                                                          const gchar *namespace_,
 --                                                          gint index);
 --
 --   This function returns a particular metadata entry in the given namespace namespace_. The namespace must have already
 --   been loaded before calling this function. See g_irepository_get_n_infos() to find the maximum number of entries.
 --
 --   repository : A GIRepository, may be NULL for the default. [allow-none]
 --   namespace_ : Namespace to inspect
 --   index :      0-based offset into namespace metadata for entry
 --   Returns :    GIBaseInfo containing metadata. [transfer full]
 --
 --   -----------------------------------------------------------------------------------------------------------------------
 --
 --  g_irepository_get_typelib_path ()
 --
 -- const gchar *       g_irepository_get_typelib_path      (GIRepository *repository,
 --                                                          const gchar *namespace_);
 --
 --   If namespace namespace_ is loaded, return the full path to the .typelib file it was loaded from. If the typelib for
 --   namespace namespace_ was included in a shared library, return the special string "$lt;builtin$gt;".
 --
 --   repository : Repository, may be NULL for the default. [allow-none]
 --   namespace_ : GI namespace to use, e.g. "Gtk"
 --   Returns :    Filesystem path (or $lt;builtin$gt;) if successful, NULL if namespace is not loaded
 --
 --   -----------------------------------------------------------------------------------------------------------------------
 --
 --  g_irepository_get_shared_library ()
 --
 -- const gchar *       g_irepository_get_shared_library    (GIRepository *repository,
 --                                                          const gchar *namespace_);
 --
 --   This function returns the full path to the shared C library associated with the given namespace namespace_. There may
 --   be no shared library path associated, in which case this function will return NULL.
 --
 --   Note: The namespace must have already been loaded using a function such as g_irepository_require() before calling this
 --   function.
 --
 --   repository : A GIRepository, may be NULL for the default. [allow-none]
 --   namespace_ : Namespace to inspect
 --   Returns :    Full path to shared library, or NULL if none associated
 --
 --   -----------------------------------------------------------------------------------------------------------------------
 --
 --  g_irepository_get_version ()
 --
 -- const gchar *       g_irepository_get_version           (GIRepository *repository,
 --                                                          const gchar *namespace_);
 --
 --   This function returns the loaded version associated with the given namespace namespace_.
 --
 --   Note: The namespace must have already been loaded using a function such as g_irepository_require() before calling this
 --   function.
 --
 --   repository : A GIRepository, may be NULL for the default. [allow-none]
 --   namespace_ : Namespace to inspect
 --   Returns :    Loaded version
 --
 --   -----------------------------------------------------------------------------------------------------------------------
 --
 --  g_irepository_get_option_group ()
 --
 -- GOptionGroup *      g_irepository_get_option_group      (void);
 --
 --   Obtain the option group for girepository, it's used by the dumper and for programs that wants to provide introspection
 --   information
 --
 --   Returns : the option group. [transfer full]
 --
 --   -----------------------------------------------------------------------------------------------------------------------
 --
 --  g_irepository_get_c_prefix ()
 --
 -- const gchar *       g_irepository_get_c_prefix          (GIRepository *repository,
 --                                                          const gchar *namespace_);
 --
 --   This function returns the "C prefix", or the C level namespace associated with the given introspection namespace. Each
 --   C symbol starts with this prefix, as well each GType in the library.
 --
 --   Note: The namespace must have already been loaded using a function such as g_irepository_require() before calling this
 --   function.
 --
 --   repository : A GIRepository, may be NULL for the default. [allow-none]
 --   namespace_ : Namespace to inspect
 --   Returns :    C namespace prefix, or NULL if none associated
 --
 --   -----------------------------------------------------------------------------------------------------------------------
 --
 --  g_irepository_dump ()
 --
 -- gboolean            g_irepository_dump                  (const char *arg,
 --                                                          GError **error);
 --
 --   Argument specified is a comma-separated pair of filenames; i.e. of the form "input.txt,output.xml". The input file
 --   should be a UTF-8 Unix-line-ending text file, with each line containing the name of a GType _get_type function.
 --
 --   The output file should already exist, but be empty. This function will overwrite its contents.
 --
 --   arg :     Comma-separated pair of input and output filenames
 --   error :   a GError
 --   Returns : TRUE on success, FALSE on error
 --
 --   -----------------------------------------------------------------------------------------------------------------------
 --
 --  g_irepository_enumerate_versions ()
 --
 -- GList *             g_irepository_enumerate_versions    (GIRepository *repository,
 --                                                          const gchar *namespace_);
 --
 --   Obtain an unordered list of versions (either currently loaded or available) for namespace_ in this repository.
 --
 --   repository : the repository. [allow-none]
 --   namespace_ : GI namespace, e.g. "Gtk"
 --   Returns :    the array of versions. [element-type utf8][transfer full]
 --
 --   -----------------------------------------------------------------------------------------------------------------------
 --
 --  G_IREPOSITORY_ERROR
 --
 -- #define G_IREPOSITORY_ERROR (g_irepository_error_quark ())
 --
 --   -----------------------------------------------------------------------------------------------------------------------
 --
 --  g_typelib_new_from_memory ()
 --
 -- GITypelib *         g_typelib_new_from_memory           (guint8 *memory,
 --                                                          gsize len,
 --                                                          GError **error);
 --
 --   Creates a new GITypelib from a memory location. The memory block pointed to by typelib will be automatically g_free()d
 --   when the repository is destroyed.
 --
 --   memory :  address of memory chunk containing the typelib
 --   len :     length of memory chunk containing the typelib
 --   error :   a GError
 --   Returns : the new GITypelib
 --
 --   -----------------------------------------------------------------------------------------------------------------------
 --
 --  g_typelib_new_from_const_memory ()
 --
 -- GITypelib *         g_typelib_new_from_const_memory     (const guint8 *memory,
 --                                                          gsize len,
 --                                                          GError **error);
 --
 --   Creates a new GITypelib from a memory location.
 --
 --   memory :  address of memory chunk containing the typelib
 --   len :     length of memory chunk containing the typelib
 --   error :   A GError
 --   Returns : the new GITypelib
 --
 --   -----------------------------------------------------------------------------------------------------------------------
 --
 --  g_typelib_new_from_mapped_file ()
 --
 -- GITypelib *         g_typelib_new_from_mapped_file      (GMappedFile *mfile,
 --                                                          GError **error);
 --
 --   Creates a new GITypelib from a GMappedFile.
 --
 --   mfile :   a GMappedFile, that will be free'd when the repository is destroyed
 --   error :   a GError
 --   Returns : the new GITypelib
 --
 --   -----------------------------------------------------------------------------------------------------------------------
 --
 --  g_typelib_free ()
 --
 -- void                g_typelib_free                      (GITypelib *typelib);
 --
 --   Free a GITypelib.
 --
 --   typelib : a GITypelib
 --
 --   -----------------------------------------------------------------------------------------------------------------------
 --
 --  g_typelib_symbol ()
 --
 -- gboolean            g_typelib_symbol                    (GITypelib *typelib,
 --                                                          const gchar *symbol_name,
 --                                                          gpointer *symbol);
 --
 --   Loads a symbol from GITypelib.
 --
 --   typelib :     the typelib
 --   symbol_name : name of symbol to be loaded
 --   symbol :      returns a pointer to the symbol value
 --   Returns :     TRUE on success
 --
 --   -----------------------------------------------------------------------------------------------------------------------
 --
 --  g_typelib_get_namespace ()
 --
 -- const gchar *       g_typelib_get_namespace             (GITypelib *typelib);
end -- class GI_REPOSITORY