-- This file is part of SmartEiffel The GNU Eiffel Compiler Tools and Libraries.
-- See the Copyright notice at the end of this file.
--
class RUNNER_EXPRESSIONS

inherit
   EXPRESSION_VISITOR

insert
   RUNNER_PROCESSOR_FACET

create {RUNNER_PROCESSOR}
   make

feature {RUNNER_FACET}
   eval (a_expression: EXPRESSION): RUNNER_OBJECT is
      do
         if a_expression /= Void then
            a_expression.accept(Current)
            Result := return
            return := Void
         end
      end

feature {IMPLICIT_CURRENT}
   visit_implicit_current (visited: IMPLICIT_CURRENT) is
      do
         return := current_frame.target
      end

feature {WRITTEN_CURRENT}
   visit_written_current (visited: WRITTEN_CURRENT) is
      do
         return := current_frame.target
      end

feature {ADDRESS_OF}
   visit_address_of (visited: ADDRESS_OF) is
      do
         std_output.put_line(once "%N%N**** TODO ****%N%N")
         sedb_breakpoint --| **** TODO
      end

feature {AGENT_CREATION}
   visit_agent_creation (visited: AGENT_CREATION) is
      do
         return := processor.new_agent(visited)
      end

feature {AGENT_EXPRESSION}
   visit_agent_expression (visited: AGENT_EXPRESSION) is
      do
         processor.features.call_agent(visited, Current)
      end

feature {ASSERTION}
   visit_assertion (visited: ASSERTION) is
      do
         std_output.put_line(once "%N%N**** TODO ****%N%N")
         sedb_breakpoint --| **** TODO
      end

feature {ASSIGNMENT_TEST}
   visit_assignment_test (visited: ASSIGNMENT_TEST) is
      do
         return := processor.new_boolean(processor.assignment.test_assign(visited))
      end

feature {BUILT_IN_EQ_NEQ}
   visit_built_in_eq_neq (visited: BUILT_IN_EQ_NEQ) is
      local
         left, right: RUNNER_OBJECT; eq: BOOLEAN
      do
         visited.left_side.accept(Current)
         left := return
         visited.right_side.accept(Current)
         right := return
         if left = Void then
            eq := right = Void
         elseif right /= Void then
            eq := left.eq(right)
         end
         return := processor.new_boolean(eq = visited.eq_flag)
      end

feature {CLOSED_OPERAND}
   visit_closed_operand (visited: CLOSED_OPERAND) is
      do
         visited.capture_memory.at(current_frame.type_of_current).accept(Current)
      end

feature {CREATE_EXPRESSION}
   visit_create_expression (visited: CREATE_EXPRESSION) is
      do
         return := processor.features.new(visited.created_type(current_frame.type_of_current), visited.call)
      end

feature {CREATE_WRITABLE}
   visit_create_writable (visited: CREATE_WRITABLE) is
      do
         std_output.put_line(once "%N%N**** TODO ****%N%N")
         sedb_breakpoint --| **** TODO
      end

feature {E_OLD}
   visit_e_old (visited: E_OLD) is
      do
         std_output.put_line(once "%N%N**** TODO ****%N%N")
         sedb_breakpoint --| **** TODO
      end

feature {EXPRESSION_WITH_COMMENT}
   visit_expression_with_comment (visited: EXPRESSION_WITH_COMMENT) is
      do
         std_output.put_line(once "%N%N**** TODO ****%N%N")
         sedb_breakpoint --| **** TODO
      end

feature {FAKE_ARGUMENT}
   visit_fake_argument (visited: FAKE_ARGUMENT) is
      do
         std_output.put_line(once "%N%N**** TODO ****%N%N")
         sedb_breakpoint --| **** TODO
      end

feature {FAKE_TARGET}
   visit_fake_target (visited: FAKE_TARGET) is
      do
         std_output.put_line(once "%N%N**** TODO ****%N%N")
         sedb_breakpoint --| **** TODO
      end

feature {FAKE_TUPLE}
   visit_fake_tuple (visited: FAKE_TUPLE) is
      do
         std_output.put_line(once "%N%N**** TODO ****%N%N")
         sedb_breakpoint --| **** TODO
      end

feature {CALL_PREFIX_MINUS}
   visit_call_prefix_minus (visited: CALL_PREFIX_MINUS) is
      do
         return := processor.features.item(visited)
      end

feature {CALL_PREFIX_FREEOP}
   visit_call_prefix_freeop (visited: CALL_PREFIX_FREEOP) is
      do
         return := processor.features.item(visited)
      end

feature {CALL_PREFIX_NOT}
   visit_call_prefix_not (visited: CALL_PREFIX_NOT) is
      do
         return := processor.features.item(visited)
      end

feature {CALL_PREFIX_PLUS}
   visit_call_prefix_plus (visited: CALL_PREFIX_PLUS) is
      do
         return := processor.features.item(visited)
      end

feature {STATIC_CALL_0_C}
   visit_static_call_0_c (visited: STATIC_CALL_0_C) is
      do
         return := processor.features.item(visited)
      end

feature {FUNCTION_CALL_0}
   visit_function_call_0 (visited: FUNCTION_CALL_0) is
      do
         return := processor.features.item(visited)
      end

feature {CALL_INFIX_AND_THEN}
   visit_call_infix_and_then (visited: CALL_INFIX_AND_THEN) is
      do
         return := processor.features.item(visited)
      end

feature {CALL_INFIX_AND}
   visit_call_infix_and (visited: CALL_INFIX_AND) is
      do
         return := processor.features.item(visited)
      end

feature {CALL_INFIX_DIV}
   visit_call_infix_div (visited: CALL_INFIX_DIV) is
      do
         return := processor.features.item(visited)
      end

feature {CALL_INFIX_FREEOP}
   visit_call_infix_freeop (visited: CALL_INFIX_FREEOP) is
      do
         return := processor.features.item(visited)
      end

feature {CALL_INFIX_GE}
   visit_call_infix_ge (visited: CALL_INFIX_GE) is
      do
         return := processor.features.item(visited)
      end

feature {CALL_INFIX_GT}
   visit_call_infix_gt (visited: CALL_INFIX_GT) is
      do
         return := processor.features.item(visited)
      end

feature {CALL_INFIX_IMPLIES}
   visit_call_infix_implies (visited: CALL_INFIX_IMPLIES) is
      do
         return := processor.features.item(visited)
      end

feature {CALL_INFIX_INT_DIV}
   visit_call_infix_int_div (visited: CALL_INFIX_INT_DIV) is
      do
         return := processor.features.item(visited)
      end

feature {CALL_INFIX_INT_REM}
   visit_call_infix_int_rem (visited: CALL_INFIX_INT_REM) is
      do
         return := processor.features.item(visited)
      end

feature {CALL_INFIX_LE}
   visit_call_infix_le (visited: CALL_INFIX_LE) is
      do
         return := processor.features.item(visited)
      end

feature {CALL_INFIX_LT}
   visit_call_infix_lt (visited: CALL_INFIX_LT) is
      do
         return := processor.features.item(visited)
      end

feature {CALL_INFIX_MINUS}
   visit_call_infix_minus (visited: CALL_INFIX_MINUS) is
      do
         return := processor.features.item(visited)
      end

feature {CALL_INFIX_OR_ELSE}
   visit_call_infix_or_else (visited: CALL_INFIX_OR_ELSE) is
      do
         return := processor.features.item(visited)
      end

feature {CALL_INFIX_OR}
   visit_call_infix_or (visited: CALL_INFIX_OR) is
      do
         return := processor.features.item(visited)
      end

feature {CALL_INFIX_PLUS}
   visit_call_infix_plus (visited: CALL_INFIX_PLUS) is
      do
         return := processor.features.item(visited)
      end

feature {CALL_INFIX_POWER}
   visit_call_infix_power (visited: CALL_INFIX_POWER) is
      do
         return := processor.features.item(visited)
      end

feature {CALL_INFIX_TIMES}
   visit_call_infix_times (visited: CALL_INFIX_TIMES) is
      do
         return := processor.features.item(visited)
      end

feature {CALL_INFIX_XOR}
   visit_call_infix_xor (visited: CALL_INFIX_XOR) is
      do
         return := processor.features.item(visited)
      end

feature {FUNCTION_CALL_1}
   visit_function_call_1 (visited: FUNCTION_CALL_1) is
      do
         return := processor.features.item(visited)
      end

feature {FUNCTION_CALL_N}
   visit_function_call_n (visited: FUNCTION_CALL_N) is
      do
         return := processor.features.item(visited)
      end

feature {GENERATOR_GENERATING_TYPE}
   visit_generator_generating_type (visited: GENERATOR_GENERATING_TYPE) is
      do
         std_output.put_line(once "%N%N**** TODO ****%N%N")
         sedb_breakpoint --| **** TODO
      end

feature {IMPLICIT_CAST}
   visit_implicit_cast (visited: IMPLICIT_CAST) is
      do
         implicit_cast_type := visited.resolved_memory
         -- example: RUNNER_NATIVE_EXPANDED[INTEGER_8] -> RUNNER_NATIVE_EXPANDED[INTEGER_32]
         visited.expression.accept(Current)
         implicit_cast_type := Void
      end

feature {ARGUMENT_NAME2}
   visit_argument_name2 (visited: ARGUMENT_NAME2) is
      do
         return := current_frame.arguments.item(visited.rank - 1)
      end

feature {LOCAL_NAME2}
   visit_local_name2 (visited: LOCAL_NAME2) is
      do
         return := current_frame.local_object(visited.to_string)
      end

feature {LOOP_VARIANT}
   visit_loop_variant (visited: LOOP_VARIANT) is
      do
         std_output.put_line(once "%N%N**** TODO ****%N%N")
         sedb_breakpoint --| **** TODO
      end

feature {E_FALSE}
   visit_e_false (visited: E_FALSE) is
      do
         return := processor.new_boolean(False)
      end

feature {E_TRUE}
   visit_e_true (visited: E_TRUE) is
      do
         return := processor.new_boolean(True)
      end

feature {CHARACTER_CONSTANT}
   visit_character_constant (visited: CHARACTER_CONSTANT) is
      do
         return := processor.new_character(visited.value)
      end

feature {INTEGER_CONSTANT}
   visit_integer_constant (visited: INTEGER_CONSTANT) is
      local
         size: INTEGER; integer_type_mark: INTEGER_TYPE_MARK
      do
         if implicit_cast_type /= Void then
            integer_type_mark ::= implicit_cast_type.canonical_type_mark
            size := integer_type_mark.bit_count
         else
            size := visited.size
         end
         inspect
            size
         when 8 then
            return := processor.new_integer_8(visited.value_memory.to_integer_8)
         when 16 then
            return := processor.new_integer_16(visited.value_memory.to_integer_16)
         when 32 then
            return := processor.new_integer_32(visited.value_memory.to_integer_32)
         when 64 then
            return := processor.new_integer_64(visited.value_memory)
         end
      end

feature {REAL_CONSTANT}
   visit_real_constant (visited: REAL_CONSTANT) is
      do
         std_output.put_line(once "%N%N**** TODO ****%N%N")
         sedb_breakpoint --| **** TODO
      end

feature {E_VOID}
   visit_e_void (visited: E_VOID) is
      do
         return := Void
      end

feature {MANIFEST_STRING}
   visit_manifest_string (visited: MANIFEST_STRING) is
      do
         return := processor.new_manifest_string(visited.to_string, visited.once_flag)
      end

feature {MANIFEST_GENERIC}
   visit_manifest_generic (visited: MANIFEST_GENERIC) is
      do
         return := processor.features.manifest_new(visited)
      end

feature {MANIFEST_TUPLE}
   visit_manifest_tuple (visited: MANIFEST_TUPLE) is
      do
         std_output.put_line(once "%N%N**** TODO ****%N%N")
         sedb_breakpoint --| **** TODO
      end

feature {OLD_MANIFEST_ARRAY}
   visit_old_manifest_array (visited: OLD_MANIFEST_ARRAY) is
      do
         std_output.put_line(once "%N%N**** TODO ****%N%N")
         sedb_breakpoint --| **** TODO
      end

feature {OPEN_OPERAND}
   visit_open_operand (visited: OPEN_OPERAND) is
      local
         frame: RUNNER_AGENT_FRAME
      do
         frame ::= current_frame
         if visited.rank = -1 then
            return := expand(frame.target)
         else
            return := expand(frame.arguments.item(visited.rank - 1 + frame.arguments.lower))
         end
      end

feature {PRECURSOR_EXPRESSION}
   visit_precursor_expression (visited: PRECURSOR_EXPRESSION) is
      do
         std_output.put_line(once "%N%N**** TODO ****%N%N")
         sedb_breakpoint --| **** TODO
      end

feature {RESULT}
   visit_result (visited: RESULT) is
      do
         return := expand(current_frame.return)
      end

feature {WRITABLE_ATTRIBUTE_NAME}
   visit_writable_attribute_name (visited: WRITABLE_ATTRIBUTE_NAME) is
      do
         std_output.put_line(once "%N%N**** TODO ****%N%N")
         sedb_breakpoint --| **** TODO
      end

feature {NO_DISPATCH}
   visit_no_dispatch (visited: NO_DISPATCH) is
      do
         visited.side_effect_free_expression.accept(Current)
      end

feature {INTERNAL_LOCAL2}
   visit_internal_local2 (visited: INTERNAL_LOCAL2) is
      local
         type: TYPE
      do
         return := current_frame.internal_local_object(visited)
         if return = Void then
            type := visited.resolve_in(current_frame.type_of_current)
            if type.is_expanded then
               return := processor.default_expanded(type)
            end
         end
      end

feature {DYNAMIC_DISPATCH_TEMPORARY1}
   visit_dynamic_dispatch_temporary1 (visited: DYNAMIC_DISPATCH_TEMPORARY1) is
      do
         visited.target.accept(Current)
      end

feature {DYNAMIC_DISPATCH_TEMPORARY1_ID}
   visit_dynamic_dispatch_temporary1_id (visited: DYNAMIC_DISPATCH_TEMPORARY1_ID) is
      local
         id: INTEGER_64
      do
         visited.dynamic_dispatch_temporary1.accept(Current)
         if return /= Void then
            id := return.type.id
            return := processor.new_integer_32(id)
         else
            sedb_breakpoint --| **** ????
            return := processor.new_integer_32(0)
         end
      end

feature {DYNAMIC_DISPATCH_TEMPORARY2}
   visit_dynamic_dispatch_temporary2 (visited: DYNAMIC_DISPATCH_TEMPORARY2) is
      do
         visited.dynamic_dispatch_temporary1.accept(Current)
      end

feature {VOID_CALL}
   visit_void_call (visited: VOID_CALL) is
      do
         processor.set_exception(exceptions.Void_call_target, "Void call")
      end

feature {NULL_POINTER}
   visit_null_pointer (visited: NULL_POINTER) is
      do
         return := processor.default_pointer
      end

feature {NON_VOID_NO_DISPATCH}
   visit_non_void_no_dispatch (visited: NON_VOID_NO_DISPATCH) is
      do
         return := processor.features.non_void(visited)
      end

feature {COMPOUND_EXPRESSION}
   visit_compound_expression (visited: COMPOUND_EXPRESSION) is
      local
         i: INTEGER; watermark: RUNNER_FRAME_WATERMARK; inst: INSTRUCTION; exp: EXPRESSION
      do
         watermark := current_frame.watermark
         from
            i := visited.upper - 1
         until
            i < visited.lower
         loop
            inst ::= visited.item(i)
            current_frame.add_instruction(inst)
            i := i - 1
         end
         current_frame.execute_until(watermark)
         exp ::= visited.last
         exp.accept(Current)
      end

feature {}
   make (a_processor: like processor) is
      require
         a_processor /= Void
      do
         processor := a_processor
      ensure
         processor = a_processor
      end

   return: RUNNER_OBJECT
   implicit_cast_type: TYPE

end -- class RUNNER_EXPRESSIONS
--
-- ------------------------------------------------------------------------------------------------------------------------------
-- Copyright notice below. Please read.
--
-- SmartEiffel is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License,
-- as published by the Free Software Foundation; either version 2, or (at your option) any later version.
-- SmartEiffel is distributed in the hope that it will be useful but WITHOUT ANY WARRANTY; without even the implied warranty
-- of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details. You should have
-- received a copy of the GNU General Public License along with SmartEiffel; see the file COPYING. If not, write to the Free
-- Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA.
--
-- Copyright(C) 1994-2002: INRIA - LORIA (INRIA Lorraine) - ESIAL U.H.P.       - University of Nancy 1 - FRANCE
-- Copyright(C) 2003-2004: INRIA - LORIA (INRIA Lorraine) - I.U.T. Charlemagne - University of Nancy 2 - FRANCE
--
-- Authors: Dominique COLNET, Philippe RIBET, Cyril ADRIAN, Vincent CROIZIER, Frederic MERIZEN
--
-- http://SmartEiffel.loria.fr - SmartEiffel@loria.fr
-- ------------------------------------------------------------------------------------------------------------------------------
