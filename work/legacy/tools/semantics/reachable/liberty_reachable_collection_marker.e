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
expanded class LIBERTY_REACHABLE_COLLECTION_MARKER[E_ -> LIBERTY_REACHABLE]

feature {LIBERTY_REACHABLE}
   mark_reachable_code (mark: INTEGER; elements: INDEXABLE[E_])
      require
         elements /= Void
      local
         i: INTEGER
      do
         from
            i := elements.lower
         until
            i > elements.upper
         loop
            elements.item(i).mark_reachable_code(mark)
            i := i + 1
         end
      end

end -- class LIBERTY_REACHABLE_COLLECTION_MARKER
