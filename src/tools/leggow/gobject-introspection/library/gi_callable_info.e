deferred class GI_CALLABLE_INFO
   -- GICallableInfo — Struct representing a callable entity; currently a
   -- function (GI_FUNCTION_INFO), virtual function, (GI_VFUNC_INFO) or
   -- callback (GI_CALLBACK_INFO).  A callable has a list of arguments
   -- (GIArgInfo), a return type, direction and a flag which decides if it
   -- returns null.

inherit
   GI_BASE_INFO
   TRAVERSABLE[GI_ARG_INFO]
   undefine copy, is_equal, out_in_tagged_out_memory
      end

insert
   GICALLABLEINFO_EXTERNALS

feature {ANY}
<<<<<<< HEAD:src/tools/leggow/gobject-introspection/library/gi_callable_info.e
--	eiffel_wrapper: ABSTRACT_STRING is
--		local s: STRING
--		do
--			create s.with_capacity(512) -- half kilobytes is an euristic
--			s.append("foo")
--			if has_arguments then 
--				s.append(once "(")
--				s.append(once ")") 
--			end
--			s.append(" is%N%
--			%		-- @(1)i%N%
--			%	do%N%
--			%	end%N%
--			%")
--			Result:=s
--		end

feature {ANY}
   return_type: GI_TYPE_INFO is
=======
   return_type: GI_TYPE_INFO
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757:src/wrappers/gobject-introspection/library/gi_callable_info.e
         -- the return type of a callable item.
      do
         -- Implementation note: Free the struct by calling g_base_info_unref() when done. [transfer full]
         create Result.from_external_pointer(g_callable_info_get_return_type(handle))
      end

<<<<<<< HEAD:src/tools/leggow/gobject-introspection/library/gi_callable_info.e
   is_query: BOOLEAN is 
         -- Does Current callable return some values?
      do
		  Result := return_type.tag.is_void
		  not_yet_implemented
	  end


   caller_owns: BOOLEAN is
=======
   caller_owns: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757:src/wrappers/gobject-introspection/library/gi_callable_info.e
         -- DOes the caller owns the return value of this callable?
         -- Note: the library actually uses a GITransfer enum which contains a
         -- list of possible transfer values but it just use TRUE if the caller
         -- owns the return value, FALSE otherwise.
      do
         Result := g_callable_info_get_caller_owns(handle).to_boolean
      end

   may_return_null: BOOLEAN
         -- Can Current callable return a NULL value?
      do
         Result := g_callable_info_may_return_null(handle).to_boolean
      end

   return_attribute (a_name: ABSTRACT_STRING): FIXED_STRING
         -- An arbitrary attribute associated with the return value, named with the freeform string `a_name'.
         -- Void if no such attribute exists
      require
         a_name /= Void
         not a_name.is_empty
      local
         res: POINTER
      do
         res := g_callable_info_get_return_attribute(handle, a_name.to_external)
         if res.is_not_null then
            create Result.from_external(res)
         end
      end
      -- TODO:  g_callable_info_iterate_return_attributes ()
      -- gboolean            g_callable_info_iterate_return_attributes
      --                                                         (GICallableInfo *info,
      --                                                          GIAttributeIter *iterator,
      --                                                          char **name,
      --                                                          char **value);
      --
      --   Iterate over all attributes associated with the return value. The iterator structure is typically stack allocated, and
      --   must have its first member initialized to NULL.
      --
      --   Both the name and value should be treated as constants and must not be freed.
      --
      --   See g_base_info_iterate_attributes() for an example of how to use a similar API.
      --
      --   info :     a GICallableInfo
      --   iterator : a GIAttributeIter structure, must be initialized; see below
      --   name :     Returned name, must not be freed. [out][transfer none]
      --   value :    Returned name, must not be freed. [out][transfer none]
      --   Returns :  TRUE if there are more attributes
      --

feature {ANY} -- Indexing over arguments
   lower: INTEGER 0

   upper: INTEGER
      do
         Result := count - 1
      end

   count: INTEGER
      do
         Result := g_callable_info_get_n_args(handle)
         -- Obtain the number of arguments (both IN and OUT) for this callable.
      end

<<<<<<< HEAD:src/tools/leggow/gobject-introspection/library/gi_callable_info.e
	has_arguments: BOOLEAN is
		do
			Result := not is_empty
		end

   is_empty: BOOLEAN is
=======
   is_empty: BOOLEAN
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757:src/wrappers/gobject-introspection/library/gi_callable_info.e
      do
         Result := count = 0
      end

   item (i: INTEGER): GI_ARG_INFO
      do
         create Result.from_external_pointer(g_callable_info_get_arg(handle, i))
         -- Obtain information about a particular argument of this callable. Full ownership transfer full.
      end

        new_iterator: ITERATOR[GI_ARG_INFO]
        do
                create {ITERATOR_OVER_ARGUMENTS} Result.from_callable(Current)
        end

        first: GI_ARG_INFO do Result := item(lower) end
        last: GI_ARG_INFO do Result := item(upper) end

feature {} -- Unwrapperd

        --   g_callable_info_load_return_type and g_callable_info_load_arg () should not be necessary neither useful in Eiffel.

end -- class GI_CALLABLE_INFO

-- Copyright (C) 2013 Paolo Redaelli <paolo.redaelli@gmail.com>
--
-- This library is free software; you can redistribute it and/or
-- modify it under the terms of the GNU Lesser General Public License
-- as published by the Free Software Foundation; either version 2.1 of
-- the License, or (at your option) any later version.
--
-- This library is distributed in the hope that it will be useful, but
-- WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-- Lesser General Public License for more details.
--
-- You should have received a copy of the GNU Lesser General Public
-- License along with this library; if not, write to the Free Software
-- Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
-- 02110-1301 USA
