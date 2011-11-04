-- This file is part of a Liberty Eiffel library.
-- See the full copyright at the end.
--
expanded class POINTER
   --
   -- References to objects meant to be exchanged with non-Eiffel software.
   --
   -- Note : An Eiffel POINTER is mapped as C type "Void *" or as
   -- Java "java.lang.Object" type.
   --

insert
   HASHABLE
      redefine out_in_tagged_out_memory, fill_tagged_out_memory
      end

   COMPARABLE
      redefine out_in_tagged_out_memory, fill_tagged_out_memory
      end

   STRING_HANDLER
      undefine copy, is_equal
	  redefine out_in_tagged_out_memory, fill_tagged_out_memory
      end

feature -- Comparability
	infix "<" (another: like Current): BOOLEAN is
		do
			Result := pointer_to_natural_32(Current)<pointer_to_natural_32 (another)
		end

feature {ANY}
   is_null: BOOLEAN is
         -- Is the external POINTER a NULL pointer ?
      do
         Result := not is_not_null
      end

   is_not_null: BOOLEAN is
         -- Is the external POINTER a non-NULL pointer ?
      external "built_in"
      end

   to_string: STRING is
      do
         string_buffer.clear_count
         Current.append_in(string_buffer)
         Result := string_buffer.twin
      end

   append_in (buffer: STRING) is
         -- Append on `str' a viewable version of `Current'.
      local
         storage: NATIVE_ARRAY[CHARACTER]; i: INTEGER
      do
         from
            storage := string_buffer.storage
            sprintf_pointer(storage, Current)
            i := 0
         until
            storage.item(i) = '%U'
         loop
            buffer.extend(storage.item(i))
            i := i + 1
         end
      end

   out_in_tagged_out_memory, fill_tagged_out_memory is
      do
         Current.append_in(tagged_out_memory)
      end

   hash_code: INTEGER is
      do
         Result := pointer_hash_code(Current)
      end

   infix "+" (offset: INTEGER): POINTER is
         -- `Current' moved by an offset of `offset' bytes.
      do
         Result := pointer_plus(Current, offset)
      end

   to_any: ANY is
         -- Dangerous forced conversion. This function assume that `Current'
         -- is really a reference to some Eiffel allocated object.
      obsolete "Use STORABLE instead"
      do
         Result := pointer_to_any(Current)
      end

feature {}
   sprintf_pointer (native_array: NATIVE_ARRAY[CHARACTER]; p: POINTER) is
      external "plug_in"
      alias "{
         location: "${sys}/runtime"
         module_name: "basic_sprintf"
         feature_name: "sprintf_pointer"
         }"
      end

   pointer_hash_code (p: POINTER): INTEGER is
      external "plug_in"
      alias "{
         location: "${sys}/runtime"
         module_name: "basic_pointer"
         feature_name: "pointer_hash_code"
         }"
      end

  pointer_to_natural_32 (p: POINTER): NATURAL_32 is
      external "plug_in"
      alias "{
         location: "${sys}/runtime"
         module_name: "basic_pointer"
         feature_name: "pointer_to_natural_32"
         }"
      end


   pointer_to_any (p: POINTER): ANY is
         -- Dangerous forced conversion. This function assume that `p' is
         -- really a reference to some Eiffel allocated object.
      external "plug_in"
      alias "{
         location: "${sys}/runtime"
         module_name: "basic_pointer"
         feature_name: "pointer_to_any"
         }"
      end

   pointer_plus (p: POINTER; offset: INTEGER): POINTER is
         -- Pointer `p' moved by an offset of `offset' bytes.
      external "plug_in"
      alias "{
         location: "${sys}/runtime"
         module_name: "basic_pointer"
         feature_name: "pointer_plus"
         }"
      end

   string_buffer: STRING is
      once
         create Result.make(64)
      end

end -- class POINTER
--
-- Copyright (c) 2009 by all the people cited in the AUTHORS file.
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in
-- all copies or substantial portions of the Software.
--
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
-- THE SOFTWARE.
