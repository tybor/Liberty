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
class LIBERTY_RETRY

   -- NOTE: retries are not yet implemented. At all.

inherit
   LIBERTY_INSTRUCTION

create {LIBERTY_FEATURE_LOCAL_CONTEXT}
   make

feature {ANY}
   the_feature: LIBERTY_FEATURE

   specialized_in (a_type: LIBERTY_ACTUAL_TYPE): like Current
      do
         Result := Current
      end

feature {LIBERTY_FEATURE_LOCAL_CONTEXT}
   set_feature (a_feature: like the_feature)
      require
         a_feature /= Void
      do
         the_feature := a_feature
      ensure
         the_feature = a_feature
      end

feature {LIBERTY_REACHABLE, LIBERTY_REACHABLE_COLLECTION_MARKER}
   mark_reachable_code (mark: INTEGER)
      do
         check
            the_feature /= Void implies the_feature.is_reachable
         end
      end

feature {}
   make (a_position: like position)
      require
         a_position /= Void
      do
         position := a_position
      ensure
         position = a_position
      end

feature {ANY}
   accept (v: VISITOR)
      local
         v0: LIBERTY_RETRY_VISITOR
      do
         v0 ::= v
         v0.visit_liberty_retry(Current)
      end

end
