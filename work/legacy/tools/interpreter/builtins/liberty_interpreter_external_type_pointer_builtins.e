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
class LIBERTY_INTERPRETER_EXTERNAL_TYPE_POINTER_BUILTINS

insert
   LIBERTY_INTERPRETER_EXTERNAL_BUILTINS_CALLER

create {LIBERTY_INTERPRETER_EXTERNAL_BUILTIN_CALL}
   make

feature {LIBERTY_INTERPRETER_EXTERNAL_BUILTIN_CALL}
   call (builtin_call: LIBERTY_INTERPRETER_FEATURE_CALL): LIBERTY_INTERPRETER_OBJECT
      local
         target: LIBERTY_INTERPRETER_OBJECT_NATIVE[POINTER]
      do
         last_call_failed := False
         inspect
            builtin_call.name
         when "is_not_null" then
            target ::= builtin_call.target
            Result := interpreter.new_boolean(target /= Void and then target.item.is_not_null, builtin_call.position)
         else
            last_call_failed := True
         end
      end

end -- class LIBERTY_INTERPRETER_EXTERNAL_TYPE_POINTER_BUILTINS
