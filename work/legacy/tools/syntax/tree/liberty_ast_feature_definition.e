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
class LIBERTY_AST_FEATURE_DEFINITION

inherit
   LIBERTY_AST_NON_TERMINAL_NODE

create {LIBERTY_NODE_FACTORY}
   make

feature {LIBERTY_AST_HANDLER}
   indexing_clause: LIBERTY_AST_INDEXING
      do
         Result ::= nodes.item(0)
      end

   signature: LIBERTY_AST_SIGNATURE
      do
         Result ::= nodes.item(1)
      end

   has_routine_definition: BOOLEAN
      do
         Result := count = 4 and then nodes.item(3).name.is_equal(once "Routine_Definition")
      end

   is_constant: BOOLEAN
      do
         Result := count = 4 and then nodes.item(3).name.is_equal(once "Manifest_Or_Type_Test")
      end

   is_unique: BOOLEAN
      do
         Result := count = 4 and then nodes.item(3).name.is_equal(once "KW unique")
      end

   routine_definition: LIBERTY_AST_ROUTINE_DEFINITION
      require
         has_routine_definition
      do
         Result ::= nodes.item(3)
      end

   constant: LIBERTY_AST_MANIFEST_OR_TYPE_TEST
      require
         is_constant
      do
         Result ::= nodes.item(3)
      end

feature {ANY}
   count: INTEGER
      do
         Result := nodes.count
      end

   name: STRING "Feature_Definition"

feature {}
   possible_counts: SET[INTEGER]
      once
         Result := {AVL_SET[INTEGER] << 2, 4 >> }
      end

end
