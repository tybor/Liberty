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
class LIBERTY_ACTUAL_TYPE
   --
   -- A type effectively defined, usually by an actual source file
   --

inherit
   LIBERTY_KNOWN_TYPE
      redefine
         is_equal
      end

insert
   EIFFEL_NODE_HANDLER
      undefine
         out_in_tagged_out_memory
      redefine
         is_equal
      end
   LIBERTY_ERROR_LEVELS
      undefine
         out_in_tagged_out_memory
      redefine
         is_equal
      end
   LIBERTY_ARRAY_MANIFEST_CONSTANTS
      undefine
         out_in_tagged_out_memory
      redefine
         is_equal
      end

create {LIBERTY_UNIVERSE}
   make

feature {ANY}
   current_entity: LIBERTY_CURRENT

   known_type: LIBERTY_ACTUAL_TYPE
      do
         Result := Current
      end

   file: FIXED_STRING
      do
         Result := descriptor.file
      end

   obsolete_message: STRING

   hash_code: INTEGER
      do
         Result := descriptor.hash_code
      end

   is_equal (other: like Current): BOOLEAN
      do
         Result := other = Current
      end

   is_obsolete: BOOLEAN
      do
         Result := obsolete_message /= Void
      end

   cluster: LIBERTY_CLUSTER
      do
         Result := descriptor.cluster
      end

   name: FIXED_STRING
      do
         Result := descriptor.name
      end

   parameters: TRAVERSABLE[LIBERTY_TYPE]
      do
         Result := descriptor.parameters
      end

   is_deferred: BOOLEAN
      do
         Result := runtime_category = deferred_category
      end

   is_expanded: BOOLEAN
      do
         Result := runtime_category = expanded_category
      end

   is_separate: BOOLEAN
      do
         Result := runtime_category = separate_category
      end

   is_reference: BOOLEAN
      do
         Result := runtime_category = reference_category
      end

   is_runtime_category_set: BOOLEAN
      do
         Result := runtime_category /= 0
      end

   the_invariant: LIBERTY_INVARIANT

   has_feature (a_feature_name: LIBERTY_FEATURE_NAME): BOOLEAN
      do
         Result := features.has(a_feature_name)
      end

   feature_definition (a_feature_name: LIBERTY_FEATURE_NAME): LIBERTY_FEATURE_DEFINITION
      do
         Result := features.at(a_feature_name)
      end

   type_resolver: LIBERTY_TYPE_RESOLVER_IN_TYPE

   accept (visitor: LIBERTY_TYPE_VISITOR)
      do
         visit.call([visitor, Current])
      end

   converts_to (target_type: LIBERTY_KNOWN_TYPE): BOOLEAN
      do
         Result := has_converter(target_type)
      end

   do_convert (target_type: LIBERTY_ACTUAL_TYPE; a_converter: LIBERTY_TYPE_CONVERTER)
      do
         converter(target_type).call([a_converter])
      end

   may_promote_current: BOOLEAN
         -- True if Current's type may be promoted in order to fix arithmetic operations (available only on a
         -- very few select kernel types such as integers, naturals and reals)

   is_built: BOOLEAN
      do
         Result := builder.is_built
      end

feature {LIBERTY_TYPE_LISTENER, LIBERTY_TYPE}
   add_listener (a_listener: LIBERTY_TYPE_LISTENER)
      do
         a_listener.on_type_known(Current)
         if is_built then
            a_listener.on_type_built(Current)
         else
            listeners.add_last(a_listener)
         end
      ensure then
         is_built /= has_listener(a_listener)
      end

feature {}
   fire_type_built
      local
         i: INTEGER
      do
         from
            i := listeners.lower
         until
            i > listeners.upper
         loop
            listeners.item(i).on_type_built(Current)
            i := i + 1
         end
         listeners := Void
      end

feature {LIBERTY_KNOWN_TYPE}
   full_name_in (buffer: STRING)
      local
         i: INTEGER
      do
         buffer.append(cluster.name)
         buffer.extend('.')
         buffer.append(name)
         if not parameters.is_empty then
            buffer.extend('[')
            from
               i := parameters.lower
            until
               i > parameters.upper
            loop
               if i > parameters.lower then
                  buffer.extend(',')
               end
               parameters.item(i).full_name_in(buffer)
               i := i + 1
            end
            buffer.extend(']')
         end
      end

feature {ANY}
   debug_display (o: OUTPUT_STREAM; show_features: BOOLEAN)
      local
         i: INTEGER; fn: LIBERTY_FEATURE_NAME; fd: LIBERTY_FEATURE_DEFINITION
      do
         if is_runtime_category_set then
            if is_expanded then
               o.put_string(once "expanded type ")
            elseif is_separate then
               o.put_string(once "separate type ")
            elseif is_deferred then
               o.put_string(once "deferred type ")
            else
               o.put_string(once "type ")
            end
         else
            o.put_string(once "type ")
         end
         o.put_line(full_name.out)
         o.put_string(once "   building state: ")
         o.put_line(builder.current_state.out)
         if show_features then
            from
               i := features.lower
            until
               i > features.upper
            loop
               fn := features.key(i)
               fd := features.item(i)
               check
                  fn = fd.feature_name
               end
               fd.debug_display(o, True)
               i := i + 1
            end
         end
         o.put_string(once "end -- type ")
         o.put_line(full_name.out)
      end

feature {ANY} -- Inheritance
   is_conform_to (other: LIBERTY_KNOWN_TYPE): BOOLEAN
      local
         i: INTEGER
      do
         if other = Current then
            Result := True
         elseif conformant_parents /= Void then
            from
               i := conformant_parents.lower
            until
               Result or else i > conformant_parents.upper
            loop
               Result := conformant_parents.item(i).is_conform_to(other)
               i := i + 1
            end
            if not Result and then other.same_base_class_as(Current) then
               Result := conformance_checker.inherits(other, Current)
            end
         end
      end

   is_non_conformant_child_of (other: LIBERTY_KNOWN_TYPE): BOOLEAN
      local
         i: INTEGER
      do
         if other = Current then
            Result := True
         else
            if non_conformant_parents /= Void then
               from
                  i := non_conformant_parents.lower
               until
                  Result or else i > non_conformant_parents.upper
               loop
                  Result := non_conformant_parents.item(i).is_non_conformant_child_of(other)
                  i := i + 1
               end
            end
            if conformant_parents /= Void then
               from
                  i := conformant_parents.lower
               until
                  Result or else i > conformant_parents.upper
               loop
                  Result := conformant_parents.item(i).is_non_conformant_child_of(other)
                  i := i + 1
               end
            end
            if not Result and then other.same_base_class_as(Current) then
               Result := conformance_checker.inserts(other, Current)
            end
         end
      end

feature {LIBERTY_KNOWN_TYPE}
   common_parent (other: LIBERTY_KNOWN_TYPE): LIBERTY_KNOWN_TYPE
         -- To implement `common_conformant_parent_with'.
         -- Conformant common parent lookup.
      local
         i: INTEGER; t: LIBERTY_KNOWN_TYPE
      do
         from
            i := conformant_parents.lower
         until
            Result /= Void or else i > conformant_parents.upper
         loop
            t := conformant_parents.item(i)
            check
               by_definition: other /= t -- because of the `not_trivial' precondition: not is_conform_to(other)
            end
            if other.is_conform_to(t) then
               Result := t
            else
               Result := t.common_parent(other)
            end
            i := i + 1
         end
      end

   same_base_class_as (other: LIBERTY_ACTUAL_TYPE): BOOLEAN
      do
         Result := name = other.name and then descriptor.cluster = other.descriptor.cluster
      end

feature {LIBERTY_BUILDER_TOOLS}
   set_obsolete (message: like obsolete_message)
      require
         message /= Void
      do
         obsolete_message := message
      ensure
         is_obsolete
         obsolete_message = message
      end

   set_deferred
      require
         not is_runtime_category_set
      do
         runtime_category := deferred_category
      ensure
         is_runtime_category_set
         is_deferred
      end

   set_expanded
      require
         not is_runtime_category_set
      do
         runtime_category := expanded_category
      ensure
         is_runtime_category_set
         is_expanded
      end

   set_separate
      require
         not is_runtime_category_set
      do
         runtime_category := separate_category
      ensure
         is_runtime_category_set
         is_separate
      end

   set_reference
      require
         not is_runtime_category_set
      do
         runtime_category := reference_category
      ensure
         is_runtime_category_set
         is_reference
      end

   add_parent (a_parent: LIBERTY_ACTUAL_TYPE; conformant: BOOLEAN)
      require
         a_parent /= Void
      do
         torch.burn
         if conformant then
            if conformant_parents = no_parents then
               create {FAST_ARRAY[LIBERTY_ACTUAL_TYPE]} conformant_parents.with_capacity(2)
            end
            conformant_parents.add_last(a_parent)
            debug ("type.building")
               log.trace.put_string(name)
               log.trace.put_string(once ": adding conformant parent ")
               log.trace.put_line(a_parent.name)
            end
         else
            if non_conformant_parents = no_parents then
               create {FAST_ARRAY[LIBERTY_ACTUAL_TYPE]} non_conformant_parents.with_capacity(2)
            end
            non_conformant_parents.add_last(a_parent)
            debug ("type.building")
               log.trace.put_string(name)
               log.trace.put_string(once ": adding non-conformant parent ")
               log.trace.put_line(a_parent.name)
            end
         end
      end

   features: DICTIONARY[LIBERTY_FEATURE_DEFINITION, LIBERTY_FEATURE_NAME]

   set_invariant (a_invariant: like the_invariant)
      do
         the_invariant := a_invariant
      ensure
         the_invariant = a_invariant
      end

   add_feature (a_feature: LIBERTY_FEATURE_DEFINITION)
      require
         not has_feature(a_feature.feature_name)
      do
         features.add(a_feature, a_feature.feature_name)
         torch.burn
      ensure
         has_feature(a_feature.feature_name)
         feature_definition(a_feature.feature_name) = a_feature
      end

   replace_feature (a_feature: LIBERTY_FEATURE_DEFINITION)
      require
         has_feature(a_feature.feature_name)
         feature_definition(a_feature.feature_name) /= a_feature
      local
         replaced_feature: LIBERTY_FEATURE_DEFINITION
      do
         replaced_feature := feature_definition(a_feature.feature_name)
         a_feature.copy_precursors(replaced_feature)
         features.put(a_feature, a_feature.feature_name)
         torch.burn
      ensure
         has_feature(a_feature.feature_name)
         feature_definition(a_feature.feature_name) = a_feature
      end

   descriptor_position: LIBERTY_POSITION
      do
         Result := descriptor.position
      end

feature {LIBERTY_UNIVERSE} -- Semantics building
   start_build (universe: LIBERTY_UNIVERSE)
      require
         not errors.has_error
      do
         create builder.make(Current, universe)
      end

   build_more
      require
         not is_built
      do
         builder.build_more
         if builder.is_built then
            fire_type_built
         end
      end

   set_may_promote_current
      do
         may_promote_current:= True
      ensure
         may_promote_current
      end

   add_converter (target_type: LIBERTY_ACTUAL_TYPE; a_converter: like converter)
      require
         not has_converter(target_type)
      do
         if converters = Void then
            create {HASHED_DICTIONARY[PROCEDURE[TUPLE[LIBERTY_TYPE_CONVERTER]], LIBERTY_KNOWN_TYPE]} converters.with_capacity(3)
         end
         converters.add(a_converter, target_type)
      ensure
         converter(target_type) = a_converter
      end

   has_converter (target_type: LIBERTY_KNOWN_TYPE): BOOLEAN
      do
         Result := converters /= Void and then converters.fast_has(target_type)
      end

   converter (target_type: LIBERTY_ACTUAL_TYPE): PROCEDURE[TUPLE[LIBERTY_TYPE_CONVERTER]]
      do
         Result := converters.fast_at(target_type)
      end

feature {}
   check_validity
      do
         --| TODO
      end

feature {LIBERTY_TYPE_BUILDER}
   conformant_parents: COLLECTION[LIBERTY_ACTUAL_TYPE]
   non_conformant_parents: COLLECTION[LIBERTY_ACTUAL_TYPE]

   has_no_parents: BOOLEAN
      do
         Result := conformant_parents = no_parents and then non_conformant_parents = no_parents
      end

   set_type_resolver (a_type_resolver: like type_resolver)
      require
         a_type_resolver.current_type = Current
         type_resolver = Void
      do
         type_resolver := a_type_resolver
      ensure
         type_resolver = a_type_resolver
      end

feature {LIBERTY_UNIVERSE, LIBERTY_TYPE_BUILDER}
   has_loaded_features: BOOLEAN
      do
         Result := builder.has_loaded_features
      end

feature {LIBERTY_REACHABLE, LIBERTY_REACHABLE_COLLECTION_MARKER}
   mark_reachable_code (mark: INTEGER)
      local
         i: INTEGER; param: LIBERTY_TYPE
      do
         if not is_reachable then
            torch.burn
            log.trace.put_string(once "Marked reachable the type: ")
            log.trace.put_line(full_name)
         end
         if reachable_mark < mark then
            reachable_mark := mark
            types_marker.mark_reachable_code(mark, conformant_parents)
            types_marker.mark_reachable_code(mark, non_conformant_parents)
            from
               i := parameters.lower
            until
               i > parameters.upper
            loop
               param := parameters.item(i)
               if param.is_known and then param.known_type.is_runtime_category_set and then param.known_type.is_expanded then
                  param.mark_reachable_code(mark)
               end
               i := i + 1
            end
            if has_manifest_array then
               mark_manifest_array_features(mark)
            end
         end
      end

feature {LIBERTY_SEMANTICS_BUILDER}
   set_has_manifest_array
      do
         has_manifest_array := True
         if reachable_mark > 0 then
            mark_manifest_array_features(reachable_mark)
         end
      ensure
         has_manifest_array
      end

feature {LIBERTY_TYPE_MANIFEST_ARRAY_FEATURES_LISTENER}
   mark_manifest_array_features (mark: like reachable_mark)
      local
         fd_put, fd_make, fd_creation: like feature_definition
      do
         if not is_built then
            add_listener(create {LIBERTY_TYPE_MANIFEST_ARRAY_FEATURES_LISTENER}.make(mark))
         else
            -- TODO: should do those lookups in ANY (because of possible renames)

            fd_creation := feature_definition(manifest_creation_feature_name) -- always exists (in ANY)
            if fd_creation.creation_clients = Void then
               -- TODO: error, "manifest_creation" feature should belong to the creation clause
               not_yet_implemented
            end

            if not has_feature(manifest_put_feature_name) then
               -- TODO: error, using manifest expressions but missing "manifest_put" feature
               not_yet_implemented
            else
               fd_put := feature_definition(manifest_put_feature_name)
               if fd_put.result_type /= Void then
                  -- TODO: error, "manifest_put" feature should be a procedure
                  not_yet_implemented
               end
               fd_put.mark_reachable_code(mark)
            end

            if not has_feature(manifest_make_feature_name) then
               -- TODO: error, using manifest expressions but missing "manifest_make" feature
               not_yet_implemented
            else
               fd_make := feature_definition(manifest_make_feature_name)
               if fd_make.result_type /= Void then
                  -- TODO: error, "manifest_make" feature should be a procedure
                  not_yet_implemented
               end
               fd_make.mark_reachable_code(mark)
            end
         end
      end

feature {}
   types_marker: LIBERTY_REACHABLE_COLLECTION_MARKER[LIBERTY_ACTUAL_TYPE]

feature {LIBERTY_UNIVERSE, LIBERTY_ACTUAL_TYPE}
   descriptor: LIBERTY_TYPE_DESCRIPTOR

feature {LIBERTY_AST_HANDLER}
   ast: LIBERTY_AST_ONE_CLASS

feature {}
   make (a_descriptor: like descriptor; a_conformance_checker: like conformance_checker; a_ast: like ast; a_visit: like visit)
      require
         a_descriptor /= Void
         a_conformance_checker /= Void
         a_visit /= Void
      do
         descriptor := a_descriptor
         conformance_checker := a_conformance_checker
         ast := a_ast
         create {HASHED_DICTIONARY[LIBERTY_FEATURE_DEFINITION, LIBERTY_FEATURE_NAME]} features.with_capacity(50) -- ANY contains 50 features
         conformant_parents := no_parents
         non_conformant_parents := no_parents
         visit := a_visit
         create current_entity.make(Current, errors.unknown_position)
         create result_entity.make(Current, errors.unknown_position)
         create {FAST_ARRAY[LIBERTY_TYPE_LISTENER]} listeners.with_capacity(2)
         debug ("full_name")
            debug_full_name := full_name.out
         end
      ensure
         descriptor = a_descriptor
         conformance_checker = a_conformance_checker
         ast = a_ast
         not_yet_reachable: not is_reachable
      end

   runtime_category: INTEGER_8

   deferred_category: INTEGER_8 1
   expanded_category: INTEGER_8 2
   separate_category: INTEGER_8 4
   reference_category: INTEGER_8 8

   errors: LIBERTY_ERRORS
   builder: LIBERTY_TYPE_BUILDER
   visit: PROCEDURE[TUPLE[LIBERTY_TYPE_VISITOR, LIBERTY_ACTUAL_TYPE]]

   no_parents: COLLECTION[LIBERTY_ACTUAL_TYPE]
      once
         create {FAST_ARRAY[LIBERTY_ACTUAL_TYPE]} Result.with_capacity(0)
      end

   conformance_checker: LIBERTY_GENERICS_CONFORMANCE_CHECKER

   converters: DICTIONARY[PROCEDURE[TUPLE[LIBERTY_TYPE_CONVERTER]], LIBERTY_KNOWN_TYPE]
         -- actually contains only LIBERTY_ACTUAL_TYPE objects but it helps to be able to check against
         -- LIBERTY_VOID_TYPE

   has_manifest_array: BOOLEAN
         -- True if some manifest array expression builds an object of this type

   debug_full_name: STRING

invariant
   descriptor /= Void
   file /= Void
   features /= Void
   features.for_all(agent (fd: LIBERTY_FEATURE_DEFINITION; fn: LIBERTY_FEATURE_NAME): BOOLEAN
      do
         Result := fd.feature_name.is_equal(fn)
            and then fd.current_type = Current
      end
   )
   parameters /= Void
   visit /= Void
   cluster /= Void

   conformant_parents /= Void
   non_conformant_parents /= Void

   builder /= Void implies builder.type = Current

   current_entity /= Void
   result_entity /= Void

end -- class LIBERTY_ACTUAL_TYPE
