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
class LIBERTY_UNIVERSE

insert
   LIBERTY_ERROR_LEVELS
      undefine is_equal
      end
   LIBERTY_AST_HANDLER
      undefine is_equal
      end
   LIBERTY_ERROR_LEVELS
      undefine is_equal
      end
   SINGLETON
   LOGGING
      undefine is_equal
      end

create {ANY}
   make

feature {ANY}
   get_type (cluster: LIBERTY_CLUSTER; position: LIBERTY_POSITION; class_name: FIXED_STRING; effective_type_parameters: TRAVERSABLE[LIBERTY_ACTUAL_TYPE]): LIBERTY_ACTUAL_TYPE
      require
         position /= Void
      do
         Result := do_get_type(cluster, position, class_name, effective_type_parameters)
      ensure
         Result.name.is_equal(class_name)
         same_parameters(Result.parameters, effective_type_parameters)
      end

   parse_expression (a_expression: STRING; when_error: PROCEDURE[TUPLE[PARSE_ERROR]]): LIBERTY_AST_EXPRESSION
      require
         a_expression /= Void
         when_error /= Void
      do
         Result ::= partial_parse(a_expression, once "Expression", when_error)
      end

   parse_instruction (a_instruction: STRING; when_error: PROCEDURE[TUPLE[PARSE_ERROR]]): LIBERTY_AST_INSTRUCTION
      require
         a_instruction /= Void
         when_error /= Void
      do
         Result ::= partial_parse(a_instruction, once "Instruction", when_error)
      end

   build_types (root_type: LIBERTY_ACTUAL_TYPE; root_feature_name: LIBERTY_FEATURE_NAME; target_type: LIBERTY_ACTUAL_TYPE)
      require
         target_type /= Void
      local
         flame: LIBERTY_FLAME
         incubator: like types_incubator
      do
         if not target_type.is_built then
            create incubator.with_capacity(1024, 0) --|TODO optim: replace by an attribute
            from
            until
               types_incubator.is_empty or else target_type.is_built
            loop
               flame := torch.flame
               build_to_incubator(incubator, target_type)
               mark_reachable_code(root_type, root_feature_name)
               resolve_delayed_types
               if types_incubator.is_empty then
                  incubator := check_flame_and_swap_incubator(flame, incubator)
               end
            end
            if not incubator.is_empty then
               -- don't lose work
               types_incubator.append_traversable(incubator)
            end
            debug ("type.building")
               debug_types(types_incubator)
               if target_type.is_built then
                  log.trace.put_string(once "Type is ready: ")
                  log.trace.put_line(target_type.full_name)
               else
                  log.trace.put_string(once "Type is NOT READY: ")
                  log.trace.put_line(target_type.full_name)
                  breakpoint
               end
            end
         end
      ensure
         target_type.is_built
      end

feature {ANY} -- Kernel types
   type_any: LIBERTY_ACTUAL_TYPE
      require
         not errors.has_error
      once
         Result := kernel_type("ANY".intern, visit_type_any)
      end

   type_arguments: LIBERTY_ACTUAL_TYPE
      require
         not errors.has_error
      once
         Result := kernel_type("ARGUMENTS".intern, visit_type_arguments)
      end

   type_platform: LIBERTY_ACTUAL_TYPE
      require
         not errors.has_error
      once
         Result := kernel_type("PLATFORM".intern, visit_type_platform)
      end

   type_pointer: LIBERTY_ACTUAL_TYPE
      require
         not errors.has_error
      once
         Result := kernel_type("POINTER".intern, visit_type_pointer)
      end

   type_integer_64: LIBERTY_ACTUAL_TYPE
      require
         not errors.has_error
      once
         Result := kernel_type("INTEGER_64".intern, visit_type_integer_64)
         Result.add_converter(type_real_128, convert_integer_64_real_128)
         Result.add_converter(type_real_80, convert_integer_64_real_80)
         Result.set_may_promote_current
      end

   type_integer, type_integer_32: LIBERTY_ACTUAL_TYPE
      require
         not errors.has_error
      once
         Result := kernel_type("INTEGER_32".intern, visit_type_integer_32)
         Result.add_converter(type_integer_64, convert_integer_32_64)
         Result.add_converter(type_real_128, convert_integer_32_real_128)
         Result.add_converter(type_real_80, convert_integer_32_real_80)
         Result.add_converter(type_real_64, convert_integer_32_real_64)
         Result.set_may_promote_current
      end

   type_integer_16: LIBERTY_ACTUAL_TYPE
      require
         not errors.has_error
      once
         Result := kernel_type("INTEGER_16".intern, visit_type_integer_16)
         Result.add_converter(type_integer_32, convert_integer_16_32)
         Result.add_converter(type_integer_64, convert_integer_16_64)
         Result.add_converter(type_real_128, convert_integer_16_real_128)
         Result.add_converter(type_real_80, convert_integer_16_real_80)
         Result.add_converter(type_real_64, convert_integer_16_real_64)
         Result.add_converter(type_real_32, convert_integer_16_real_32)
         Result.set_may_promote_current
      end

   type_integer_8: LIBERTY_ACTUAL_TYPE
      require
         not errors.has_error
      once
         Result := kernel_type("INTEGER_8".intern, visit_type_integer_8)
         Result.add_converter(type_integer_16, convert_integer_8_16)
         Result.add_converter(type_integer_32, convert_integer_8_32)
         Result.add_converter(type_integer_64, convert_integer_8_64)
         Result.add_converter(type_real_128, convert_integer_8_real_128)
         Result.add_converter(type_real_80, convert_integer_8_real_80)
         Result.add_converter(type_real_64, convert_integer_8_real_64)
         Result.add_converter(type_real_32, convert_integer_8_real_32)
         Result.set_may_promote_current
      end

   type_real_128: LIBERTY_ACTUAL_TYPE
      require
         not errors.has_error
      once
         Result := kernel_type("REAL_128".intern, visit_type_real_128)
         Result.set_may_promote_current
      end

   type_real_80: LIBERTY_ACTUAL_TYPE
      require
         not errors.has_error
      once
         Result := kernel_type("REAL_80".intern, visit_type_real_80)
         Result.add_converter(type_real_128, convert_real_80_128)
         Result.set_may_promote_current
      end

   type_real, type_real_64: LIBERTY_ACTUAL_TYPE
      require
         not errors.has_error
      once
         Result := kernel_type("REAL_64".intern, visit_type_real_64)
         Result.add_converter(type_real_80, convert_real_64_80)
         Result.add_converter(type_real_128, convert_real_64_128)
         Result.set_may_promote_current
      end

   type_real_32: LIBERTY_ACTUAL_TYPE
      require
         not errors.has_error
      once
         Result := kernel_type("REAL_32".intern, visit_type_real_32)
         Result.add_converter(type_real_64, convert_real_32_64)
         Result.add_converter(type_real_80, convert_real_32_80)
         Result.add_converter(type_real_128, convert_real_32_128)
         Result.set_may_promote_current
      end

   type_character: LIBERTY_ACTUAL_TYPE
      require
         not errors.has_error
      once
         Result := kernel_type("CHARACTER".intern, visit_type_character)
      end

   type_string: LIBERTY_ACTUAL_TYPE
      require
         not errors.has_error
      once
         Result := kernel_type("STRING".intern, visit_type_string)
      end

   type_boolean: LIBERTY_ACTUAL_TYPE
      require
         not errors.has_error
      once
         Result := kernel_type("BOOLEAN".intern, visit_type_boolean)
      end

   type_native_array (effective_generics: TRAVERSABLE[LIBERTY_TYPE]; position: LIBERTY_POSITION): LIBERTY_ACTUAL_TYPE
      require
         not errors.has_error
      local
         td: LIBERTY_TYPE_DESCRIPTOR
         ast: LIBERTY_AST_ONE_CLASS
      do
         create td.make(native_array_class_descriptor, effective_generics)
         Result := types.reference_at(td)
         if Result = Void then
            ast := parse_class(td.cluster, td.name, Void)
            create Result.make(td, standard_generics_checker, ast, visit_type_native_array)
            start_to_build_type(Result)
         end
      ensure
         Result /= Void
      end

   type_tuple (effective_generics: TRAVERSABLE[LIBERTY_TYPE]; position: LIBERTY_POSITION): LIBERTY_ACTUAL_TYPE
      require
         effective_generics /= Void
         not errors.has_error
      local
         td: LIBERTY_TYPE_DESCRIPTOR
         tuple_ast: LIBERTY_AST_CLASSES
         ast: LIBERTY_AST_ONE_CLASS
         tuple_count: INTEGER
      do
         tuple_count := effective_generics.count
         create td.make(tuple_class_descriptor, effective_generics)
         Result := types.reference_at(td)
         if Result = Void then
            tuple_ast := parse_tuple_classes(Void)
            check tuple_ast.classes.lower = 0 end
            if tuple_count > tuple_ast.classes.upper then
               errors.add_position(position)
               errors.set(level_fatal_error, "TUPLE does not support more than " + tuple_ast.classes.upper.out
                          + " generic parameters.%NYou might want a named class with named attributes instead.")
            end
            ast ::= tuple_ast.classes.item(tuple_count)
            create Result.make(td, tuple_generics_checker, ast, visit_type_tuple)
            start_to_build_type(Result)
         end
      ensure
         Result /= Void
      end

   type_routine (effective_generics: TRAVERSABLE[LIBERTY_TYPE]; position: LIBERTY_POSITION): LIBERTY_ACTUAL_TYPE
      require
         effective_generics /= Void
      do
         Result := agent_type(routine_class_descriptor, {FAST_ARRAY[LIBERTY_TYPE] << type_tuple(effective_generics, position) >> }, position, visit_type_routine)
      end

   type_procedure (effective_generics: TRAVERSABLE[LIBERTY_TYPE]; position: LIBERTY_POSITION): LIBERTY_ACTUAL_TYPE
      require
         effective_generics /= Void
      do
         Result := agent_type(procedure_class_descriptor, {FAST_ARRAY[LIBERTY_TYPE] << type_tuple(effective_generics, position) >> }, position, visit_type_procedure)
      end

   type_function (effective_generics: TRAVERSABLE[LIBERTY_TYPE]; result_type: LIBERTY_TYPE; position: LIBERTY_POSITION): LIBERTY_ACTUAL_TYPE
      require
         effective_generics /= Void
         result_type /= Void
      do
         Result := agent_type(function_class_descriptor, {FAST_ARRAY[LIBERTY_TYPE] << type_tuple(effective_generics, position), result_type >> }, position, visit_type_function)
      end

   type_predicate (effective_generics: TRAVERSABLE[LIBERTY_TYPE]; position: LIBERTY_POSITION): LIBERTY_ACTUAL_TYPE
      require
         effective_generics /= Void
      do
         Result := agent_type(predicate_class_descriptor, {FAST_ARRAY[LIBERTY_TYPE] << type_tuple(effective_generics, position) >> }, position, visit_type_predicate)
      end

feature {} -- Partial parsing of command-line buffer (for the debugger and REPL)
   partial_parse (a_entry, a_root_atom_name: STRING; when_error: PROCEDURE[TUPLE[PARSE_ERROR]]): LIBERTY_AST_NON_TERMINAL_NODE
      require
         a_entry /= Void
         when_error /= Void
      local
         evaled: BOOLEAN
      do
         parser_buffer.initialize_with(a_entry)
         eiffel.reset
         evaled := parser.eval(parser_buffer, eiffel.table, a_root_atom_name)
         if evaled then
            if parser.error /= Void then
               when_error.call([parser.error])
            else
               Result ::= eiffel.root_node
            end
         end
      end

feature {}
   reachable_counter: COUNTER
      once
         create Result
      end

   mark_reachable_code (root_type: LIBERTY_ACTUAL_TYPE; root_feature_name: LIBERTY_FEATURE_NAME)
      local
         root_feature: LIBERTY_FEATURE_DEFINITION
      do
         reachable_counter.increment
         root_type.set_reachable(reachable_counter.value)
         if root_type.has_loaded_features then
            if not root_type.has_feature(root_feature_name) then
               errors.set(level_fatal_error,
                          "Am I blind or what? I cannot find any method '" + root_feature_name.name
                          + "' feature in the type " + root_type.full_name + "!")
               die_with_code(1)
            end
            root_feature := root_type.feature_definition(root_feature_name)
            reachable_counter.increment
            debug ("mark.reachable")
               log.trace.put_string(once " +++ Marking reachable code (")
               log.trace.put_integer(reachable_counter.value)
               log.trace.put_line(once ")...")
            end
            root_feature.set_reachable(reachable_counter.value)
            debug ("mark.reachable")
               log.trace.put_line(once "     Reachable code marked.")
            end
         end
      end

   resolve_delayed_types
      local
         delayed_types: COLLECTION[LIBERTY_DELAYED_TYPE]
         delayed_type: LIBERTY_DELAYED_TYPE
         i, n: INTEGER; more: BOOLEAN
      do
         delayed_types := type_lookup.resolver.delayed_types
         from
            more := True
         until
            not more or else delayed_types.is_empty
         loop
            more := False
            from
               n := delayed_types.count
            until
               n = 0
            loop
               delayed_type := delayed_types.first
               delayed_types.remove_first
               check
                  not delayed_type.is_known
               end
               if delayed_type.can_resolve then
                  delayed_type.resolve
                  debug ("type.resolution")
                     log.trace.put_string(once " ===> resolved ")
                     log.trace.put_line(delayed_type.out)
                  end
                  more := True
               else
                  delayed_types.add_last(delayed_type)
               end
               n := n - 1
            end
         end
         debug ("type.resolution")
            log.trace.put_line(once "======================================================================")
            from
               i := delayed_types.lower
            until
               i > delayed_types.upper
            loop
               log.trace.put_line(delayed_types.item(i).out)
               i := i + 1
            end
            log.trace.put_string(once " === ")
            log.trace.put_integer(delayed_types.count)
            if delayed_types.count = 1 then
               log.trace.put_line(once " delayed type yet to be resolved.")
            else
               log.trace.put_line(once " delayed types yet to be resolved.")
            end
         end
      end

   build_to_incubator (incubator: like types_incubator; target_type: LIBERTY_ACTUAL_TYPE)
      require
         not types_incubator.is_empty
         not target_type.is_built
      local
         type: LIBERTY_ACTUAL_TYPE
      do
         from
         until
            types_incubator.is_empty or else target_type.is_built
         loop
            target_type.build_more
            type := types_incubator.first
            types_incubator.remove_first
            if not type.is_built then
               type.build_more
               if not type.is_built then
                  incubator.add_last(type)
               end
            end
         end
      end

   check_flame_and_swap_incubator (flame: LIBERTY_FLAME; incubator: like types_incubator): like types_incubator
      require
         types_incubator.is_empty
      do
         if not torch.still_burns(flame) then
            clean_unreachable_types(incubator)
            if not incubator.is_empty then
               debug ("error")
                  debug_types(incubator)
               end
               errors.set(level_system_error, once "It looks like I miss some data but the hell if I know what.")
               check
                  dead: False
               end
            end
         end
         Result := types_incubator
         types_incubator := incubator
         debug
            log.trace.put_line(once "Swapped incubator")
         end
      ensure
         types_incubator = incubator
         Result = old types_incubator
      end

   clean_unreachable_types (incubator: like types_incubator)
      local
         i: INTEGER
      do
         clean_unreachable_types_from_incubator(incubator)
         from
            i := types.lower
         until
            i > types.upper
         loop
            if not types.item(i).is_reachable then
               types.fast_remove(types.key(i))
            else
               i := i + 1
            end
         end
      end

   clean_unreachable_types_from_incubator (incubator: like types_incubator)
      local
         i: INTEGER
      do
         from
            i := incubator.lower
         until
            i > incubator.upper
         loop
            if not incubator.item(i).is_reachable then
               debug
                  log.trace.put_string(once "Removing ")
                  log.trace.put_string(incubator.item(i).full_name)
                  log.trace.put_line(once ": not reachable")
               end
               incubator.remove(i)
            else
               i := i + 1
            end
         end
      end

feature {} -- debug
   debug_types (incubator: like types_incubator)
      local
         i: INTEGER
         all_types: FAST_ARRAY[LIBERTY_ACTUAL_TYPE]
         c: COMPARATOR_COLLECTION_SORTER[LIBERTY_ACTUAL_TYPE]
      do
         from
            create all_types.with_capacity(types.count)
            c.set_comparator(agent debug_compare_type_names)
            i := types.lower
         until
            i > types.upper
         loop
            c.add(all_types, types.item(i))
            i := i + 1
         end
         check
            all_types.count = types.count
         end
         log.trace.put_line(once "--8<--------")
         from
            i := all_types.lower
         until
            i > all_types.upper
         loop
            log.trace.put_integer(i - all_types.lower + 1)
            log.trace.put_string(once ": ")
            all_types.item(i).debug_display(log.trace, False)
            i := i + 1
         end
         log.trace.put_line(once "-------->8--")
         if incubator.is_empty then
            log.trace.put_integer(all_types.count)
            log.trace.put_line(once " types (total), incubator is empty")
         else
            log.trace.put_integer(all_types.count)
            log.trace.put_string(once " types (total), including ")
            log.trace.put_integer(incubator.count)
            log.trace.put_line(once " types in incubator:")
            log.trace.put_line(once "--8<--------")
            from
               i := incubator.lower
            until
               i > incubator.upper
            loop
               log.trace.put_integer(i - incubator.lower + 1)
               log.trace.put_string(once ": ")
               incubator.item(i).debug_display(log.trace, False)
               i := i + 1
            end
            log.trace.put_line(once "-------->8--")
         end
      end

   debug_compare_type_names (t1, t2: LIBERTY_ACTUAL_TYPE): BOOLEAN
      do
         Result := t1.full_name < t2.full_name
      end

feature {}
   start_to_build_type (type: LIBERTY_ACTUAL_TYPE)
      require
         not types.has(type.descriptor)
      do
         types.add(type, type.descriptor)
         type.start_build(Current)
         if not type.is_built then
            types_incubator.add_last(type)
         end
         torch.burn
      end

   native_array_class_descriptor: LIBERTY_CLASS_DESCRIPTOR
      local
         cluster: LIBERTY_CLUSTER
      once
         cluster := root.find("NATIVE_ARRAY".intern)
         create Result.make(cluster, "NATIVE_ARRAY".intern, Void)
      end

   tuple_class_descriptor: LIBERTY_CLASS_DESCRIPTOR
      local
         cluster: LIBERTY_CLUSTER
      once
         cluster := root.find("TUPLE".intern)
         create Result.make(cluster, "TUPLE".intern, Void)
      end

   routine_class_descriptor: LIBERTY_CLASS_DESCRIPTOR
      local
         cluster: LIBERTY_CLUSTER
      once
         cluster := root.find("ROUTINE".intern)
         create Result.make(cluster, "ROUTINE".intern, Void)
      end

   procedure_class_descriptor: LIBERTY_CLASS_DESCRIPTOR
      local
         cluster: LIBERTY_CLUSTER
      once
         cluster := root.find("PROCEDURE".intern)
         create Result.make(cluster, "PROCEDURE".intern, Void)
      end

   function_class_descriptor: LIBERTY_CLASS_DESCRIPTOR
      local
         cluster: LIBERTY_CLUSTER
      once
         cluster := root.find("FUNCTION".intern)
         create Result.make(cluster, "FUNCTION".intern, Void)
      end

   predicate_class_descriptor: LIBERTY_CLASS_DESCRIPTOR
      local
         cluster: LIBERTY_CLUSTER
      once
         cluster := root.find("PREDICATE".intern)
         create Result.make(cluster, "PREDICATE".intern, Void)
      end

   kernel_type (class_name: FIXED_STRING; visit: PROCEDURE[TUPLE[LIBERTY_TYPE_VISITOR, LIBERTY_ACTUAL_TYPE]]): LIBERTY_ACTUAL_TYPE
         -- Called only once per kernel type
      require
         not errors.has_error
      local
         cd: LIBERTY_CLASS_DESCRIPTOR; td: LIBERTY_TYPE_DESCRIPTOR
         ast: LIBERTY_AST_ONE_CLASS
         cluster: LIBERTY_CLUSTER
      do
         cluster := root.find(class_name)
         if cluster = Void then
            errors.set(level_fatal_error, "What's that installation of yours? I cannot even find the kernel class " + class_name + "!")
         end
         create cd.make(cluster, class_name.intern, Void)
         create td.make(cd, no_parameters)
         Result := types.reference_at(td)
         if Result = Void then
            ast := parse_class(cluster, class_name, Void)
            create Result.make(td, standard_generics_checker, ast, visit)
            start_to_build_type(Result)
         end
      ensure
         Result /= Void
      end

   agent_type (class_descriptor: LIBERTY_CLASS_DESCRIPTOR; agent_generics: TRAVERSABLE[LIBERTY_TYPE]; position: LIBERTY_POSITION;
               visit: PROCEDURE[TUPLE[LIBERTY_TYPE_VISITOR, LIBERTY_ACTUAL_TYPE]]): LIBERTY_ACTUAL_TYPE
      require
         class_descriptor /= Void
         agent_generics /= Void
      local
         td: LIBERTY_TYPE_DESCRIPTOR
         ast: LIBERTY_AST_ONE_CLASS
      do
         create td.make(class_descriptor, agent_generics)
         Result := types.reference_at(td)
         if Result = Void then
            ast := parse_class(td.cluster, td.name, position)
            create Result.make(td, agent_generics_checker, ast, visit)
            start_to_build_type(Result)
         end
      end

feature {LIBERTY_TYPE_RESOLVER}
   get_type_from_descriptor (descriptor: LIBERTY_TYPE_DESCRIPTOR): LIBERTY_ACTUAL_TYPE
      require
         not errors.has_error
      do
         Result := do_get_type_from_descriptor(descriptor)
      ensure
         Result.cluster.is_equal(descriptor.cluster)
         Result.name.is_equal(descriptor.name)
         same_parameters(Result.parameters, descriptor.parameters)
      end

   get_type_from_type_definition (type_definition: LIBERTY_AST_TYPE_DEFINITION; cluster: LIBERTY_CLUSTER): LIBERTY_ACTUAL_TYPE
      require
         not type_definition.is_anchor
         not errors.has_error
      local
         class_name: STRING
         parameters: TRAVERSABLE[LIBERTY_TYPE]
      do
         class_name := type_definition.type_name.image.image
         inspect
            class_name
         when "INTEGER" then
            Result := type_integer
         when "INTEGER_64" then
            Result := type_integer_64
         when "INTEGER_32" then
            Result := type_integer_32
         when "INTEGER_16" then
            Result := type_integer_16
         when "INTEGER_8" then
            Result := type_integer_8
         when "ANY" then
            Result := type_any
         when "ARGUMENTS" then
            Result := type_arguments
         when "PLATFORM" then
            Result := type_platform
         when "REAL" then
            Result := type_real
         when "REAL_32" then
            Result := type_real_32
         when "REAL_64" then
            Result := type_real_64
         when "REAL_80" then
            Result := type_real_80
         when "REAL_128" then
            Result := type_real_128
         when "POINTER" then
            Result := type_pointer
         when "CHARACTER" then
            Result := type_character
         when "STRING" then
            Result := type_string
         when "BOOLEAN" then
            Result := type_boolean
         when "NATIVE_ARRAY" then
            parameters := get_parameters(type_definition.type_parameters)
            Result := type_native_array(parameters, type_lookup.resolver.position(type_definition))
         when "TUPLE" then
            parameters := get_parameters(type_definition.type_parameters)
            Result := type_tuple(parameters, type_lookup.resolver.position(type_definition))
         when "ROUTINE" then
            parameters := get_parameters(type_definition.type_parameters)
            check
               parameters.count = 1
               parameters.first.is_known
            end
            Result := type_routine(parameters.first.known_type.parameters, type_lookup.resolver.position(type_definition))
         when "PROCEDURE" then
            parameters := get_parameters(type_definition.type_parameters)
            check
               parameters.count = 1
               parameters.first.is_known
            end
            Result := type_procedure(parameters.first.known_type.parameters, type_lookup.resolver.position(type_definition))
         when "PREDICATE" then
            parameters := get_parameters(type_definition.type_parameters)
            check
               parameters.count = 1
               parameters.first.is_known
            end
            Result := type_predicate(parameters.first.known_type.parameters, type_lookup.resolver.position(type_definition))
         when "FUNCTION" then
            parameters := get_parameters(type_definition.type_parameters)
            check
               parameters.count = 2
               parameters.first.is_known
            end
            Result := type_function(parameters.first.known_type.parameters, parameters.last, type_lookup.resolver.position(type_definition))
         else
            parameters := get_parameters(type_definition.type_parameters)
            Result := do_get_type(cluster, type_lookup.resolver.position(type_definition), class_name.intern, parameters)
         end
      end

feature {}
   do_get_type (cluster: LIBERTY_CLUSTER; position: LIBERTY_POSITION; class_name: FIXED_STRING; effective_type_parameters: TRAVERSABLE[LIBERTY_TYPE]): LIBERTY_ACTUAL_TYPE
      require
         position /= Void
      local
         descriptor: LIBERTY_TYPE_DESCRIPTOR
         c: like cluster
      do
         if cluster = Void then
            c := root.find(class_name)
         else
            c := cluster.find(class_name)
         end
         if c = Void then
            errors.add_position(position)
            errors.set(level_fatal_error, "Looks like some configuration is missing, or you mistyped something. Anyway I cannot find the class named " + class_name + ".")
         end
         create descriptor.make(create {LIBERTY_CLASS_DESCRIPTOR}.make(c, class_name.intern, position), effective_type_parameters)
         Result := do_get_type_from_descriptor(descriptor)
      ensure
         Result.name.is_equal(class_name)
         same_parameters(Result.parameters, effective_type_parameters)
      end

   do_get_type_from_descriptor (descriptor: LIBERTY_TYPE_DESCRIPTOR): LIBERTY_ACTUAL_TYPE
      require
         not errors.has_error
      local
         ast: LIBERTY_AST_ONE_CLASS
      do
         Result := types.reference_at(descriptor)
         if Result = Void then
            ast := parse_class(descriptor.cluster, descriptor.name, descriptor.position)
            create Result.make(descriptor, standard_generics_checker, ast, visit_user_type)
            start_to_build_type(Result)
         end
      ensure
         Result.cluster.is_equal(descriptor.cluster)
         Result.name.is_equal(descriptor.name)
         same_parameters(Result.parameters, descriptor.parameters)
      end

feature {}
   same_parameters (params1, params2: TRAVERSABLE[LIBERTY_TYPE]): BOOLEAN
         -- Simply doing "params1.is_equal(params2)" does not always work because one or both may actually be
         -- a TRAVERSABLE[LIBERTY_ACTUAL_TYPE] - and is_equal has a postcondition that requires the same
         -- actual runtime type for both the target and the parameter.
      require
         params1 /= Void
         params2 /= Void
      local
         i: INTEGER
      do
         if params1.count = params2.count then
            check
               params1.lower = params2.lower
            end
            from
               Result := True
               i := params1.lower
            until
               not Result or else i > params1.upper
            loop
               if params1.item(i) /= params2.item(i) then
                  Result := params1.item(i).is_known and then params2.item(i).is_known
                     and then params1.item(i).known_type = params2.item(i).known_type
               end
               i := i + 1
            end
         end
      end

feature {} -- Type parameters fetching
   get_parameters (type_parameters: LIBERTY_AST_EFFECTIVE_TYPE_PARAMETERS): COLLECTION[LIBERTY_TYPE]
      local
         type_parameter: LIBERTY_AST_EFFECTIVE_TYPE_PARAMETER
         type_definition: LIBERTY_AST_TYPE_DEFINITION
         type: LIBERTY_TYPE
         i: INTEGER
      do
         if type_parameters.list_is_empty then
            Result := no_parameters
         else
            create {FAST_ARRAY[LIBERTY_TYPE]} Result.with_capacity(type_parameters.list_count)
            from
               i := type_parameters.list_lower
            until
               i > type_parameters.list_upper
            loop
               type_parameter := type_parameters.list_item(i)
               type_definition := type_parameter.type_definition
               type := type_lookup.resolver.type(type_definition)
               Result.add_last(type)
               i := i + 1
            end
         end
      end

   no_parameters: COLLECTION[LIBERTY_TYPE]
      once
         create {FAST_ARRAY[LIBERTY_TYPE]} Result.with_capacity(0)
      end

feature {LIBERTY_TYPE_RESOLVER_IN_TYPE}
   parse_class (cluster: LIBERTY_CLUSTER; class_name: FIXED_STRING; pos: LIBERTY_POSITION): LIBERTY_AST_ONE_CLASS
      require
         cluster /= Void
         class_name /= Void
      local
         code: STRING; class_descriptor: LIBERTY_CLASS_DESCRIPTOR
         ast: LIBERTY_AST_CLASS; actual_cluster: LIBERTY_CLUSTER
         evaled: BOOLEAN
      do
         actual_cluster := cluster.find(class_name)
         if actual_cluster = Void then
            errors.set(level_fatal_error,
                       "Looks like some configuration is missing, or you mistyped something. Anyway I cannot find the class named " + class_name + ".")
            check
               dead: False
            end
         end
         create class_descriptor.make(actual_cluster, class_name, pos)
         Result := classes.reference_at(class_descriptor)
         if Result = Void then
            log.info.put_string(once "Parsing ")
            log.info.put_string(cluster.name)
            log.info.put_character('.')
            log.info.put_line(class_name)

            code := once ""
            code.clear_count
            read_file_in(class_descriptor, code)
            parser_buffer.initialize_with(code)

            eiffel.reset
            evaled := parser.eval(parser_buffer, eiffel.table, once "Class")
            if not evaled then
               errors.add_position(errors.syntax_position(code.upper, code, class_descriptor.file.intern))
               errors.set(level_fatal_error,
                          "I'm afraid you need to use a bit more those fingers of yours. The code of the class " + class_name
                          +" is incomplete.")
                errors.emit
               check
                  dead: False
               end
            end
            if parser.error /= Void then
               errors.emit_syntax_error(parser.error, code, class_descriptor.file.intern)
               die_with_code(1)
            end
            ast ::= eiffel.root_node
            Result := ast.one_class
            classes.put(Result, class_descriptor)

            log.trace.put_string(cluster.name)
            log.trace.put_character('.')
            log.trace.put_string(class_name)
            log.trace.put_line(once " parsed.")
         end
      ensure
         Result /= Void
      end

feature {} -- AST building
   read_file_in (descriptor: LIBERTY_CLASS_DESCRIPTOR; code: STRING)
      require
         descriptor /= Void
         code.is_empty
      local
         file: FIXED_STRING
      do
         file := descriptor.file
         parser_file.connect_to(file)
         if not parser_file.is_connected then
            std_error.put_string(" *** Could not read file " + file)
            die_with_code(1)
         end

         from
            parser_file.read_line
         until
            parser_file.end_of_input
         loop
            code.append(parser_file.last_string)
            code.extend('%N')
            parser_file.read_line
         end
         code.append(parser_file.last_string)
         parser_file.disconnect
      end

   parse_tuple_classes (pos: LIBERTY_POSITION): LIBERTY_AST_CLASSES
      local
         code: STRING; class_descriptor: LIBERTY_CLASS_DESCRIPTOR
         tuple_cluster: LIBERTY_CLUSTER
         i: INTEGER; file: FIXED_STRING
         one_class: LIBERTY_AST_ONE_CLASS
         evaled: BOOLEAN
      once
         log.info.put_line(once "Parsing TUPLE")

         tuple_cluster := root.find("TUPLE".intern)
         if tuple_cluster = Void then
            errors.set(level_fatal_error, "What's that installation of yours? I cannot even find the kernel class TUPLE!")
         end
         create class_descriptor.make(tuple_cluster, "TUPLE".intern, pos)
         code := once ""
         code.clear_count
         read_file_in(class_descriptor, code)
         parser_buffer.initialize_with(code)

         eiffel.reset
         evaled := parser.eval(parser_buffer, eiffel.table, once "Classes")
         if not evaled then
            errors.add_position(errors.syntax_position(code.upper, code, class_descriptor.file.intern))
            errors.set(level_fatal_error,
                       "The code of the class TUPLE is incomplete. Maybe you could try installing Liberty again?")
             errors.emit
            check
               dead: False
            end
         end
         if parser.error /= Void then
            errors.emit_syntax_error(parser.error, code, class_descriptor.file.intern)
            die_with_code(1)
         end
         Result ::= eiffel.root_node
         file := class_descriptor.file.intern
         from
            i := Result.classes.lower
            check i = 0 end
         until
            i > Result.classes.upper
         loop
            one_class ::= Result.classes.item(i)
            check_tuple_class(one_class, i, Result, file)
            i := i + 1
         end

         log.trace.put_line(once "TUPLE parsed.")
      ensure
         Result /= Void
      end

   check_tuple_class (a_tuple_class: LIBERTY_AST_ONE_CLASS; generics_count: INTEGER; ast: LIBERTY_AST_CLASSES; file: FIXED_STRING)
         -- minimal integrity check
      local
         classname: STRING
         gencount: INTEGER
      do
         classname := a_tuple_class.class_header.class_name.image.image
         if not classname.is_equal(once "TUPLE") then
            errors.add_position(errors.semantics_position(a_tuple_class.class_header.class_name.image.index, ast, file))
            errors.set(level_fatal_error, "Invalid TUPLE class text: strangely enough it does not contain TUPLE. Maybe you could try installing Liberty again?")
         end
         gencount := a_tuple_class.class_header.type_parameters.list_count
         if gencount /= generics_count then
            errors.add_position(errors.semantics_position(a_tuple_class.class_header.class_name.image.index, ast, file))
            if generics_count = 1 then
               errors.set(level_fatal_error,
                          "Invalid TUPLE class text: expected 1 generic parameter but got " + gencount.out
                          + ". Maybe you could try installing Liberty again?")
            else
               errors.set(level_fatal_error,
                          "Invalid TUPLE class text: expected " + generics_count.out + " generic parameters but got " + gencount.out
                          + ". Maybe you could try installing Liberty again)?")
            end
         end
      ensure
         not errors.has_error
      end

   parser_file: TEXT_FILE_READ
      once
         create Result.make
      end

   parser_buffer: MINI_PARSER_BUFFER
      once
         create Result
      end

   parser: DESCENDING_PARSER
      once
         create Result.make
      end

   eiffel: EIFFEL_GRAMMAR
      once
         create Result.make(create {LIBERTY_NODE_FACTORY}.make)
      end

feature {}
   default_type_capacity: INTEGER 4096

   make
      local
         tr: LIBERTY_TYPE_RESOLVER_IN_UNIVERSE
      do
         type_lookup.set_universe(Current)
         create root.make_root
         create {HASHED_DICTIONARY[LIBERTY_AST_ONE_CLASS, LIBERTY_CLASS_DESCRIPTOR]} classes.with_capacity(default_type_capacity)
         create {HASHED_DICTIONARY[LIBERTY_ACTUAL_TYPE, LIBERTY_TYPE_DESCRIPTOR]} types.with_capacity(default_type_capacity)
         create types_incubator.with_capacity(default_type_capacity, 0)
         create tr.make(Current)
         type_lookup.push(tr)
      end

   root: LIBERTY_CLUSTER

   classes: DICTIONARY[LIBERTY_AST_ONE_CLASS, LIBERTY_CLASS_DESCRIPTOR]
   types: DICTIONARY[LIBERTY_ACTUAL_TYPE, LIBERTY_TYPE_DESCRIPTOR]

   types_incubator: RING_ARRAY[LIBERTY_ACTUAL_TYPE]

   errors: LIBERTY_ERRORS
   torch: LIBERTY_ENLIGHTENING_THE_WORLD
   type_lookup: LIBERTY_TYPE_LOOKUP

   standard_generics_checker: LIBERTY_GENERICS_CONFORMANCE_CHECKER
      once
         create {LIBERTY_STANDARD_GENERICS_CONFORMANCE_CHECKER} Result.make
      end

   tuple_generics_checker: LIBERTY_GENERICS_CONFORMANCE_CHECKER
      once
         create {LIBERTY_TUPLE_CONFORMANCE_CHECKER} Result.make
      end

   agent_generics_checker: LIBERTY_GENERICS_CONFORMANCE_CHECKER
      once
         create {LIBERTY_AGENT_CONFORMANCE_CHECKER} Result.make
      end

feature {}
   visit_type_any: PROCEDURE[TUPLE[LIBERTY_TYPE_VISITOR, LIBERTY_ACTUAL_TYPE]]
      once
         Result := agent {LIBERTY_TYPE_VISITOR}.visit_type_any
      end

   visit_type_arguments: PROCEDURE[TUPLE[LIBERTY_TYPE_VISITOR, LIBERTY_ACTUAL_TYPE]]
      once
         Result := agent {LIBERTY_TYPE_VISITOR}.visit_type_arguments
      end

   visit_type_platform: PROCEDURE[TUPLE[LIBERTY_TYPE_VISITOR, LIBERTY_ACTUAL_TYPE]]
      once
         Result := agent {LIBERTY_TYPE_VISITOR}.visit_type_platform
      end

   visit_type_pointer: PROCEDURE[TUPLE[LIBERTY_TYPE_VISITOR, LIBERTY_ACTUAL_TYPE]]
      once
         Result := agent {LIBERTY_TYPE_VISITOR}.visit_type_pointer
      end

   visit_type_integer_64: PROCEDURE[TUPLE[LIBERTY_TYPE_VISITOR, LIBERTY_ACTUAL_TYPE]]
      once
         Result := agent {LIBERTY_TYPE_VISITOR}.visit_type_integer_64
      end

   visit_type_integer_32: PROCEDURE[TUPLE[LIBERTY_TYPE_VISITOR, LIBERTY_ACTUAL_TYPE]]
      once
         Result := agent {LIBERTY_TYPE_VISITOR}.visit_type_integer_32
      end

   visit_type_integer_16: PROCEDURE[TUPLE[LIBERTY_TYPE_VISITOR, LIBERTY_ACTUAL_TYPE]]
      once
         Result := agent {LIBERTY_TYPE_VISITOR}.visit_type_integer_16
      end

   visit_type_integer_8: PROCEDURE[TUPLE[LIBERTY_TYPE_VISITOR, LIBERTY_ACTUAL_TYPE]]
      once
         Result := agent {LIBERTY_TYPE_VISITOR}.visit_type_integer_8
      end

   visit_type_real_64: PROCEDURE[TUPLE[LIBERTY_TYPE_VISITOR, LIBERTY_ACTUAL_TYPE]]
      once
         Result := agent {LIBERTY_TYPE_VISITOR}.visit_type_real_64
      end

   visit_type_real_32: PROCEDURE[TUPLE[LIBERTY_TYPE_VISITOR, LIBERTY_ACTUAL_TYPE]]
      once
         Result := agent {LIBERTY_TYPE_VISITOR}.visit_type_real_32
      end

   visit_type_real_80: PROCEDURE[TUPLE[LIBERTY_TYPE_VISITOR, LIBERTY_ACTUAL_TYPE]]
      once
         Result := agent {LIBERTY_TYPE_VISITOR}.visit_type_real_80
      end

   visit_type_real_128: PROCEDURE[TUPLE[LIBERTY_TYPE_VISITOR, LIBERTY_ACTUAL_TYPE]]
      once
         Result := agent {LIBERTY_TYPE_VISITOR}.visit_type_real_128
      end

   visit_type_character: PROCEDURE[TUPLE[LIBERTY_TYPE_VISITOR, LIBERTY_ACTUAL_TYPE]]
      once
         Result := agent {LIBERTY_TYPE_VISITOR}.visit_type_character
      end

   visit_type_string: PROCEDURE[TUPLE[LIBERTY_TYPE_VISITOR, LIBERTY_ACTUAL_TYPE]]
      once
         Result := agent {LIBERTY_TYPE_VISITOR}.visit_type_string
      end

   visit_type_boolean: PROCEDURE[TUPLE[LIBERTY_TYPE_VISITOR, LIBERTY_ACTUAL_TYPE]]
      once
         Result := agent {LIBERTY_TYPE_VISITOR}.visit_type_boolean
      end

   visit_type_native_array: PROCEDURE[TUPLE[LIBERTY_TYPE_VISITOR, LIBERTY_ACTUAL_TYPE]]
      once
         Result := agent {LIBERTY_TYPE_VISITOR}.visit_type_native_array
      end

   visit_type_tuple: PROCEDURE[TUPLE[LIBERTY_TYPE_VISITOR, LIBERTY_ACTUAL_TYPE]]
      once
         Result := agent {LIBERTY_TYPE_VISITOR}.visit_type_tuple
      end

   visit_type_routine: PROCEDURE[TUPLE[LIBERTY_TYPE_VISITOR, LIBERTY_ACTUAL_TYPE]]
      once
         Result := agent {LIBERTY_TYPE_VISITOR}.visit_type_routine
      end

   visit_type_procedure: PROCEDURE[TUPLE[LIBERTY_TYPE_VISITOR, LIBERTY_ACTUAL_TYPE]]
      once
         Result := agent {LIBERTY_TYPE_VISITOR}.visit_type_procedure
      end

   visit_type_function: PROCEDURE[TUPLE[LIBERTY_TYPE_VISITOR, LIBERTY_ACTUAL_TYPE]]
      once
         Result := agent {LIBERTY_TYPE_VISITOR}.visit_type_function
      end

   visit_type_predicate: PROCEDURE[TUPLE[LIBERTY_TYPE_VISITOR, LIBERTY_ACTUAL_TYPE]]
      once
         Result := agent {LIBERTY_TYPE_VISITOR}.visit_type_predicate
      end

   visit_user_type: PROCEDURE[TUPLE[LIBERTY_TYPE_VISITOR, LIBERTY_ACTUAL_TYPE]]
      once
         Result := agent {LIBERTY_TYPE_VISITOR}.visit_user_type
      end

feature {}
   convert_integer_8_16: PROCEDURE[TUPLE[LIBERTY_TYPE_CONVERTER]]
      once
         Result := agent {LIBERTY_TYPE_CONVERTER}.convert_integer_8_16
      end

   convert_integer_8_32: PROCEDURE[TUPLE[LIBERTY_TYPE_CONVERTER]]
      once
         Result := agent {LIBERTY_TYPE_CONVERTER}.convert_integer_8_32
      end

   convert_integer_8_64: PROCEDURE[TUPLE[LIBERTY_TYPE_CONVERTER]]
      once
         Result := agent {LIBERTY_TYPE_CONVERTER}.convert_integer_8_64
      end

   convert_integer_16_32: PROCEDURE[TUPLE[LIBERTY_TYPE_CONVERTER]]
      once
         Result := agent {LIBERTY_TYPE_CONVERTER}.convert_integer_16_32
      end

   convert_integer_16_64: PROCEDURE[TUPLE[LIBERTY_TYPE_CONVERTER]]
      once
         Result := agent {LIBERTY_TYPE_CONVERTER}.convert_integer_16_64
      end

   convert_integer_32_64: PROCEDURE[TUPLE[LIBERTY_TYPE_CONVERTER]]
      once
         Result := agent {LIBERTY_TYPE_CONVERTER}.convert_integer_32_64
      end

   convert_real_32_64: PROCEDURE[TUPLE[LIBERTY_TYPE_CONVERTER]]
      once
         Result := agent {LIBERTY_TYPE_CONVERTER}.convert_real_32_64
      end

   convert_real_32_80: PROCEDURE[TUPLE[LIBERTY_TYPE_CONVERTER]]
      once
         Result := agent {LIBERTY_TYPE_CONVERTER}.convert_real_32_80
      end

   convert_real_32_128: PROCEDURE[TUPLE[LIBERTY_TYPE_CONVERTER]]
      once
         Result := agent {LIBERTY_TYPE_CONVERTER}.convert_real_32_128
      end

   convert_real_64_80: PROCEDURE[TUPLE[LIBERTY_TYPE_CONVERTER]]
      once
         Result := agent {LIBERTY_TYPE_CONVERTER}.convert_real_64_80
      end

   convert_real_64_128: PROCEDURE[TUPLE[LIBERTY_TYPE_CONVERTER]]
      once
         Result := agent {LIBERTY_TYPE_CONVERTER}.convert_real_64_128
      end

   convert_real_80_128: PROCEDURE[TUPLE[LIBERTY_TYPE_CONVERTER]]
      once
         Result := agent {LIBERTY_TYPE_CONVERTER}.convert_real_80_128
      end

   convert_integer_64_real_128: PROCEDURE[TUPLE[LIBERTY_TYPE_CONVERTER]]
      once
         Result := agent {LIBERTY_TYPE_CONVERTER}.convert_integer_64_real_128
      end

   convert_integer_64_real_80: PROCEDURE[TUPLE[LIBERTY_TYPE_CONVERTER]]
      once
         Result := agent {LIBERTY_TYPE_CONVERTER}.convert_integer_64_real_80
      end

   convert_integer_32_real_128: PROCEDURE[TUPLE[LIBERTY_TYPE_CONVERTER]]
      once
         Result := agent {LIBERTY_TYPE_CONVERTER}.convert_integer_32_real_128
      end

   convert_integer_32_real_80: PROCEDURE[TUPLE[LIBERTY_TYPE_CONVERTER]]
      once
         Result := agent {LIBERTY_TYPE_CONVERTER}.convert_integer_32_real_80
      end

   convert_integer_32_real_64: PROCEDURE[TUPLE[LIBERTY_TYPE_CONVERTER]]
      once
         Result := agent {LIBERTY_TYPE_CONVERTER}.convert_integer_32_real_64
      end

   convert_integer_16_real_128: PROCEDURE[TUPLE[LIBERTY_TYPE_CONVERTER]]
      once
         Result := agent {LIBERTY_TYPE_CONVERTER}.convert_integer_16_real_128
      end

   convert_integer_16_real_80: PROCEDURE[TUPLE[LIBERTY_TYPE_CONVERTER]]
      once
         Result := agent {LIBERTY_TYPE_CONVERTER}.convert_integer_16_real_80
      end

   convert_integer_16_real_64: PROCEDURE[TUPLE[LIBERTY_TYPE_CONVERTER]]
      once
         Result := agent {LIBERTY_TYPE_CONVERTER}.convert_integer_16_real_64
      end

   convert_integer_16_real_32: PROCEDURE[TUPLE[LIBERTY_TYPE_CONVERTER]]
      once
         Result := agent {LIBERTY_TYPE_CONVERTER}.convert_integer_16_real_32
      end

   convert_integer_8_real_128: PROCEDURE[TUPLE[LIBERTY_TYPE_CONVERTER]]
      once
         Result := agent {LIBERTY_TYPE_CONVERTER}.convert_integer_8_real_128
      end

   convert_integer_8_real_80: PROCEDURE[TUPLE[LIBERTY_TYPE_CONVERTER]]
      once
         Result := agent {LIBERTY_TYPE_CONVERTER}.convert_integer_8_real_80
      end

   convert_integer_8_real_64: PROCEDURE[TUPLE[LIBERTY_TYPE_CONVERTER]]
      once
         Result := agent {LIBERTY_TYPE_CONVERTER}.convert_integer_8_real_64
      end

   convert_integer_8_real_32: PROCEDURE[TUPLE[LIBERTY_TYPE_CONVERTER]]
      once
         Result := agent {LIBERTY_TYPE_CONVERTER}.convert_integer_8_real_32
      end

invariant
   types /= Void
   classes /= Void
   types_incubator /= Void

end
