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
class LIBERTY_INTERPRETER_EXTERNAL_TYPE_REAL_32_BUILTINS

inherit
   LIBERTY_INTERPRETER_EXTERNAL_TYPE_REALS_BUILTINS[REAL_32]

create {LIBERTY_INTERPRETER_EXTERNAL_BUILTIN_CALL}
   make

feature {}
   new_real (value: REAL_32): LIBERTY_INTERPRETER_OBJECT_NATIVE[REAL_128]
      do
         Result := interpreter.new_real_32(value, builtin_call.position)
      end

   left, target: REAL_32
      local
         obj: LIBERTY_INTERPRETER_OBJECT_NATIVE[REAL_128]
      do
         obj ::= builtin_call.target
         Result := obj.item.force_to_real_32
      end

   right: REAL_32
      local
         obj: LIBERTY_INTERPRETER_OBJECT_NATIVE[REAL_128]
      do
         builtin_call.evaluate_parameters
         obj ::= builtin_call.parameters.first
         Result := obj.item.force_to_real_32
      end

   call_specific (f: LIBERTY_FEATURE)
      do
         last_call_failed := True
      end

end -- class LIBERTY_INTERPRETER_EXTERNAL_TYPE_REAL_32_BUILTINS
