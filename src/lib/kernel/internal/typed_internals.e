-- This file is part of a Liberty Eiffel library.
-- See the full copyright at the end.
--
class TYPED_INTERNALS[E_]
   --
   -- TYPED_INTERNALS serves as a gateway between the typed ideal world of Eiffel objects and the untyped
   -- physical world of raw memory, files on disks, streams on networks...
   --
   -- TYPED_INTERNALS[E_] describes the physical structure of class E_. For instance, TYPED_INTERNALS[STRING]
   -- describes the physical structure of class STRING.
   --
   -- Optionally, an object of type E_ can be attached to that a TYPED_INTERNALS[E_]. The TYPED_INTERNALS[E_]
   -- object can then be used to inspect and change the values of the attributes of the attached object. For
   -- instance, a STRING could be attached to a TYPED_INTERNALS[STRING]. The TYPED_INTERNALS[STRING] could
   -- then be used to get or set this STRING's attributes.
   --

inherit
   INTERNALS
      redefine is_equal
      end

creation {}
   for_object

creation {INTERNALS_HANDLER} -- Actual creation is performed by ANY.to_internals
   make_blank

feature {INTERNALS_HANDLER, INTERNALS} -- Getting information about the described object's type
   type_generator: STRING is
      external "built_in"
      end

   type_generating_type: STRING is
      external "built_in"
      end

   type_is_expanded: BOOLEAN is
      external "built_in"
      end

   type_attribute_is_expanded (i: INTEGER): BOOLEAN is
      external "built_in"
      end

   type_can_be_assigned_to_attribute (other: INTERNALS; i: INTEGER): BOOLEAN is
      external "built_in"
      end

feature {INTERNALS} -- Deep comparison implementation
	reentrant_compare (another: like Current; some_compared: HASHED_DICTIONARY[INTERNALS,POINTER]): BOOLEAN is
		local ith_attribute: INTERNALS; i: INTEGER
		do
			if type_is_expanded then 
				Result := object.is_equal(another.object)
			else
				not_yet_implemented
				-- Result := True
				-- from i:=1 until not Result and then i>type_attribute_count loop
				-- 	Result := object_attribute(i).reentrant_compare(another.object_attribute(i), )
				-- 	i:=i+1
				-- end
			end
		end

feature {INTERNALS_HANDLER}
   for_object (object_: like object_memory) is
         -- Attach `Current' to `object_'
      require
         object_ /= Void
         correct_generating_type(object_)
         not object_.generator.is_equal(once "NATIVE_ARRAY")
      do
         object_memory := object_
         set_object_can_be_retrieved
      ensure
         object_can_be_retrieved
         object = object_
      end

feature 
   make_blank is
	   -- Original definition with preconditions and postconditions moved into INTERNALS
      external "built_in"
      end

feature {INTERNALS, INTERNALS_HANDLER} -- Getting information about the type's attributes
   type_attribute_count: INTEGER is
      external "built_in"
      end

   type_attribute_name (i: INTEGER): STRING is
      external "built_in"
      end

   type_attribute_generator (i: INTEGER): STRING is
      external "built_in"
      end

   type_attribute_generating_type (i: INTEGER): STRING is
      external "built_in"
      end

feature {ANY, INTERNALS_HANDLER}
   object_as_pointer: POINTER is
      external "built_in"
      end

feature {INTERNALS_HANDLER}
   object: like object_memory is
         -- The object `Current' is attached to
      require
         object_can_be_retrieved
      do
         Result := object_memory
      ensure
         Result.generating_type = type_generating_type
      end

feature {INTERNALS, INTERNALS_HANDLER} -- Accessing the object's attributes
   object_attribute (i: INTEGER): INTERNALS is
      external "built_in"
      end

   set_object_attribute (element: INTERNALS; i: INTEGER) is
      external "built_in"
      end

feature {TYPED_INTERNALS}
   object_memory: E_

feature {ANY}
   is_equal (other: like Current): BOOLEAN is
      external "built_in"
      end

   set_object_can_be_modified is
	   do
		   object_can_be_retrieved:=False
	   end

   set_object_can_be_retrieved is
      do
         object_can_be_retrieved := True
         object.internals_can_be_retrieved
      end

feature {}
   correct_generating_type (object_: like object_memory): BOOLEAN is
      local
         ogt, tgt: STRING
      do
         ogt := object_.generating_type
         tgt := type_generating_type
         Result := ogt = tgt
         check
            Result -- Useful for debugging (Because you can read ogt and tgt)
         end
      ensure
         Result = (object_.generating_type = type_generating_type)
      end

end -- class TYPED_INTERNALS
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
