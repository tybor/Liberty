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
class LIBERTY_OLD

inherit
   LIBERTY_EXPRESSION

create {LIBERTY_BUILDER_TOOLS, LIBERTY_OLD}
   make

feature {ANY}
   expression: LIBERTY_EXPRESSION

   result_type: LIBERTY_TYPE
      do
         Result := expression.result_type
      end

   specialized_in (a_type: LIBERTY_ACTUAL_TYPE): like Current
      local
         e: like expression
      do
         e := expression.specialized_in(a_type)
         if e = expression then
            Result := Current
         else
            create Result.make(e, position)
         end
      end

feature {LIBERTY_REACHABLE, LIBERTY_REACHABLE_COLLECTION_MARKER}
   mark_reachable_code (mark: INTEGER)
      do
         expression.mark_reachable_code(mark)
      end

feature {}
   make (a_expression: like expression; a_position: like position)
      require
         a_expression /= Void
         a_position /= Void
      do
         expression := a_expression
         position := a_position
      ensure
         expression = a_expression
         position = a_position
      end

feature {ANY}
   accept (v: VISITOR)
      local
         v0: LIBERTY_OLD_VISITOR
      do
         v0 ::= v
         v0.visit_liberty_old(Current)
      end

invariant
   expression /= Void

end
