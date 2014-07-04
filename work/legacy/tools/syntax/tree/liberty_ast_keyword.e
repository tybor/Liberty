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
class LIBERTY_AST_KEYWORD

inherit
   LIBERTY_AST_TERMINAL_NODE

create {LIBERTY_NODE_FACTORY}
   make

feature {}
   name_for_error_message: STRING
      do
         Result := once ""
         Result.make_from_string(name)
         Result.remove_prefix(once "KW ")
         Result.prepend(once "the keyword %"")
         Result.extend('%"')
      end

end
