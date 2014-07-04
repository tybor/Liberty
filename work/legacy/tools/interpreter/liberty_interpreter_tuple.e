-- This file is part of Liberty Eiffel.
--
-- Liberty Eiffel is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, version 3 of the License.
--
-- Liberty Eiffel is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with Liberty Eiffel.  If not, see <http://www.gnu.org/licenses/>.
--
class LIBERTY_INTERPRETER_TUPLE

inherit
   LIBERTY_INTERPRETER_OBJECT
   TRAVERSABLE[LIBERTY_INTERPRETER_OBJECT]

create {LIBERTY_INTERPRETER_OBJECT_CREATOR}
   make

feature {ANY}
   lower: INTEGER
      do
         Result := tuple.lower
      end

   upper: INTEGER
      do
         Result := tuple.upper
      end

   count: INTEGER
      do
         Result := tuple.count
      end

   is_empty: BOOLEAN
      do
         Result := tuple.is_empty
      end

   first: LIBERTY_INTERPRETER_OBJECT
      do
         Result := tuple.first
      end

   last: LIBERTY_INTERPRETER_OBJECT
      do
         Result := tuple.last
      end

   item (i: INTEGER): LIBERTY_INTERPRETER_OBJECT
      do
         Result := tuple.item(i)
      end

   new_iterator: ITERATOR[LIBERTY_INTERPRETER_OBJECT]
      do
         Result := tuple.new_iterator
      end

feature {ANY}
   type: LIBERTY_ACTUAL_TYPE

   converted_to (target_type: LIBERTY_ACTUAL_TYPE): LIBERTY_INTERPRETER_OBJECT
      do
         not_yet_implemented
      end

   hash_code: INTEGER
      do
         Result := to_pointer.hash_code
      end

feature {LIBERTY_INTERPRETER_EXTERNAL_TYPE_ANY_BUILTINS} -- Standard builtings
   builtin_is_equal (other: LIBERTY_INTERPRETER_OBJECT; a_position: LIBERTY_POSITION): BOOLEAN
      do
         not_yet_implemented
      end

   builtin_standard_is_equal (other: LIBERTY_INTERPRETER_OBJECT; a_position: LIBERTY_POSITION): BOOLEAN
      do
         not_yet_implemented
      end

   builtin_copy (other: LIBERTY_INTERPRETER_OBJECT; a_position: LIBERTY_POSITION)
      do
         not_yet_implemented
      end

   builtin_twin (a_position: LIBERTY_POSITION): like Current
      do
         not_yet_implemented
      end

   builtin_standard_copy (other: LIBERTY_INTERPRETER_OBJECT; a_position: LIBERTY_POSITION)
      do
         not_yet_implemented
      end

   builtin_standard_twin (a_position: LIBERTY_POSITION): like Current
      do
         not_yet_implemented
      end

feature {LIBERTY_INTERPRETER_OBJECT}
   do_deep_twin (deep_twin_memory: DICTIONARY[LIBERTY_INTERPRETER_OBJECT, LIBERTY_INTERPRETER_OBJECT]; a_position: LIBERTY_POSITION): LIBERTY_INTERPRETER_OBJECT
      do
         not_yet_implemented
      end

   do_deep_equal (object: LIBERTY_INTERPRETER_OBJECT; deep_equal_memory: SET[LIBERTY_INTERPRETER_OBJECT]; a_position: LIBERTY_POSITION): BOOLEAN
      do
         not_yet_implemented
      end

feature {LIBERTY_INTERPRETER_OBJECT_PRINTER, LIBERTY_INTERPRETER_FEATURE_CALL}
   show_stack (o: OUTPUT_STREAM; indent: INTEGER)
      local
         i: INTEGER
      do
         o.put_character('{')
         o.put_string(type.full_name)
         o.put_line(once " [")
         from
            i := tuple.lower
         until
            i > tuple.upper
         loop
            interpreter.object_printer.put_indent(o, indent + 1)
            interpreter.object_printer.print_object(o, tuple.item(i), indent + 1)
            i := i + 1
         end
         interpreter.object_printer.put_indent(o, indent)
         o.put_line(once "] }")
      end

feature {}
   expanded_twin: like Current
      do
         check False end
      end

feature {LIBERTY_INTERPRETER_EXPRESSIONS}
   ensure_capacity (capacity: INTEGER)
      do
         tuple.with_capacity(capacity)
      ensure
         tuple.capacity >= capacity
      end

   add_last (a_object: LIBERTY_INTERPRETER_OBJECT)
      do
         tuple.add_last(a_object)
      end

feature {}
   make (a_interpreter: like interpreter; a_type: like type; a_position: like position)
      require
         a_interpreter /= Void
         a_type /= Void
         a_position /= Void
      do
         interpreter := a_interpreter
         type := a_type
         position := a_position
         create tuple.with_capacity(0)
      ensure
         interpreter = a_interpreter
         type = a_type
         position = a_position
      end

   tuple: FAST_ARRAY[LIBERTY_INTERPRETER_OBJECT]

invariant
   tuple /= Void

end -- class LIBERTY_INTERPRETER_TUPLE
