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
class LIBERTY_FEATURE_REDEFINED

inherit
   LIBERTY_FEATURE
      rename
         make as make_late_binding
      redefine
         mark_reachable_code, add_if_redefined, do_debug_display, set_specialized_in,
         has_accelerator, accelerate_call
      end

create {LIBERTY_BUILDER_TOOLS}
   make

feature {ANY}
   redefined_feature: LIBERTY_FEATURE

   accept (v: VISITOR)
      local
         v0: LIBERTY_FEATURE_REDEFINED_VISITOR
      do
         v0 ::= v
         v0.visit_liberty_feature_redefined(Current)
      end

   has_accelerator: BOOLEAN
      do
         Result := redefined_feature /= Void and then redefined_feature.has_accelerator
      end

   accelerate_call (a: LIBERTY_FEATURE_ACCELERATOR)
      do
         redefined_feature.accelerate_call(a)
      end

feature {LIBERTY_FEATURE}
   set_specialized_in (a_original: like Current; a_context: like context)
      do
         Precursor(a_original, a_context)
         if redefined_feature /= Void then
            redefined_feature := redefined_feature.specialized_in(a_context.current_type)
         end
      end

   do_debug_display (o: OUTPUT_STREAM; tab: INTEGER)
      do
         Precursor(o, tab)
         tabulate(o, tab + 1)
         if redefined_feature = Void then
            o.put_line(once "(unknown or unattached redefined feature)")
         else
            redefined_feature.do_debug_display(o, tab + 1)
         end
      end

feature {LIBERTY_BUILDER_TOOLS}
   add_if_redefined (type: LIBERTY_ACTUAL_TYPE; name: LIBERTY_FEATURE_NAME; redefined_features: DICTIONARY[LIBERTY_FEATURE_REDEFINED, LIBERTY_FEATURE_NAME])
      do
         if definition_type = type then
            if not redefined_features.has(name) then
               redefined_features.add(Current, name)
            end
         end
      end

feature {}
   do_join (a_type: LIBERTY_ACTUAL_TYPE; a_feature: LIBERTY_FEATURE; current_fd, other_fd: LIBERTY_FEATURE_DEFINITION): LIBERTY_FEATURE
      do
         Result := a_feature.joined_redefined(a_type, Current, other_fd, current_fd)
      end

feature {LIBERTY_FEATURE}
   joined_attribute (a_type: LIBERTY_ACTUAL_TYPE; a_feature: LIBERTY_FEATURE_ATTRIBUTE; current_fd, other_fd: LIBERTY_FEATURE_DEFINITION): LIBERTY_FEATURE
      do
         if a_feature.definition_type = definition_type then
            current_fd.fatal_join_error_redefined_concrete(a_type, other_fd)
         end
         Result := Current
      end

   joined_constant (a_type: LIBERTY_ACTUAL_TYPE; a_feature: LIBERTY_FEATURE_CONSTANT; current_fd, other_fd: LIBERTY_FEATURE_DEFINITION): LIBERTY_FEATURE
      do
         if a_feature.definition_type = definition_type then
            current_fd.fatal_join_error_redefined_concrete(a_type, other_fd)
         end
         Result := Current
      end

   joined_deferred (a_type: LIBERTY_ACTUAL_TYPE; a_feature: LIBERTY_FEATURE_DEFERRED; current_fd, other_fd: LIBERTY_FEATURE_DEFINITION): LIBERTY_FEATURE
      do
         if a_feature.definition_type = definition_type then
            --| *** TODO: warning, mixed undefine and redefine, expected redefinition
         end
         Result := Current
      end

   joined_do (a_type: LIBERTY_ACTUAL_TYPE; a_feature: LIBERTY_FEATURE_DO; current_fd, other_fd: LIBERTY_FEATURE_DEFINITION): LIBERTY_FEATURE
      do
         if a_feature.definition_type = definition_type then
            current_fd.fatal_join_error_redefined_concrete(a_type, other_fd)
         end
         Result := Current
      end

   joined_external (a_type: LIBERTY_ACTUAL_TYPE; a_feature: LIBERTY_FEATURE_EXTERNAL; current_fd, other_fd: LIBERTY_FEATURE_DEFINITION): LIBERTY_FEATURE
      do
         if a_feature.definition_type = definition_type then
            current_fd.fatal_join_error_redefined_concrete(a_type, other_fd)
         end
         Result := Current
      end

   joined_once (a_type: LIBERTY_ACTUAL_TYPE; a_feature: LIBERTY_FEATURE_ONCE; current_fd, other_fd: LIBERTY_FEATURE_DEFINITION): LIBERTY_FEATURE
      do
         if a_feature.definition_type = definition_type then
            current_fd.fatal_join_error_redefined_concrete(a_type, other_fd)
         end
         Result := Current
      end

   joined_redefined (a_type: LIBERTY_ACTUAL_TYPE; a_feature: LIBERTY_FEATURE_REDEFINED; current_fd, other_fd: LIBERTY_FEATURE_DEFINITION): LIBERTY_FEATURE
      do
         Result := Current
      end

   joined_unique (a_type: LIBERTY_ACTUAL_TYPE; a_feature: LIBERTY_FEATURE_UNIQUE; current_fd, other_fd: LIBERTY_FEATURE_DEFINITION): LIBERTY_FEATURE
      do
         if a_feature.definition_type = definition_type then
            current_fd.fatal_join_error_redefined_concrete(a_type, other_fd)
         end
         Result := Current
      end

feature {LIBERTY_BUILDER_TOOLS}
   set_redefined_feature (a_feature: like redefined_feature)
      require
         only_once: redefined_feature = Void
         useful: a_feature /= Void
      do
         check
            a_feature.type_resolver /= Void
         end
         type_resolver := a_feature.type_resolver
         redefined_feature := a_feature
         set_precondition(a_feature.precondition)
         set_postcondition(a_feature.postcondition)
         set_context(a_feature.context)
         set_obsolete(a_feature.obsolete_message)
         a_feature.set_is_redefined
         type_resolver.set_the_feature(Current, True)
         torch.burn
      ensure
         redefined_feature = a_feature
      end

feature {LIBERTY_REACHABLE, LIBERTY_REACHABLE_COLLECTION_MARKER}
   mark_reachable_code (mark: INTEGER)
      local
         old_mark: like reachable_mark
      do
         old_mark := reachable_mark
         Precursor(mark)
         if old_mark < mark and then redefined_feature /= Void then
            redefined_feature.mark_reachable_code(mark)
         end
      end

feature {}
   make (a_definition_type: like definition_type)
      do
         make_late_binding(a_definition_type, Void)
      end

invariant
   not is_redefined
   redefined_feature /= Void implies redefined_feature.is_redefined
   accelerator = Void

end
