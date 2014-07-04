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
class LIBERTY_INSPECT

inherit
   LIBERTY_INSTRUCTION

create {LIBERTY_BUILDER_TOOLS}
   make

create {LIBERTY_INSPECT}
   specialized

feature {ANY}
   expression: LIBERTY_EXPRESSION

   clauses: TRAVERSABLE[LIBERTY_INSPECT_CLAUSE]
      do
         Result := clauses_list
      ensure
         Result = clauses_list
      end

   else_clause: LIBERTY_DEFAULT

   specialized_in (a_type: LIBERTY_ACTUAL_TYPE): like Current
      local
         e: like expression
         c: like clauses_list
         clause: LIBERTY_INSPECT_CLAUSE
         d: like else_clause
         i: INTEGER
      do
         e := expression.specialized_in(a_type)
         from
            c := clauses_list
            i := c.lower
         until
            i > c.upper
         loop
            clause := c.item(i).specialized_in(a_type)
            if clause /= c.item(i) then
               if c = clauses_list then
                  c := c.twin
               end
               c.put(clause, i)
            end
            i := i + 1
         end
         if else_clause /= Void then
            d := else_clause.specialized_in(a_type)
         end
         if e = expression and then c = clauses_list and then d = else_clause then
            Result := Current
         else
            create Result.specialized(e, c, d, position)
         end
      end

feature {LIBERTY_BUILDER_TOOLS}
   add_clause (a_clause: LIBERTY_INSPECT_CLAUSE)
      require
         a_clause /= Void
      do
         clauses_list.add_last(a_clause)
      ensure
         clauses.last = a_clause
      end

   set_else_clause (a_else_clause: like else_clause)
      do
         else_clause := a_else_clause
      ensure
         else_clause = a_else_clause
      end

feature {LIBERTY_REACHABLE, LIBERTY_REACHABLE_COLLECTION_MARKER}
   mark_reachable_code (mark: INTEGER)
      do
         expression.mark_reachable_code(mark)
         inspect_clauses_marker.mark_reachable_code(mark, clauses)
         if else_clause /= Void then
            else_clause.mark_reachable_code(mark)
         end
      end

feature {}
   make (a_expression: like expression; a_position: like position)
      require
         a_expression /= Void
         a_position /= Void
      do
         create {FAST_ARRAY[LIBERTY_INSPECT_CLAUSE]} clauses_list.with_capacity(8)
         expression := a_expression
         position := a_position
      ensure
         expression = a_expression
         position = a_position
      end

   specialized (a_expression: like expression; a_clauses_list: like clauses_list; a_else_clause: like else_clause; a_position: like position)
      require
         a_expression /= Void
         a_clauses_list /= Void
         a_position /= Void
      do
         expression := a_expression
         clauses_list := a_clauses_list
         else_clause := a_else_clause
         position := a_position
      ensure
         expression = a_expression
         clauses_list = a_clauses_list
         else_clause = a_else_clause
         position = a_position
      end

   clauses_list: COLLECTION[LIBERTY_INSPECT_CLAUSE]

   inspect_clauses_marker: LIBERTY_REACHABLE_COLLECTION_MARKER[LIBERTY_INSPECT_CLAUSE]

feature {ANY}
   accept (v: VISITOR)
      local
         v0: LIBERTY_INSPECT_VISITOR
      do
         v0 ::= v
         v0.visit_liberty_inspect(Current)
      end

invariant
   expression /= Void
   clauses_list /= Void

end
