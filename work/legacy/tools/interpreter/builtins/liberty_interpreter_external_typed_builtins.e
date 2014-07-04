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
deferred class LIBERTY_INTERPRETER_EXTERNAL_TYPED_BUILTINS[E_]

inherit
   LIBERTY_FEATURE_ACCELERATOR

insert
   LIBERTY_INTERPRETER_EXTERNAL_BUILTINS_CALLER

feature {LIBERTY_INTERPRETER_EXTERNAL_BUILTIN_CALL}
   call (a_builtin_call: like builtin_call): LIBERTY_INTERPRETER_OBJECT
      do
         last_call_failed := False
         builtin_call := a_builtin_call
         a_builtin_call.accelerate_call(Current)
         Result := returned
      end

feature {}
   builtin_call: LIBERTY_INTERPRETER_FEATURE_CALL
   returned: LIBERTY_INTERPRETER_OBJECT

   left, target: E_
      local
         obj: LIBERTY_INTERPRETER_OBJECT_NATIVE[E_]
      do
         obj ::= builtin_call.target
         Result := obj.item
      end

   right: E_
      local
         obj: LIBERTY_INTERPRETER_OBJECT_NATIVE[E_]
      do
         builtin_call.evaluate_parameters
         obj ::= builtin_call.parameters.first
         Result := obj.item
      end

end -- class LIBERTY_INTERPRETER_EXTERNAL_TYPED_BUILTINS
