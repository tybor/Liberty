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
deferred class LIBERTY_INTERPRETER_EXTERNAL_TYPE_INTEGERS_BUILTINS[E_ -> INTEGRAL]

inherit
   LIBERTY_INTERPRETER_EXTERNAL_TYPED_BUILTINS[E_]
      undefine
         target, left, right
      redefine
         call_add, call_subtract, call_times, call_divide,
         call_less_or_equal, call_less_than, call_greater_or_equal, call_greater_than,
         call_negative,
         call_other
      end

feature {}
   new_integer (value: E_): LIBERTY_INTERPRETER_OBJECT_NATIVE[INTEGER_64]
      deferred
      end

   int64_target: INTEGER_64
      local
         obj: LIBERTY_INTERPRETER_OBJECT_NATIVE[INTEGER_64]
      do
         obj ::= builtin_call.target
         Result := obj.item
      end

   right_as_integer_8: INTEGER_8
      local
         obj: LIBERTY_INTERPRETER_OBJECT_NATIVE[INTEGER_64]
      do
         builtin_call.evaluate_parameters
         obj ::= builtin_call.parameters.first
         Result := obj.item.to_integer_8
      end

feature {LIBERTY_FEATURE_LOCAL_CONTEXT}
   call_add (f: LIBERTY_FEATURE)
      do
         returned := new_integer(left + right)
      end

   call_subtract (f: LIBERTY_FEATURE)
      do
         returned := new_integer(left - right)
      end

   call_times (f: LIBERTY_FEATURE)
      do
         returned := new_integer(left * right)
      end

   call_divide (f: LIBERTY_FEATURE)
      do
         returned := interpreter.new_real(left / right, builtin_call.position)
      end

   call_less_or_equal (f: LIBERTY_FEATURE)
      do
         returned := interpreter.new_boolean(left <= right, builtin_call.position)
      end

   call_less_than (f: LIBERTY_FEATURE)
      do
         returned := interpreter.new_boolean(left < right, builtin_call.position)
      end

   call_greater_or_equal (f: LIBERTY_FEATURE)
      do
         returned := interpreter.new_boolean(left >= right, builtin_call.position)
      end

   call_greater_than (f: LIBERTY_FEATURE)
      do
         returned := interpreter.new_boolean(left > right, builtin_call.position)
      end

   call_negative (f: LIBERTY_FEATURE)
      do
         returned := new_integer(-target)
      end

   call_other (f: LIBERTY_FEATURE)
      do
         inspect
            builtin_call.name
         when "to_character" then
            returned := interpreter.new_character(target.to_character, builtin_call.position)
         when "to_integer_8" then
            returned := interpreter.new_integer_8(int64_target.to_integer_8, builtin_call.position)
         when "to_integer_16" then
            returned := interpreter.new_integer_16(int64_target.to_integer_16, builtin_call.position)
         when "to_integer_32" then
            returned := interpreter.new_integer_32(int64_target.to_integer_32, builtin_call.position)
         when "to_integer_64" then
            returned := interpreter.new_integer_64(int64_target, builtin_call.position)
         when "to_natural_8" then
            not_yet_implemented
         when "to_natural_16" then
            not_yet_implemented
         when "to_natural_32" then
            not_yet_implemented
         when "to_natural_64" then
            not_yet_implemented
         when "infix |>>", "bit_shift_right" then
            returned := new_integer(left |>> right_as_integer_8)
         when "infix |>>>", "bit_shift_right_unsigned" then
            returned := new_integer(left |>>> right_as_integer_8)
         when "infix |<<", "bit_shift_left" then
            returned := new_integer(left |<< right_as_integer_8)
         when "infix #>>", "bit_rotate_right" then
            returned := new_integer(left #>> right_as_integer_8)
         when "infix #<<", "bit_rotate_left" then
            returned := new_integer(left #<< right_as_integer_8)
         when "bit_rotate" then
            returned := new_integer(left.bit_rotate(right_as_integer_8))
         when "prefix ~", "bit_not" then
            returned := new_integer(~left)
         when "infix &", "bit_and" then
            returned := new_integer(left & right)
         when "infix |", "bit_or" then
            returned := new_integer(left | right)
         when "bit_xor" then
            returned := new_integer(left.bit_xor(right))
         when "infix #+" then
            returned := new_integer(left #+ right)
         when "infix #-" then
            returned := new_integer(left #- right)
         when "infix #*" then
            returned := new_integer(left #* right)
         when "infix #//" then
            returned := new_integer(left #// right)
         when "infix #\\" then
            returned := new_integer(left #\\ right)
         end
      end

end -- class LIBERTY_INTERPRETER_EXTERNAL_TYPE_INTEGERS_BUILTINS
