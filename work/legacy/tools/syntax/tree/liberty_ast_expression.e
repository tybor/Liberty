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
class LIBERTY_AST_EXPRESSION

inherit
   LIBERTY_AST_NON_TERMINAL_NODE

create {LIBERTY_NODE_FACTORY}
   make

feature {LIBERTY_AST_HANDLER}
   is_array: BOOLEAN
      do
         Result := nodes.first.name.is_equal(once "Array")
      end

   array: LIBERTY_AST_ARRAY
      require
         is_array
      do
         Result ::= nodes.first
      end

   no_array: LIBERTY_AST_EXPRESSION_NO_ARRAY
      require
         not is_array
      do
         Result ::= nodes.first
      end

feature {ANY}
   count: INTEGER 1

   name: STRING "Expression"

feature {}
   possible_counts: SET[INTEGER]
      once
         Result := {AVL_SET[INTEGER] << 1 >> }
      end

end
