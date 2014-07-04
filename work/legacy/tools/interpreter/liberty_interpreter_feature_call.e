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
class LIBERTY_INTERPRETER_FEATURE_CALL

inherit
   LIBERTY_FEATURE_VISITOR

insert
   LIBERTY_TAGS
   LOGGING

create {LIBERTY_INTERPRETER}
   make, make_precursor

feature {ANY}
   name: FIXED_STRING
   target: LIBERTY_INTERPRETER_OBJECT
   parameters: TRAVERSABLE[LIBERTY_INTERPRETER_OBJECT]
   position: LIBERTY_POSITION

   definition_type: LIBERTY_ACTUAL_TYPE
      do
         Result := bound_feature.definition_type
      end

   returned_static_type: LIBERTY_ACTUAL_TYPE

feature {LIBERTY_INTERPRETER_EXTERNAL_PLUGINS}
   bound_feature: LIBERTY_FEATURE

feature {LIBERTY_INTERPRETER}
   call (debug_steps: LIBERTY_INTERPRETER_DEBUGGER_STEPS)
      do
         check not prepare end

         if log.is_trace then
            log_call(once "Calling")
         end

         prepare := True
         bound_feature.accept(Current)
         prepare := False

         debug_steps.enter_call

         if options.is_invariant_checked then
            check_invariant
         end
         if options.is_require_checked then
            check_precondition
         end
         debug ("interpreter.call.steps")
            debug_step(once"Calling the feature")
         end
         bound_feature.accept(Current)
         if parameters = Void and then options.is_ensure_checked then
            -- Can happen only when semi-evaluated built-in externals are used
            -- In that case the postcondition must not depend on the arguments...
            prepare_postcondition
         end
         if options.is_ensure_checked then
            check_postcondition
         end
         if options.is_invariant_checked then
            check_invariant
         end
         debug_steps.exit_call

         if log.is_trace then
            log_call(once "Returning from")
         end
      end

feature {LIBERTY_FEATURE_ACCELERATOR}
   accelerate_call (a: LIBERTY_FEATURE_ACCELERATOR)
      do
         bound_feature.accelerate_call(a)
      end

feature {LIBERTY_INTERPRETER, LIBERTY_INTERPRETER_EXTERNAL_BUILTINS_CALLER}
   evaluate_parameters
      local
         i: INTEGER; p: FAST_ARRAY[LIBERTY_INTERPRETER_OBJECT]
         val: LIBERTY_INTERPRETER_OBJECT
         formal_type: LIBERTY_ACTUAL_TYPE; actual_type: LIBERTY_KNOWN_TYPE
      do
         if parameters = Void then
            interpreter.set_evaluating_parameters(Current)
            if bound_feature.parameters.count /= actuals.count then
               interpreter.fatal_error("Bad parameters count: expected " + bound_feature.parameters.count.out
                                       + " but got " + actuals.count.out, position)
            end
            check
               bound_feature.parameters.lower = actuals.lower
            end
            from
               create p.with_capacity(actuals.count)
               i := actuals.lower
            until
               i > actuals.upper
            loop
               actuals.item(i).accept(interpreter.expressions)
               val := interpreter.expressions.eval_as_right_value
               formal_type ::= bound_feature.parameters.item(i).result_type.known_type
               actual_type := val.type.known_type
               if actual_type.is_conform_to(formal_type) then
                  p.add_last(val)
               elseif actual_type.converts_to(formal_type) then
                  p.add_last(interpreter.object_converter.convert_object(val, formal_type))
               else
                  interpreter.fatal_error("Bad object type: " + actual_type.full_name + " does not conform or convert to " + formal_type.full_name, actuals.item(i).position)
                  p.add_last(val)
               end
               i := i + 1
            end
            parameters := p
            interpreter.unset_evaluating_parameters(Current)

            prepare_parameter_map(bound_feature)
            debug ("interpreter.call.internals")
               show_parameter_map(std_output)
               std_output.put_new_line
            end
            if options.is_ensure_checked then
               prepare_postcondition
            end
         end
      end

feature {LIBERTY_INTERPRETER, LIBERTY_INTERPRETER_EXTERNAL_BUILTIN_CALL, LIBERTY_INTERPRETER_EXTERNAL_PLUGINS}
   returned_object: LIBERTY_INTERPRETER_OBJECT

   set_returned_object (a_returned_object: like returned_object)
      do
         if returned_static_type = Void then
            check a_returned_object = Void end
         else
            returned_object := a_returned_object
            debug ("interpreter.call.internals")
               std_output.put_string(once " >>> Feature ")
               std_output.put_string(name)
               std_output.put_string(once " @")
               std_output.put_string(to_pointer.out)
               std_output.put_string(once ": setting Result to ")
               interpreter.object_printer.print_object(std_output, returned_object, 2)
            end
         end
      ensure
         returned_object = a_returned_object
      end

   local_static_type (local_name: FIXED_STRING): LIBERTY_ACTUAL_TYPE
      do
         Result := local_types.reference_at(local_name)
      end

   set_local_value (local_name: FIXED_STRING; value: LIBERTY_INTERPRETER_OBJECT)
      do
         local_map.put(value, local_name)
      end

   local_value (local_name: FIXED_STRING): LIBERTY_INTERPRETER_OBJECT
      do
         if local_map = Void then
            interpreter.fatal_error("Locals map not ready!", position)
         end
         Result := local_map.fast_reference_at(local_name)
      end

   parameter (parameter_name: FIXED_STRING): LIBERTY_INTERPRETER_OBJECT
      do
         if parameter_map = Void then
            interpreter.fatal_error("Parameters map not ready!", position)
         end
         Result := parameter_map.fast_reference_at(parameter_name)
      end

   writable_feature_static_type (a_feature_name: LIBERTY_FEATURE_NAME): LIBERTY_ACTUAL_TYPE
      do
         Result ::= target.type.feature_definition(a_feature_name).result_type.known_type
      end

   set_writable_feature (a_name: LIBERTY_FEATURE_NAME; a_value: LIBERTY_INTERPRETER_OBJECT)
      local
         struct: LIBERTY_INTERPRETER_OBJECT_STRUCTURE
      do
         struct ::= target
         struct.put_attribute(a_name.name, a_value)
      end

   writable_feature (a_name: LIBERTY_FEATURE_NAME): LIBERTY_INTERPRETER_OBJECT
      local
         struct: LIBERTY_INTERPRETER_OBJECT_STRUCTURE
      do
         struct ::= target
         Result := struct.attribute_object(a_name.name)
      end

   raised_exception: LIBERTY_INTERPRETER_EXCEPTION

   raise (a_exception: like raised_exception)
      do
         raised_exception := a_exception
      ensure
         raised_exception = a_exception
      end

feature {ANY}
   show_stack (o: OUTPUT_STREAM)
      do
         o.put_string(once "Feature {")
         o.put_string(target.type.full_name)
         o.put_string(once "}.")
         o.put_string(name)
         o.put_string(once " @")
         o.put_line(to_pointer.out)
         if not position.is_unknown then
            o.put_character('%T')
            position.show(o)
         end
         o.put_new_line
         o.put_string(once "Current = ")
         interpreter.object_printer.print_object(o, target, 0)
         if returned_static_type /= Void then
            o.put_new_line
            o.put_string(once "Result = ")
            interpreter.object_printer.print_object(o, returned_object, 0)
         end

         show_parameter_map(o)
         show_local_map(o)
      end

feature {}
   show_parameter_map (o: OUTPUT_STREAM)
      do
         show_map(parameter_map, once "Parameters", o)
      end

   show_local_map (o: OUTPUT_STREAM)
      do
         show_map(local_map, once "Locals", o)
      end

   show_map (map: DICTIONARY[LIBERTY_INTERPRETER_OBJECT, FIXED_STRING]; tag: STRING; o: OUTPUT_STREAM)
      local
         i: INTEGER; obj: LIBERTY_INTERPRETER_OBJECT
      do
         if map = Void then
            o.put_new_line
            o.put_string(tag)
            o.put_line(once " map not yet computed")
         elseif not map.is_empty then
            o.put_new_line
            o.put_string(tag)
            o.put_line(once ":")
            from
               i := map.lower
            until
               i > map.upper
            loop
               o.put_string(once "   ")
               o.put_string(map.key(i))
               o.put_string(once " = ")
               obj := map.item(i)
               interpreter.object_printer.print_object(o, obj, 1)
               i := i + 1
            end
         end
      end

feature {LIBERTY_FEATURE_ATTRIBUTE}
   visit_liberty_feature_attribute (v: LIBERTY_FEATURE_ATTRIBUTE)
      local
         t: LIBERTY_INTERPRETER_OBJECT_STRUCTURE
         fn: LIBERTY_FEATURE_NAME
         actual_type: LIBERTY_ACTUAL_TYPE
      do
         if prepare then
            evaluate_parameters
         else
            if t ?:= target then
               t ::= target
               if t.has_attribute(name) then
                  set_returned_object(t.attribute_object(name))
               else
                  create fn.make(name)
                  if t.type.has_feature(fn) then
                     -- at creation time
                     actual_type ::= t.type.feature_definition(fn).result_type.known_type
                     set_returned_object(interpreter.default_object(actual_type, t.position))
                     t.put_attribute(name, returned_object)
                  else
                     interpreter.fatal_error("No such attribute: " + name, position)
                  end
               end
            else
               --|*** TODO: not good. Native objects may have attributes too (e.g. string)
               interpreter.fatal_error("No such attribute: " + name, position)
            end
         end
      end

feature {LIBERTY_FEATURE_CONSTANT}
   visit_liberty_feature_constant (v: LIBERTY_FEATURE_CONSTANT)
      do
         if prepare then
            evaluate_parameters
         else
            v.expression.accept(interpreter.expressions)
            set_returned_object(interpreter.expressions.eval_as_right_value)
         end
      end

feature {LIBERTY_FEATURE_DEFERRED}
   visit_liberty_feature_deferred (v: LIBERTY_FEATURE_DEFERRED)
      do
         evaluate_parameters
         interpreter.fatal_error("Deferred feature called", position)
      end

feature {LIBERTY_FEATURE_DO}
   visit_liberty_feature_do (v: LIBERTY_FEATURE_DO)
      do
         if prepare then
            evaluate_parameters
            prepare_local_map(v)
         else
            v.block_instruction.accept(interpreter.instructions)
         end
      end

feature {LIBERTY_FEATURE_EXTERNAL}
   visit_liberty_feature_external (v: LIBERTY_FEATURE_EXTERNAL)
      do
         if prepare then
            inspect
               v.external_def
            when "built_in" then
               -- nothing
            when "plug_in" then
               evaluate_parameters
            else
               not_yet_implemented
            end
         else
            inspect
               v.external_def
            when "built_in" then
               interpreter.builtins.call(Current)
            when "plug_in" then
               interpreter.plugins.call(Current, v.alias_def, position)
            else
               not_yet_implemented
            end
         end
      end

feature {LIBERTY_FEATURE_ONCE}
   visit_liberty_feature_once (v: LIBERTY_FEATURE_ONCE)
      local
         tags: LIBERTY_TAGS
      do
         if prepare then
            evaluate_parameters
            if not tags.once_flag.is_set(v.original) then
               prepare_local_map(v)
            end
         elseif tags.once_flag.is_set(v.original) then
            log.trace.put_line(once "Once feature already called")
            set_returned_object(tags.once_flag.value(v.original))
         else
            log.trace.put_line(once "Evaluating once feature")
            v.block_instruction.accept(interpreter.instructions)
            tags.once_flag.add(returned_object, v.original)
         end
      end

feature {LIBERTY_FEATURE_REDEFINED}
   visit_liberty_feature_redefined (v: LIBERTY_FEATURE_REDEFINED)
      do
         v.redefined_feature.accept(Current)
      end

feature {LIBERTY_FEATURE_UNIQUE}
   visit_liberty_feature_unique (v: LIBERTY_FEATURE_UNIQUE)
      do
         if prepare then
            evaluate_parameters
         else
            not_yet_implemented
         end
      end

feature {}
   make (a_interpreter: like interpreter; a_target: like target; a_feature_definition: LIBERTY_FEATURE_DEFINITION; a_actuals: like actuals; a_position: like position)
      require
         a_interpreter /= Void
         a_target /= Void
         a_feature_definition /= Void
         a_actuals /= Void
         a_position /= Void
      do
         feature_name := a_feature_definition.feature_name
         name := feature_name.full_name
         interpreter := a_interpreter
         target := a_target
         actuals := a_actuals
         position := a_position
         bound_feature := a_feature_definition.the_feature.bound(a_target.type)
         if bound_feature.result_type /= Void then
            returned_static_type ::= bound_feature.result_type.known_type
         end

         create {ARRAY_DICTIONARY[TUPLE[LIBERTY_INTERPRETER_OBJECT, FIXED_STRING, LIBERTY_POSITION], LIBERTY_EXPRESSION]} old_values.with_capacity(0)

         if returned_static_type /= Void then
            returned_object := interpreter.default_object(returned_static_type, position)
         end
      ensure
         interpreter = a_interpreter
         target = a_target
         actuals = a_actuals
      end

   make_precursor (a_interpreter: like interpreter; a_target: like target; a_precursor: LIBERTY_FEATURE; a_actuals: like actuals; a_position: like position)
      require
         a_interpreter /= Void
         a_target /= Void
         a_actuals /= Void
         a_position /= Void
      do
         name := name_precursor
         interpreter := a_interpreter
         target := a_target
         actuals := a_actuals
         position := a_position
         bound_feature := a_precursor
         if bound_feature.result_type /= Void then
            returned_static_type ::= bound_feature.result_type.known_type
         end

         create {ARRAY_DICTIONARY[TUPLE[LIBERTY_INTERPRETER_OBJECT, FIXED_STRING, LIBERTY_POSITION], LIBERTY_EXPRESSION]} old_values.with_capacity(0)
      ensure
         interpreter = a_interpreter
         target = a_target
         actuals = a_actuals
      end

   feature_name: LIBERTY_FEATURE_NAME

   name_precursor: FIXED_STRING
      once
         Result := "Precursor".intern
      end

   interpreter: LIBERTY_INTERPRETER
   actuals: TRAVERSABLE[LIBERTY_EXPRESSION]

   parameter_types: DICTIONARY[LIBERTY_ACTUAL_TYPE, FIXED_STRING]
   parameter_map: DICTIONARY[LIBERTY_INTERPRETER_OBJECT, FIXED_STRING]

   local_types: DICTIONARY[LIBERTY_ACTUAL_TYPE, FIXED_STRING]
   local_map: DICTIONARY[LIBERTY_INTERPRETER_OBJECT, FIXED_STRING]

   empty_types: DICTIONARY[LIBERTY_ACTUAL_TYPE, FIXED_STRING]
      once
         create {AVL_DICTIONARY[LIBERTY_ACTUAL_TYPE, FIXED_STRING]} Result.make
      end

   empty_map: DICTIONARY[LIBERTY_INTERPRETER_OBJECT, FIXED_STRING]
      once
         create {AVL_DICTIONARY[LIBERTY_INTERPRETER_OBJECT, FIXED_STRING]} Result.make
      end

   prepare_parameter_map (f: LIBERTY_FEATURE)
      require
         parameters /= Void
      local
         i: INTEGER; p: LIBERTY_PARAMETER
         actual_type: LIBERTY_ACTUAL_TYPE
      do
         if f.parameters.count /= actuals.count then
            interpreter.fatal_error("Bad number of arguments: expected " + f.parameters.count.out
                                    + " but got " + actuals.count.out, position)
         end
         if actuals.is_empty then
            parameter_types := empty_types
            parameter_map := empty_map
         else
            check
               f.parameters.lower = actuals.lower
               parameters.lower = actuals.lower
            end
            create {HASHED_DICTIONARY[LIBERTY_ACTUAL_TYPE, FIXED_STRING]} parameter_types.with_capacity(actuals.count)
            create {HASHED_DICTIONARY[LIBERTY_INTERPRETER_OBJECT, FIXED_STRING]} parameter_map.with_capacity(actuals.count)
            from
               i := actuals.lower
            until
               i > actuals.upper
            loop
               p := f.parameters.item(i)
               actual_type ::= p.result_type.known_type
               parameter_types.add(actual_type, p.name)
               parameter_map.add(parameters.item(i), p.name)
               i := i + 1
            end
         end
      ensure
         parameter_types /= Void
         parameter_map /= Void
      end

   prepare_local_map (f: LIBERTY_FEATURE_ROUTINE)
      local
         i: INTEGER; l: LIBERTY_LOCAL; def: LIBERTY_INTERPRETER_OBJECT
         actual_type: LIBERTY_ACTUAL_TYPE
      do
         if f.locals.is_empty then
            local_types := empty_types
            local_map := empty_map
         else
            create {HASHED_DICTIONARY[LIBERTY_ACTUAL_TYPE, FIXED_STRING]} local_types.with_capacity(f.locals.count)
            create {HASHED_DICTIONARY[LIBERTY_INTERPRETER_OBJECT, FIXED_STRING]} local_map.with_capacity(f.locals.count)
            from
               i := f.locals.lower
            until
               i > f.locals.upper
            loop
               l := f.locals.item(i)
               actual_type ::= l.result_type.known_type
               local_types.add(actual_type, l.name)
               def := interpreter.default_object(actual_type, l.position)
               local_map.add(def, l.name)
               i := i + 1
            end
         end
      ensure
         local_types /= Void
         local_map /= Void
      end

feature {LIBERTY_INTERPRETER}
   has_old_value (a_expression: LIBERTY_EXPRESSION): BOOLEAN
      do
         Result := old_values.fast_has(a_expression)
      end

   old_value (a_expression: LIBERTY_EXPRESSION): LIBERTY_INTERPRETER_OBJECT
      require
         has_old_value(a_expression)
      local
         t: TUPLE[LIBERTY_INTERPRETER_OBJECT, FIXED_STRING, LIBERTY_POSITION]
      do
         t := old_values.fast_at(a_expression)
         if t.second /= Void then
            interpreter.fatal_error(t.second, t.third)
         end
         Result := t.first
      end

   add_old_value (a_expression: LIBERTY_EXPRESSION; a_value: LIBERTY_INTERPRETER_OBJECT; a_fatal_error: FIXED_STRING; a_fatal_position: LIBERTY_POSITION)
      require
         not has_old_value(a_expression)
      do
         old_values.add([a_value, a_fatal_error, a_fatal_position], a_expression)
         debug ("interpreter.call.internals")
            std_output.put_string(once " >>> Feature ")
            std_output.put_string(name)
            std_output.put_string(once " @")
            std_output.put_string(to_pointer.out)
            std_output.put_string(once ": adding old value: ")
            interpreter.object_printer.print_object(std_output, a_value, 2)
         end
      ensure
         old_values.fast_at(a_expression).first = a_value
         old_values.fast_at(a_expression).second = a_fatal_error
         old_values.fast_at(a_expression).third = a_fatal_position
         a_fatal_error = Void implies old_value(a_expression) = a_value
      end

feature {}
   check_invariant
      require
         options.is_invariant_checked
      do
         debug ("interpreter.call.steps")
            debug_step(once "Checking invariant")
         end
         interpreter.assertions.validate(target.type.the_invariant, once "Invariant")
         debug ("interpreter.call.steps")
            debug_step(once "Done checking invariant")
         end
      end

   check_precondition
      require
         options.is_require_checked
      do
         debug ("interpreter.call.steps")
            debug_step(once "Checking precondition")
         end
         interpreter.assertions.validate(bound_feature.precondition, once "Precondition")
         debug ("interpreter.call.steps")
            debug_step(once "Done checking precondition")
         end
      end

   prepare_postcondition
      require
         options.is_ensure_checked
      do
         debug ("interpreter.call.steps")
            debug_step(once "Preparing postcondition (gathering old values)")
         end
         interpreter.postcondition_browser.gather_old(bound_feature.postcondition)
         debug ("interpreter.call.steps")
            debug_step(once "Done preparing postcondition (gathering old values)")
         end
      end

   check_postcondition
      require
         options.is_ensure_checked
      do
         debug ("interpreter.call.steps")
            debug_step(once "Checking postcondition")
         end
         interpreter.assertions.validate(bound_feature.postcondition, once "Postcondition")
         debug ("interpreter.call.steps")
            debug_step(once "Done checking postcondition")
         end
      end

   options: LIBERTY_INTERPRETER_OPTIONS

   old_values: DICTIONARY[TUPLE[LIBERTY_INTERPRETER_OBJECT, FIXED_STRING, LIBERTY_POSITION], LIBERTY_EXPRESSION]
   prepare: BOOLEAN

   debug_step (step: STRING)
      do
         std_output.put_new_line
         std_output.put_string(once " >>> ")
         std_output.put_string(name)
         std_output.put_string(once " @")
         std_output.put_string(to_pointer.out)
         std_output.put_string(once ": ")
         std_output.put_line(step)
      end

   log_call (tag: STRING)
      require
         log.is_trace
      local
         i: INTEGER; log_out: OUTPUT_STREAM
         formals: TRAVERSABLE[LIBERTY_PARAMETER]
         p: LIBERTY_PARAMETER
      do
         log_out := log.trace
         log_out.put_string(tag)
         log_out.put_string(once " feature {")
         log_out.put_string(bound_feature.current_type.full_name)
         log_out.put_string(once "}.")
         log_out.put_string(name)
         formals := bound_feature.parameters
         if not formals.is_empty then
            log_out.put_character(' ')
            log_out.put_character('(')
            from
               i := formals.lower
            until
               i > formals.upper
            loop
               if i > formals.lower then
                  log_out.put_string(once ", ")
               end
               log_out.put_string(formals.item(i).result_type.full_name)
               i := i + 1
            end
            log_out.put_character(')')
         end
         if returned_static_type /= Void then
            log_out.put_string(once ": ")
            log_out.put_string(returned_static_type.full_name)
         end
         if position.is_unknown then
            log_out.put_new_line
         else
            log_out.put_character(' ')
            position.show(log_out)
         end
         log_out.put_string(once " - Current=")
         interpreter.object_printer.print_object(log_out, target, 1)
         if parameter_map /= Void then
            from
               i := formals.lower
            until
               i > formals.upper
            loop
               p := formals.item(i)
               log_out.put_string(once " - ")
               log_out.put_string(p.name)
               log_out.put_character('=')
               interpreter.object_printer.print_object(log_out, parameter_map.fast_at(p.name), 1)
               i := i + 1
            end
         end
         if returned_object /= Void then
            log_out.put_string(once " - Result=")
            interpreter.object_printer.print_object(log_out, returned_object, 1)
         end
      end

invariant
   interpreter /= Void
   actuals /= Void
   target /= Void
   name /= Void

   not interpreter.gathering_old_values implies ((returned_static_type = Void) = (returned_object = Void))

end -- class LIBERTY_INTERPRETER_FEATURE_CALL
