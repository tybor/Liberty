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
class LIBERTY_VOID

inherit
   LIBERTY_EXPRESSION

create {LIBERTY_BUILDER_TOOLS}
   make

feature {ANY}
   result_type: LIBERTY_TYPE

   specialized_in (a_type: LIBERTY_ACTUAL_TYPE): like Current
      do
         Result := Current
      end

feature {LIBERTY_REACHABLE, LIBERTY_REACHABLE_COLLECTION_MARKER}
   mark_reachable_code (mark: INTEGER)
      do
         -- nothing
      end

feature {LIBERTY_BUILDER_TOOLS}
   set_result_type (a_result_type: like result_type)
      require
         a_result_type /= Void
         result_type = void_type
      do
         result_type := a_result_type
      ensure
         result_type = a_result_type
      end

   void_type: LIBERTY_VOID_TYPE
      once
         create Result.make
      end

feature {}
   make (a_position: like position)
      require
         a_position /= Void
      do
         position := a_position
         result_type := void_type
      ensure
         position = a_position
         result_type = void_type
      end

feature {ANY}
   accept (v: VISITOR)
      local
         v0: LIBERTY_VOID_VISITOR
      do
         v0 ::= v
         v0.visit_liberty_void(Current)
      end

end
