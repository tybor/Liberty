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
class LIBERTY_COMPOUND

inherit
   LIBERTY_INSTRUCTION
   TRAVERSABLE[LIBERTY_INSTRUCTION]

create {LIBERTY_BUILDER_TOOLS, LIBERTY_COMPOUND}
   make

feature {ANY}
   count: INTEGER
      do
         Result := instructions.count
      ensure then
         Result > 1
      end

   is_empty: BOOLEAN False

   lower: INTEGER
      do
         Result := instructions.lower
      end

   upper: INTEGER
      do
         Result := instructions.upper
      end

   first: LIBERTY_INSTRUCTION
      do
         Result := instructions.first
      end

   last: LIBERTY_INSTRUCTION
      do
         Result := instructions.last
      end

   item (i: INTEGER): LIBERTY_INSTRUCTION
      do
         Result := instructions.item(i)
      end

   new_iterator: ITERATOR[LIBERTY_INSTRUCTION]
      do
         Result := instructions.new_iterator
      end

   specialized_in (a_type: LIBERTY_ACTUAL_TYPE): like Current
      local
         i: INTEGER
         ins: like instructions
         inst: LIBERTY_INSTRUCTION
      do
         from
            ins := instructions
            i := ins.lower
         until
            i > ins.upper
         loop
            inst := ins.item(i).specialized_in(a_type)
            if inst /= ins.item(i) then
               if ins = instructions then
                  ins := instructions.twin
               end
               ins.put(inst, i)
            end
            i := i + 1
         end
         if ins = instructions then
            Result := Current
         else
            create Result.make(ins, position)
         end
      end

feature {LIBERTY_REACHABLE, LIBERTY_REACHABLE_COLLECTION_MARKER}
   mark_reachable_code (mark: INTEGER)
      do
         instructions_marker.mark_reachable_code(mark, instructions)
      end

feature {}
   make (a_instructions: like instructions; a_position: like position)
      require
         a_instructions.count > 1
         a_position /= Void
      do
         instructions := a_instructions
         position := a_position
      ensure
         instructions = a_instructions
         position = a_position
      end

   instructions: COLLECTION[LIBERTY_INSTRUCTION]

feature {ANY}
   accept (v: VISITOR)
      local
         v0: LIBERTY_COMPOUND_VISITOR
      do
         v0 ::= v
         v0.visit_liberty_compound(Current)
      end

invariant
   instructions /= Void

end

