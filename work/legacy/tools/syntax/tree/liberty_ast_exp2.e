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
class LIBERTY_AST_EXP2

inherit
   LIBERTY_AST_EXPRESSION_BINARY[LIBERTY_AST_E2]

create {LIBERTY_NODE_FACTORY}
   make

feature {LIBERTY_AST_HANDLER}
   is_or_else: BOOLEAN
      do
         Result := count = 4
         check
            Result implies nodes.item(1).name.is_equal(once "KW or")
            Result implies nodes.item(2).name.is_equal(once "KW else")
         end
      ensure
         Result implies not is_empty
      end

   is_or: BOOLEAN
      do
         Result := count = 3 and then nodes.item(1).name.is_equal(once "KW or")
      end

   is_xor: BOOLEAN
      do
         Result := count = 3 and then nodes.item(1).name.is_equal(once "KW xor")
      end

feature {ANY}
   name: STRING "e2-exp"

end
