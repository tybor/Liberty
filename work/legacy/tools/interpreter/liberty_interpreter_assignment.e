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
class LIBERTY_INTERPRETER_ASSIGNMENT

inherit
   LIBERTY_ENTITY_VISITOR

create {LIBERTY_INTERPRETER_INSTRUCTIONS}
   attempt, forced, regular

feature {LIBERTY_CURRENT}
   visit_liberty_current (v: LIBERTY_CURRENT)
      do
         interpreter.fatal_error("Cannot assign Current", value.position)
      end

feature {LIBERTY_FEATURE_DEFINITION}
   visit_liberty_feature_definition (v: LIBERTY_FEATURE_DEFINITION)
      do
         interpreter.fatal_error("Cannot assign a feature definition", value.position)
      end

feature {LIBERTY_FEATURE_ENTITY}
   visit_liberty_feature_entity (v: LIBERTY_FEATURE_ENTITY)
      do
         interpreter.fatal_error("Cannot assign a feature entity", value.position)
      end

feature {LIBERTY_LOCAL}
   visit_liberty_local (v: LIBERTY_LOCAL)
      do
         interpreter.set_local_value(v.name, checker.item([interpreter, interpreter.local_static_type(v.name), value]))
      end

feature {LIBERTY_PARAMETER}
   visit_liberty_parameter (v: LIBERTY_PARAMETER)
      do
         interpreter.fatal_error("Cannot assign a parameter", value.position)
      end

feature {LIBERTY_RESULT}
   visit_liberty_result (v: LIBERTY_RESULT)
      do
         interpreter.set_returned_object(checker.item([interpreter, interpreter.returned_static_type, value]))
      end

feature {LIBERTY_WRITABLE_FEATURE}
   visit_liberty_writable_feature (v: LIBERTY_WRITABLE_FEATURE)
      do
         interpreter.set_writable_feature(v.feature_name, checker.item([interpreter, interpreter.writable_feature_static_type(v.feature_name), value]))
      end

feature {}
   make (a_interpreter: like interpreter; a_value: like value)
      require
         a_interpreter /= Void
      do
         interpreter := a_interpreter
         value := a_value
      ensure
         interpreter = a_interpreter
         value = a_value
      end

   attempt (a_interpreter: like interpreter; a_value: like value)
      do
         make(a_interpreter, a_value)
         checker := attempt_assignment_checker
      end

   forced (a_interpreter: like interpreter; a_value: like value)
      do
         make(a_interpreter, a_value)
         checker := forced_assignment_checker
      end

   regular (a_interpreter: like interpreter; a_value: like value)
      do
         make(a_interpreter, a_value)
         checker := regular_assignment_checker
      end

   interpreter: LIBERTY_INTERPRETER
   value: LIBERTY_INTERPRETER_OBJECT
   checker: FUNCTION[TUPLE[LIBERTY_INTERPRETER, LIBERTY_ACTUAL_TYPE, LIBERTY_INTERPRETER_OBJECT], LIBERTY_INTERPRETER_OBJECT]

   attempt_assignment_checker: FUNCTION[TUPLE[LIBERTY_INTERPRETER, LIBERTY_ACTUAL_TYPE, LIBERTY_INTERPRETER_OBJECT], LIBERTY_INTERPRETER_OBJECT]
      once
         Result := agent check_attempt_assignment
      end

   forced_assignment_checker: FUNCTION[TUPLE[LIBERTY_INTERPRETER, LIBERTY_ACTUAL_TYPE, LIBERTY_INTERPRETER_OBJECT], LIBERTY_INTERPRETER_OBJECT]
      once
         Result := agent check_forced_assignment
      end

   regular_assignment_checker: FUNCTION[TUPLE[LIBERTY_INTERPRETER, LIBERTY_ACTUAL_TYPE, LIBERTY_INTERPRETER_OBJECT], LIBERTY_INTERPRETER_OBJECT]
      once
         Result := agent check_regular_assignment
      end

feature {} -- Assignment check implementation
   check_attempt_assignment (a_interpreter: LIBERTY_INTERPRETER;
                             expected_static_type: LIBERTY_ACTUAL_TYPE; would_be_assigned_value: LIBERTY_INTERPRETER_OBJECT): LIBERTY_INTERPRETER_OBJECT
      do
         if would_be_assigned_value.is_void or else would_be_assigned_value.type.is_conform_to(expected_static_type) then
            Result := would_be_assigned_value
         elseif would_be_assigned_value.type.converts_to(expected_static_type) then
            Result := interpreter.object_converter.convert_object(would_be_assigned_value, expected_static_type)
         end
      end

   check_forced_assignment (a_interpreter: LIBERTY_INTERPRETER;
                            expected_static_type: LIBERTY_ACTUAL_TYPE; would_be_assigned_value: LIBERTY_INTERPRETER_OBJECT): LIBERTY_INTERPRETER_OBJECT
      do
         if would_be_assigned_value.is_void or else would_be_assigned_value.type.is_conform_to(expected_static_type) then
            Result := would_be_assigned_value
         elseif would_be_assigned_value.type.converts_to(expected_static_type) then
            Result := interpreter.object_converter.convert_object(would_be_assigned_value, expected_static_type)
         else
            a_interpreter.fatal_error("The actual value type {" + would_be_assigned_value.type.full_name
                                      + "} is not conform to the entity's static type {"
                                      + expected_static_type.full_name + "}", would_be_assigned_value.position)
         end
      end

   check_regular_assignment (a_interpreter: LIBERTY_INTERPRETER;
                             expected_static_type: LIBERTY_ACTUAL_TYPE; would_be_assigned_value: LIBERTY_INTERPRETER_OBJECT): LIBERTY_INTERPRETER_OBJECT
      do
         if would_be_assigned_value.is_void or else would_be_assigned_value.type.is_conform_to(expected_static_type) then
            Result := would_be_assigned_value
         elseif would_be_assigned_value.type.converts_to(expected_static_type) then
            Result := interpreter.object_converter.convert_object(would_be_assigned_value, expected_static_type)
         else
            a_interpreter.fatal_error("The actual value type {" + would_be_assigned_value.type.full_name
                                      + "} is not conform to the entity's static type {"
                                      + expected_static_type.full_name + "}", would_be_assigned_value.position)
         end
      end

invariant
   interpreter /= Void
   checker /= Void

end -- class LIBERTY_INTERPRETER_ASSIGNMENT
