-- This file is part of a Liberty Eiffel library.
-- See the full copyright at the end.
--
deferred class INTERNALS
   --
   -- INTERNALS serves as a gateway between the typed ideal world of Eiffel objects and the untyped physical
   -- world of raw memory, files on disks, streams on networks...
   --
   -- All instances of INTERNALS must be of type TYPED_INTERNALS. Each INTERNALS object describes the physical
   -- structure of exactly one type. For instance, TYPED_INTERNALS[STRING] describes the physical structure of
   -- class STRING.
   --
   -- Optionally, an object of an INTERNAL's associated type can be attached to that INTERNAL. The INTERNAL
   -- can then be used to inspect and change the values of the attributes of the attached object.  For
   -- instance, a STRING could be attached to a TYPED_INTERNALS[STRING]. The TYPED_INTERNALS[STRING] could
   -- then be used to get or set this STRING's attributes.
   --
   -- This class is meant as a very basic building block. Please read the following advice to use INTERNALS
   -- wisely:
   --
   -- # Don't use INTERNALS
   --
   -- # If rule 1 is unapplicable, use INTERNALS to build a higher-level abstraction, and use that abstraction
   -- in your application. You really don't want INTERNALS scattered around your application code.
   --
feature {INTERNALS, INTERNALS_HANDLER}
	make_blank is 
		-- Attach `Current' to a blank object: all attributes of the object have their default value
		-- (references are Void, INTEGERS are 0, BOOLEANs are False...)
	require
		not type_generator.is_equal(once "NATIVE_ARRAY")
	deferred 
	ensure
		object_can_be_modified
	end

feature {ANY} 
	deeply_twinned: like Current is
		local already_copied: HASHED_DICTIONARY[INTERNALS,POINTER]
		do
			create already_copied.make
			Result ::= reentrant_deep_twin(already_copied)
		end

	reentrant_deep_twin (some_copied: HASHED_DICTIONARY[INTERNALS,POINTER]): like Current is
		-- The INTERNALS of a new object with the dynamic type of object bound
		-- to a recursively duplicated copy of Current INTERNALS.
	local ith_attribute: INTERNALS; i: INTEGER
	do
		("#(1).reentrant_deep_twin(#(2)) " # type_generating_type # & some_copied.to_pointer).print_on(std_output)
		Result ::= some_copied.reference_at(to_pointer)
		-- We know for sure that the reference obtained is either Void or an
		-- INTERNALS whose actual type is exactly the same of Current: we
		-- created it here.
		if Result=Void then 
			-- Object and its internals shall be copied
			Result := twin
			Result.set_object_can_be_modified
			Result.make_blank
			some_copied.add(Result,Result.to_pointer)
			from i:=1 until i>type_attribute_count loop
				ith_attribute := object_attribute(i)
				if ith_attribute/=Void then
					Result.set_object_attribute
					(ith_attribute.reentrant_deep_twin(some_copied), i)
				end
				i:=i+1
			end
		else ("#(1) already copied, " # & Result).print_on(std_output);
		end
	end

	self_inspect is
		-- Recursively print on standard output the actual structure of the object referred by object

		-- Warning: this feature enters an infite loops when object are even indirectly cross referenced.
		local attr_int: INTERNALS; i: INTEGER;
	do
		("Internals of #(1)%N" # type_generating_type).print_on(std_output)
		from i:=1 until i>type_attribute_count loop
			("Attribute ##(1) '#(2)': #(3) (#(4), expanded: #(5))%N" 
			# &i # type_attribute_name(i) 
			# type_attribute_generator(i) 
			# type_attribute_generating_type(i)
			# &type_attribute_is_expanded(i)
			).print_on(std_output)
			
			attr_int := object_attribute(i)
			if attr_int/=Void then 
				attr_int.self_inspect
			end
			i := i+1
		end
 	end
 
feature {INTERNALS_HANDLER, INTERNALS} -- Getting information about the described object's type
   type_generator: STRING is
         -- Name of the base class of the type described by `Current'. For instance, if `Current' is a
         -- TYPED_INTERNALS[ARRAY[INTEGER]], `type_generator' is "ARRAY".
      deferred
      end

   type_generating_type: STRING is
         -- Name of the type described by `Current'. For instance, if `Current' is a
         -- TYPED_INTERNALS[ARRAY[INTEGER]], `type_generating_type' is "ARRAY[INTEGER]".
      deferred
      end

   type_is_expanded: BOOLEAN is
         -- Is the type described by `Current' expanded?
      deferred
      end

   type_is_native_array: BOOLEAN is
         -- Is the type described by `Current' a NATIVE_ARRAY?
      do
      ensure
         Result = type_generator.is_equal(once "NATIVE_ARRAY")
      end

   type_attribute_is_expanded (i: INTEGER): BOOLEAN is
         -- Is the type of the `i'th attribute expanded?
      require
         i.in_range(1, type_attribute_count)
      deferred
      end

   type_can_be_assigned_to_attribute (other: INTERNALS; i: INTEGER): BOOLEAN is
         -- Can the object attached to `other' be assigned to the `i'th attribute?
      require
         i.in_range(1, type_attribute_count)
      deferred
      ensure
         other = Void implies Result = not type_attribute_is_expanded(i)
      end

feature {INTERNALS, INTERNALS_HANDLER} -- Getting information about the type's attributes
   type_attribute_count: INTEGER is
         -- Number of attributes of the type described by `Current'
      deferred
      end

   type_attribute_name (i: INTEGER): STRING is
         -- Name of the `i'th attribute of the type described by `Current'.
      require
         i.in_range(1, type_attribute_count)
      deferred
      ensure
         Result /= Void
      end

   type_attribute_generator (i: INTEGER): STRING is
         -- Name of the base class of the `i'th attribute of the type described by `Current'.
      require
         i.in_range(1, type_attribute_count)
      deferred
      ensure
         Result /= Void
      end

   type_attribute_generating_type (i: INTEGER): STRING is
         -- Name of the type of the `i'th attribute of the type described by `Current'.
      require
         i.in_range(1, type_attribute_count)
      deferred
      ensure
         Result /= Void
      end

feature {INTERNALS_HANDLER} -- Accessing the object
   object_as_pointer: POINTER is
         -- Pointer to the object currently attached to `Current'.
      require
         type_is_expanded implies type_generator.is_equal(once "NATIVE_ARRAY")
      deferred
      ensure
         Result.is_not_null
      end

feature {INTERNALS, INTERNALS_HANDLER} -- Accessing the object's attributes
   object_attribute (i: INTEGER): INTERNALS is
         -- Read the `i'th attribute of the type described by `Current' (also see `type_attribute'). If this
         -- attribute is attached to an object, then `Result' is also attached to that object
      require
         i.in_range(1, type_attribute_count)
      deferred
      ensure
         type_attribute_is_expanded(i) implies Result /= Void
      end

   set_object_attribute (element: INTERNALS; i: INTEGER) is
         -- Write the `i'th attribute of the type described by `Current'
      require
         i.in_range(1, type_attribute_count)
         type_can_be_assigned_to_attribute(element, i)
         object_can_be_modified
      deferred
      ensure
         element = Void implies object_attribute(i) = Void
         element /= Void implies object_attribute(i).is_equal(element)
      end

   object_can_be_retrieved: BOOLEAN
         -- Can the object be retrieved by the rest of the system through `object'?

   object_can_be_modified: BOOLEAN is
         -- Can the object be modified through `set_object_attribute', i.e. is it safely isolated from the rest of
         -- the system?
      do
         Result := not object_can_be_retrieved
      ensure
         Result = not object_can_be_retrieved
      end

   set_object_can_be_modified is
         -- Forbid further modification of the object through `set_object_attribute', so that it can safely be
         -- released into the system.
         -- Note that the embedded object is notified via its `internals_can_be_retrieved' feature.
	 deferred
	 end
 

   set_object_can_be_retrieved is
         -- Forbid further modification of the object through `set_object_attribute', so that it can safely be
         -- released into the system.
         -- Note that the embedded object is notified via its `internals_can_be_retrieved' feature.
      deferred
      ensure
         object_can_be_retrieved
      end

end -- class INTERNALS
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
