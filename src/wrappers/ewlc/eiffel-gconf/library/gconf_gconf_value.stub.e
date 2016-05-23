note
	description: "."
	copyright: "[
					Copyright (C) 2007 $EWLC_developer, $original_copyright_holder
					
					This library is free software; you can redistribute it and/or
					modify it under the terms of the GNU Lesser General Public License
					as published by the Free Software Foundation; either version 2.1 of
					the License, or (at your option) any later version.
					
					This library is distributed in the hopeOA that it will be useful, but
					WITHOUT ANY WARRANTY; without even the implied warranty of
					MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
					Lesser General Public License for more details.

					You should have received a copy of the GNU Lesser General Public
					License along with this library; if not, write to the Free Software
					Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
					02110-1301 USA
			]"

	wrapped_version: "Unknown"

class GCONF_GCONF_VALUE

inherit
	(SHARED_?)C_STRUCT

insert
	GCONF_GCONF_VALUE_EXTERNALS

create {ANY} make, from_external_pointer

feature {} -- Creation

	--   Link: GConf Reference Manual (start)
	--   Link: Using the GConf library (parent)
	--   Link: gconf-sources (previous)
	--   Link: GConf Core Interfaces (next)
	--   Link: Using the GConf library (chapter)
	--
	--   Prev Up Home                  GConf Reference Manual                  Next
	--   Top  |  Description
	--
	--   GConfValue, GConfEntry, GConfMetaInfo
	--
	--   GConfValue, GConfEntry, GConfMetaInfo -- A GConfValue stores a
	--   dynamically-typed value. A GConfEntry stores a key-value pair. A
	--   GConfMetaInfo stores metainformation about a key.
	--
	--Synopsis
	--
	--
	--
	--
	-- enum                GConfValueType;
	--                     GConfValue;
	-- #define             GCONF_VALUE_TYPE_VALID              (x)
	-- const char*         gconf_value_get_string              (const GConfValue *value);
	-- int                 gconf_value_get_int                 (const GConfValue *value);
	-- double              gconf_value_get_float               (const GConfValue *value);
	-- GConfValueType      gconf_value_get_list_type           (const GConfValue *value);
	-- GSList*             gconf_value_get_list                (const GConfValue *value);
	-- GConfValue*         gconf_value_get_car                 (const GConfValue *value);
	-- GConfValue*         gconf_value_get_cdr                 (const GConfValue *value);
	-- gboolean            gconf_value_get_bool                (const GConfValue *value);
	-- GConfSchema*        gconf_value_get_schema              (const GConfValue *value);
	-- GConfValue*         gconf_value_new                     (GConfValueType type);
	-- GConfValue*         gconf_value_new_from_string         (GConfValueType type,
	--                                                          const gchar *str,
	--                                                          GError **err);
	-- GConfValue*         gconf_value_copy                    (const GConfValue *src);
	-- void                gconf_value_free                    (GConfValue *value);
	-- void                gconf_value_set_int                 (GConfValue *value,
	--                                                          gint the_int);
	-- void                gconf_value_set_string              (GConfValue *value,
	--                                                          const gchar *the_str);
	-- void                gconf_value_set_float               (GConfValue *value,
	--                                                          gdouble the_float);
	-- void                gconf_value_set_bool                (GConfValue *value,
	--                                                          gboolean the_bool);
	-- void                gconf_value_set_schema              (GConfValue *value,
	--                                                          const GConfSchema *sc);
	-- void                gconf_value_set_schema_nocopy       (GConfValue *value,
	--                                                          GConfSchema *sc);
	-- void                gconf_value_set_car                 (GConfValue *value,
	--                                                          const GConfValue *car);
	-- void                gconf_value_set_car_nocopy          (GConfValue *value,
	--                                                          GConfValue *car);
	-- void                gconf_value_set_cdr                 (GConfValue *value,
	--                                                          const GConfValue *cdr);
	-- void                gconf_value_set_cdr_nocopy          (GConfValue *value,
	--                                                          GConfValue *cdr);
	-- void                gconf_value_set_list_type           (GConfValue *value,
	--                                                          GConfValueType type);
	-- void                gconf_value_set_list_nocopy         (GConfValue *value,
	--                                                          GSList *list);
	-- void                gconf_value_set_list                (GConfValue *value,
	--                                                          GSList *list);
	-- gchar*              gconf_value_to_string               (const GConfValue *value);
	--                     GConfMetaInfo;
	-- GConfMetaInfo*      gconf_meta_info_new                 (void);
	-- void                gconf_meta_info_free                (GConfMetaInfo *gcmi);
	-- const char*         gconf_meta_info_get_schema          (GConfMetaInfo *gcmi);
	-- const char*         gconf_meta_info_get_mod_user        (GConfMetaInfo *gcmi);
	-- GTime               gconf_meta_info_mod_time            (GConfMetaInfo *gcmi);
	-- void                gconf_meta_info_set_schema          (GConfMetaInfo *gcmi,
	--                                                          const gchar *schema_name);
	-- void                gconf_meta_info_set_mod_user        (GConfMetaInfo *gcmi,
	--                                                          const gchar *mod_user);
	-- void                gconf_meta_info_set_mod_time        (GConfMetaInfo *gcmi,
	--                                                          GTime mod_time);
	--                     GConfEntry;
	-- const char*         gconf_entry_get_key                 (const GConfEntry *entry);
	-- GConfValue*         gconf_entry_get_value               (const GConfEntry *entry);
	-- const char*         gconf_entry_get_schema_name         (const GConfEntry *entry);
	-- gboolean            gconf_entry_get_is_default          (const GConfEntry *entry);
	-- gboolean            gconf_entry_get_is_writable         (const GConfEntry *entry);
	-- GConfEntry*         gconf_entry_new                     (const gchar *key,
	--                                                          const GConfValue *val);
	-- GConfEntry*         gconf_entry_new_nocopy              (gchar *key,
	--                                                          GConfValue *val);
	-- GConfEntry*         gconf_entry_copy                    (const GConfEntry *src);
	-- void                gconf_entry_free                    (GConfEntry *entry);
	-- void                gconf_entry_ref                     (GConfEntry *entry);
	-- void                gconf_entry_unref                   (GConfEntry *entry);
	-- GConfValue*         gconf_entry_steal_value             (GConfEntry *entry);
	-- void                gconf_entry_set_value               (GConfEntry *entry,
	--                                                          const GConfValue *val);
	-- void                gconf_entry_set_value_nocopy        (GConfEntry *entry,
	--                                                          GConfValue *val);
	-- void                gconf_entry_set_schema_name         (GConfEntry *entry,
	--                                                          const gchar *name);
	-- void                gconf_entry_set_is_default          (GConfEntry *entry,
	--                                                          gboolean is_default);
	-- void                gconf_entry_set_is_writable         (GConfEntry *entry,
	--                                                          gboolean is_writable);
	--
	--Description
	--
	--   GConfValue stores one of the value types GConf understands; GConf uses
	--   GConfValue to pass values around because it doesn't know the type of its
	--   values at compile time.
	--
	--   A GConfEntry pairs a relative key name with a value, for example if the
	--   value "10" is stored at the key "/foo/bar/baz", the GConfEntry will store
	--   "baz" and "10".
	--
	--   A GConfMetaInfo object holds metainformation about a key, such as its last
	--   modification time and the name of the schema associated with it. You
	--   should rarely if ever need to use GConfMetaInfo. (In fact you can't get
	--   the metainfo for a key using the current API.)
	--
	--Details
	--
	--  enum GConfValueType
	--
	-- typedef enum {
	--   GCONF_VALUE_INVALID,
	--   GCONF_VALUE_STRING,
	--   GCONF_VALUE_INT,
	--   GCONF_VALUE_FLOAT,
	--   GCONF_VALUE_BOOL,
	--   GCONF_VALUE_SCHEMA,
	--
	--   /* unfortunately these aren't really types; we want list_of_string,
	--      list_of_int, etc.  but it's just too complicated to implement.
	--      instead we'll complain in various places if you do something
	--      moronic like mix types in a list or treat pair<string,int> and
	--      pair<float,bool> as the same type. */
	--   GCONF_VALUE_LIST,
	--   GCONF_VALUE_PAIR
	--
	-- } GConfValueType;
	--
	--   Used to indicate the type of a GConfValue.
	--
	--   GCONF_VALUE_INVALID Never the type of a GConfValue obtained from GConf
	--                       functions; used to indicate errors and the like.
	--   GCONF_VALUE_STRING  String value (gchar*).
	--   GCONF_VALUE_INT     Integer value (gint).
	--   GCONF_VALUE_FLOAT   Floating point value (gdouble).
	--   GCONF_VALUE_BOOL    Boolean value (gboolean).
	--   GCONF_VALUE_SCHEMA  Schema value (GConfSchema).
	--   GCONF_VALUE_LIST    List of GConfValue; GConfValue elements must have a
	--                       primitive type (i.e. they may not be lists or pairs),
	--                       and all elements of a list must have the same type.
	--   GCONF_VALUE_PAIR    Pair of GConfValue; the first field (car) and the
	--                       second field (cdr) may have different types. The two
	--                       elements of a pair must be primitive types, not lists
	--                       or pairs.
	--
	--   --------------------------------------------------------------------------
	--
	--  GConfValue
	--
	-- typedef struct {
	--   GConfValueType type;
	-- } GConfValue;
	--
	--   Represents a dynamically-typed value. The type field tells you the type of
	--   the value; the other fields should be accessed with the accessor functions
	--   and macros.
	--
	--   A GConfValue should always be initialized before use. That is, you should
	--   not use a GConfValue unless you have called one of the functions beginning
	--   with "gconf_value_set_".. For lists, initialization has two steps: first
	--   you must set the list element type, then you must set the list value.
	--
	--   GConfValueType type; The GConfValueType of this GConfValue. The only field
	--                        of GConfValue you should access directly.
	--
	--   --------------------------------------------------------------------------
	--
	--  GCONF_VALUE_TYPE_VALID()
	--
	-- #define GCONF_VALUE_TYPE_VALID(x) (((x) > GCONF_VALUE_INVALID) && ((x) <= GCONF_VALUE_PAIR))
	--
	--   x :
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_value_get_string ()
	--
	-- const char*         gconf_value_get_string              (const GConfValue *value);
	--
	--   Returns a const gchar* for a GConfValue with type GCONF_VALUE_STRING. The
	--   returned string is not a copy, don't try to free it. It is "owned" by the
	--   GConfValue and will be destroyed when the GConfValue is destroyed.
	--
	--   If the GConfValue is not initialized (i.e. no one has called
	--   gconf_value_set_string()) then the string may be NULL, but of course you
	--   should not try to use an uninitialized GConfValue.
	--
	--   value :   a GConfValue.
	--   Returns : a const char*.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_value_get_int ()
	--
	-- int                 gconf_value_get_int                 (const GConfValue *value);
	--
	--   Returns a gint for a GConfValue with type GCONF_VALUE_INT.
	--
	--   value :   a GConfValue.
	--   Returns : a gint.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_value_get_float ()
	--
	-- double              gconf_value_get_float               (const GConfValue *value);
	--
	--   Returns a gdouble for a GConfValue with type GCONF_VALUE_FLOAT.
	--
	--   value :   a GConfValue.
	--   Returns : a gdouble.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_value_get_list_type ()
	--
	-- GConfValueType      gconf_value_get_list_type           (const GConfValue *value);
	--
	--   Returns the type of the list elements in a GConfValue with type
	--   GCONF_VALUE_LIST.
	--
	--   value :   a GConfValue.
	--   Returns : the type of the list elements (a primitive type).
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_value_get_list ()
	--
	-- GSList*             gconf_value_get_list                (const GConfValue *value);
	--
	--   Returns a GSList containing GConfValue objects. Each GConfValue in the
	--   returned list will have the type returned by gconf_value_get_list_type().
	--   Remember that the empty GSList is equal to NULL. The list is not a copy;
	--   it is "owned" by the GConfValue and will be destroyed when the GConfValue
	--   is destroyed.
	--
	--   value :   a GConfValue.
	--   Returns : a GList.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_value_get_car ()
	--
	-- GConfValue*         gconf_value_get_car                 (const GConfValue *value);
	--
	--   Returns the first member (car) of a GConfValue with type GCONF_VALUE_PAIR.
	--   The car is another GConfValue, with a primitive type (bool, int, float,
	--   string, schema).
	--
	--   The returned value is not a copy; it is "owned" by the pair and will be
	--   destroyed when the pair is destroyed.
	--
	--   value :   a GConfValue.
	--   Returns : the first member of a pair, a primitive type.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_value_get_cdr ()
	--
	-- GConfValue*         gconf_value_get_cdr                 (const GConfValue *value);
	--
	--   Returns the second member (cdr) of a GConfValue with type
	--   GCONF_VALUE_PAIR. The cdr is another GConfValue, with a primitive type
	--   (bool, int, float, string, schema).
	--
	--   The returned value is not a copy; it is "owned" by the pair and will be
	--   destroyed when the pair is destroyed.
	--
	--   value :   a GConfValue.
	--   Returns : the second member of a pair, a primitive type.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_value_get_bool ()
	--
	-- gboolean            gconf_value_get_bool                (const GConfValue *value);
	--
	--   Returns a gboolean for a GConfValue with type GCONF_VALUE_BOOL.
	--
	--   value :   a GConfValue.
	--   Returns : a gboolean value.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_value_get_schema ()
	--
	-- GConfSchema*        gconf_value_get_schema              (const GConfValue *value);
	--
	--   Returns a GConfSchema for a GConfValue with type GCONF_VALUE_SCHEMA. If
	--   the GConfValue is uninitialized, it may return NULL; but of course you
	--   should have initialized the GConfValue. The GConf library will not return
	--   values with a NULL schema.
	--
	--   The returned value is not a copy; it is "owned" by the GConfValue and will
	--   be destroyed when the GConfValue is destroyed.
	--
	--   value :   a GConfValue.
	--   Returns : a GConfSchema.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_value_new ()
	--
	-- GConfValue*         gconf_value_new                     (GConfValueType type);
	--
	--   Creates a new GConfValue with type type. The type is immutable after
	--   creation; values have a fixed type. You must initialize the GConfValue
	--   after creation; that is, you must set its value with one of the "setter"
	--   functions.
	--
	--   type :    type of the new GConfValue.
	--   Returns : newly-allocated GConfValue.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_value_new_from_string ()
	--
	-- GConfValue*         gconf_value_new_from_string         (GConfValueType type,
	--                                                          const gchar *str,
	--                                                          GError **err);
	--
	--   Creates a new GConfValue with type type and value set to the string
	--   passed. Based on the value of type, this function does the appropriate
	--   conversion of the string passed to the type, does error checks to ensure
	--   the value is valid, and then calls the appropriate gconf_set function
	--   depending on the type to set the value.
	--
	--   type :    type of the new GConfValue.
	--   str :     the return location for an allocated GError, or NULL to ignore
	--             errors.
	--   err :     the value to be set.
	--   Returns : the value to be set.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_value_copy ()
	--
	-- GConfValue*         gconf_value_copy                    (const GConfValue *src);
	--
	--   Copies a GConfValue. The copy is a deep copy, that is, any allocated
	--   memory inside the GConfValue will also be copied.
	--
	--   src :     a GConfValue to copy.
	--   Returns : a newly-allocated GConfValue identical to src.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_value_free ()
	--
	-- void                gconf_value_free                    (GConfValue *value);
	--
	--   Deallocates a GConfValue. Also deallocates any allocated memory inside the
	--   GConfValue (such as lists, pair members, strings, and schemas).
	--
	--   value : a GConfValue to destroy.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_value_set_int ()
	--
	-- void                gconf_value_set_int                 (GConfValue *value,
	--                                                          gint the_int);
	--
	--   Sets the value of a GConfValue with type GCONF_VALUE_INT.
	--
	--   value :   a GConfValue of type GCONF_VALUE_INT.
	--   the_int : the integer.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_value_set_string ()
	--
	-- void                gconf_value_set_string              (GConfValue *value,
	--                                                          const gchar *the_str);
	--
	--   Sets the value of a GConfValue with type GCONF_VALUE_STRING. the_str is
	--   copied.
	--
	--   value :   a GConfValue of type GCONF_VALUE_STRING.
	--   the_str : the string.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_value_set_float ()
	--
	-- void                gconf_value_set_float               (GConfValue *value,
	--                                                          gdouble the_float);
	--
	--   Sets the value of a GConfValue with type GCONF_VALUE_FLOAT.
	--
	--   value :     a GConfValue of type GCONF_VALUE_FLOAT.
	--   the_float : the floating point number.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_value_set_bool ()
	--
	-- void                gconf_value_set_bool                (GConfValue *value,
	--                                                          gboolean the_bool);
	--
	--   Sets the value of a GConfValue with type GCONF_VALUE_BOOL.
	--
	--   value :    a GConfValue of type GCONF_VALUE_BOOL.
	--   the_bool : a boolean value (TRUE or FALSE).
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_value_set_schema ()
	--
	-- void                gconf_value_set_schema              (GConfValue *value,
	--                                                          const GConfSchema *sc);
	--
	--   Sets the value of a GConfValue with type GCONF_VALUE_SCHEMA. The
	--   GConfSchema is copied. Alternatively you can use
	--   gconf_value_set_schema_nocopy().
	--
	--   value : a GConfValue with type GCONF_VALUE_SCHEMA.
	--   sc :    the GConfSchema.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_value_set_schema_nocopy ()
	--
	-- void                gconf_value_set_schema_nocopy       (GConfValue *value,
	--                                                          GConfSchema *sc);
	--
	--   Sets the value of a GConfValue with type GCONF_VALUE_SCHEMA. The
	--   GConfSchema is not copied; the GConfValue takes ownership of it, and it
	--   should only be accessed via the gconf_value_get_schema() macro. This
	--   function is provided as a more efficient version of
	--   gconf_value_set_schema().
	--
	--   value : a GConfValue with type GCONF_VALUE_SCHEMA.
	--   sc :    the GConfSchema.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_value_set_car ()
	--
	-- void                gconf_value_set_car                 (GConfValue *value,
	--                                                          const GConfValue *car);
	--
	--   Sets the value of the first field (car) of a GConfValue with type
	--   GCONF_VALUE_PAIR. The GConfValue is copied. Alternatively, use
	--   gconf_value_set_car_nocopy().
	--
	--   value : a GConfValue with type GCONF_VALUE_PAIR.
	--   car :   the GConfValue to set as the car of the pair.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_value_set_car_nocopy ()
	--
	-- void                gconf_value_set_car_nocopy          (GConfValue *value,
	--                                                          GConfValue *car);
	--
	--   Sets the value of the first field (car) of a GConfValue with type
	--   GCONF_VALUE_PAIR. The GConfValue is not copied; the GConfValue takes
	--   ownership of it. Alternatively, use gconf_value_set_car().
	--
	--   value : a GConfValue with type GCONF_VALUE_PAIR.
	--   car :   the GConfValue to set as the car of the pair.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_value_set_cdr ()
	--
	-- void                gconf_value_set_cdr                 (GConfValue *value,
	--                                                          const GConfValue *cdr);
	--
	--   Sets the value of the second field (cdr) of a GConfValue with type
	--   GCONF_VALUE_PAIR. The GConfValue is copied. Alternatively, use
	--   gconf_value_set_cdr_nocopy().
	--
	--   value : a GConfValue with type GCONF_VALUE_PAIR.
	--   cdr :   the GConfValue to set as the cdr of the pair.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_value_set_cdr_nocopy ()
	--
	-- void                gconf_value_set_cdr_nocopy          (GConfValue *value,
	--                                                          GConfValue *cdr);
	--
	--   Sets the value of the second field (cdr) of a GConfValue with type
	--   GCONF_VALUE_PAIR. The GConfValue is not copied; the GConfValue takes
	--   ownership of it. Alternatively, use gconf_value_set_cdr().
	--
	--   value : a GConfValue with type GCONF_VALUE_PAIR.
	--   cdr :   the GConfValue to set as the cdr of the pair.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_value_set_list_type ()
	--
	-- void                gconf_value_set_list_type           (GConfValue *value,
	--                                                          GConfValueType type);
	--
	--   Sets the type of the elements in a GConfValue of type GCONF_VALUE_LIST.
	--   All the elements in the list must have the same type. You must set the
	--   list type before you can set the list value.
	--
	--   value : a GConfValue with type GCONF_VALUE_LIST.
	--   type :  the type of elements in this list.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_value_set_list_nocopy ()
	--
	-- void                gconf_value_set_list_nocopy         (GConfValue *value,
	--                                                          GSList *list);
	--
	--   Sets the value of a GConfValue with type GCONF_VALUE_LIST. The list
	--   argument should be a GSList of GConfValue. Each GConfValue in the list
	--   must have the same type, and this type must be specified in advance with
	--   gconf_value_set_list_type(). This function does not copy the list; the
	--   GConfValue will take ownership of the list and its contents, and they will
	--   be destroyed when the GConfValue is destroyed. Alternatively, use
	--   gconf_value_set_list() to make a copy.
	--
	--   value : a GConfValue with type GCONF_VALUE_LIST.
	--   list :  the GSList of GConfValue to set as the list value.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_value_set_list ()
	--
	-- void                gconf_value_set_list                (GConfValue *value,
	--                                                          GSList *list);
	--
	--   Sets the value of a GConfValue with type GCONF_VALUE_LIST. The list
	--   argument should be a GSList of GConfValue. Each GConfValue in the list
	--   must have the same type, and this type must be specified in advance with
	--   gconf_value_set_list_type(). This function copies the list; it will not
	--   modify the list argument.
	--
	--   value : a GConfValue with type GCONF_VALUE_LIST.
	--   list :  the GSList of GConfValue to set as the list value.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_value_to_string ()
	--
	-- gchar*              gconf_value_to_string               (const GConfValue *value);
	--
	--   Creates a human-readable string representation of a GConfValue. This is
	--   intended for debugging and the like; the string representation is not
	--   suitable for reliable machine parsing (that is, you shouldn't use this
	--   function to save a value to a file or anything like that). The exact
	--   nature of the string representation may change in future versions. The
	--   returned string is newly-allocated and must be freed with g_free().
	--
	--   value :   a GConfValue.
	--   Returns : a newly-allocated string representing the GConfValue.
	--
	--   --------------------------------------------------------------------------
	--
	--  GConfMetaInfo
	--
	-- typedef struct {
	--   gchar* schema;
	--   gchar* mod_user; /* user owning the daemon that made the last modification */
	--   GTime  mod_time; /* time of the modification */
	-- } GConfMetaInfo;
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_meta_info_new ()
	--
	-- GConfMetaInfo*      gconf_meta_info_new                 (void);
	--
	--   Creates a new GConfMetaInfo structure and returns the newly allocated
	--   GConfMetaInfo.
	--
	--   Returns : the newly allocated GConfMetainfo.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_meta_info_free ()
	--
	-- void                gconf_meta_info_free                (GConfMetaInfo *gcmi);
	--
	--   Frees the GConfMetaInfo.
	--
	--   gcmi : the GConfMetaInfo to be freed.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_meta_info_get_schema ()
	--
	-- const char*         gconf_meta_info_get_schema          (GConfMetaInfo *gcmi);
	--
	--   Returns the schema field of the GConfMetaInfo.
	--
	--   gcmi :    a GConfMetaInfo.
	--   Returns : the schema field, a char* value.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_meta_info_get_mod_user ()
	--
	-- const char*         gconf_meta_info_get_mod_user        (GConfMetaInfo *gcmi);
	--
	--   Returns the user owning the daemon that made the last modification of the
	--   key.
	--
	--   gcmi :    a GConfMetaInfo.
	--   Returns : mod_user, a char* value.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_meta_info_mod_time ()
	--
	-- GTime               gconf_meta_info_mod_time            (GConfMetaInfo *gcmi);
	--
	--   Returns the last modification time of the key.
	--
	--   gcmi :    a GConfMetaInfo.
	--   Returns : the mod_time, a GTime value.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_meta_info_set_schema ()
	--
	-- void                gconf_meta_info_set_schema          (GConfMetaInfo *gcmi,
	--                                                          const gchar *schema_name);
	--
	--   Sets the schema_name field of the GConfMetaInfo to the name passed.
	--
	--   gcmi :        a GConfMetaInfo.
	--   schema_name : the name to be set for the schema, a gchar* value.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_meta_info_set_mod_user ()
	--
	-- void                gconf_meta_info_set_mod_user        (GConfMetaInfo *gcmi,
	--                                                          const gchar *mod_user);
	--
	--   Sets the mod_user field of the GConfMetaInfo to the user name passed.
	--
	--   gcmi :     a GConfMetaInfo.
	--   mod_user : the value to be set, a char*.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_meta_info_set_mod_time ()
	--
	-- void                gconf_meta_info_set_mod_time        (GConfMetaInfo *gcmi,
	--                                                          GTime mod_time);
	--
	--   Sets the mod_last field of the GConfMetaInfo to the mod_time passed.
	--
	--   gcmi :     a GConfMetaInfo.
	--   mod_time : a GTime.
	--
	--   --------------------------------------------------------------------------
	--
	--  GConfEntry
	--
	-- typedef struct {
	--   char *key;
	--   GConfValue *value;
	-- } GConfEntry;
	--
	--   Stores an entry from a GConf "directory," including a key-value pair, the
	--   name of the schema applicable to this entry, whether the value is a
	--   default value, and whether GConf can write a new value at this key. key
	--   should be an absolute key, not a relative key. (Note that internally GConf
	--   breaks this rule sometimes; but in the public interface, key is always an
	--   absolute key.) To access the key and value, use gconf_entry_get_key() and
	--   gconf_entry_get_value().
	--
	--  Warning
	--
	--   Value can be NULL, indicating that the value is not set.
	--
	--   char *key;         an absolute key name.
	--   GConfValue *value; the value.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_entry_get_key ()
	--
	-- const char*         gconf_entry_get_key                 (const GConfEntry *entry);
	--
	--   Accesses the key field of a GConfEntry. The returned key is not a copy,
	--   and should not be freed or modified.
	--
	--   entry :   a GConfEntry.
	--   Returns : the key , a char*.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_entry_get_value ()
	--
	-- GConfValue*         gconf_entry_get_value               (const GConfEntry *entry);
	--
	--   Accesses the value field of a GConfEntry. The returned value is not a
	--   copy, and should not be freed or modified. If you have called
	--   gconf_entry_steal_value(), the returned value will be NULL.
	--
	--   entry :   a GConfEntry.
	--   Returns : a GConfValue.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_entry_get_schema_name ()
	--
	-- const char*         gconf_entry_get_schema_name         (const GConfEntry *entry);
	--
	--   Returns the schema_name field of the GConfEntry.
	--
	--   entry :   a GConfEntry.
	--   Returns : the schema_name , a char* value.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_entry_get_is_default ()
	--
	-- gboolean            gconf_entry_get_is_default          (const GConfEntry *entry);
	--
	--   Returns the is_default field of the GConfEntry , a gboolean value.
	--
	--   entry :   a GConfEntry.
	--   Returns : a gboolean value.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_entry_get_is_writable ()
	--
	-- gboolean            gconf_entry_get_is_writable         (const GConfEntry *entry);
	--
	--   Returns the is_writable field of the GConfEntry, a gboolean value.
	--
	--   entry :   a GConfEntry.
	--   Returns : a gboolean value.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_entry_new ()
	--
	-- GConfEntry*         gconf_entry_new                     (const gchar *key,
	--                                                          const GConfValue *val);
	--
	--   Creates a new GConfEntry with key key and value val calling
	--   gconf_entry_new_nocopy().
	--
	--   key :     the key name.
	--   val :     the value.
	--   Returns : a new GConfEntry.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_entry_new_nocopy ()
	--
	-- GConfEntry*         gconf_entry_new_nocopy              (gchar *key,
	--                                                          GConfValue *val);
	--
	--   Creates a new GConfEntry with key key and value val. key should be a full
	--   path to the key, starting with '/'. Neither the key nor the value is
	--   copied; both are freed when the GConfEntry is freed. The string will be
	--   freed with g_free() so should be allocated with a GLib function, not
	--   malloc().
	--
	--   key :     the key name.
	--   val :     the value.
	--   Returns : a new GConfEntry.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_entry_copy ()
	--
	-- GConfEntry*         gconf_entry_copy                    (const GConfEntry *src);
	--
	--   Copies the fields of an existing GConfEntry and returns the new
	--   GConfEntry.
	--
	--   src :     the GConfEntry to be copied.
	--   Returns : the new GConfEntry.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_entry_free ()
	--
	-- void                gconf_entry_free                    (GConfEntry *entry);
	--
	--  Warning
	--
	--   gconf_entry_free is deprecated and should not be used in newly-written
	--   code.
	--
	--   Destroys a GConfEntry, freeing the key, the value, and the entry itself.
	--
	--   entry : a GConfEntry to free.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_entry_ref ()
	--
	-- void                gconf_entry_ref                     (GConfEntry *entry);
	--
	--   Increases the refcount of a GConfEntry by one.
	--
	--   entry : a GConfEntry.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_entry_unref ()
	--
	-- void                gconf_entry_unref                   (GConfEntry *entry);
	--
	--   Decreases the refcount of a GConfEntry by one and frees the GConfEntry
	--   when the refcount becomes zero.
	--
	--   entry : a GConfEntry.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_entry_steal_value ()
	--
	-- GConfValue*         gconf_entry_steal_value             (GConfEntry *entry);
	--
	--   Extracts the value from a GConfEntry, leaving the value field in
	--   GConfEntry set to NULL. Destroying the GConfEntry will not destroy the
	--   value; the caller of gconf_entry_steal_value() assumes ownership of it.
	--
	--   entry :   a GConfEntry.
	--   Returns : a GConfValue that the caller must free.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_entry_set_value ()
	--
	-- void                gconf_entry_set_value               (GConfEntry *entry,
	--                                                          const GConfValue *val);
	--
	--   Sets the value field of the GConfEntry to the GConfValue passed.
	--
	--   entry : a GConfEntry.
	--   val :   a GConfValue.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_entry_set_value_nocopy ()
	--
	-- void                gconf_entry_set_value_nocopy        (GConfEntry *entry,
	--                                                          GConfValue *val);
	--
	--   Sets the value field to val after freeing the already existing value.
	--
	--   entry : a GConfEntry.
	--   val :   the GConfValue to be set.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_entry_set_schema_name ()
	--
	-- void                gconf_entry_set_schema_name         (GConfEntry *entry,
	--                                                          const gchar *name);
	--
	--   Sets the schema_name field of the GConfEntry to the name passed after
	--   freeing the already existing name.
	--
	--   entry : a GConfEntry.
	--   name :  the name to be set for the schema, a gchar* value.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_entry_set_is_default ()
	--
	-- void                gconf_entry_set_is_default          (GConfEntry *entry,
	--                                                          gboolean is_default);
	--
	--   Sets the is_default field of the GConfEntry to the boolean value passed.
	--
	--   entry :      a GConfEntry.
	--   is_default : the boolean value to be set.
	--
	--   --------------------------------------------------------------------------
	--
	--  gconf_entry_set_is_writable ()
	--
	-- void                gconf_entry_set_is_writable         (GConfEntry *entry,
	--                                                          gboolean is_writable);
	--
	--   Sets the is_writable field of the GConfEntry to the boolean value passed.
	--
	--   entry :       a GConfEntry.
	--   is_writable : a boolean value.

end -- class GCONF_GCONF_VALUE
