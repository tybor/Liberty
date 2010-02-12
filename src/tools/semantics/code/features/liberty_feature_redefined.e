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
		redefine mark_reachable_code
		end

create {LIBERTY_TYPE_BUILDER_TOOLS}
	make

feature {ANY}
	debug_display (o: OUTPUT_STREAM; tab: INTEGER) is
		do
			tabulate(o, tab)
			o.put_line(once "redefine")
			if redefined_feature = Void then
				tabulate(o, tab + 1)
				o.put_line(once "(unknown or unattached redefined feature)")
			else
				redefined_feature.debug_display(o, tab + 1)
			end
		end

feature {LIBERTY_FEATURE_DEFINITION}
	join (a_feature: LIBERTY_FEATURE; current_fd, other_fd: LIBERTY_FEATURE_DEFINITION): LIBERTY_FEATURE is
		do
			Result := a_feature.joined_redefined(Current, other_fd, current_fd)
		end

feature {LIBERTY_FEATURE}
	joined_attribute (a_feature: LIBERTY_FEATURE_ATTRIBUTE; current_fd, other_fd: LIBERTY_FEATURE_DEFINITION): LIBERTY_FEATURE is
		do
			if a_feature.definition_type = definition_type then
				current_fd.fatal_join_error_redefined_concrete(other_fd)
			end
			Result := Current
		end

	joined_constant (a_feature: LIBERTY_FEATURE_CONSTANT; current_fd, other_fd: LIBERTY_FEATURE_DEFINITION): LIBERTY_FEATURE is
		do
			if a_feature.definition_type = definition_type then
				current_fd.fatal_join_error_redefined_concrete(other_fd)
			end
			Result := Current
		end

	joined_deferred (a_feature: LIBERTY_FEATURE_DEFERRED; current_fd, other_fd: LIBERTY_FEATURE_DEFINITION): LIBERTY_FEATURE is
		do
			if a_feature.definition_type = definition_type then
				--| *** TODO: warning, mixed undefine and redefine, expected redefinition
			end
			Result := Current
		end

	joined_do (a_feature: LIBERTY_FEATURE_DO; current_fd, other_fd: LIBERTY_FEATURE_DEFINITION): LIBERTY_FEATURE is
		do
			if a_feature.definition_type = definition_type then
				current_fd.fatal_join_error_redefined_concrete(other_fd)
			end
			Result := Current
		end

	joined_external (a_feature: LIBERTY_FEATURE_EXTERNAL; current_fd, other_fd: LIBERTY_FEATURE_DEFINITION): LIBERTY_FEATURE is
		do
			if a_feature.definition_type = definition_type then
				current_fd.fatal_join_error_redefined_concrete(other_fd)
			end
			Result := Current
		end

	joined_once (a_feature: LIBERTY_FEATURE_ONCE; current_fd, other_fd: LIBERTY_FEATURE_DEFINITION): LIBERTY_FEATURE is
		do
			if a_feature.definition_type = definition_type then
				current_fd.fatal_join_error_redefined_concrete(other_fd)
			end
			Result := Current
		end

	joined_redefined (a_feature: LIBERTY_FEATURE_REDEFINED; current_fd, other_fd: LIBERTY_FEATURE_DEFINITION): LIBERTY_FEATURE is
		do
			Result := Current
		end

	joined_unique (a_feature: LIBERTY_FEATURE_UNIQUE; current_fd, other_fd: LIBERTY_FEATURE_DEFINITION): LIBERTY_FEATURE is
		do
			if a_feature.definition_type = definition_type then
				current_fd.fatal_join_error_redefined_concrete(other_fd)
			end
			Result := Current
		end

feature {LIBERTY_TYPE_BUILDER_TOOLS}
	set_redefined_feature (a_feature: like redefined_feature) is
		require
			only_once: redefined_feature = Void
			useful: a_feature /= Void
		do
			redefined_feature := a_feature
			set_precondition(a_feature.precondition)
			set_postcondition(a_feature.postcondition)
			set_context(a_feature.context)
			set_obsolete(a_feature.obsolete_message)
			torch.burn
		ensure
			redefined_feature = a_feature
		end

	redefined_feature: LIBERTY_FEATURE

feature {LIBERTY_REACHABLE, LIBERTY_REACHABLE_COLLECTION_MARKER}
	mark_reachable_code (mark: INTEGER) is
		local
			old_mark: like reachable_mark
		do
			old_mark := reachable_mark
			Precursor(mark)
			if old_mark < mark and then redefined_feature /= Void then
				redefined_feature.mark_reachable_code(mark)
			end
		end

end