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
class LIBERTY_AST_EXTERNAL

inherit
   LIBERTY_AST_NON_TERMINAL_NODE

create {LIBERTY_NODE_FACTORY}
   make

feature {LIBERTY_AST_HANDLER}
   definition: LIBERTY_AST_STRING
      do
         Result ::= nodes.item(1)
      end

   alias_clause: LIBERTY_AST_ALIAS
      do
         Result ::= nodes.item(2)
      end

feature {ANY}
   count: INTEGER 3

   name: STRING "External"

feature {}
   possible_counts: SET[INTEGER]
      once
         Result := {AVL_SET[INTEGER] << 3 >> }
      end

end
