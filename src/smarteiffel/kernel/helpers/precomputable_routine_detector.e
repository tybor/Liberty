-- This file is part of SmartEiffel The GNU Eiffel Compiler Tools and Libraries.
-- See the Copyright notice at the end of this file.
--
class PRECOMPUTABLE_ROUTINE_DETECTOR
   --
   -- The goal of this VISITOR is to determine which kind of code we can run
   -- during the precomputation of some once routine.
   --

inherit
   EXPRESSION_VISITOR
      undefine is_equal
      end
   INSTRUCTION_VISITOR
      undefine is_equal
      end
   ANONYMOUS_FEATURE_VISITOR
      undefine is_equal
      end
   NATIVE_VISITOR
      undefine is_equal
      end
   LOCAL_VAR_LIST_VISITOR
      undefine is_equal
      end
   EFFECTIVE_ARG_LIST_VISITOR
      undefine is_equal
      end

insert
   GLOBALS
      undefine is_equal
      end
   SINGLETON

creation {ANY}
   make

feature {BUILT_IN_EQ_NEQ}
   can_be_dropped (cdt: like current_dynamic_type; expression_type: TYPE; expression: EXPRESSION): BOOLEAN is
         -- Actually, the code which can be inside some precomputable once routine can be also dropped.
      require
         cdt /= Void
         expression_type = expression.resolve_in(cdt)
      do
         can_be_dropped_flag := True
         precomputable := True
         type_stack.clear_count
         type_stack.add_last(cdt)
         anonymous_feature_stack.clear_count
         expression.accept(Current)
         Result := precomputable
         can_be_dropped_flag := False
      end

feature {E_PROCEDURE}
   visit_e_procedure (visited: E_PROCEDURE) is
      do
         if visited.local_vars /= Void then
            visited.local_vars.accept(Current)
         end
         if precomputable and then visited.routine_body /= Void then
            visited.routine_body.accept(Current)
         end
         if precomputable and then visited.rescue_compound /= Void then
            precomputable := False
         end
      end

feature {E_FUNCTION}
   visit_e_function (visited: E_FUNCTION) is
      do
         if visited.local_vars /= Void then
            visited.local_vars.accept(Current)
         end
         if precomputable and then visited.routine_body /= Void then
            visited.routine_body.accept(Current)
         end
         if precomputable and then visited.rescue_compound /= Void then
            precomputable := False
         end
      end

feature {WRITABLE_ATTRIBUTE}
   visit_writable_attribute (visited: WRITABLE_ATTRIBUTE) is
      do
         if can_be_dropped_flag then
            -- Reading an attribute is harmless while trying to drop some code.
            -- Note this cannot be the left-hand side of an assignement (see WRITABLE_ATTRIBUTE_NAME).
         else
            precomputable := False
         end
      end

feature {EXTERNAL_PROCEDURE}
   visit_external_procedure (visited: EXTERNAL_PROCEDURE) is
      do
         visited.native.accept(Current)
      end

feature {EXTERNAL_FUNCTION}
   visit_external_function (visited: EXTERNAL_FUNCTION) is
      do
         visited.native.accept(Current)
      end

feature {DEFERRED_PROCEDURE}
   visit_deferred_procedure (visited: DEFERRED_PROCEDURE) is
      do
         precomputable := False
      end

feature {DEFERRED_FUNCTION}
   visit_deferred_function (visited: DEFERRED_FUNCTION) is
      do
         precomputable := False
      end

feature {ONCE_PROCEDURE}
   visit_once_procedure (visited: ONCE_PROCEDURE) is
      do
         precomputable := False
      end

feature {ONCE_FUNCTION}
   visit_once_function (visited: ONCE_FUNCTION) is
      do
         precomputable := False
      end

feature {NATIVE_BUILT_IN}
   visit_native_built_in (visited: NATIVE_BUILT_IN) is
      local
         n: STRING
      do
         n := anonymous_feature_stack.last.first_name.to_string
         if n = as_and_then then
         elseif n = as_calloc then
         elseif n = as_copy then
         elseif n = as_code then
         elseif n = as_ge then
         elseif n = as_gt then
         elseif n = as_implies then
         elseif n = as_is_equal then
         elseif n = as_is_not_null then
         elseif n = as_item then
         elseif n = as_lt then
         elseif n = as_le then
         elseif n = as_minus then
         elseif n = as_muls then
         elseif n = as_plus then
         elseif n = as_sharp_minus then
         elseif n = as_sharp_muls then
         elseif n = as_object_size then
         elseif n = as_or_else then
         elseif n = as_put then
         elseif n = as_sharp_backslash_backslash then
         elseif n = as_sharp_plus then
         elseif n = as_sharp_slash_slash then
         elseif n = as_standard_copy then
         elseif n = as_standard_is_equal then
         elseif n = as_standard_twin then
         elseif n = as_to_integer_8 then
         elseif n = as_to_integer_16 then
         elseif n = as_to_integer_32 then
         elseif n = as_to_pointer then
         elseif n = as_twin then
         else
            -- I don't think that other external "built_in" are dangerous, but I do not want to take
            -- risks right now. Also note that i/o are implemented with external "plug_in".
            precomputable := False
         end
      end

feature {NATIVE_PLUG_IN}
   visit_native_plug_in (visited: NATIVE_PLUG_IN) is
      do
         -- We do not trust outside component:
         precomputable := False
      end

feature {NATIVE_JAVA}
   visit_native_java (visited: NATIVE_JAVA) is
      do
         -- (We do not trust Java at all :-)
         precomputable := False
      end

feature {NATIVE_C_PLUS_PLUS}
   visit_native_c_plus_plus (visited: NATIVE_C_PLUS_PLUS) is
      do
         -- (We do not trust C++ more :-)
         precomputable := False
      end

feature {NATIVE_C}
   visit_native_c (visited: NATIVE_C) is
      do
         precomputable := False
      end

feature {GENERATOR_GENERATING_TYPE}
   visit_generator_generating_type (visited: GENERATOR_GENERATING_TYPE) is
      do
      end

feature {CST_ATT_REAL}
   visit_cst_att_real (visited: CST_ATT_REAL) is
      do
      end

feature {CST_ATT_BOOLEAN}
   visit_cst_att_boolean (visited: CST_ATT_BOOLEAN) is
      do
      end

feature {CST_ATT_INTEGER}
   visit_cst_att_integer (visited: CST_ATT_INTEGER) is
      do
      end

feature {CST_ATT_UNIQUE}
   visit_cst_att_unique (visited: CST_ATT_UNIQUE) is
      do
      end

feature {CST_ATT_STRING}
   visit_cst_att_string (visited: CST_ATT_STRING) is
      do
      end

feature {CST_ATT_CHARACTER}
   visit_cst_att_character (visited: CST_ATT_CHARACTER) is
      do
      end

feature {ANY} --|*** CONTINUER LES EXPORTS ***
   visit_local_var_list (visited: LOCAL_VAR_LIST) is
      local
         i: INTEGER; type_mark: TYPE_MARK; type: TYPE
      do
         from
            i := visited.count
         until
            not precomputable or else i = 0
         loop
            type_mark := visited.type_mark(i)
            type := type_mark.resolve_in(current_dynamic_type)
            if type.is_user_expanded then
               visit_anonymous_feature(type.live_type.default_create_stamp, type, type)
            end
            i := i - 1
         end
      end

   visit_effective_arg_list (visited: EFFECTIVE_ARG_LIST) is
      local
         i: INTEGER
      do
         from
            i := visited.count
         until
            not precomputable or else i = 0
         loop
            visited.expression(i).accept(Current)
            i := i - 1
         end
      end

   visit_comment (visited: COMMENT) is
      do
      end

   visit_fake_tuple (visited: FAKE_TUPLE) is
      do
         precomputable := False
      end

feature {}
   visit_fast_array_of_expression (list: FAST_ARRAY[EXPRESSION]) is
      require
         list /= Void
      local
         i: INTEGER
      do
         from
            i := list.upper
         until
            i < list.lower or else not precomputable
         loop
            list.item(i).accept(Current)
            i := i - 1
         end
      end

feature {MANIFEST_GENERIC}
   visit_manifest_generic (visited: MANIFEST_GENERIC) is
      local
         created_type: TYPE; feature_stamp: FEATURE_STAMP
      do
         created_type := visited.created_type
         -- Checking the code of `manifest_make':
         feature_stamp := visited.manifest_make_feature_stamp
         visit_anonymous_feature(feature_stamp, created_type, created_type)
         if precomputable then
            -- Checking the code of `manifest_put':
            feature_stamp := visited.manifest_put_feature_stamp
            visit_anonymous_feature(feature_stamp, created_type, created_type)
         end
         if precomputable and then visited.optional_arguments /= Void then
            visit_fast_array_of_expression(visited.optional_arguments)
         end
         if precomputable then
            visit_fast_array_of_expression(visited.item_list)
         end
      end

feature {OLD_MANIFEST_ARRAY}
   visit_old_manifest_array (visited: OLD_MANIFEST_ARRAY) is
      do
         check
            False -- (Because we have already switched to the canonical form.)
         end
      end

feature {MANIFEST_TUPLE}
   visit_manifest_tuple (visited: MANIFEST_TUPLE) is
      do
         visit_effective_arg_list(visited.effective_arg_list)
      end

feature {DEBUG_COMPOUND}
   visit_debug_compound (visited: DEBUG_COMPOUND) is
      do
         precomputable := False
      end

feature {CHECK_COMPOUND}
   visit_check_compound (visited: CHECK_COMPOUND) is
      do
         precomputable := False
      end

feature {PRECURSOR_INSTRUCTION}
   visit_precursor_instruction (visited: PRECURSOR_INSTRUCTION) is
      do
         precomputable := False
      end

feature {PRECURSOR_EXPRESSION}
   visit_precursor_expression (visited: PRECURSOR_EXPRESSION) is
      do
         precomputable := False
      end

feature {RETRY_INSTRUCTION}
   visit_retry_instruction (visited: RETRY_INSTRUCTION) is
      do
         precomputable := False
      end

feature {COMPOUND}
   visit_compound (visited: COMPOUND) is
      local
         i: INTEGER
      do
         from
            i := visited.upper
         until
            not precomputable or else i < visited.lower
         loop
            visited.item(i).accept(Current)
            i := i - 1
         end
      end

feature {COMPOUND_EXPRESSION}
   visit_compound_expression (visited: COMPOUND_EXPRESSION) is
      local
         i: INTEGER
      do
         from
            i := visited.upper
         until
            not precomputable or else i < visited.lower
         loop
            visited.item(i).accept(Current)
            i := i - 1
         end
      end

feature {ASSERTION_LIST}
   visit_assertion_list (visited: ASSERTION_LIST) is
      local
         i: INTEGER
      do
         from
            i := visited.upper
         until
            not precomputable or else i < visited.lower
         loop
            visited.item(i).accept(Current)
            i := i - 1
         end
      end

feature {ENSURE_ASSERTION}
   visit_ensure_assertion (visited: ENSURE_ASSERTION) is
      do
         visit_assertion_list(visited)
      end

feature {LOOP_INVARIANT}
   visit_loop_invariant (visited: LOOP_INVARIANT) is
      do
         visit_assertion_list(visited)
      end

feature {CLASS_INVARIANT}
   visit_class_invariant (visited: CLASS_INVARIANT) is
      do
         visit_assertion_list(visited)
      end

feature {REQUIRE_ASSERTION}
   visit_require_assertion (visited: REQUIRE_ASSERTION) is
      local
         i: INTEGER
      do
         from
            i := visited.upper
         until
            not precomputable or else i < visited.lower
         loop
            visited.item(i).accept(Current)
            i := i - 1
         end
      end

feature {NO_INVARIANT_WRAPPER}
   visit_no_invariant_wrapper (visited: NO_INVARIANT_WRAPPER) is
      do
         visited.compound.accept(Current)
      end

feature {}
   visit_call (target: EXPRESSION; feature_stamp: FEATURE_STAMP) is
      local
         type: TYPE
      do
         if target.is_current then
            visit_anonymous_feature(feature_stamp, current_dynamic_type, current_dynamic_type)
         else
            type := target.non_void_no_dispatch_type(current_dynamic_type)
            if type = Void then
               precomputable := False
            else
               visit_anonymous_feature(feature_stamp, type, type)
            end
         end
      end

feature {PROCEDURE_CALL_0}
   visit_procedure_call_0 (visited: PROCEDURE_CALL_0) is
      do
         visit_call(visited.target, visited.feature_stamp)
         if precomputable then
            visited.target.accept(Current)
         end
      end

feature {PROCEDURE_CALL_1}
   visit_procedure_call_1 (visited: PROCEDURE_CALL_1) is
      do
         visit_call(visited.target, visited.feature_stamp)
         if precomputable then
            visited.target.accept(Current)
         end
         if precomputable then
            visited.arg1.accept(Current)
         end
      end

feature {PROCEDURE_CALL_N}
   visit_procedure_call_n (visited: PROCEDURE_CALL_N) is
      do
         visit_call(visited.target, visited.feature_stamp)
         if precomputable then
            visited.target.accept(Current)
         end
         if precomputable then
            visited.arguments.accept(Current)
         end
      end

feature {ASSIGNMENT}
   visit_assignment (visited: ASSIGNMENT) is
      do
         visited.right_side.accept(Current)
      end

feature {ASSIGNMENT_ATTEMPT}
   visit_assignment_attempt (visited: ASSIGNMENT_ATTEMPT) is
      do
         precomputable := False --|*** TO DO
      end

feature {ASSIGNMENT_TEST}
   visit_assignment_test (visited: ASSIGNMENT_TEST) is
      do
         precomputable := False --|*** TO DO
      end

feature {ASSERTION}
   visit_assertion (visited: ASSERTION) is
      do
         if visited.expression /= Void then
            visited.expression.accept(Current)
         end
      end

feature {IFTHENELSE}
   visit_ifthenelse (visited: IFTHENELSE) is
      local
         elseif_list: FAST_ARRAY[IFTHEN]; i: INTEGER
      do
         visited.expression.accept(Current)
         if precomputable and then visited.then_compound /= Void then
            visited.then_compound.accept(Current)
         end
         if precomputable and then visited.elseif_list /= Void then
            from
               elseif_list := visited.elseif_list
               i := elseif_list.upper
            until
               not precomputable or else i < elseif_list.lower
            loop
               visit_ifthen(elseif_list.item(i))
               i := i - 1
            end
         end
         if precomputable and then visited.else_compound /= Void then
            visited.else_compound.accept(Current)
         end
      end

feature {IFTHEN}
   visit_ifthen (visited: IFTHEN) is
      do
         visited.expression.accept(Current)
         if precomputable and then visited.then_compound /= Void then
            visited.then_compound.accept(Current)
         end
      end

feature {LOOP_INSTRUCTION}
   visit_loop_instruction (visited: LOOP_INSTRUCTION) is
      do
         if visited.initialize /= Void then
            visited.initialize.accept(Current)
         end
         if visited.loop_invariant /= Void then
            -- It may crash during precomputation:
            precomputable := False
         end
         if visited.loop_variant /= Void then
            -- It may crash during precomputation:
            precomputable := False
         end
         if precomputable then
            visited.until_expression.accept(Current)
         end
         if precomputable and then visited.loop_body /= Void then
            visited.loop_body.accept(Current)
         end
      end

feature {LOOP_VARIANT}
   visit_loop_variant (visited: LOOP_VARIANT) is
      do
         check
            False
         end
      end

feature {SEDB}
   visit_sedb (visited: SEDB) is
      do
      end

feature {WHEN_CLAUSE}
   visit_when_clause (visited: WHEN_CLAUSE) is
      do
         if visited.compound /= Void then
            visited.compound.accept(Current)
         end
      end

feature {C_INLINE}
   visit_c_inline (visited: C_INLINE) is
      do
         precomputable := False
      end

feature {INSPECT_STATEMENT}
   visit_inspect_statement (visited: INSPECT_STATEMENT) is
      local
         when_list: FAST_ARRAY[WHEN_CLAUSE]; i: INTEGER
      do
         visited.expression.accept(Current)
         if precomputable and then visited.when_list /= Void then
            from
               when_list := visited.when_list
               i := when_list.upper
            until
               not precomputable or else i < when_list.lower
            loop
               when_list.item(i).accept(Current)
               i := i - 1
            end
         end
         if precomputable and then visited.else_compound /= Void then
            visited.else_compound.accept(Current)
         end
      end

feature {MANIFEST_STRING_INSPECT_STATEMENT}
   visit_manifest_string_inspect_statement (visited: MANIFEST_STRING_INSPECT_STATEMENT) is
      do
         visit_inspect_statement(visited)
      end

feature {OTHER_INSPECT_STATEMENT}
   visit_other_inspect_statement (visited: OTHER_INSPECT_STATEMENT) is
      do
         visit_inspect_statement(visited)
      end

feature {CREATE_INSTRUCTION}
   visit_create_instruction (visited: CREATE_INSTRUCTION) is
      local
         call: PROCEDURE_CALL; created_type: TYPE; e_procedure: E_ROUTINE
      do
         call := visited.call
         if call /= Void and then call.arguments /= Void then
            call.arguments.accept(Current)
         end
         if call /= Void and then  precomputable then
            created_type := visited.created_type(current_dynamic_type)
            e_procedure := visited.creation_procedure(created_type) -- Push:
            type_stack.add_last(created_type)
            anonymous_feature_stack.add_last(e_procedure)
            -- Visit the called one:
            e_procedure.accept(Current)
            -- Pop:
            anonymous_feature_stack.remove_last
            type_stack.remove_last
         end
      end

feature {RAW_CREATE_INSTRUCTION}
   visit_raw_create_instruction (visited: RAW_CREATE_INSTRUCTION) is
      do
         visit_create_instruction(visited)
      end

feature {CREATE_EXPRESSION}
   visit_create_expression (visited: CREATE_EXPRESSION) is
      local
         call: PROCEDURE_CALL; created_type: TYPE; e_procedure: E_ROUTINE
      do
         call := visited.call
         if call /= Void and then call.arguments /= Void then
            call.arguments.accept(Current)
         end
         if call /= Void and then precomputable then
            created_type := visited.created_type(current_dynamic_type)
            e_procedure := visited.creation_procedure(created_type) -- Push:
            type_stack.add_last(created_type)
            anonymous_feature_stack.add_last(e_procedure)
            -- Visit the called one:
            e_procedure.accept(Current)
            -- Pop:
            anonymous_feature_stack.remove_last
            type_stack.remove_last
         end
      end

feature {IMPLICIT_CAST}
   visit_implicit_cast (visited: IMPLICIT_CAST) is
      do
         visited.expression.accept(Current)
      end

feature {NO_DISPATCH}
   visit_no_dispatch (visited: NO_DISPATCH) is
      do
         visited.side_effect_free_expression.accept(Current)
      end

feature {INTEGER_CONSTANT}
   visit_integer_constant (visited: INTEGER_CONSTANT) is
      do
      end

feature {CHARACTER_CONSTANT}
   visit_character_constant (visited: CHARACTER_CONSTANT) is
      do
      end

feature {REAL_CONSTANT}
   visit_real_constant (visited: REAL_CONSTANT) is
      do
      end

feature {E_VOID}
   visit_e_void (visited: E_VOID) is
      do
      end

feature {NULL_POINTER}
   visit_null_pointer (visited: NULL_POINTER) is
      do
      end

feature {MANIFEST_STRING}
   visit_manifest_string (visited: MANIFEST_STRING) is
      do
      end

feature {E_TRUE}
   visit_e_true (visited: E_TRUE) is
      do
      end

feature {E_FALSE}
   visit_e_false (visited: E_FALSE) is
      do
      end

feature {WRITTEN_CURRENT}
   visit_written_current (visited: WRITTEN_CURRENT) is
      do
      end

feature {IMPLICIT_CURRENT}
   visit_implicit_current (visited: IMPLICIT_CURRENT) is
      do
      end

feature {LOCAL_NAME1}
   visit_local_name1 (visited: LOCAL_NAME1) is
      do
      end

feature {LOCAL_NAME2}
   visit_local_name2 (visited: LOCAL_NAME2) is
      do
      end

feature {INTERNAL_LOCAL2}
   visit_internal_local2 (visited: INTERNAL_LOCAL2) is
      do
      end

feature {DYNAMIC_DISPATCH_TEMPORARY1}
   visit_dynamic_dispatch_temporary1 (visited: DYNAMIC_DISPATCH_TEMPORARY1) is
      do
      end

feature {DYNAMIC_DISPATCH_TEMPORARY1_ID}
   visit_dynamic_dispatch_temporary1_id (visited: DYNAMIC_DISPATCH_TEMPORARY1_ID) is
      do
      end

feature {DYNAMIC_DISPATCH_TEMPORARY2}
   visit_dynamic_dispatch_temporary2 (visited: DYNAMIC_DISPATCH_TEMPORARY2) is
      do
      end

feature {RESULT}
   visit_result (visited: RESULT) is
      do
      end

feature {ARGUMENT_NAME1}
   visit_argument_name1 (visited: ARGUMENT_NAME1) is
      do
      end

feature {ARGUMENT_NAME2}
   visit_argument_name2 (visited: ARGUMENT_NAME2) is
      do
      end

feature {WRITABLE_ATTRIBUTE_NAME}
   visit_writable_attribute_name (visited: WRITABLE_ATTRIBUTE_NAME) is
      do
      end

feature {VOID_CALL}
   visit_void_call (visited: VOID_CALL) is
      do
         -- (Because the once routine may stay un-called.)
         precomputable := False
      end

feature {RUN_TIME_ERROR_INSTRUCTION}
   visit_run_time_error_instruction (visited: RUN_TIME_ERROR_INSTRUCTION) is
      do
         -- (Because the once routine may stay un-called.)
         precomputable := False
      end

feature {VOID_PROC_CALL}
   visit_void_proc_call (visited: VOID_PROC_CALL) is
      do
         -- (Because the once routine may stay un-called.)
         precomputable := False
      end

feature {AGENT_EXPRESSION}
   visit_agent_expression (visited: AGENT_EXPRESSION) is
      do
         precomputable := False
      end

feature {AGENT_INSTRUCTION}
   visit_agent_instruction (visited: AGENT_INSTRUCTION) is
      do
         precomputable := False
      end

feature {CREATE_WRITABLE}
   visit_create_writable (visited: CREATE_WRITABLE) is
      do
      end

feature {PRECOMPUTABLE_ROUTINE_DETECTOR}
   visit_anonymous_feature (fs: FEATURE_STAMP; declaration_type, new_type: TYPE) is
      require
         fs /= Void
         declaration_type /= Void
         new_type /= Void
      local
         af: ANONYMOUS_FEATURE
      do
         if fs /= fs.resolve_static_binding_for(declaration_type, new_type) then
            -- No risk ;-)
            precomputable := False
         else
            af := fs.anonymous_feature(new_type)
            if anonymous_feature_stack.fast_has(af) then
               -- I do not trust recursive calls:
               precomputable := False
            else
               -- Push:
               type_stack.add_last(new_type)
               anonymous_feature_stack.add_last(af)
               -- Visit the called one:
               af.accept(Current)
               -- Pop:
               anonymous_feature_stack.remove_last
               type_stack.remove_last
            end
         end
      end

feature {CALL_0}
   visit_call_0 (visited: CALL_0) is
      do
         visit_call(visited.target, visited.feature_stamp)
         if precomputable then
            visited.target.accept(Current)
         end
      end

feature {FUNCTION_CALL_0}
   visit_function_call_0 (visited: FUNCTION_CALL_0) is
      do
         visit_call_0(visited)
      end

feature {CALL_1}
   visit_call_1 (visited: CALL_1) is
      do
         visit_call(visited.target, visited.feature_stamp)
         if precomputable then
            visited.target.accept(Current)
         end
         if precomputable then
            visited.arg1.accept(Current)
         end
      end

feature {FUNCTION_CALL_N}
   visit_function_call_n (visited: FUNCTION_CALL_N) is
      do
         visit_call(visited.target, visited.feature_stamp)
         if precomputable then
            visited.target.accept(Current)
         end
         if precomputable then
            visited.arguments.accept(Current)
         end
      end

feature {STATIC_CALL_0_C}
   visit_static_call_0_c (visited: STATIC_CALL_0_C) is
      do
         visit_call_0(visited) --|*** Not sure <FM-17/03/2006>
      end

feature {CALL_PREFIX_PLUS}
   visit_call_prefix_plus (visited: CALL_PREFIX_PLUS) is
      do
         visit_call_0(visited)
      end

feature {CALL_PREFIX_MINUS}
   visit_call_prefix_minus (visited: CALL_PREFIX_MINUS) is
      do
         visit_call_0(visited)
      end

feature {CALL_PREFIX_FREEOP}
   visit_call_prefix_freeop (visited: CALL_PREFIX_FREEOP) is
      do
         visit_call_0(visited)
      end

feature {CALL_PREFIX_NOT}
   visit_call_prefix_not (visited: CALL_PREFIX_NOT) is
      do
         visit_call_0(visited)
      end

feature {FUNCTION_CALL_1}
   visit_function_call_1 (visited: FUNCTION_CALL_1) is
      do
         visit_call_1(visited)
      end

feature {CALL_INFIX_PLUS}
   visit_call_infix_plus (visited: CALL_INFIX_PLUS) is
      do
         visit_call_1(visited)
      end

feature {CALL_INFIX_MINUS}
   visit_call_infix_minus (visited: CALL_INFIX_MINUS) is
      do
         visit_call_1(visited)
      end

feature {CALL_INFIX_FREEOP}
   visit_call_infix_freeop (visited: CALL_INFIX_FREEOP) is
      do
         visit_call_1(visited)
      end

feature {CALL_INFIX_GT}
   visit_call_infix_gt (visited: CALL_INFIX_GT) is
      do
         visit_call_1(visited)
      end

feature {CALL_INFIX_GE}
   visit_call_infix_ge (visited: CALL_INFIX_GE) is
      do
         visit_call_1(visited)
      end

feature {CALL_INFIX_LT}
   visit_call_infix_lt (visited: CALL_INFIX_LT) is
      do
         visit_call_1(visited)
      end

feature {CALL_INFIX_LE}
   visit_call_infix_le (visited: CALL_INFIX_LE) is
      do
         visit_call_1(visited)
      end

feature {CALL_INFIX_IMPLIES}
   visit_call_infix_implies (visited: CALL_INFIX_IMPLIES) is
      do
         visit_call_1(visited)
      end

feature {CALL_INFIX_XOR}
   visit_call_infix_xor (visited: CALL_INFIX_XOR) is
      do
         visit_call_1(visited)
      end

feature {CALL_INFIX_OR_ELSE}
   visit_call_infix_or_else (visited: CALL_INFIX_OR_ELSE) is
      do
         visit_call_1(visited)
      end

feature {CALL_INFIX_AND}
   visit_call_infix_and (visited: CALL_INFIX_AND) is
      do
         visit_call_1(visited)
      end

feature {CALL_INFIX_AND_THEN}
   visit_call_infix_and_then (visited: CALL_INFIX_AND_THEN) is
      do
         visit_call_1(visited)
      end

feature {CALL_INFIX_INT_DIV}
   visit_call_infix_int_div (visited: CALL_INFIX_INT_DIV) is
      do
         visit_call_1(visited)
      end

feature {CALL_INFIX_INT_REM}
   visit_call_infix_int_rem (visited: CALL_INFIX_INT_REM) is
      do
         visit_call_1(visited)
      end

feature {CALL_INFIX_DIV}
   visit_call_infix_div (visited: CALL_INFIX_DIV) is
      do
         visit_call_1(visited)
      end

feature {CALL_INFIX_TIMES}
   visit_call_infix_times (visited: CALL_INFIX_TIMES) is
      do
         visit_call_1(visited)
      end

feature {CALL_INFIX_POWER}
   visit_call_infix_power (visited: CALL_INFIX_POWER) is
      do
         visit_call_1(visited)
      end

feature {CALL_INFIX_OR}
   visit_call_infix_or (visited: CALL_INFIX_OR) is
      do
         visit_call_1(visited)
      end

feature {BUILT_IN_EQ_NEQ}
   visit_built_in_eq_neq (visited: BUILT_IN_EQ_NEQ) is
      do
         visited.left_side.accept(Current)
         if precomputable then
            visited.right_side.accept(Current)
         end
      end

feature {OPEN_OPERAND}
   visit_open_operand (visited: OPEN_OPERAND) is
      do
         precomputable := False
      end

feature {CLOSED_OPERAND}
   visit_closed_operand (visited: CLOSED_OPERAND) is
      do
         precomputable := False
      end

feature {EXPRESSION_WITH_COMMENT}
   visit_expression_with_comment (visited: EXPRESSION_WITH_COMMENT) is
      do
         precomputable := False
      end

feature {E_OLD}
   visit_e_old (visited: E_OLD) is
      do
         precomputable := False
      end

feature {FAKE_TARGET}
   visit_fake_target (visited: FAKE_TARGET) is
      do
         precomputable := False
      end

feature {FAKE_ARGUMENT}
   visit_fake_argument (visited: FAKE_ARGUMENT) is
      do
         precomputable := False
      end

feature {AGENT_CREATION}
   visit_agent_creation (visited: AGENT_CREATION) is
      do
         precomputable := False
      end

feature {ADDRESS_OF}
   visit_address_of (visited: ADDRESS_OF) is
      do
         precomputable := False
      end

feature {NON_VOID_NO_DISPATCH}
   visit_non_void_no_dispatch (visited: NON_VOID_NO_DISPATCH) is
      do
         -- (This can be another precomputed once :-)
      end

feature {UNUSED_EXPRESSION}
   visit_unused_expression (visited: UNUSED_EXPRESSION) is
      do
         visited.expression.accept(Current)
      end

feature {ONCE_ROUTINE_POOL}
   visit (cdt: like current_dynamic_type; once_body: INSTRUCTION): BOOLEAN is
      require
         cdt /= Void
         once_body /= Void
      do
         precomputable := True
         type_stack.clear_count
         type_stack.add_last(cdt)
         anonymous_feature_stack.clear_count
         once_body.accept(Current)
         Result := precomputable
      end

feature {}
   type_stack: FAST_ARRAY[TYPE] is
         -- To push and pop the `current_dynamic_type'.
      once
         create Result.with_capacity(32)
      end

   anonymous_feature_stack: FAST_ARRAY[ANONYMOUS_FEATURE] is
         -- To avoid infinite recursive calls.
      once
         create Result.with_capacity(32)
      end

   current_dynamic_type: TYPE is
         -- Of the currenly visited feature.
      do
         Result := type_stack.last
      end

   precomputable: BOOLEAN
         -- Memorize the result of the `visit'.

   can_be_dropped_flag: BOOLEAN
         -- To indicate that `can_be_dropped' is running.

   make is
      do
      end

end -- class PRECOMPUTABLE_ROUTINE_DETECTOR
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