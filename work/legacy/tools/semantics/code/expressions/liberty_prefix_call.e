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
deferred class LIBERTY_PREFIX_CALL

inherit
   LIBERTY_EXPRESSION

insert
   LIBERTY_CALL

feature {ANY}
   target: LIBERTY_EXPRESSION
   entity: LIBERTY_FEATURE_ENTITY

   result_type: LIBERTY_TYPE
      do
         Result := entity.result_type
      end

feature {LIBERTY_REACHABLE, LIBERTY_REACHABLE_COLLECTION_MARKER}
   mark_reachable_code (mark: INTEGER)
      do
         target.mark_reachable_code(mark)
         entity.mark_reachable_code(mark)
      end

feature {}
   make (a_target: like target; a_entity_builder: FUNCTION[TUPLE[LIBERTY_TYPE, LIBERTY_FEATURE_NAME], LIBERTY_FEATURE_ENTITY]; a_position: like position)
      require
         a_target /= Void
         a_entity_builder /= Void
         a_position /= Void
      do
         create prefix_name.make_prefix(the_prefix_name, a_position)
         target := a_target
         entity := a_entity_builder.item([a_target.result_type, prefix_name])
         position := a_position
         register_for_promotion
      ensure
         position = a_position
      end

   new (a_target: like target; a_entity: like entity; a_actuals: like actuals_list; a_position: like position)
      require
         a_target /= Void
         a_actuals.is_empty
         a_position /= Void
      do
         check a_actuals = actuals_list end
         target := a_target
         entity := a_entity
         position := a_position
      ensure
         target = a_target or else {LIBERTY_CAST_EXPRESSION} ?:= target
         entity = a_entity
         actuals_list = a_actuals
         position = a_position
      end

   prefix_name: LIBERTY_FEATURE_NAME
      attribute
      ensure
         Result.is_prefix
      end

   the_prefix_name: FIXED_STRING
      deferred
      ensure
         Result /= Void
      end

   actuals_list: COLLECTION[LIBERTY_EXPRESSION]
      once
         create {FAST_ARRAY[LIBERTY_EXPRESSION]} Result.with_capacity(0)
      end

feature {LIBERTY_CALL_PROMOTION}
   set_entity (a_entity: like entity)
      do
         entity := a_entity
      end

   set_target (a_target: like target)
      do
         target := a_target
      end

invariant
   actuals.is_empty
   not is_implicit_current

end
