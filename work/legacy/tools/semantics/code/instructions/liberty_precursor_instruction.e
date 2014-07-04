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
class LIBERTY_PRECURSOR_INSTRUCTION

inherit
   LIBERTY_INSTRUCTION

insert
   LIBERTY_PRECURSOR

create {LIBERTY_BUILDER_TOOLS, LIBERTY_PRECURSOR_INSTRUCTION}
   make

feature {ANY}
   accept (v: VISITOR)
      local
         v0: LIBERTY_PRECURSOR_INSTRUCTION_VISITOR
      do
         v0 ::= v
         v0.visit_liberty_precursor_instruction(Current)
      end

feature {}
   make_new (a_feature: like the_feature; a_actuals: like actuals_list; a_position: like position): like Current
      do
         create Result.make(a_feature, a_actuals, a_position)
      end

end
