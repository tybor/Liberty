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
class LIBERTY_FEATURE_DEFINITION

inherit
   LIBERTY_ENTITY
      redefine copy, out_in_tagged_out_memory
      end

insert
   LIBERTY_REACHABLE_MARKED
      redefine
         copy, out_in_tagged_out_memory
      end
   LOGGING
      redefine
         copy, out_in_tagged_out_memory
      end

create {LIBERTY_BUILDER_TOOLS}
   make

create {LIBERTY_FEATURE_DEFINITION}
   specialized

feature {ANY}
   feature_name: LIBERTY_FEATURE_NAME
   creation_clients: COLLECTION[LIBERTY_TYPE]
   clients: COLLECTION[LIBERTY_TYPE]

   is_frozen: BOOLEAN
   the_feature: LIBERTY_FEATURE

   current_type: LIBERTY_ACTUAL_TYPE

   out_in_tagged_out_memory
      do
         tagged_out_memory.append(once "feature definition: ")
         feature_name.out_in_tagged_out_memory
      end

   name: FIXED_STRING
      do
         Result := feature_name.name
      end

   is_regular: BOOLEAN
      do
         Result := feature_name.is_regular
      end

   is_prefix: BOOLEAN
      do
         Result := feature_name.is_prefix
      end

   is_infix: BOOLEAN
      do
         Result := feature_name.is_infix
      end

   is_creation: BOOLEAN
      do
         Result := creation_clients /= Void
      end

   result_type: LIBERTY_TYPE
      do
         if the_feature /= Void then
            Result := the_feature.result_type
         else
            -- should not happen??
            not_yet_implemented
         end
      end

   copy (other: like Current)
      do
         feature_name := other.feature_name
         current_type := other.current_type
         clients := other.clients.twin
         is_frozen := other.is_frozen
         the_feature := other.the_feature
      end

   specialized_in (a_type: LIBERTY_ACTUAL_TYPE): like Current
      local
         cl, ccl: COLLECTION[LIBERTY_TYPE]
         f, pf: like the_feature
         p: like precursors
         i: INTEGER
      do
         debug ("feature.specialization")
            log.trace.put_string(once "Specializing in ")
            log.trace.put_string(a_type.full_name)
            debug_display(log.trace, False)
         end
         cl := specialized_clients(clients, a_type)
         if creation_clients /= Void then
            ccl := specialized_clients(creation_clients, a_type)
         end
         if the_feature /= Void then
            f := the_feature.specialized_in(a_type)
         end
         p := precursors
         if p /= Void then
            from
               i := p.lower
            until
               i > p.upper
            loop
               pf := p.item(i).specialized_in(a_type)
               if pf /= p.item(i) then
                  if p = precursors then
                     p := p.twin
                  end
                  p.fast_put(pf, p.key(i))
               end
               i := i + 1
            end
         end
         if a_type = current_type and then cl = clients and then ccl = creation_clients and then f = the_feature and then p = precursors then
            Result := Current
         else
            create Result.specialized(feature_name, f.current_type, ccl, cl, is_frozen, f, p, position)
         end
         debug ("feature.specialization")
            log.trace.put_string(once "Specialized in ")
            log.trace.put_string(a_type.full_name)
            log.trace.put_string(once ": ")
            Result.debug_display(log.trace, True)
         end
      end

feature {}
   specialized_clients (a_clients: like clients; a_type: LIBERTY_ACTUAL_TYPE): like clients
      require
         a_type /= Void
         a_clients /= Void
      local
         t: LIBERTY_TYPE
         i: INTEGER
      do
         from
            Result := a_clients
            i := Result.lower
         until
            i > Result.upper
         loop
            t := Result.item(i).specialized_in(a_type)
            if t /= Result.item(i) then
               if Result = a_clients then
                  Result := Result.twin
               end
               Result.put(t, i)
            end
            i := i + 1
         end
      end

feature {LIBERTY_UNIVERSE}
   set_reachable (mark: like reachable_mark)
      do
         if not is_reachable then
            log.trace.put_string(once "Marked reachable the feature definition: ")
            log.trace.put_line(feature_name.name)
            torch.burn
         end

         if reachable_mark < mark then
            reachable_mark := mark
            if the_feature /= Void then
               the_feature.mark_reachable_code(mark)
            end
         end
      end

feature {LIBERTY_REACHABLE, LIBERTY_REACHABLE_COLLECTION_MARKER}
   mark_reachable_code (mark: INTEGER)
      do
         set_reachable(mark)
      end

feature {ANY}
   debug_display (o: OUTPUT_STREAM; show_details: BOOLEAN)
      do
         o.put_string(once "   feature ")
         debug_clients(o, clients)
         if is_creation then
            o.put_string(once " create ")
            debug_clients(o, creation_clients)
         end
         if is_frozen then
            o.put_string(once " frozen")
         end
         if is_prefix then
            o.put_string(once " prefix ")
         elseif is_infix then
            o.put_string(once " infix ")
         else
            o.put_character(' ')
         end
         o.put_string(name.out)
         if show_details then
            if the_feature = Void then
               o.put_line(once " is not yet attached")
            else
               o.put_line(once " is")
               the_feature.debug_display(o, 2)
               o.put_line(once "      end")
            end
         else
            o.put_new_line
         end
      end

feature {}
   debug_clients (o: OUTPUT_STREAM; c: like clients)
      local
         i: INTEGER
      do
         o.put_character('{')
         from
            i := c.lower
         until
            i > c.upper
         loop
            o.put_string(c.item(i).full_name.out)
            if i < c.upper then
               o.put_string(once ", ")
            end
            i := i + 1
         end
         o.put_character('}')
      end

feature {LIBERTY_BUILDER_TOOLS}
   set_clients (a_clients: like clients)
      require
         a_clients /= Void
      do
         clients := a_clients
      ensure
         clients = a_clients
      end

   set_the_feature (a_feature: like the_feature)
      require
         a_feature.current_type = current_type
      do
         the_feature := a_feature
      ensure
         the_feature = a_feature
      end

   set_creation_clients (a_creation_clients: like creation_clients)
      require
         a_creation_clients /= Void
      do
         creation_clients := a_creation_clients
      ensure
         is_creation
         creation_clients = a_creation_clients
      end

   join (fd: like Current; a_parent_type: LIBERTY_ACTUAL_TYPE)
      require
         fd.current_type = current_type
         fd.has_precursor(a_parent_type)
      local
         old_feature: like the_feature
      do
         if not same_clients(fd.clients) then
            --| *** TODO: warning: the inherited features don't have the same export clauses (the second set
            --| is ignored)
         end
         old_feature := the_feature
         if fd.the_feature /= Void then
            if old_feature = Void then
               the_feature := fd.the_feature
            elseif old_feature.id /= fd.the_feature.id then
               the_feature := old_feature.join(current_type, fd.the_feature, Current, fd)
            end
         end
         if not has_precursor(a_parent_type) then
            add_precursor(fd.precursor_feature(a_parent_type), a_parent_type)
         else
            check
               precursor_feature(a_parent_type) = fd.precursor_feature(a_parent_type)
            end
         end
      ensure
         has_precursor(a_parent_type)
      end

   re_name (a_name: like feature_name)
      require
         a_name /= Void
      do
         feature_name := a_name
      ensure
         feature_name = a_name
      end

feature {LIBERTY_FEATURE, LIBERTY_FEATURE_DEFINITION}
   fatal_join_error_redefined_concrete (type: LIBERTY_ACTUAL_TYPE; with: LIBERTY_FEATURE_DEFINITION)
      do
         debug ("type.building")
            log.trace.put_string(once "Cannot join redefined feature ")
            log.trace.put_string(feature_name.name)
            log.trace.put_string(once " from ")
            log.trace.put_string(the_feature.definition_type.full_name)
            log.trace.put_string(once " with concrete feature ")
            log.trace.put_string(with.feature_name.name)
            log.trace.put_string(once " from ")
            log.trace.put_string(with.the_feature.definition_type.full_name)
            log.trace.put_string(once " in type ")
            log.trace.put_line(type.full_name)
            breakpoint
         end
         not_yet_implemented
      ensure
         errors.has_error
      end

   fatal_join_error_concrete_redefined (type: LIBERTY_ACTUAL_TYPE; with: LIBERTY_FEATURE_DEFINITION)
      do
         with.fatal_join_error_redefined_concrete(type, Current)
      ensure
         errors.has_error
      end

   fatal_join_error_concrete_concrete (type: LIBERTY_ACTUAL_TYPE; with: LIBERTY_FEATURE_DEFINITION)
      do
         debug ("type.building")
            log.trace.put_string(once "Cannot join concrete feature ")
            log.trace.put_string(feature_name.name)
            log.trace.put_string(once " from ")
            log.trace.put_string(the_feature.definition_type.full_name)
            log.trace.put_string(once " with concrete feature ")
            log.trace.put_string(with.feature_name.name)
            log.trace.put_string(once " from ")
            log.trace.put_string(with.the_feature.definition_type.full_name)
            log.trace.put_string(once " in type ")
            log.trace.put_line(type.full_name)
            breakpoint
         end
         not_yet_implemented
      ensure
         errors.has_error
      end

feature {LIBERTY_BUILDER_TOOLS, LIBERTY_FEATURE_DEFINITION}
   add_precursor (a_precursor_feature: LIBERTY_FEATURE; a_precursor_type: LIBERTY_ACTUAL_TYPE)
      require
         not has_precursor(a_precursor_type)
         a_precursor_feature.current_type = current_type
      do
         if precursors = Void then
            create {HASHED_DICTIONARY[LIBERTY_FEATURE, LIBERTY_ACTUAL_TYPE]} precursors.with_capacity(3)
         end
         precursors.add(a_precursor_feature, a_precursor_type)
         torch.burn
      ensure
         precursor_feature(a_precursor_type) = a_precursor_feature
      end

   has_precursor (a_precursor_type: LIBERTY_ACTUAL_TYPE): BOOLEAN
      do
         if precursors /= Void then
            if a_precursor_type /= Void then
               Result := precursors.fast_has(a_precursor_type)
            else
               Result := precursors.count = 1
            end
         end
      end

   precursor_feature (a_precursor_type: LIBERTY_ACTUAL_TYPE): LIBERTY_FEATURE
      require
         has_precursor(a_precursor_type)
      do
         if a_precursor_type /= Void then
            Result := precursors.fast_at(a_precursor_type)
         else
            Result := precursors.first
         end
      end

feature {LIBERTY_ACTUAL_TYPE}
   copy_precursors (other: like Current)
      local
         f: LIBERTY_FEATURE; t: LIBERTY_ACTUAL_TYPE
         i: INTEGER
      do
         if other.precursors /= Void then
            if precursors = Void then
               precursors := other.precursors
            else
               from
                  i := precursors.lower
               until
                  i > precursors.upper
               loop
                  t := precursors.key(i)
                  f := precursors.item(i)
                  if precursors.fast_has(t) then
                     breakpoint
                  else
                     precursors.add(f, t)
                  end
                  i := i + 1
               end
            end
         end
      end

feature {}
   same_clients (a_clients: like clients): BOOLEAN
      do
         Result := clients.count = a_clients.count
            and then include(clients, a_clients)
            and then include(a_clients, clients)
      end

   include (set, subset: like clients): BOOLEAN
      local
         i, j: INTEGER
      do
         from
            Result := set.count >= subset.count
            i := subset.lower
         until
            not Result or else i > subset.upper
         loop
            from
               Result := False
               j := set.lower
            until
               Result or else j > set.upper
            loop
               Result := set.item(j) = subset.item(i)
               j := j + 1
            end
            i := i + 1
         end
      end

feature {}
   make (a_name: like feature_name; a_type: like current_type; a_clients: like clients; a_frozen: like is_frozen; a_position: like position)
      require
         a_name /= Void
         a_type /= Void
         a_clients /= Void
         a_position /= Void
      do
         feature_name := a_name
         current_type := a_type
         clients := a_clients
         is_frozen := a_frozen
         position := a_position

         debug ("full_name")
            debug_full_name := a_name.full_name.out
         end
      ensure
         feature_name = a_name
         current_type = a_type
         clients = a_clients
         is_frozen = a_frozen
         position = a_position
      end

   specialized (a_name: like feature_name; a_type: like current_type; a_creation_clients: like creation_clients; a_clients: like clients;
                a_frozen: like is_frozen; a_feature: like the_feature; a_precursors: like precursors; a_position: like position)
      do
         make(a_name, a_type, a_clients, a_frozen, a_position)
         the_feature := a_feature
         precursors := a_precursors
         if a_creation_clients /= Void then
            set_creation_clients(a_creation_clients)
         end

         debug ("full_name")
            debug_full_name := a_name.full_name.out
         end
      end

   torch: LIBERTY_ENLIGHTENING_THE_WORLD
   errors: LIBERTY_ERRORS

   debug_full_name: STRING

feature {LIBERTY_FEATURE_DEFINITION}
   precursors: DICTIONARY[LIBERTY_FEATURE, LIBERTY_ACTUAL_TYPE]
         -- For correct "Precursor" management. All the features have the same `current_type'.

feature {ANY}
   accept (v: VISITOR)
      local
         v0: LIBERTY_FEATURE_DEFINITION_VISITOR
      do
         v0 ::= v
         v0.visit_liberty_feature_definition(Current)
      end

invariant
   feature_name /= Void
   clients /= Void
   the_feature /= Void implies the_feature.current_type = current_type

end
