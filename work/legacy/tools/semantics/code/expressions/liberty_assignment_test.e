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
class LIBERTY_ASSIGNMENT_TEST

inherit
   LIBERTY_EXPRESSION

create {LIBERTY_BUILDER_TOOLS, LIBERTY_ASSIGNMENT_TEST}
   test_entity, test_type

feature {ANY}
   result_type: LIBERTY_TYPE

   expression: LIBERTY_EXPRESSION

   tested_type: LIBERTY_TYPE
      do
         if type /= Void then
            Result := type
         else
            Result := entity.result_type
         end
      end

   specialized_in (a_type: LIBERTY_ACTUAL_TYPE): like Current
      local
         e: like expression
         n: like entity
         t: like type
      do
         check
            result_type.specialized_in(a_type) = result_type
         end
         e := expression.specialized_in(a_type)
         if entity /= Void then
            n := entity.specialized_in(a_type)
         else
            t := type.specialized_in(a_type)
         end
         if e = expression and then n = entity and then t = type then
            Result := Current
         elseif n /= Void then
            create Result.test_entity(n, e, result_type, position)
         else
            create Result.test_type(t, e, result_type, position)
         end
      end

feature {LIBERTY_REACHABLE, LIBERTY_REACHABLE_COLLECTION_MARKER}
   mark_reachable_code (mark: INTEGER)
      do
         -- nothing
      end

feature {}
   test_entity (a_entity: like entity; a_expression: like expression; a_result_type: like result_type; a_position: like position)
      require
         a_entity /= Void
         a_expression /= Void
         a_result_type /= Void
         -- a_result_type is BOOLEAN
         a_position /= Void
      do
         entity := a_entity
         expression := a_expression
         result_type := a_result_type
         position := a_position
      ensure
         entity = a_entity
         expression = a_expression
         result_type = a_result_type
         type = Void
         position = a_position
      end

   test_type (a_type: like type; a_expression: like expression; a_result_type: like result_type; a_position: like position)
      require
         a_type /= Void
         a_expression /= Void
         a_result_type /= Void
         -- a_result_type is BOOLEAN
         a_position /= Void
      do
         type := a_type
         expression := a_expression
         result_type := a_result_type
         position := a_position
      ensure
         type = a_type
         expression = a_expression
         result_type = a_result_type
         entity = Void
         position = a_position
      end

   entity: LIBERTY_ENTITY
   type: LIBERTY_ACTUAL_TYPE --|*** TODO: ??? we cannot check generics assignment???

feature {ANY}
   accept (v: VISITOR)
      local
         v0: LIBERTY_ASSIGNMENT_TEST_VISITOR
      do
         v0 ::= v
         v0.visit_liberty_assignment_test(Current)
      end

invariant
   (entity /= Void) /= (type /= Void)

end
