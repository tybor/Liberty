-- This file is part of SmartEiffel The GNU Eiffel Compiler Tools and Libraries.
-- See the Copyright notice at the end of this file.
--
class C_PRETTY_PRINTER
   --
   -- Singleton in charge of handling C code pretty printing.
   -- This singleton is shared via the GLOBALS.`cpp' once function.
   --

inherit
   CODE_PRINTER
      export
         {PRECURSOR_CALL, C_EXPRESSION_COMPILATION_MIXIN} push_precursor
      end

insert
   PLATFORM
   STRING_HANDLER
   UNICODE_STRING_HANDLER

create {ANY}
   make

feature {ANY}
   header_pass_1: C_HEADER_PASS_1
   header_pass_2: C_HEADER_PASS_2
   header_pass_3: C_HEADER_PASS_3
   header_pass_4: C_HEADER_PASS_4
   live_type_compiler: C_LIVE_TYPE_COMPILER
   mapper: C_MAPPER
   target_mapper: C_TARGET_MAPPER
   arg_mapper: C_ARG_MAPPER
   code_compiler: C_CODE_COMPILER
   compound_expression_compiler: C_COMPOUND_EXPRESSION_COMPILER
   gc_handler: GC_HANDLER

   target_type: C_TYPE_FOR_TARGET
   result_type: C_TYPE_FOR_RESULT
   argument_type: C_TYPE_FOR_ARGUMENT
   va_arg_type: C_TYPE_FOR_VA_ARG

feature {}
   make is
      do
         create header_pass_1.make
         create header_pass_2.make
         create header_pass_3.make
         create header_pass_4.make
         create live_type_compiler.make
         create mapper.make
         create target_mapper.make
         create arg_mapper.make
         create code_compiler.make
         create compound_expression_compiler.make
         create gc_handler.make
         create target_type.make
         create result_type.make
         create argument_type.make
         create va_arg_type.make
      end

feature {SMART_EIFFEL}
   compile is
      local
         gc_flag: BOOLEAN
      do
         check
            ace.splitter /= Void
         end
         if nb_errors = 0 then
            check
               smart_eiffel.root_procedure /= Void
            end
            get_started
            check
               smart_eiffel.is_ready
            end
            gc_flag := not gc_handler.is_off
            -- ---------------------------------------------------------
            if ace.boost then
               out_h.put_string(once "#define SE_BOOST 1%N")
            end
            if ace.sedb then
               out_h.put_string(once "#define SE_SEDB 1%N")
            end
            if gc_flag then
               out_h.put_string(once "#define SE_GC_LIB 1%N")
            end
            if exceptions_handler.used then
               out_h.put_string(once "#define SE_EXCEPTIONS 1%N")
            end
            -- ---------------------------------------------------------
            if ace.profile then
               sys_runtime_h_and_c(once "profile")
            end
            -- ---------------------------------------------------------
            smart_eiffel.customize_runtime
            -- ---------------------------------------------------------
            header_pass_1.compile
            header_pass_2.compile
            header_pass_3.compile
            header_pass_4.compile
            -- ---------------------------------------------------------
            if not smart_eiffel.is_at_run_time(as_native_array_character) then
               -- Force definition of T9:
               out_h_buffer.copy(once "/*Force definition of non-live NATIVE_ARRAY[CHARACTER] for manifest strings*/%Ntypedef T3* T9;%N")
               write_out_h_buffer
               if ace.no_check then
                  prepare_c_function
                  pending_c_function_signature.append(once "void se_prinT9(FILE* file, T9*o)")
                  pending_c_function_body.append(once "fprintf(file, %"NATIVE_ARRAY[CHARACTER]#%%p\n%",(void*)*o);")
                  dump_pending_c_function(True)
               end
            end
            c_define1_manifest_string_pool
            customize_runtime
            -- ---------------------------------------------------------
            if gc_flag then
               gc_handler.define1
            end
            -- ---------------------------------------------------------
            compile_routines
            cecil_define
            customize_agent_pool_runtime_2
            -- ---------------------------------------------------------
            if ace.sedb then
               prepare_introspection
            end
            -- ---------------------------------------------------------
            split_c_file_padding_here
            c_define2_manifest_string_pool
            if gc_flag then
               gc_handler.define2
            end
            define_main(smart_eiffel.root_procedure)
            split_c_file_padding_here
            manifest_generic_pool.c_define
            split_c_file_padding_here
            assignment_test_pool.c_define_assignment_test_functions(live_type_map)
            debug
               echo.put_string(once "Very Final magic_count : ")
               echo.put_integer(smart_eiffel.magic_count)
               echo.put_character('%N')
            end
            write_make_file
            echo_information
         else
            error_handler.append("Cannot produce C code.")
            error_handler.print_as_error
         end
      end

feature {}
   live_type_map: TRAVERSABLE[LIVE_TYPE] is
      do
         Result := smart_eiffel.live_type_map
      end

   agent_switches: FAST_ARRAY[TYPE] is
      do
         Result := smart_eiffel.agent_switches
      end

   agent_creations: FAST_ARRAY[AGENT_CREATION] is
      do
         Result := smart_eiffel.agent_creations
      end

   class_invariants: FAST_ARRAY[LIVE_TYPE] is
      do
         Result := smart_eiffel.class_invariants
      end

   run_features: FAST_ARRAY[RUN_FEATURE] is
      do
         Result := smart_eiffel.run_features
      end

   prepare_introspection is
         -- Creates the introspection features
      require
         ace.no_check
      local
         i: INTEGER
      do
         from
            i := live_type_map.upper
         until
            i < 0
         loop
            live_type_map.item(i).prepare_introspection
            i := i - 1
         end
      end

   compile_routines is
         -- Try to give the best order to the C output.
      require
         smart_eiffel.root_procedure.set_is_root
      local
         lt, lt_string: LIVE_TYPE; ct: TYPE_MARK; depth, i: INTEGER; stop: BOOLEAN; ctn: STRING
         cn, current_class_name: CLASS_NAME
      do
         if ace.no_check then
            echo.put_string(once "Compiling routines for ")
            echo.put_integer(live_type_map.count)
            echo.put_string(once " run classes :%N")
            from
               i := live_type_map.lower
            until
               i > live_type_map.lower
            loop
               lt := live_type_map.item(i)
               cn := lt.class_text_name
               if cn /= current_class_name then
                  current_class_name := cn
               end
               live_type_compiler.compile(lt, 0)
               i := i + 1
            end
         else
            echo.put_string(once "Compiling/Sorting ")
            echo.put_integer(live_type_map.count)
            echo.put_string(once " live TYPEs:%N")
            from
               i := live_type_map.lower
            until
               i > live_type_map.upper
            loop
               lt := live_type_map.item(i)
               ct := lt.canonical_type_mark
               if ct.is_kernel_expanded then
                  live_type_compiler.compile(lt, 0)
               elseif ct.is_string then
                  lt_string := lt
               end
               i := i + 1
            end
            from
               i := live_type_map.lower
            until
               i > live_type_map.upper
            loop
               lt := live_type_map.item(i)
               i := i + 1
            end
            from
               i := live_type_map.lower
            until
               i > live_type_map.upper
            loop
               lt := live_type_map.item(i)
               ctn := lt.class_text_name.to_string
               if as_native_array = ctn then
                  live_type_compiler.compile(lt, 0)
               end
               i := i + 1
            end
            if lt_string /= Void then
               if lt_string.at_run_time then
                  live_type_compiler.compile(lt_string, 0)
               end
            end
            from
               i := live_type_map.lower
            until
               i > live_type_map.upper
            loop
               lt := live_type_map.item(i)
               ct := lt.canonical_type_mark
               ctn := ct.class_text_name.to_string
               if as_array = ctn or else as_fixed_array = ctn then
                  live_type_compiler.compile(lt, 0)
               end
               i := i + 1
            end
            from
               i := live_type_map.lower
            until
               i > live_type_map.upper
            loop
               lt := live_type_map.item(i)
               if lt.is_generic then
                  live_type_compiler.compile(lt, 0)
               end
               i := i + 1
            end
            from
               -- General sorting:
               depth := 8
            variant
               depth + 1
            until
               stop
            loop
               from
                  stop := True
                  i := live_type_map.lower
               until
                  i > live_type_map.upper
               loop
                  lt := live_type_map.item(i)
                  if lt.at_run_time then
                     live_type_compiler.compile(lt, depth)
                     if not live_type_compiler.is_compiled(lt) then
                        stop := False
                     end
                  end
                  i := i + 1
               end
               depth := depth - 1
            end
         end
      end

   show_profile is
      require
         ace.profile
      local
         n, i, a, sa: INTEGER
      do
         n := run_features.count
         if class_invariants /= Void then
            i := class_invariants.count
         end
         if agent_creations /= Void then
            a := agent_creations.count
         end
         if agent_switches /= Void then
            sa := agent_switches.count
         end
         pending_c_function_body.append(once "{%N%
                             %FILE *profile_file = fopen(%"profile.se%", %"w%");%N%
                             %if (profile_file!=NULL) {%N%
                             %int i;%N%
                             %se_profile_t sorted_profile[")
         n.append_in(cpp.pending_c_function_body)
         if i > 0 then
            pending_c_function_body.append(once "];%Nse_profile_t sorted_inv_profile[")
            i.append_in(cpp.pending_c_function_body)
         end
         if a > 0 then
            pending_c_function_body.append(once "];%Nse_profile_t sorted_agent_profile[")
            a.append_in(cpp.pending_c_function_body)
         end
         if sa > 0 then
            pending_c_function_body.append(once "];%Nse_profile_t sorted_agent_switch_profile[")
            sa.append_in(cpp.pending_c_function_body)
         end
         pending_c_function_body.append(once "];%Nse_profile_t sorted_all_profile[")
         (n + i + a + sa + 3).append_in(cpp.pending_c_function_body)

         -- sorting profiles

         pending_c_function_body.append(once "];%Nmemcpy(sorted_profile, profile, ")
         n.append_in(cpp.pending_c_function_body)
         pending_c_function_body.append(once "*sizeof(se_profile_t));%Nqsort(sorted_profile, ")
         n.append_in(cpp.pending_c_function_body)
         pending_c_function_body.append(once ", sizeof(se_profile_t), profile_comparator);%N")
         pending_c_function_body.append(once "memcpy(sorted_all_profile, profile, ")
         n.append_in(cpp.pending_c_function_body)
         pending_c_function_body.append(once "*sizeof(se_profile_t));%N")
         if i > 0 then
            pending_c_function_body.append(once "memcpy(sorted_inv_profile, inv_profile, ")
            i.append_in(cpp.pending_c_function_body)
            pending_c_function_body.append(once "*sizeof(se_profile_t));%Nqsort(sorted_inv_profile, ")
            i.append_in(cpp.pending_c_function_body)
            pending_c_function_body.append(once ", sizeof(se_profile_t), profile_comparator);%N")
            pending_c_function_body.append(once "memcpy(sorted_all_profile+")
            n.append_in(cpp.pending_c_function_body)
            pending_c_function_body.append(once ", inv_profile, ")
            i.append_in(cpp.pending_c_function_body)
            pending_c_function_body.append(once "*sizeof(se_profile_t));%N")
         end
         if a > 0 then
            pending_c_function_body.append(once "memcpy(sorted_agent_profile, agent_profile, ")
            a.append_in(cpp.pending_c_function_body)
            pending_c_function_body.append(once "*sizeof(se_profile_t));%Nqsort(sorted_agent_profile, ")
            a.append_in(cpp.pending_c_function_body)
            pending_c_function_body.append(once ", sizeof(se_profile_t), profile_comparator);%N")
            pending_c_function_body.append(once "memcpy(sorted_all_profile+")
            (n + i).append_in(cpp.pending_c_function_body)
            pending_c_function_body.append(once ", agent_profile, ")
            a.append_in(cpp.pending_c_function_body)
            pending_c_function_body.append(once "*sizeof(se_profile_t));%N")
         end
         if sa > 0 then
            pending_c_function_body.append(once "memcpy(sorted_agent_switch_profile, agent_switch_profile, ")
            sa.append_in(cpp.pending_c_function_body)
            pending_c_function_body.append(once "*sizeof(se_profile_t));%Nqsort(sorted_agent_switch_profile, ")
            sa.append_in(cpp.pending_c_function_body)
            pending_c_function_body.append(once ", sizeof(se_profile_t), profile_comparator);%N")
            pending_c_function_body.append(once "memcpy(sorted_all_profile+")
            (n + i + a).append_in(cpp.pending_c_function_body)
            pending_c_function_body.append(once ", agent_switch_profile, ")
            sa.append_in(cpp.pending_c_function_body)
            pending_c_function_body.append(once "*sizeof(se_profile_t));%N")
         end
         pending_c_function_body.append(once "sorted_all_profile[")
         (n + i + a + sa).append_in(cpp.pending_c_function_body)
         pending_c_function_body.append(once "]=root_profile;%N")
         pending_c_function_body.append(once "sorted_all_profile[")
         (n + i + a + sa + 1).append_in(cpp.pending_c_function_body)
         pending_c_function_body.append(once "]=runinit_profile;%N")
         pending_c_function_body.append(once "sorted_all_profile[")
         (n + i + a + sa + 2).append_in(cpp.pending_c_function_body)
         pending_c_function_body.append(once "]=atexit_profile;%N")
         pending_c_function_body.append(once "qsort(sorted_all_profile, ")
         (n + i + a + sa + 3).append_in(cpp.pending_c_function_body)
         pending_c_function_body.append(once ", sizeof(se_profile_t), profile_comparator);%N")

         -- summary

         pending_c_function_body.append(once "fprintf(profile_file, %"===============================================================================\nSummary:\n%");%N")
         pending_c_function_body.append(once "start_sumup_profile(profile_file);%Ni=")
         (n + i + a + sa + 3).append_in(cpp.pending_c_function_body)
         pending_c_function_body.append(once ";while (i-->0) {%Nsumup_profile(profile_file, sorted_all_profile+i);%N}%N")

         -- detailed printing

         pending_c_function_body.append(once "fprintf(profile_file, %"\n===============================================================================\nDetailed profile:\n%");%N")
         pending_c_function_body.append(once "start_print_profile(profile_file);%N")
         pending_c_function_body.append(once "print_profile(profile_file, &root_profile);%N")
         pending_c_function_body.append(once "print_profile(profile_file, &runinit_profile);%N")
         pending_c_function_body.append(once "print_profile(profile_file, &atexit_profile);%N")
         pending_c_function_body.append(once "fprintf(profile_file, %"\n-------------------------------------------------------------------------------\n%");%Ni=")
         n.append_in(cpp.pending_c_function_body)
         pending_c_function_body.append(once ";while (i-->0) {%Nprint_profile(profile_file, sorted_profile+i);%N}%N")
         if i > 0 then
            pending_c_function_body.append(once "fprintf(profile_file, %"\n-------------------------------------------------------------------------------\n%");%Ni=")
            i.append_in(cpp.pending_c_function_body)
            pending_c_function_body.append(once ";while (i-->0) {%Nprint_profile(profile_file, sorted_inv_profile+i);%N}%N")
         end
         if a > 0 then
            pending_c_function_body.append(once "fprintf(profile_file, %"\n-------------------------------------------------------------------------------\n%");%Ni=")
            a.append_in(cpp.pending_c_function_body)
            pending_c_function_body.append(once ";while (i-->0) {%Nprint_profile(profile_file, sorted_agent_profile+i);%N}%N")
         end
         if sa > 0 then
            pending_c_function_body.append(once "fprintf(profile_file, %"\n-------------------------------------------------------------------------------\n%");%Ni=")
            sa.append_in(cpp.pending_c_function_body)
            pending_c_function_body.append(once ";while (i-->0) {%Nprint_profile(profile_file, sorted_agent_switch_profile+i);%N}%N")
         end

         pending_c_function_body.append(once "fprintf(profile_file, %"\n===============================================================================\n%");%N")
         pending_c_function_body.append(once "fclose(profile_file);}%N")
         pending_c_function_body.append(once "else fprintf(SE_ERR, %"Cannot open profile.se for writing.\n%");%N}%N")
      end

   define_extern_tables is
      local
         size: INTEGER
      do
         size := id_provider.max_id + 1
         macro_def(once "SE_MAXID", size)
         if smart_eiffel.generator_used then
            write_extern_array_2(once "T7*g", size)
         end
         if smart_eiffel.generating_type_used then
            write_extern_array_2(once "T7*t", size)
         end
         if ace.boost then
            if (not gc_handler.is_off) and then smart_eiffel.weak_reference_used then
               initialize_size_table
            end
         else
            write_extern_array_2(once "char*p", size)
            c_code.copy(once "void(*se_prinT[")
            size.append_in(c_code)
            c_code.append(once "])(FILE*,void*)")
            write_extern_1(c_code)
            initialize_size_table
            if ace.sedb then
               c_code.copy(once "void*(*se_introspecT[")
               size.append_in(c_code)
               c_code.append(once "])(void*,char*,int*,int*)")
               write_extern_1(c_code)
               c_code.copy(once "char* se_atT[")
               size.append_in(c_code)
               c_code.append(once "]")
               write_extern_1(c_code)
            end
         end
         if ace.profile then
            write_extern_array_2(once "se_profile_t profile", run_features.count)
            if agent_creations /= Void then
               write_extern_array_2(once "se_profile_t agent_profile", agent_creations.count)
            end
            if agent_switches /= Void then
               write_extern_array_2(once "se_profile_t agent_switch_profile", agent_switches.count)
            end
            if class_invariants /= Void then
               write_extern_array_2(once "se_profile_t inv_profile", class_invariants.count)
            end
            write_extern_1(once "se_profile_t root_profile")
            write_extern_1(once "se_profile_t runinit_profile")
            write_extern_1(once "se_profile_t atexit_profile")
            write_extern_1(once "se_local_profile_t global_profile")
         end
      end

   initialize_size_table is
         -- initialize se_strucT
      require
         not smart_eiffel.status.is_analyzing
      local
         i_ltm, i_c, nb_types: INTEGER; a_type: LIVE_TYPE
      do
         nb_types := id_provider.max_id + 1
         out_c_buffer.clear_count
         smart_eiffel.sort_live_type_map
         from
            i_ltm := 0
            i_c := 0
         until
            i_ltm > live_type_map.upper
         loop
            a_type := live_type_map.item(i_ltm)
            from
            until
               i_c >= a_type.id
            loop
               if out_c_buffer.count >= 100 then
                  out_c_buffer.extend('%N')
               end
               out_c_buffer.append(once "0,")
               i_c := i_c + 1
            end
            check
               a_type.id = i_c
            end
            if out_c_buffer.count >= 100 then
               out_c_buffer.extend('%N')
            end
            if a_type.at_run_time then
               out_c_buffer.append(once "sizeof(T")
               i_c.append_in(cpp.out_c_buffer)
               out_c_buffer.append(once "),")
            else
               out_c_buffer.append(once "0,")
            end
            i_ltm := i_ltm + 1
            i_c := i_c + 1
         end
         -- last items are automatically zeroed by C compiler
         check
            out_c_buffer.last = ','
         end
         out_c_buffer.remove_last
         write_extern_array_1(once "int se_strucT", nb_types, out_c_buffer)
      ensure
         id_provider.max_id = old id_provider.max_id
      end

   initialize_path_table_of (ct: CLASS_TEXT) is
      require
         pending_c_function
      local
         id: INTEGER
      do
         id := ct.id
         if id > 0 then
            pending_c_function_body.append(once "p[")
            id.append_in(cpp.pending_c_function_body)
            pending_c_function_body.append(once "]=")
            string_to_c_code(ct.path, pending_c_function_body)
            pending_c_function_body.append(once ";%N")
         end
      end

   initialize_path_table is
      require
         ace.no_check
      local
         i: INTEGER; lt: LIVE_TYPE
      do
         pending_c_function_body.append(once "p[0]=%"???%";%N")
         ace.for_all(agent initialize_path_table_of(?))
         from
            i := live_type_map.upper
         until
            i < 0
         loop
            lt := live_type_map.item(i)
            if lt.at_run_time then
               pending_c_function_body.append(once "se_prinT[")
               lt.id.append_in(cpp.pending_c_function_body)
               pending_c_function_body.append(once "]=((void(*)(FILE*,void*))se_prinT")
               lt.id.append_in(cpp.pending_c_function_body)
               pending_c_function_body.append(once ");%N")
               if lt.is_generic then
                  pending_c_function_body.append(once "p[")
                  lt.id.append_in(cpp.pending_c_function_body)
                  pending_c_function_body.append(once "]=p[")
                  lt.class_text.id.append_in(cpp.pending_c_function_body)
                  pending_c_function_body.append(once "];%N")
               end
               if ace.sedb then
                  pending_c_function_body.append(once "se_introspecT[")
                  lt.id.append_in(cpp.pending_c_function_body)
                  pending_c_function_body.append(once "]=((void*(*)(void*,char*,int*,int*))se_introspecT")
                  lt.id.append_in(cpp.pending_c_function_body)
                  pending_c_function_body.append(once ");%N")
                  lt.prepare_introspection2
               end
            end
            i := i - 1
         end
      end

   initialize_generator_of (ct: CLASS_TEXT) is
      require
         pending_c_function
      local
         id: INTEGER; n: STRING
      do
         id := ct.id
         if id >= 0 then
            array_access('g', id)
            pending_c_function_body.extend('=')
            n := ct.name.to_string
            if n = as_integer then
               n := as_integer_32
            end
            se_string(n)
            pending_c_function_body.append(once ";%N")
         end
      end

   initialize_generator is
      local
         i: INTEGER; ct: CLASS_TEXT; lt: LIVE_TYPE
      do
         ace.for_all(agent initialize_generator_of(?))
         from
            i := live_type_map.upper
         until
            i < 0
         loop
            lt := live_type_map.item(i)
            if lt.generator_used then
               ct := lt.class_text
               if ct.name.hashed_name /= lt.name then
                  array_access('g', lt.id)
                  pending_c_function_body.extend('=')
                  array_access('g', ct.id)
                  pending_c_function_body.append(once ";%N")
               end
            end
            i := i - 1
         end
      end

   initialize_generating_type is
      local
         i: INTEGER; lt: LIVE_TYPE; ct: CLASS_TEXT; rtm: STRING
      do
         from
            i := live_type_map.upper
         until
            i < 0
         loop
            lt := live_type_map.item(i)
            if lt.generating_type_used then
               array_access('t', lt.id)
               pending_c_function_body.extend('=')
               ct := lt.class_text
               rtm := lt.name.to_string
               if ct.name.to_string /= rtm then
                  se_string(rtm)
               else
                  array_access('g', lt.id)
               end
               pending_c_function_body.append(once ";%N")
            end
            i := i - 1
         end
      end

   initialize_profile is
      require
         ace.profile
      local
         i: INTEGER; b: STRING; rf: RUN_FEATURE; lt: LIVE_TYPE; t: TYPE; ac: AGENT_CREATION
      do
         from
            b := once "......................................."
            i := run_features.upper
         until
            i < run_features.lower
         loop
            rf := run_features.item(i)
            pending_c_function_body.append(once "init_profile(profile+")
            i.append_in(cpp.pending_c_function_body)
            pending_c_function_body.extend(',')
            b.copy(rf.type_of_current.name.to_string)
            b.extend('.')
            rf.name.complete_name_in(b)
            string_to_c_code(b, pending_c_function_body)
            pending_c_function_body.append(once ");%N")
            i := i - 1
         end
         if class_invariants /= Void then
            from
               b := once ""
               i := class_invariants.upper
            until
               i < class_invariants.lower
            loop
               lt := class_invariants.item(i)
               pending_c_function_body.append(once "init_profile(inv_profile+")
               i.append_in(cpp.pending_c_function_body)
               pending_c_function_body.extend(',')
               b.copy(once "invariant of ")
               b.append(lt.name.to_string)
               string_to_c_code(b, pending_c_function_body)
               pending_c_function_body.append(once ");%N")
               i := i - 1
            end
         end
         if agent_creations /= Void then
            from
               b := once ""
               i := agent_creations.upper
            until
               i < agent_creations.lower
            loop
               ac := agent_creations.item(i)
               pending_c_function_body.append(once "init_profile(agent_profile+")
               i.append_in(cpp.pending_c_function_body)
               pending_c_function_body.extend(',')
               b.clear_count
               pretty_printer.expression_in(b, ac)
               string_to_c_code(b, pending_c_function_body)
               pending_c_function_body.append(once ");%N")
               i := i - 1
            end
         end
         if agent_switches /= Void then
            from
               b := once ""
               i := agent_switches.upper
            until
               i < agent_switches.lower
            loop
               t := agent_switches.item(i)
               pending_c_function_body.append(once "init_profile(agent_switch_profile+")
               i.append_in(cpp.pending_c_function_body)
               pending_c_function_body.extend(',')
               b.copy(once "agents ")
               b.append(t.canonical_type_mark.written_mark)
               string_to_c_code(b, pending_c_function_body)
               pending_c_function_body.append(once ");%N")
               i := i - 1
            end
         end
      end

   c_code: STRING is
      once
         create Result.make(128)
      end

feature {ANY} -- Set of features to bufferize the next C function to be generated:
   pending_c_function: BOOLEAN
         -- Indicates that a new C function is beeing prepared.

   pending_c_function_signature: STRING is
         -- The signature of the `pending_c_function' beeing prepared.
      once
         create Result.with_capacity(128)
      end

   pending_c_function_body: STRING is
         -- The body of the `pending_c_function' beeing prepared.
      once
         create Result.with_capacity(1024)
      end

   pending_c_function_counter: INTEGER
         -- Changed each time a new `pending_c_function' is generated.

   prepare_c_function is
         -- Start the preparation of a the next C function. Information about the next function to
         -- generate is bufferized until `dump_pending_c_function' is called.
      require
         not pending_c_function
      do
         pending_c_function := True
         pending_c_function_counter := pending_c_function_counter + 1
         function_count_in_file := function_count_in_file + 1
      ensure
         pending_c_function
         pending_c_function_counter = 1 + old pending_c_function_counter
      end

   dump_pending_c_function (shared: BOOLEAN) is
         -- Actually dump the `pending_c_function' on `out_h' / `out_c'.
      require
         pending_c_function
      do
         out_c.put_character('%N')
         -- The signature first:
         if shared then
            out_h.put_string(pending_c_function_signature)
            out_h.put_string(once ";%N")
         else
            out_c.put_string(once "static ")
         end
         out_c.put_string(pending_c_function_signature)
         out_c.put_string(once "{%N")
         pending_c_function_signature.clear_count
         internal_c_local_list.declaration_dump(out_c)
         -- Then the body:
         out_c.put_string(pending_c_function_body)
         pending_c_function_body.clear_count
         out_c.put_string(once "}/*--*/%N")
         -- Finally:
         pending_c_function := False
      ensure
         not pending_c_function
      end

   pending_c_function_lock_local (type: TYPE; tag: STRING): INTERNAL_C_LOCAL is
         -- Reuse some un-locked variable of the `pending_c_function_locals' or add/create a new one.
         -- When possible, the caller is supposed to call feature `unlock' of INTERNAL_C_LOCAL.
      require
         type /= Void
         tag /= Void
      do
         Result := internal_c_local_list.lock_local(internal_c_local_stamps_stack, type, tag)
      ensure
         Result /= Void
      end

feature {COMPOUND, C_CODE_COMPILER}
   eiffel_parser_stamp_push (eiffel_parser_stamp: INTEGER) is
      require
         eiffel_parser_stamp > 0
      do
         internal_c_local_stamps_stack.add_last(eiffel_parser_stamp)
      end

   eiffel_parser_stamp_pop is
      do
         internal_c_local_stamps_stack.remove_last
      end

feature {ANY} -- Low-level set of feature to be used when one cannot use the `pending_c_function' mode,
   -- i.e. when one is not defining some code inside some C function:
   out_h_buffer: STRING is
         -- Common buffer to write on the *.h file.
      once
         create Result.with_capacity(128)
      end

   write_out_h_buffer is
         -- Actually write the `out_h_buffer'.
      do
         out_h.put_string(out_h_buffer)
      end

   out_c_buffer: STRING is
         -- Common buffer to write on the *.c file.
      once
         create Result.with_capacity(128)
      end

   write_out_c_buffer is
         -- Actually write the `out_c_buffer'.
      do
         out_c.put_string(out_c_buffer)
      end

feature {SMART_EIFFEL, MANIFEST_STRING_POOL, GC_HANDLER, MANIFEST_GENERIC_POOL}
   split_c_file_padding_here is
         -- Must be called only if we are sure that we will output something after that call.
      do
         split_c_file_now(0)
      end

feature {C_COMPILATION_MIXIN}
   assertion_checks_disabled: BOOLEAN

   set_assertion_checks_disabled (i: like assertion_checks_disabled) is
      do
         assertion_checks_disabled := i
      ensure
         assertion_checks_disabled = i
      end

   split_c_file_now (features_count: INTEGER) is
      do
         if ace.splitter.should_split(features_count + function_count_in_file) then
            ace.splitter.split_now
         end
      end

   set_live_type (a_live_type: LIVE_TYPE) is
      do
         ace.splitter.set_live_type(a_live_type)
      end

feature {}
   function_count_in_file: INTEGER

feature {C_SPLITTER}
   begin_c_file is
      do
         function_count_in_file := 0
         begin_c_linkage(out_c)
         add_first_include(path_h)
      end

   end_c_file is
      do
         if out_c /= Void and then out_c.is_connected then
            end_c_linkage(out_c)
            out_c.disconnect
         end
      end

feature {ANY}
   write_extern_0 (type_variable: STRING) is
      do
         out_h.put_string(once "extern ")
         out_h.put_string(type_variable)
         out_h.put_string(once ";%N")
         --
         out_c.put_string(type_variable)
         out_c.put_string(once "=0;%N")
      end

   write_extern_1 (type_variable: STRING) is
      do
         out_h.put_string(once "extern ")
         out_h.put_string(type_variable)
         out_h.put_string(once ";%N")
         --
         out_c.put_string(type_variable)
         out_c.put_string(once ";%N")
      end

   write_extern_2 (type_variable: STRING; initializer: STRING) is
      do
         out_h.put_string(once "extern ")
         out_h.put_string(type_variable)
         out_h.put_string(once ";%N")
         --
         out_c.put_string(type_variable)
         out_c.put_character('=')
         out_c.put_string(initializer)
         out_c.put_string(once ";%N")
      end

   write_extern_array_1 (type_variable: STRING; array_size: INTEGER; array_content: STRING) is
      do
         out_h.put_string(once "extern ")
         out_h.put_string(type_variable)
         out_h.put_string(once "[];%N")
         --
         out_c.put_string(type_variable)
         out_c.put_character('[')
         out_c.put_integer(array_size)
         out_c.put_string(once "]={")
         out_c.put_string(array_content)
         out_c.put_string(once "};%N")
      end

   write_extern_array_2 (type_variable: STRING; array_size: INTEGER) is
      do
         out_h.put_string(once "extern ")
         out_h.put_string(type_variable)
         out_h.put_string(once "[];%N")
         --
         out_c.put_string(type_variable)
         out_c.put_character('[')
         out_c.put_integer(array_size)
         out_c.put_string(once "];%N")
      end

   put_position (p: POSITION) is
      require
         pending_c_function
      do
         pending_c_function_body.append(once "0x")
         p.mangling.to_hexadecimal_in(pending_c_function_body)
         put_position_comment_in(pending_c_function_body, p)
      end

   put_position_in_ds (p: POSITION) is
      require
         pending_c_function
      do
         pending_c_function_body.append(once "ds.p=")
         put_position(p)
         pending_c_function_body.append(once ";%N")
      end

   put_target_as_target (target_formal_type: TYPE) is
         -- Produce C code to pass the current stacked target as a target of a new call: user expanded are
         -- passed by address and class invariant code is produced.
         -- ***
         -- *** Choisir un nouveau nom pour cette methode et voir si *** stack_top.static_type ***
         -- *** sert encore. Dom April 30 th 2008 ***
      require
         smart_eiffel.is_ready
      local
         code: INTEGER; type: TYPE; target: EXPRESSION
      do
         code := stack_top.code
         inspect
            code
         when C_direct_call then
            target := stack_top.target
            type := stack_top.type
            target_mapper.compile(target, type, target_formal_type)
         else
            common_put_target
         end
      end

   put_target_as_value is
         -- Produce C code for a simple access to the stacked target.
         -- User's expanded values are not given using a pointer.
         -- There is no C code to check the class invariant.
      require
         smart_eiffel.is_ready
      local
         code: INTEGER
      do
         code := stack_top.code
         inspect
            code
         when C_direct_call then
            code_compiler.compile(stack_top.target, stack_top.type)
         else
            common_put_target
         end
      end

   put_error0 (msg: STRING) is
         -- Print `msg' and then stop execution. Also print stack when not -boost.
      require
         pending_c_function
      do
         if ace.boost then
            pending_c_function_body.append(once "/*")
            pending_c_function_body.append(msg)
            pending_c_function_body.append(once "*/%Nse_signal_handler(14/*System_level_type_error*/);%N")
         else
            pending_c_function_body.append(once "error0(")
            string_to_c_code(msg, pending_c_function_body)
            pending_c_function_body.append(once ",NULL);%N")
         end
      end

   put_position_comment (p: POSITION) is
      require
         pending_c_function
      do
         put_position_comment_in(pending_c_function_body, p)
      end

   define_main (rf3: RUN_FEATURE_3) is
      do
         -- Declare eiffel_root_object :
         out_h_buffer.clear_count
         out_h_buffer.extend('T')
         rf3.type_of_current.live_type.id.append_in(out_h_buffer)
         out_h_buffer.append(once "*eiffel_root_object")
         write_extern_2(out_h_buffer, once "(void*)0")
         -- Save argv argc :
         write_extern_1(once "int se_argc")
         write_extern_1(once "char**se_argv")
         define_initialize_eiffel_runtime(rf3)
         if not ace.no_main then
            really_define_c_main(rf3)
         end
      end

feature {}
   se_string (c_string: STRING) is
      require
         pending_c_function
      do
         pending_c_function_body.append(once "(T7*)se_string(")
         string_to_c_code(c_string, pending_c_function_body)
         pending_c_function_body.extend(')')
      end

   array_access (array_name: CHARACTER; value: INTEGER) is
      require
         pending_c_function
      do
         pending_c_function_body.extend(array_name)
         pending_c_function_body.extend('[')
         value.append_in(pending_c_function_body)
         pending_c_function_body.extend(']')
      end

   get_started is
      require
         smart_eiffel.status.is_safety_checking
      do
         smart_eiffel.status.set_generating
         internal_c_local_stamps_stack.add_last(1)
         echo.file_removing(path_make)
         top := -1
         ace.splitter.connect(path_c)
         h_connect(path_h)
         begin_c_linkage(out_h)
         put_banner(out_h)
         out_h.put_character('%N')
         sys_runtime_h_and_c(once "base")
      end

   cecil_define is
      local
         save_out_h: like out_h
      do
         save_out_h := out_h
         cecil_pool.c_define_users
         out_h := save_out_h
      end

   echo_information is
      do
         echo.print_count(once "Procedure", procedure_count)
         echo.print_count(once "Function", function_count)
         echo.print_count(once "Procedure without Current", real_procedure_count)
         echo.print_count(once "Function without Current", real_function_count)
         echo.print_count(once "Precursor routine", precursor_routine_count)
         internal_c_local_list.echo_information
         echo.put_string(once "Internal stacks size used: ")
         echo.put_integer(context_stack.count)
         echo.put_character('%N')
         smart_eiffel.echo_polymorphic_inspect_distribution(once "during C code generation (backend)")
      end

   customize_runtime is
      do
         if ace.no_check then
            sys_runtime_h_and_c(fz_no_check)
            if ace.sedb then
               write_extern_0(once "int se_general_trace_switch")
               sys_runtime_h_and_c(once "sedb")
            end
         else
            sys_runtime_h_and_c(fz_boost)
         end
         exceptions_handler.customize_c_runtime
         gc_handler.customize_c_runtime
         customize_agent_pool_runtime_1
         if smart_eiffel.deep_twin_used then
            sys_runtime_h_and_c(as_deep_twin)
         end
         if ace.profile then
            system_tools.add_lib_profile
            system_tools.add_lib_math
         end
      end

feature {C_LIVE_TYPE_COMPILER}
   defined_agent_creation: FAST_ARRAY[STRING] is
      once
         create Result.with_capacity(32)
      end

feature {}
   customize_agent_pool_runtime_1 is
      local
         boost: BOOLEAN
      do
         boost := ace.boost
         if agent_pool.agent_creation_collected_flag then
            out_h_buffer.copy(once "/*The generic se_agent0 definition:*/%N%
                                   %struct _se_agent0{%N%
                                   %Tid id;%N%
                                   %Tid creation_mold_id;%N%
                                   %void(*afp)(")
            if not boost then
               out_h_buffer.append(once "se_dump_stack*,")
            end
            if ace.profile then
               out_h_buffer.append(once "se_local_profile_t*,")
            end
            out_h_buffer.append(once "se_agent*);%N")

            if not gc_handler.is_off then
               out_h_buffer.append(once "void(*gc_mark_agent_mold)(se_agent*);%N")
            end

            out_h_buffer.append(once "int(*eq)(se_agent*,se_agent*);%N};%N")
            write_out_h_buffer
         end
      end

   customize_agent_pool_runtime_2 is
      require
         not pending_c_function
      local
         i: INTEGER; mold_id: STRING; agent_args: AGENT_ARGS
      do
         if agent_pool.agent_creation_collected_flag then
            echo.print_count(once "Agent call wrapper", agent_pool.launcher_collected_memory.count)
            from
               i := agent_pool.launcher_collected_memory.lower
            until
               i > agent_pool.launcher_collected_memory.upper
            loop
               agent_args := agent_pool.launcher_collected_memory.item(i)
               agent_pool.agent_definition_set.add(agent_args.signature)
               define_agent_launcher_args(agent_args)
               i := i + 1
            end

            out_h_buffer.copy(once "union _se_agent{T0 s0;se_agent0 u0;%N")
            from
               i := defined_agent_creation.lower
            until
               i > defined_agent_creation.upper
            loop
               mold_id := defined_agent_creation.item(i)
               out_h_buffer.append(once "se_")
               out_h_buffer.append(mold_id)
               out_h_buffer.append(once " u")
               out_h_buffer.append(mold_id)
               out_h_buffer.append(once ";%N")
               i := i + 1
            end
            out_h_buffer.append(once "};%N")
            write_out_h_buffer

            sys_runtime_h_and_c(once "agents")
         end
      end

   define_agent_launcher_args (agent_args: AGENT_ARGS) is
      local
         boost: BOOLEAN
      do
         prepare_c_function
         boost := define_agent_launcher_heading(agent_args, once "(live)")
         if agent_args.agent_result /= Void then
            pending_c_function_body.append(result_type.for(agent_args.agent_result.canonical_type_mark))
            pending_c_function_body.append(" R=")
            if agent_args.agent_result.is_reference then
               pending_c_function_body.append(once "NULL;%N")
            else
               pending_c_function_body.append(once "M")
               agent_args.agent_result.live_type.id.append_in(pending_c_function_body)
               pending_c_function_body.append(once ";%N")
            end
         end
         if ace.profile then
            local_profile
            start_profile_agent_switch(agent_args.agent_type)
         end
         pending_c_function_body.append(once "/*")
         pending_c_function_body.append(agent_args.agent_type.name.to_string)
         pending_c_function_body.append(once "*/switch(((se_agent0*)a)->creation_mold_id){%N")
         agent_pool_switch_in(pending_c_function_body, agent_args.agent_type, agent_args.agent_result)
         if not boost then
            pending_c_function_body.append(once "default:%N%
                                                %error0(%"Internal error in agent launcher.%",NULL);%N")
         end
         pending_c_function_body.append(once "}%N")
         if ace.profile then
            stop_profile
         end
         if agent_args.agent_result /= Void then
            pending_c_function_body.append(once "return R;%N")
         end
         dump_pending_c_function(True)
      end

   define_agent_launcher_heading (agent_args: AGENT_ARGS; tag: STRING): BOOLEAN is
      local
         boost: BOOLEAN; i: INTEGER; ar: TYPE; open: ARRAY[TYPE]
      do
         echo.put_string(once "Defining ")
         echo.put_string(tag)
         echo.put_string(once " agent wrapper: ")
         echo.put_string(agent_args.signature)
         echo.put_string(once "%N")
         boost := ace.boost
         ar := agent_args.agent_result
         if ar = Void then
            pending_c_function_signature.append(once "void")
         else
            pending_c_function_signature.append(result_type.for(ar.canonical_type_mark))
         end
         pending_c_function_signature.extend(' ')
         pending_c_function_signature.append(agent_args.signature)
         pending_c_function_signature.extend('(')
         if not boost then
            pending_c_function_signature.append(once "se_dump_stack*caller,")
         end
         if ace.profile then
            pending_c_function_signature.append(once "se_local_profile_t*parent_profile,")
         end
         pending_c_function_signature.append(once "/*agent*/T0*a")
         open := agent_args.agent_type.open_arguments
         if open /= Void then
            from
               i := open.lower
            until
               i > open.upper
            loop
               pending_c_function_signature.extend(',')
               pending_c_function_signature.append(argument_type.for(open.item(i).canonical_type_mark))
               pending_c_function_signature.extend(' ')
               pending_c_function_signature.extend('a')
               i.append_in(pending_c_function_signature)
               i := i + 1
            end
         end
         pending_c_function_signature.extend(')')
         Result := boost
      end

   agent_pool_switch_in (buffer: STRING; launcher_type, agent_result: TYPE) is
      require
         agent_result = launcher_type.agent_result
      local
         mold_id: STRING;
         type_idx, agent_creation_idx, arg_idx, open_count, idx: INTEGER
         open_args: ARRAY[TYPE]
         agent_creation_list: FAST_ARRAY[AGENT_CREATION]; agent_creation: AGENT_CREATION
         type, agent_creation_type: TYPE
      do
         mold_id := once "..........................."
         from
            type_idx := agent_pool.creation_collected_memory.lower
         until
            type_idx > agent_pool.creation_collected_memory.upper
         loop
            type := agent_pool.creation_collected_memory.key(type_idx)
            agent_creation_list := agent_pool.creation_collected_memory.item(type_idx)
            from
               agent_creation_idx := agent_creation_list.lower
            until
               agent_creation_idx > agent_creation_list.upper
            loop
               agent_creation := agent_creation_list.item(agent_creation_idx)
               agent_creation_type := agent_creation.resolve_in(type)
               if agent_creation_type.can_be_assigned_to(launcher_type) then
                  mold_id.clear_count
                  agent_creation.mold_id_in(type, mold_id)
                  idx := defined_agent_creation.first_index_of(mold_id)
                  if defined_agent_creation.valid_index(idx) then
                     buffer.append(once "case ")
                     idx.append_in(buffer)
                     buffer.append(once ":{%N")
                     if agent_result /= Void then
                        buffer.append(once "R=(")
                        buffer.append(result_type.for(agent_result.canonical_type_mark))
                        buffer.append(once ")(")
                     end
                     buffer.append(once "((se_")
                     buffer.append(mold_id)
                     buffer.append(once "*)a)->afp(")
                     if not ace.boost then
                        buffer.append(once "caller,")
                     end
                     if ace.profile then
                        buffer.append(once "&local_profile,")
                     end
                     buffer.append(once "((/*agent*/void*)a)")
                     open_args := agent_creation_type.open_arguments
                     if open_args /= Void then
                        open_count := open_args.count
                        from
                           arg_idx := 1
                        until
                           arg_idx > open_count
                        loop
                           buffer.append(once ",a")
                           arg_idx.append_in(buffer)
                           arg_idx := arg_idx + 1
                        end
                     end
                     buffer.extend(')')
                     if agent_result /= Void then
                        buffer.extend(')')
                     end
                     buffer.append(once ";%Nbreak;%N}%N")
                  end
               end
               agent_creation_idx := agent_creation_idx + 1
            end
            type_idx := type_idx + 1
         end
      end

feature {C_MAPPER, NATIVE}
   target_cannot_be_dropped: BOOLEAN is
         -- True when top target cannot be dropped because we are not sure that
         -- target is non Void or that target has no side effects. When Result is True,
         -- printed C code is : "(((void)(<target>))"
      require
         smart_eiffel.is_ready
      local
         target: EXPRESSION; type, type_of_target: TYPE
      do
         inspect
            stack_top.code
         when C_direct_call then
            target := stack_top.target
            type := stack_top.type
            type_of_target := target.resolve_in(type)
            Result := not target.side_effect_free(type)
            if Result then
               pending_c_function_body.append(once "((/*UT*/(void)(")
               if type_of_target = Void then
                  --|*** How can it be Void ?? (Dom march 29th2004) ***
                  put_target_as_target(type_of_target)
               elseif type_of_target.is_user_expanded then
                  put_target_as_value
               else
                  put_target_as_target(type_of_target)
               end
               pending_c_function_body.append(once "))")
            end
         else
         end
      end

   arguments_cannot_be_dropped: BOOLEAN is
         -- True when arguments cannot be dropped. Printed C code looks like:
         --  "(((void)<exp1>), ((void)<exp2>), ...((void)<expN>)"
      local
         args: EFFECTIVE_ARG_LIST; arg: EXPRESSION; i: INTEGER
      do
         inspect
            stack_top.code
         when C_direct_call, C_create_instruction then
            args := stack_top.effective_arguments
            if args = Void then
               -- Nothing to generate.
            else
               from
                  i := 1
               until
                  i > args.count
               loop
                  arg := args.expression(i)
                  if not arg.side_effect_free(stack_top.type) then
                     if not Result then
                        Result := True
                        pending_c_function_body.append(once "(/*UA*/((void)(")
                     else
                        pending_c_function_body.append(once ",((void)(")
                     end
                     put_ith_argument(i)
                     pending_c_function_body.append(once "))")
                  end
                  i := i + 1
               end
            end
         else
            -- Nothing to generate.
         end
      end

   cannot_drop_all: BOOLEAN is
         -- Result is True when something (target or one argument)
         -- cannot be dropped. Thus when something cannot be dropped,
         -- Result is True and C code is printed :
         --  "(((void)<exp1>), ((void)<exp2>), ...((void)<expN>)"
      do
         if target_cannot_be_dropped then
            Result := True
            pending_c_function_body.extend(',')
            if arguments_cannot_be_dropped then
               pending_c_function_body.extend(')')
            else
               pending_c_function_body.extend('0')
            end
         else
            Result := arguments_cannot_be_dropped
         end
      end

feature {ANY}
   put_arguments (arguments_count: INTEGER) is
         -- Produce code to access to the whole effective arguments list.
      require
         smart_eiffel.is_ready
         arguments_count > 0
      local
         i: INTEGER
      do
         from
            i := 1
         until
            i > arguments_count
         loop
            put_ith_argument(i)
            if i < arguments_count then
               pending_c_function_body.extend(',')
            end
            i := i + 1
         end
      end

   put_ith_argument (index: INTEGER) is
         -- Produce code to access to the ith argument.
      require
         smart_eiffel.is_ready
         index >= 1
      local
         code: INTEGER; fal: FORMAL_ARG_LIST; type: TYPE
      do
         code := stack_top.code
         inspect
            code
         when C_create_expression, C_inside_some_wrapper then
            pending_c_function_body.extend('a')
            index.append_in(pending_c_function_body)
         when C_inside_twin then
            check
               index = 1
            end
            if stack_top.type.is_reference then
               pending_c_function_body.append(once "((T0*)C)")
            else
               pending_c_function_body.append(once "*C")
            end
         when C_create_instruction, C_direct_call, C_precursor then
            fal := stack_top.anonymous_feature.arguments
            type := stack_top.type
            args_compile_to_c_ith(type, stack_top.effective_arguments, fal, index)
         end
      end

feature {C_EXPRESSION_COMPILATION_MIXIN}
   args_compile_to_c_ith (type: TYPE; args: EFFECTIVE_ARG_LIST; fal: FORMAL_ARG_LIST; index: INTEGER) is
         -- Produce C code for expression `index'.
      require
         args.count = fal.count
         index.in_range(1, args.count)
      local
         e: EXPRESSION; boolean_cast_flag: BOOLEAN
      do
         e := args.expression(index)
         if e.is_void then
            arg_mapper.compile(e, type)
         else
            boolean_cast_flag := e.resolve_in(type).is_boolean
            if boolean_cast_flag then
               pending_c_function_body.append(once "(T6)(")
            end
            arg_mapper.compile(e, type)
            if boolean_cast_flag then
               pending_c_function_body.extend(')')
            end
         end
      end

feature {C_COMPILATION_MIXIN}
   put_c_inline_h(code: STRING) is
      do
         if not c_inline_h_mem.fast_has(code) then
            c_inline_h_mem.add_last(code)
            out_h.put_string(code)
            out_h.put_character('%N')
         end
      end

feature {NATIVE_BUILT_IN}
   put_trace_switch is
         -- The {ANY}.trace_switch feature
      require
         pending_c_function
      do
         if ace.sedb then
            pending_c_function_body.append(once "se_general_trace_switch=(")
            put_ith_argument(1)
            pending_c_function_body.append(once ");%N")
         end
      end

   put_sedb_breakpoint is
      require
         pending_c_function
      local
         target: EXPRESSION; p: POSITION
      do
         if ace.sedb then
            inspect
               stack_top.code
            when C_direct_call then
               target := stack_top.target
               if target /= Void then
                  p := target.start_position
               end
            when C_inside_some_wrapper then
               -- Well, we cannot put an `sedb_breakpoint' here.
            when C_inside_twin, C_create_instruction, C_create_expression, C_precursor then
               check
                  False
               end
            end
            if not p.is_unknown then
               pending_c_function_body.append(once "sedb_breakpoint(&ds,")
               put_position(p)
               pending_c_function_body.append(once ");%N")
            end
         end
      end

   put_target_generating_type (type_of_current: TYPE) is
      require
         pending_c_function
      local
         live_type_of_current: LIVE_TYPE
      do
         live_type_of_current := type_of_current.live_type
         pending_c_function_body.append(once "(T0*)(t[")
         if type_of_current.is_reference then
            if live_type_of_current.is_tagged then
               pending_c_function_body.extend('(')
               put_target_as_value
               pending_c_function_body.append(once ")->id")
            else
               live_type_of_current.id.append_in(pending_c_function_body)
            end
         else
            live_type_of_current.id.append_in(pending_c_function_body)
         end
         pending_c_function_body.append(once "])")
      end

   put_target_generator (type_of_current: TYPE) is
      require
         pending_c_function
      local
         live_type_of_current: LIVE_TYPE
      do
         live_type_of_current := type_of_current.live_type
         pending_c_function_body.append(once "(T0*)(g[")
         if type_of_current.is_reference then
            if live_type_of_current.is_tagged then
               pending_c_function_body.extend('(')
               put_target_as_value
               pending_c_function_body.append(once ")->id")
            else
               live_type_of_current.id.append_in(pending_c_function_body)
            end
         else
            live_type_of_current.id.append_in(pending_c_function_body)
         end
         pending_c_function_body.append(once "])")
      end

   target_position_in_error_handler is
         -- Add the target position into the `error_handler'.
      local
         target: EXPRESSION
      do
         target := stack_top.target
         if target /= Void then
            error_handler.add_position(target.start_position)
         end
      end

   put_object_size (t: TYPE) is
      require
         pending_c_function
         t /= Void
      local
         tcbd: BOOLEAN
      do
         tcbd := target_cannot_be_dropped
         if tcbd then
            pending_c_function_body.extend(',')
         end
         pending_c_function_body.append(once "sizeof(T")
         t.live_type.id.append_in(pending_c_function_body)
         pending_c_function_body.extend(')')
         if tcbd then
            pending_c_function_body.extend(')')
         end
      end

feature {CECIL_FILE}
   connect_cecil_out_h (user_path_h: STRING) is
      do
         create out_h.make
         echo.tfw_connect(out_h, user_path_h)
         out_h.put_string(once "#ifdef _BASE_H%N%
                               %#define _HAD_BASE_H%N%
                               %#endif%N")
         system_tools.mandatory_sys_runtime(once "base", 'h')
         put_file(tmp_file_read, out_h)
         out_h.put_string(once "#ifndef _HAD_BASE_H%N%
                               %extern void*eiffel_root_object;%N%N%
                               %typedef T3*T9;%N%
                               %#endif%N%
                               %/* Available Eiffel routines via -cecil:%N*/%N")
      end

   disconnect_cecil_out_h is
      do
         out_h.disconnect
      end

feature {C_MAPPER}
   use_c_function_call_for_attribute_read: BOOLEAN is
      require
         not ace.boost
      local
         e: EXPRESSION
      do
         inspect
            stack_top.code
         when C_direct_call then
            e := stack_top.target
            Result := not (e.is_current or assertion_checks_disabled)
         when C_inside_twin, C_inside_some_wrapper, C_create_instruction, C_create_expression, C_precursor then
            Result := False
         end
      end

feature {C_COMPILATION_MIXIN}
   push_inside_some_wrapper (af: ANONYMOUS_FEATURE) is
      do
         stack_push(C_inside_some_wrapper)
         stack_top.set_anonymous_feature(af)
      end

   push_create_expression (type: TYPE; fs: FEATURE_STAMP; internal_c_local: INTERNAL_C_LOCAL) is
      require
         type /= Void
         fs /= Void
      local
         rf: RUN_FEATURE
      do
         stack_push(C_create_expression)
         stack_top.set_type(type)
         rf := fs.run_feature_for(type)
         stack_top.set_static_type(rf.type_of_current)
         stack_top.set_internal_c_local(internal_c_local)
      end

feature {CREATE_INSTRUCTION, LOCAL_VAR_LIST, ONCE_ROUTINE_POOL, CECIL_POOL, C_COMPILATION_MIXIN}
   push_create_instruction (type: TYPE; rf: RUN_FEATURE; args: EFFECTIVE_ARG_LIST; internal_c_local: INTERNAL_C_LOCAL) is
         -- Where `internal_c_local' holds the newly allocated object.
      require
         type /= Void
         rf /= Void
      do
         stack_push(C_create_instruction)
         stack_top.set_type(type)
         stack_top.set_anonymous_feature(rf.base_feature)
         stack_top.set_effective_arguments(args)
         stack_top.set_static_type(rf.type_of_current)
         stack_top.set_internal_c_local(internal_c_local)
      end

feature {NATIVE}
   inside_twin (type: TYPE; cpy: RUN_FEATURE) is
      require
         type /= Void
         cpy /= Void
      do
         stack_push(C_inside_twin)
         stack_top.set_type(cpy.type_of_current)
         mapper.compile(cpy)
         pop
      end

feature {C_COMPILATION_MIXIN}
   check_assertion (type: TYPE; e: EXPRESSION; check_assertion_mode, tag_name: STRING) is
         -- Produce a standard C instruction to check a mandatory ASSERTION.
      require
         pending_c_function
         e.resolve_in(type).is_boolean
         avoid_useless_code: not ({E_TRUE} ?:= e)
         not check_assertion_mode.is_empty
         not tag_name.is_empty
      local
         continue, finish: STRING
      do
         continue := once "........"
         continue.copy(check_assertion_mode)
         continue.extend('(')

         finish := once "................................"
         finish.copy(once ",")
         string_to_c_code(tag_name, finish)
         finish.append(once ");%N")

         compound_expression_compiler.compile(continue, e, finish, type)
      end

   inspect_local_push (expression: EXPRESSION) is
      do
         inspect_local_stack.push(expression)
      end

   inspect_local_pop is
      do
         inspect_local_stack.pop
      end

   inspect_local_compile_to_c (type: TYPE) is
      do
         code_compiler.compile(inspect_local_stack.top, type)
      end

   inspect_local_type (type: TYPE) is
      do
         pending_c_function_body.extend('T')
         inspect_local_stack.top.resolve_in(type).id.append_in(pending_c_function_body)
         pending_c_function_body.extend('*')
      end

feature {}
   inspect_local_stack: STACK[EXPRESSION] is
      once
         create Result.make
      end

feature {ANY} -- Printing Current, local or argument :
   print_current is
      do
         pending_c_function_body.extend('C')
      end

   print_argument (rank: INTEGER) is
      do
         pending_c_function_body.extend('a')
         rank.append_in(pending_c_function_body)
      end

   print_local (name: STRING) is
      require
         pending_c_function
         not name.is_empty
      do
         pending_c_function_body.extend('_')
         pending_c_function_body.append(name)
      end

feature {C_COMPILATION_MIXIN}
   variant_check (type: TYPE; loop_variant: EXPRESSION) is
      require
         pending_c_function
         loop_variant /= Void
      do
         compound_expression_compiler.compile(once "v=ac_lvc(c++,v,", loop_variant, once ");%N", type)
      end

   current_class_invariant (type_of_current: TYPE) is
         -- Add some C code to check class invariant with Current at the end of a routine for `Current'.
      require
         type_of_current /= Void
      local
         live_type_of_current: LIVE_TYPE
      do
         live_type_of_current := need_invariant(type_of_current)
         if live_type_of_current /= Void then
            if live_type_of_current.is_reference then
               pending_c_function_body.append(once "if(se_rci(caller,C))")
            end
            pending_c_function_body.append(once "se_i")
            live_type_of_current.id.append_in(pending_c_function_body)
            if ace.profile then
               pending_c_function_body.append(once "(&ds,&local_profile,C);%N")
            else
               pending_c_function_body.append(once "(&ds,C);%N")
            end
         end
      end

feature {ANY}
   class_invariant_call_opening (type_of_target: TYPE; extra_cast_flag: BOOLEAN): INTEGER is
         -- Add extra code to call the class invariant when `type_of_target' actually has an invariant.
         -- A 0 `Result' indicate that there is no invariant.
      require
         type_of_target /= Void
      local
         lt: LIVE_TYPE
      do
         lt := need_invariant(type_of_target)
         if lt /= Void then
            pending_c_function_body.append(once "se_i")
            lt.id.append_in(pending_c_function_body)
            pending_c_function_body.append(once "(&ds,")
            if ace.profile then
               pending_c_function_body.append(once "&local_profile,")
            end
            if type_of_target.is_reference then
               if extra_cast_flag then
                  pending_c_function_body.append(once "((T")
                  type_of_target.live_type.id.append_in(pending_c_function_body)
                  pending_c_function_body.append(once "*)(")
                  Result := 3
               else
                  Result := 1
               end
            else
               Result := 1
            end
         end
      end

   class_invariant_call_closing (integer_flag: INTEGER; semicolon_flag: BOOLEAN) is
      do
         inspect
            integer_flag
         when 0 then
         when 1 then
            pending_c_function_body.extend(')')
         when 3 then
            pending_c_function_body.append(once ")))")
         end
         if semicolon_flag then
            pending_c_function_body.extend(';')
         end
      end

feature {ANY}
   macro_def (str: STRING; id: INTEGER) is
      do
         out_h_buffer.copy(once "#define ")
         out_h_buffer.append(str)
         out_h_buffer.extend(' ')
         id.append_in(out_h_buffer)
         out_h_buffer.extend('%N')
         write_out_h_buffer
      end

feature {}
   write_make_file is
      local
         cmd: STRING
      do
         --
         end_c_linkage(out_h)
         out_h.disconnect
         end_c_linkage(out_c)
         out_c.disconnect
         --
         c_plus_plus_definitions
         --
         echo.tfw_connect(out_make, path_make)
         do_write_make_file
         if not executable_is_up_to_date then
            cmd := system_tools.strip_executable
            if cmd /= Void then
               out_make.put_line(cmd)
            end
         end
         out_make.disconnect
         if nb_errors > 0 then
            echo.file_removing(path_make)
         end
      end

   do_write_make_file is
      local
         no_change: BOOLEAN; executable_name: STRING; file_tools: FILE_TOOLS
      do
         if ace.precompile_header then
            out_make.put_line(system_tools.h_precompiler_command(path_h))
         elseif system_tools.precompiled_header_suffix /= Void then
            tmp_string.copy(path_h)
            tmp_string.remove_tail(2)
            tmp_string.append(system_tools.precompiled_header_suffix)
            echo.file_removing(tmp_string)
         end
         out_make.put_line(fz_begin_c_compile)
         no_change := not ace.splitter.write_make_file(out_make)
         out_make.put_line(fz_end_c_compile)
         executable_name := ace.executable_name
         if no_change and then executable_name /= Void then
            no_change := file_tools.is_readable(executable_name)
         else
            no_change := False
         end
         if no_change and then not system_tools.is_linking_mandatory then
            executable_is_up_to_date := True
            echo.put_string(once "Executable is up-to-date (no C compilation, no linking done).%N")
         else
            tmp_string.copy(path_h)
            tmp_string.remove_tail(2)
            out_make.put_line(ace.splitter.linker_command(tmp_string))
         end
      end

feature {FEATURE_CALL, C_EXPRESSION_COMPILATION_MIXIN}
   put_monomorphic_or_void_call (type: TYPE; feature_stamp: FEATURE_STAMP; target: EXPRESSION; arguments: EFFECTIVE_ARG_LIST) is
         -- Unfortunately, because `simplify' can reduce the number of elements in RUN_TIME_SET objects,
         -- long after `inline_dynamic_dispatch_', we still  have this special case for Void in the
         -- back-end (the best way would be to create VOID_PROC_CALL and VOID_CALL objects far before).
         -- When `assigned_to' then the call is the expression of a variable to write to.
      require
         type /= Void
         feature_stamp /= Void
         target /= Void
      local
         tgt_type: TYPE; live_type: LIVE_TYPE; anonymous_feature: ANONYMOUS_FEATURE; run_feature: RUN_FEATURE
         code: CODE
      do
         tgt_type := target.resolve_in(type)
         live_type := tgt_type.live_type
         if live_type.run_time_set.count = 0 then
            anonymous_feature := feature_stamp.anonymous_feature(tgt_type)
            pending_c_function_body.append(once "/* Void call detected in back-end (function called: {")
            pending_c_function_body.append(tgt_type.canonical_type_mark.written_mark)
            pending_c_function_body.append(once "}.")
            pending_c_function_body.append(anonymous_feature.names.first.to_string)
            pending_c_function_body.append(once ") */ ")
            if anonymous_feature.result_type = Void then
               code := create {VOID_PROC_CALL}.make(target.start_position, feature_stamp, tgt_type)
            else
               assignment_evobt := True -- see below `start_assignment' and `check_assignment'
               code := create {VOID_CALL}.make(target.start_position, feature_stamp, tgt_type)
            end
            code_compiler.compile(code, type)
         else
            if live_type.run_time_set.count = 1 then
               tgt_type := live_type.run_time_set.first.type
            end
            run_feature := feature_stamp.run_feature_for(tgt_type)
            push_direct(run_feature, type, target, arguments)
            mapper.compile(run_feature)
            pop
         end
      end

feature {C_CODE_COMPILER}
   start_assignment is
         -- Called just before compiling the left (written to) expression of an assignment
      require
         not in_assignment
      do
         in_assignment := True
         assignment_evobt := False
      ensure
         in_assignment
      end

   check_assignment: BOOLEAN is
         -- Called after having compiled the left (written to) expression of an assignment to know if the
         -- assignment should be completed by compiling the right expression. If an evobt was raised then the
         -- right expression will not be compiled (see `put_monomorphic_or_void_call').
      require
         in_assignment
      do
         Result := not assignment_evobt
      ensure
         not in_assignment
      end

   in_assignment: BOOLEAN

feature {}
   assignment_evobt: BOOLEAN

feature {C_EXPRESSION_COMPILATION_MIXIN}
   put_direct (type: TYPE; dynamic_feature: RUN_FEATURE; target: EXPRESSION; arguments: EFFECTIVE_ARG_LIST) is
      do
         push_direct(dynamic_feature, type, target, arguments)
         mapper.compile(dynamic_feature)
         pop
      end

feature {ANY}
   sys_runtime_h_and_c (name: STRING) is
         -- Inline corresponding SmartEiffel/sys/runtime/`name'.[hc] file. At least, one file should be
         -- found.
      local
         ok: BOOLEAN
      do
         system_tools.sys_runtime(name, 'h')
         if tmp_file_read.is_connected then
            ok := True
            put_file(tmp_file_read, out_h)
         end
         system_tools.sys_runtime(name, 'c')
         if tmp_file_read.is_connected then
            ok := True
            put_file(tmp_file_read, out_c)
         end
         if not ok then
            error_handler.append("No support found in directory sys/runtime for %"")
            error_handler.append(name)
            error_handler.append("%" (i.e. file(s) %"")
            tmp_path.remove_last
            error_handler.append(tmp_path)
            error_handler.append("[hc]%" not found).")
            error_handler.print_as_fatal_error
         end
      end

feature {PLUGIN}
   put_c_file (tfr: TEXT_FILE_READ) is
      require
         not tfr.end_of_input
      do
         put_file(tfr, out_c)
      ensure
         not tfr.is_connected
      end

   put_h_file (tfr: TEXT_FILE_READ) is
      require
         not tfr.end_of_input
      do
         put_file(tfr, out_h)
      ensure
         not tfr.is_connected
      end

feature {GC_HANDLER, LIVE_TYPE, RUN_FEATURE, C_COMPILATION_MIXIN}
   recompilation_comment (lt: LIVE_TYPE) is
      require
         lt /= Void
      do
         pending_c_function_body.append(once "/*")
         pending_c_function_body.append(lt.structure_signature)
         pending_c_function_body.append(once "*/")
      end

feature {NATIVE}
   include_register (origin: POSITION; include_name: STRING) is
      do
         if include_memory = Void then
            create {HASHED_SET[STRING]} include_memory.make
         end
         if not include_memory.has(include_name) then
            include_memory.add(include_name)
            put_position_comment_on(out_h, origin)
            add_include_on(out_h, include_name)
            put_position_comment_on(out_h, origin)
         end
      end

feature {NATIVE_C_PLUS_PLUS}
   c_plus_plus_register (native: NATIVE_C_PLUS_PLUS) is
      do
         if c_plus_plus = Void then
            create c_plus_plus.with_capacity(64)
         end
         c_plus_plus.add_last(native)
      end

   add_include (include: STRING) is
      do
         add_include_on(out_h, include)
      end

   add_include_on (output: TEXT_FILE_WRITE; include: STRING) is
      do
         end_c_linkage(output)
         output.put_string(once "#include ")
         inspect
            include.first
         when '%"', '<' then
         else
            output.put_character('%"')
         end
         output.put_string(include)
         inspect
            include.last
         when '%"', '>' then
         else
            output.put_character('%"')
         end
         output.put_character('%N')
         begin_c_linkage(output)
      end

feature {ANY}
   set_dump_stack_top_for (t: TYPE; ds, comment: STRING) is
      require
         pending_c_function
      do
         pending_c_function_body.append(once "set_dump_stack_top(")
         pending_c_function_body.append(ds)
         pending_c_function_body.append(once ");/*")
         pending_c_function_body.append(comment)
         pending_c_function_body.append(once "*/%N")
      end

feature {C_COMPILATION_MIXIN}
   stop_recursive_assertion_opening (inside_feature_flag: BOOLEAN) is
      do
         if ace.no_check then --|*** should be require_check?
            if ace.flat_check then
               pending_c_function_body.append(once "if(assertion_depth){%Nassertion_depth--;%N")
            else
               if inside_feature_flag then
                  pending_c_function_body.append(once "if(fd.assertion_flag){%Nfd.assertion_flag=0;%N")
               else
                  pending_c_function_body.append(once "if(ds.fd->assertion_flag){%Nds.fd->assertion_flag=0;%N")
               end
            end
         end
      end

   stop_recursive_assertion_closing (inside_feature_flag: BOOLEAN) is
      do
         if ace.no_check then
            if ace.flat_check then
               pending_c_function_body.append(once "assertion_depth++;%N}%N")
            else
               if inside_feature_flag then
                  pending_c_function_body.append(once "fd.assertion_flag=1;%N}%N")
               else
                  pending_c_function_body.append(once "ds.fd->assertion_flag=1;%N}%N")
               end
            end
         end
      end

   c_frame_descriptor_format: STRING is
         -- The format to print `Current' and other locals.
      once
         create Result.make(512)
      end

   c_frame_descriptor_locals: STRING is
         -- To initialize field `locals' of `se_dump_stack'.
      once
         create Result.make(512)
      end

feature {}
   c_plus_plus: FAST_ARRAY[NATIVE_C_PLUS_PLUS]

   begin_c_linkage (output: TEXT_FILE_WRITE) is
         -- Begin wrap for C linkage
      do
         output.put_string(once "#ifdef __cplusplus%Nextern %"C%" {%N#endif%N")
      end

   end_c_linkage (output: TEXT_FILE_WRITE) is
         -- End wrap for C linkage
      do
         output.put_string(once "%N#ifdef __cplusplus%N}%N#endif%N")
      end

   c_plus_plus_definitions is
      local
         cpp_path_h, cpp_path_c: STRING; i: INTEGER
      do
         if c_plus_plus /= Void then
            ace.splitter.set_dont_split(True)
            echo.put_string(once "C++ external definitions.%N")
            cpp_path_h := system_tools.path_h.twin
            cpp_path_h.remove_tail(2)
            cpp_path_h.append(once "_external_cpp")
            cpp_path_c := cpp_path_h.twin
            cpp_path_h.append(h_suffix)
            cpp_path_c.append(c_plus_plus_suffix)
            echo.tfw_connect(out_h, cpp_path_h)
            echo.tfw_connect(out_c, cpp_path_c)
            begin_c_linkage(out_c)
            begin_c_linkage(out_h)
            add_first_include(cpp_path_h)
            system_tools.add_c_plus_plus_file(cpp_path_c)
            sys_runtime_h_and_c(once "c_plus_plus")
            if c_plus_plus /= Void then
               from
                  i := c_plus_plus.upper
               until
                  i < 0
               loop
                  c_plus_plus.item(i).c_plus_plus_definition
                  i := i - 1
               end
            end
            end_c_linkage(out_c)
            end_c_linkage(out_h)
            out_h.disconnect
            out_c.disconnect
            ace.splitter.set_dont_split(False)
         end
      end

   out_c: TEXT_FILE_WRITE is
         -- The current *.c output file.
      do
         Result := ace.splitter.out_c
      end

   out_h: TEXT_FILE_WRITE
         -- The *.h output file.

   in_h: TEXT_FILE_READ
         -- The *.h, when copied in the symbols file

   out_make: TEXT_FILE_WRITE is
         -- The *.make output file.
      once
         create Result.make
      end

   c_inline_h_mem: FAST_ARRAY[STRING] is
      once
         create Result.with_capacity(4)
      end

feature {C_EXPRESSION_COMPILATION_MIXIN}
   se_evobt (return_type: TYPE_MARK; type: TYPE; target: EXPRESSION) is
      require
         target /= Void
      local
         p: POSITION; internal_c_local: INTERNAL_C_LOCAL
      do
         if return_type /= Void then
            if return_type.is_reference then
               -- Because of a Borland C compiler bug we have to add this extra cast:
               pending_c_function_body.append(once "(T0*)")
            end
            pending_c_function_body.extend('(')
         end
         if ace.no_check then
            pending_c_function_body.append(once "se_evobt")
            pending_c_function_body.extend('(')
            code_compiler.compile(target, type)
            pending_c_function_body.extend(',')
            put_position(target.start_position)
            pending_c_function_body.extend(')')
         else
            pending_c_function_body.append(once "/*se_evobt*/")
            p := target.start_position
            put_position_comment_on(out_c, p)
            code_compiler.compile(target, type)
            pending_c_function_body.extend(',')
            exceptions_handler.se_evobt
         end
         if return_type /= Void then
            pending_c_function_body.extend(',')
            if return_type.is_reference or else return_type.is_native_array then
               internal_c_local := pending_c_function_lock_local(return_type.type, once "evobt");
               internal_c_local.append_in(pending_c_function_body)
               pending_c_function_body.extend('=')
               return_type.c_initialize_in(pending_c_function_body)
            else
               pending_c_function_body.extend('M')
               return_type.type.id.append_in(pending_c_function_body)
            end
            pending_c_function_body.extend(')')
         else
            pending_c_function_body.append(once ";%N")
         end
      end

feature {}
   define_initialize_eiffel_runtime (rf3: RUN_FEATURE_3) is
      require
         rf3.is_root
      local
         no_check: BOOLEAN; lt: LIVE_TYPE; do_atexit: BOOLEAN; se_atexit_stamp: FEATURE_STAMP
         internal_c_local: INTERNAL_C_LOCAL
      do
         no_check := ace.no_check
         lt := rf3.type_of_current.live_type
         echo.put_string(once "Define initialize stuff.%N")
         define_extern_tables
         once_routine_pool.c_variables_for_precomputable_routines
         -- Define atexit() function, if useful (i.e. std_output is used):
         se_atexit_stamp := smart_eiffel.se_atexit_stamp
         do_atexit := se_atexit_stamp /= Void or else ace.profile
         if do_atexit then
            prepare_c_function
            pending_c_function_signature.append(once "void se_atexit(void)")
            if ace.profile then
               pending_c_function_body.append(once "se_local_profile_t local_profile, *parent_profile;%N")
            end
            if no_check then
               pending_c_function_body.append(once "[
                 se_frame_descriptor fd={"<atexit wrapper>",0,0,"",1};
                 se_dump_stack ds;
                 ds.fd=&fd;
                 ds.p=0;
                 ds.caller=NULL;
                 ds.exception_origin=NULL;
                 ds.locals=NULL;

                 ]")
            end
            if ace.profile then
               pending_c_function_body.append(once "parent_profile=&global_profile;%N")
               pending_c_function_body.append(once "local_profile.profile=&atexit_profile;%N")
               pending_c_function_body.append(once "start_profile(parent_profile, &local_profile);%N")
            end
            if se_atexit_stamp /= Void then
               -- Add the C code to call it knowing that the corresponding feature is a procedure which does not
               -- use  `Current' (See {ANY}.se_atexit definition).
               if ace.sedb then
                  -- (Calling Eiffel function flush would result in running sedb again whereas the user said s/he
                  -- wanted to exit.)
                  pending_c_function_body.append("if (sedb_status != SEDB_EXIT_MODE) ")
               end
               pending_c_function_body.extend('r')
               smart_eiffel.se_atexit_id.append_in(pending_c_function_body)
               pending_c_function_body.append(once "se_atexit(")
               if not ace.boost then
                  pending_c_function_body.append(once "&ds")
               end
               if ace.profile then
                  if pending_c_function_body.last /= '(' then
                     pending_c_function_body.extend(',')
                  end
                  pending_c_function_body.append(once "&local_profile")
               end
               if not ace.boost then
                  if pending_c_function_body.last /= '(' then
                     pending_c_function_body.extend(',')
                  end
                  pending_c_function_body.append(once "NULL/*Unused Target*/")
               end
               pending_c_function_body.append(once ");%N")
            end
            if ace.profile then
               pending_c_function_body.append(once "stop_profile(parent_profile, &local_profile);%N")
            end
            if ace.profile then
               show_profile
            end
            dump_pending_c_function(True)
         end
         --|*** if (not ace.no_split) and then split_count > 10 then
         --|***    -- We are producing a quite large system, so just use a brand new file right-now:
         --|***    ace.splitter.split_now
         --|*** end
         prepare_c_function
         pending_c_function_signature.append(once "void initialize_eiffel_runtime(int argc,char*argv[])")
         if ace.profile then
            pending_c_function_body.append(once "se_local_profile_t local_profile, *parent_profile;%N")
         end
         if no_check then
            pending_c_function_body.append(once "[
                se_frame_descriptor irfd={"<runtime init>",0,0,"",1};
                se_dump_stack ds = {NULL,NULL,0,NULL,NULL};
                ds.fd=&irfd;

           ]")
            rf3.c_set_dump_stack_top(once "&ds", once "link")
         end
         pending_c_function_body.append(once "se_argc=argc;%Nse_argv=argv;%N")
         if do_atexit then
            pending_c_function_body.append(once "atexit(se_atexit);%N")
         end
         if ace.profile then
            pending_c_function_body.append(once "parent_profile=&global_profile;%N")
            pending_c_function_body.append(once "local_profile.profile=&runinit_profile;%N")
            pending_c_function_body.append(once "start_profile(parent_profile, &local_profile);%N")
         end
         gc_handler.initialize_runtime
         exceptions_handler.initialize_runtime
         if no_check then
            initialize_path_table
         end
         if smart_eiffel.generator_used then
            initialize_generator
         end
         if smart_eiffel.generating_type_used then
            initialize_generating_type
         end
         if ace.profile then
            initialize_profile
         end
         if not exceptions_handler.used then
            if ace.no_check then
               pending_c_function_body.append(once "[
               #ifdef SIGINT
               signal(SIGINT,se_signal_handler);
               #endif
               #ifdef SIGTERM
               signal(SIGTERM,se_signal_handler);
               #endif

                ]")
            end
            pending_c_function_body.append(once "[
               #ifdef SIGQUIT
               signal(SIGQUIT,se_signal_handler);
               #endif
               #ifdef SIGILL
               signal(SIGILL,se_signal_handler);
               #endif
               #ifdef SIGABRT
               signal(SIGABRT,se_signal_handler);
               #endif
               #ifdef SIGFPE
               signal(SIGFPE,se_signal_handler);
               #endif
               #ifdef SIGSEGV
               signal(SIGSEGV,se_signal_handler);
               #endif
               #ifdef SIGBUS
               signal(SIGBUS,se_signal_handler);
               #endif
               #ifdef SIGSYS
               signal(SIGSYS,se_signal_handler);
               #endif
               #ifdef SIGTRAP
               signal(SIGTRAP,se_signal_handler);
               #endif
               #ifdef SIGXCPU
               signal(SIGXCPU,se_signal_handler);
               #endif
               #ifdef SIGXFSZ
               signal(SIGXFSZ,se_signal_handler);
               #endif

                ]")
         end
         manifest_string_pool.c_call_initialize
         once_routine_pool.c_code_for_precomputable_routines
         if ace.sedb then
            pending_c_function_body.append(once "se_general_trace_switch=1;%N")
         end
         if not gc_handler.is_off then
            pending_c_function_body.append(once "gc_is_off=0;%N")
         end
         internal_c_local := pending_c_function_lock_local(lt.type, once "root")
         gc_handler.allocation_of(internal_c_local, lt)
         pending_c_function_body.append(once "eiffel_root_object=((T")
         lt.id.append_in(pending_c_function_body)
         pending_c_function_body.append(once "*)")
         internal_c_local.append_in(pending_c_function_body)
         pending_c_function_body.append(once ");%N")
         internal_c_local.unlock
         system_tools.auto_init_plugins
         if ace.no_check then
            rf3.c_set_dump_stack_top(once "(void*)0", once "unlink")
         end
         if ace.profile then
            pending_c_function_body.append(once "stop_profile(parent_profile, &local_profile);%N")
         end
         dump_pending_c_function(True)
      end

   check_id (type: TYPE; e: EXPRESSION; id: INTEGER) is
         -- Produce a C expression checking that `e' is not Void and that `e' is really of type `id'.
         -- The result of the C expression is the pointer to the corresponding Object.
      require
         e.resolve_in(type).is_reference
         id > 0
      do
         if ace.no_check then
            pending_c_function_body.append(once "((T")
            id.append_in(pending_c_function_body)
            pending_c_function_body.append(once "*)ci(")
            id.append_in(pending_c_function_body)
            pending_c_function_body.extend(',')
            code_compiler.compile(e, type)
            pending_c_function_body.extend(',')
            put_position(e.start_position)
            pending_c_function_body.append(once "))")
         else
            code_compiler.compile(e, type)
         end
      end

   tmp_string: STRING is
      once
         create Result.make(256)
      end

   need_invariant (type_of_target: TYPE): LIVE_TYPE is
         -- Give the corresponding LIVE_TYPE when `type_of_target' actually needs some class invariant checking.
      require
         type_of_target /= Void
      do
         if type_of_target.class_text.invariant_check and then not assertion_checks_disabled then
            Result := type_of_target.live_type
            if Result /= Void and then Result.at_run_time and then Result.class_invariant /= Void then
               -- Let `Result'unchanged.
            else
               Result := Void
            end
         end
      end

   path_h: STRING is
      once
         Result := system_tools.path_h
      ensure
         Result.has_suffix(h_suffix)
      end

   path_c: STRING is
      once
         Result := path_h.twin
         Result.put('c', Result.upper)
      ensure
         Result.has_suffix(c_suffix) or else Result.has_suffix(once ".d")
      end

   path_make: STRING is
      once
         Result := path_h.twin
         Result.remove_tail(2)
         Result.append(system_tools.make_suffix)
      ensure
         Result.has_suffix(system_tools.make_suffix)
      end

   add_first_include (the_first_include: STRING) is
      do
         put_banner(out_c)
         add_include_on(out_c, the_first_include)
      end

   put_banner (output: TEXT_FILE_WRITE) is
      require
         output.is_connected
      do
         output.put_string(once "/*%NANSI C code generated by ")
         output.put_string(smart_eiffel.copyright)
         output.put_string(once "C Compiler options used: ")
         output.put_string(system_tools.c_compiler_options)
         output.put_string(once "%N*/%N")
      end

   c_code_saved: BOOLEAN

   h_connect (h_path: STRING) is
      do
         if out_h = Void then
            create {TEXT_FILE_WRITE} out_h.make
         end
         out_h.connect_to(h_path)
      end

   executable_is_up_to_date: BOOLEAN
         -- When the executable seems to be already correct (no C
         -- compilation and no linking is to be done).

   common_put_target is
      local
         created_type: TYPE
      do
         inspect
            stack_top.code
         when C_inside_twin then
            created_type := stack_top.type
            if created_type.is_reference then
               pending_c_function_body.append(once "((")
               pending_c_function_body.append(target_type.for(created_type.canonical_type_mark))
               pending_c_function_body.append(once ")R)")
            else
               pending_c_function_body.append(once "&R")
            end
         when C_create_instruction, C_create_expression then
            created_type := stack_top.static_type
            if created_type.is_reference then
               pending_c_function_body.append(once "((T")
               created_type.id.append_in(pending_c_function_body)
               pending_c_function_body.append(once "*)")
               stack_top.internal_c_local.append_in(pending_c_function_body)
               pending_c_function_body.append(once ")")
            else
               if created_type.is_user_expanded and then not created_type.is_empty_expanded then
                  pending_c_function_body.extend('&')
               end
               stack_top.internal_c_local.append_in(pending_c_function_body)
            end
         when C_precursor, C_inside_some_wrapper then
            pending_c_function_body.extend('C')
         end
      end

   put_file (tfr: TEXT_FILE_READ; output: TEXT_FILE_WRITE) is
      require
         not tfr.end_of_input
      do
         split_c_file_padding_here
         from
            tfr.read_character
         until
            tfr.end_of_input
         loop
            output.put_character(tfr.last_character)
            tfr.read_character
         end
         tfr.disconnect
      ensure
         not tfr.is_connected
      end

   really_define_c_main (rf3: RUN_FEATURE_3) is
      require
         not ace.no_main
      local
         class_invariant_flag: INTEGER; type: TYPE; ct: TYPE_MARK
         internal_c_local: INTERNAL_C_LOCAL
      do
         echo.put_string(once "Define C main function.%N")
         prepare_c_function
         type := rf3.type_of_current
         ct := rf3.type_of_current.canonical_type_mark
         system_tools.main_function_return_type_in(pending_c_function_signature)
         pending_c_function_signature.append(once " main(int argc,char*argv[])")
         if ace.no_check then
            pending_c_function_body.append(once "se_frame_descriptor root={%"<system root>%",1,0,%"")
            ct.c_frame_descriptor_in(pending_c_function_body)
            pending_c_function_body.append(once "%",1};%Nse_dump_stack ds;%N")
         end
         if ace.profile then
            pending_c_function_body.append(once "se_local_profile_t local_profile, master_profile;%N")
            pending_c_function_body.append(once "master_profile.profile=NULL;%N")
            pending_c_function_body.append(once "init_profile(&root_profile, %"<root>%");%N")
            pending_c_function_body.append(once "init_profile(&runinit_profile, %"<runinit>%");%N")
            pending_c_function_body.append(once "init_profile(&atexit_profile, %"<atexit>%");%N")
            pending_c_function_body.append(once "global_profile.profile=&root_profile;%N")
            pending_c_function_body.append(once "get_profiler_started(&master_profile);%N")
            pending_c_function_body.append(once "start_profile(&master_profile, &global_profile);%N")
         end
         if not gc_handler.is_off then
            pending_c_function_body.append(once "stack_bottom=((void**)(void*)(&argc));%N")
         end
         pending_c_function_body.append(once "initialize_eiffel_runtime(argc,argv);%N")
         if ace.profile then
            pending_c_function_body.append(once "local_profile=global_profile;%N")
         end
         internal_c_local := pending_c_function_lock_local(type, once "prof")
         internal_c_local.append_in(pending_c_function_body)
         pending_c_function_body.append(once "=((T0*)eiffel_root_object);%N")
         if ace.no_check then
            pending_c_function_body.append(once "ds.fd=&root;%N%
                                                 %ds.current=((void*)(&")
            internal_c_local.append_in(pending_c_function_body)
            pending_c_function_body.append(once "));%N")
            put_position_in_ds(rf3.start_position)
            pending_c_function_body.append(once "ds.caller=NULL;%Nds.exception_origin=NULL;%Nds.locals=NULL;%N")
            rf3.c_set_dump_stack_top(once "&ds", once "link")
         end
         push_create_instruction(type, rf3, Void, internal_c_local)
         mapper.compile(rf3)
         pop
         class_invariant_flag := class_invariant_call_opening(rf3.type_of_current, True)
         if class_invariant_flag > 0 then
            internal_c_local.append_in(pending_c_function_body)
            class_invariant_call_closing(class_invariant_flag, True)
         end
         gc_handler.gc_info_before_exit
         pending_c_function_body.append(once "handle(SE_HANDLE_NORMAL_EXIT, NULL);%N");
         if ace.no_check then
            rf3.c_set_dump_stack_top(once "NULL", once "unlink")
         end
         if ace.profile then
            pending_c_function_body.append(once "global_profile=local_profile;%N")
            pending_c_function_body.append(once "stop_profile(&master_profile, &global_profile);%N")
         end
         internal_c_local.unlock
         system_tools.main_function_exit_in(pending_c_function_body)
         dump_pending_c_function(True)
      end

   include_memory: SET[STRING]

feature {}
   put_position_comment_on (output: TEXT_FILE_WRITE; p: POSITION) is
         -- See also `put_position_comment_in'.
      local
         buffer: STRING
      do
         buffer := once "........ local buffer ........"
         buffer.clear_count
         put_position_comment_in(buffer, p)
         output.put_string(buffer)
      end

feature {C_CODE_COMPILER}
   put_position_comment_in (buffer: STRING; p: POSITION) is
         -- See also `put_position_comment_on'.
      local
         i: INTEGER; path: STRING; stop: BOOLEAN
      do
         if p.is_unknown then
            buffer.append(once "/*unknown position*/")
         else
            buffer.append(once "/*l")
            p.line.append_in(buffer)
            buffer.extend('c')
            p.column.append_in(buffer)
            path := p.path
            from
               i := path.count
            until
               stop
            loop
               if i <= 1 then
                  buffer.extend(' ')
                  stop := True
               else
                  inspect
                     path.item(i)
                  when '/', '\' then
                     stop := True
                  else
                     i := i - 1
                  end
               end
            end
            from
            until
               i > path.count
            loop
               buffer.extend(path.item(i))
               i := i + 1
            end
            buffer.append(once "*/")
         end
      end

   internal_c_local_stamps_stack: FAST_ARRAY[INTEGER] is
      once
         create Result.with_capacity(32)
      end

   internal_c_local_list: INTERNAL_C_LOCAL_LIST is
      once
         create Result
      end

feature {C_COMPILATION_MIXIN}
   string_to_c_code (s: STRING; buffer: STRING) is
         -- Add in the `buffer' the C language view of the Eiffel `s' STRING.
         -- (Replace all strange characters of `s' with the appropriate C backslash escape sequences).
      do
         native_array_to_c_code(s.count, s.storage, buffer)
      end

feature {}
   native_array_to_c_code (capacity: INTEGER; storage: NATIVE_ARRAY[CHARACTER]; buffer: STRING) is
      local
         break, i: INTEGER
      do
         buffer.extend('%"')
         from
         until
            i >= capacity
         loop
            character_to_c_code(storage.item(i), buffer)
            i := i + 1
            break := break + 1
            if break > 1024 then
               -- Because of a limitation of the Visual C/C++ compiler which do not like too long lines:
               buffer.append(once "%"%N%"")
               break := 0
            end
         end
         buffer.extend('%"')
      end

   character_to_c_code (c: CHARACTER; buffer: STRING) is
      do
         if c = '%N' then
            buffer.extend('\')
            buffer.extend('n')
         elseif c = '\' then
            buffer.extend('\')
            buffer.extend('\')
         elseif c = '?' then
            buffer.extend('\')
            buffer.extend('?')
         elseif c = '%"' then
            buffer.extend('\')
            buffer.extend('%"')
         elseif c = '%'' then
            buffer.extend('\')
            buffer.extend('%'')
         elseif c.code < 32 or else 122 < c.code then
            buffer.extend('\')
            c.code.low_8.to_octal_in(buffer)
            buffer.append(once "%"%"")
         else
            buffer.extend(c)
         end
      end

feature {}
   c_define1_manifest_string_pool is
      local
         i, j, upper: INTEGER; ms: MANIFEST_STRING; us: UNICODE_STRING; storage: NATIVE_ARRAY[INTEGER_16]
         lsv: FAST_ARRAY[INTEGER_16]; lsi: FAST_ARRAY[INTEGER]
      do
         from
            out_c_buffer.copy(once "/*Aliased storage area or unicode storage.*/%N")
            write_out_c_buffer
            i := manifest_string_pool.storage_alias.lower
         until
            i > manifest_string_pool.storage_alias.count
         loop
            ms := manifest_string_pool.storage_alias.item(i)
            if ms.unicode_flag then
               us := ms.unicode_string
               upper := us.count
               if upper > 0 then
                  -- Preparing `write_extern_array_1' call:
                  out_h_buffer.copy(once "uint16_t s")
                  out_h_buffer.append(ms.initial_storage_id)
                  out_c_buffer.clear_count
                  from
                     storage := us.storage
                     j := 0
                  until
                     j >= upper
                  loop
                     if j > 0 then
                        out_c_buffer.extend(',')
                     end
                     storage.item(j).append_in(out_c_buffer)
                     j := j + 1
                  end
                  write_extern_array_1(out_h_buffer, upper, out_c_buffer)
                  upper := upper - 1
               end
               lsv := us.low_surrogate_values
               if lsv /= Void and then lsv.count > 0 then
                  -- Preparing `write_extern_array_1' call:
                  out_h_buffer.copy(once "uint16_t lsv")
                  out_h_buffer.append(ms.initial_storage_id)
                  out_c_buffer.clear_count
                  from
                     j := lsv.lower
                  until
                     j > lsv.upper
                  loop
                     if j > lsv.lower then
                        out_c_buffer.extend(',')
                     end
                     lsv.item(j).append_in(out_c_buffer)
                     j := j + 1
                  end
                  write_extern_array_1(out_h_buffer, upper, out_c_buffer)
               end
               lsi := us.low_surrogate_indexes
               if lsi /= Void and then lsi.count > 0 then
                  -- Preparing `write_extern_array_1' call:
                  out_h_buffer.copy(once "uint32_t lsi")
                  out_h_buffer.append(ms.initial_storage_id)
                  out_c_buffer.clear_count
                  from
                     j := lsi.lower
                  until
                     j > lsi.upper
                  loop
                     if j > lsi.lower then
                        out_c_buffer.extend(',')
                     end
                     lsi.item(j).append_in(out_c_buffer)
                     j := j + 1
                  end
                  write_extern_array_1(out_h_buffer, upper, out_c_buffer)
               end
            elseif ms.alias_link /= Void then
               out_h_buffer.copy(once "char*s")
               out_h_buffer.append(ms.initial_storage_id)
               out_c_buffer.clear_count
               string_to_c_code(ms.to_string, out_c_buffer)
               write_extern_2(out_h_buffer, out_c_buffer)
            end
            i := i + 1
         end
      end

   c_define2_manifest_string_pool is
      local
         i, j, fn_count, mdc, id: INTEGER; ms: MANIFEST_STRING; no_check: BOOLEAN; lt: LIVE_TYPE
         internal_c_local: INTERNAL_C_LOCAL; string_at_run_time: BOOLEAN
      do
         string_at_run_time := smart_eiffel.is_at_run_time(as_string)
         split_c_file_padding_here
         no_check := ace.no_check
         mdc := manifest_string_pool.collected_once_variables.count
         echo.print_count(once "Manifest String", mdc)
         if mdc > 0 then
            from
               -- For the *.h file:
               i := manifest_string_pool.collected_once_variables.lower
            until
               i > manifest_string_pool.collected_once_variables.upper
            loop
               ms := manifest_string_pool.collected_once_variables.item(i)
               out_h_buffer.copy(once "T0*")
               out_h_buffer.append(ms.once_variable)
               write_extern_1(out_h_buffer)
               i := i + 1
            end
         end
         --
         if string_at_run_time then
            prepare_c_function
            pending_c_function_signature.copy(once "T0*se_ms(int c,char*e)")
            pending_c_function_body.copy(once "/* Allocate a Manifest STRING given its length and chars array.*/%N")
            common_body_for_se_string_and_se_ms(string_at_run_time)
            dump_pending_c_function(True)
            --
            prepare_c_function
            pending_c_function_signature.copy(once "T0*se_string(char*e)")
            pending_c_function_body.copy(once "/* Allocate an Eiffel STRING by copying C char*e (must be a well-formed C string with terminal \0) */%N%
                                                  %int c=strlen(e);%N")
            common_body_for_se_string_and_se_ms(string_at_run_time)
            dump_pending_c_function(True)
         end
         --
         if mdc > 0 then
            from
               -- For the *.c file:
               i := 1
               fn_count := 1
            until
               fn_count > 1 and then i > mdc
            loop
               prepare_c_function
               pending_c_function_signature.copy(once "void se_msi")
               fn_count.append_in(pending_c_function_signature)
               if ace.profile and then manifest_string_pool.first_unicode_manifest_string_collected_flag then
                  pending_c_function_signature.append(once "(se_local_profile_t*parent_profile)")
               else
                  pending_c_function_signature.append(once "(void)")
               end
               from
                  if manifest_string_pool.first_unicode_manifest_string_collected_flag then
                     if ace.profile then
                        pending_c_function_body.append(once "se_local_profile_t local_profile;%Nstatic se_profile_t prof;%N")
                     end
                     if no_check then
                        pending_c_function_body.append(once "[
                                                              se_frame_descriptor fd={"<global-once>",0,0,"",1};
                                                              se_dump_stack ds;
                                                              ds.fd=&fd;
                                                              ds.p=0;
                                                              ds.caller=NULL;
                                                              ds.exception_origin=NULL;
                                                              ds.locals=NULL;

                                                              ]")
                     end
                     if ace.profile then
                        pending_c_function_body.append(once "local_profile.profile=&prof;%N")
                        pending_c_function_body.append(once "init_profile(&prof, %"se_msi")
                        fn_count.append_in(pending_c_function_body)
                        pending_c_function_body.append(once "%");%Nstart_profile(parent_profile, &local_profile);%N")
                     end
                  end
                  j := manifest_string_pool.nb_ms_per_function
               until
                  j = 0 or else i > mdc
               loop
                  ms := manifest_string_pool.collected_once_variables.item(i)
                  pending_c_function_body.append(ms.once_variable)
                  pending_c_function_body.extend('=')
                  if ms.unicode_flag then
                     se_ums_c_call_in(pending_c_function_body, ms)
                  else
                     se_ms_c_call_in(pending_c_function_body, ms)
                  end
                  pending_c_function_body.append(once ";%N")
                  j := j - 1
                  i := i + 1
               end
               fn_count := fn_count + 1
               if i <= mdc then
                  pending_c_function_body.append(once "se_msi")
                  fn_count.append_in(pending_c_function_body)
                  if ace.profile and then manifest_string_pool.first_unicode_manifest_string_collected_flag then
                     pending_c_function_body.append(once "(&local_profile);%N")
                  else
                     pending_c_function_body.append(once "();")
                  end
               end
               if ace.profile and then manifest_string_pool.first_unicode_manifest_string_collected_flag then
                  pending_c_function_body.append(once "stop_profile(parent_profile, &local_profile);%N")
               end
               dump_pending_c_function(True)
            end
         end
         if manifest_string_pool.first_unicode_manifest_string_collected_flag then
            lt := manifest_string_pool.se_ums.type_of_current.live_type
            id := lt.id
            prepare_c_function
            pending_c_function_signature.copy("T0*se_ums(")
            if no_check then
               pending_c_function_signature.append("se_dump_stack*caller,")
            end
            if ace.profile then
               pending_c_function_signature.append(once "se_local_profile_t*parent_profile,")
            end
            pending_c_function_signature.append("int32_t c,uint16_t*s,int32_t sc,int16_t*lsv,int32_t*lsi)")
            internal_c_local := pending_c_function_lock_local(lt.type, once "mspalloc")
            gc_handler.allocation_of(internal_c_local, lt)
            pending_c_function_body.extend('r')
            id.append_in(pending_c_function_body)
            pending_c_function_body.append("manifest_initialize(")
            if no_check then
               pending_c_function_body.append("caller,")
            end
            if ace.profile then
               pending_c_function_body.append(once "parent_profile,")
            end
            pending_c_function_body.extend('(')
            if internal_c_local.type.is_reference then
               pending_c_function_body.append(once "(T")
               id.append_in(pending_c_function_body)
               pending_c_function_body.append(once "*)")
            end
            internal_c_local.append_in(pending_c_function_body)
            pending_c_function_body.append("),c,(int16_t*)s,sc,lsv,lsi);return (T0*)")
            internal_c_local.append_in(pending_c_function_body)
            pending_c_function_body.append(";%N")
            internal_c_local.unlock
            dump_pending_c_function(True)
         end
      end

   common_body_for_se_string_and_se_ms (string_at_run_time: BOOLEAN) is
      require
         pending_c_function
      do
         pending_c_function_body.append(once "T7*")
         gc_handler.manifest_string_in(pending_c_function_body, string_at_run_time)
         pending_c_function_body.append(once "s->_count=c;%N%
                                             %s->_capacity=c+1;%N%
                                             %s->_storage_lower=0;%N%
                                             %s->_storage=((T9)")
         gc_handler.native9_in(pending_c_function_body, string_at_run_time)
         pending_c_function_body.append(once "(c+1));%N%
                                             %memcpy(s->_storage,e,c+1);%N%
                                             %return((T0*)s);")
      end

feature {C_EXPRESSION_COMPILATION_MIXIN}
   se_ms_c_call_in (buffer: STRING; ms: MANIFEST_STRING) is
      require
         not ms.unicode_flag
      local
         trace: BOOLEAN
      do
         trace := manifest_string_trace(ms, buffer)
         buffer.append(once "se_ms(")
         ms.count.append_in(buffer)
         buffer.extend(',')
         if ms.alias_link = Void then
            string_to_c_code(ms.to_string, buffer)
         else
            buffer.extend('s')
            buffer.append(ms.initial_storage_id)
         end
         buffer.extend(')')
         if trace then
            buffer.extend(')')
         end
      end

   se_ums_c_call_in (buffer: STRING; ms: MANIFEST_STRING) is
      require
         ms.unicode_flag
      local
         trace: BOOLEAN; us: UNICODE_STRING; c: INTEGER
      do
         trace := manifest_string_trace(ms, buffer)
         us := ms.unicode_string
         buffer.append(once "se_ums(")
         if ace.no_check then
            buffer.append(once "&ds,")
         end
         if ace.profile then
            buffer.append(once "&local_profile,")
         end
         c := us.count
         c.append_in(buffer)
         buffer.extend(',')
         if c = 0 then
            buffer.append(once "(void*)0")
         else
            buffer.extend('s')
            buffer.append(ms.initial_storage_id)
         end
         buffer.extend(',')
         if us.low_surrogate_values = Void then
            c := 0
         else
            c := us.low_surrogate_values.count
         end
         c.append_in(buffer)
         buffer.extend(',')
         if c /= 0 then
            buffer.append(once "lsv")
            buffer.append(ms.initial_storage_id)
            buffer.append(once ",lsi")
            buffer.append(ms.initial_storage_id)
         else
            buffer.append(once "NULL, NULL")
         end
         buffer.extend(')')
         if trace then
            buffer.extend(')')
         end
      end

   manifest_string_trace (ms: MANIFEST_STRING; buffer: STRING): BOOLEAN is
      local
         position: POSITION
      do
         if ms.once_flag then
            -- (Nothing to trace.)
         elseif ace.manifest_string_trace then
            Result := True
            position := ms.start_position
            buffer.append(once "%N(fprintf(SE_ERR,%"%%s\n%",")
            string_to_c_code(ms.to_string, buffer)
            buffer.append(once "),%Nfprintf(SE_ERR,%"-manifest_string_trace: line ")
            position.line.append_in(buffer)
            buffer.append(once " column ")
            position.column.append_in(buffer)
            buffer.append(once " %"")
            -- To translate strange characters, especially '\':
            string_to_c_code(position.path, buffer)
            buffer.append(once "%"\n%"),%N")
         end
      end

feature {RUN_FEATURE, ASSERTION_LIST, AGENT_CREATION, AGENT_ARGS, C_COMPILATION_MIXIN}
   local_profile is
      require
         ace.profile
         pending_c_function
      do
         pending_c_function_body.append(once "se_local_profile_t local_profile;%N")
      end

   start_profile (rf: RUN_FEATURE) is
      require
         ace.profile
         pending_c_function
         rf /= Void
      do
         pending_c_function_body.append(once "local_profile.profile=profile+")
         run_features.fast_first_index_of(rf).append_in(pending_c_function_body)
         pending_c_function_body.append(once ";%Nstart_profile(parent_profile, &local_profile);%N")
      end

   start_profile_class_invariant (t: LIVE_TYPE) is
      require
         ace.profile
         pending_c_function
         t /= Void
      do
         smart_eiffel.register_class_invariant(t)
         pending_c_function_body.append(once "local_profile.profile=inv_profile+")
         class_invariants.fast_first_index_of(t).append_in(pending_c_function_body)
         pending_c_function_body.append(once ";%Nstart_profile(parent_profile, &local_profile);%N")
      end

   start_profile_agent_creation (ac: AGENT_CREATION) is
      require
         ace.profile
         pending_c_function
         ac /= Void
      do
         smart_eiffel.register_agent_creation(ac)
         pending_c_function_body.append(once "local_profile.profile=agent_profile+")
         agent_creations.fast_first_index_of(ac).append_in(pending_c_function_body)
         pending_c_function_body.append(once ";%Nstart_profile(parent_profile, &local_profile);%N")
      end

   start_profile_agent_switch (t: TYPE) is
      require
         ace.profile
         pending_c_function
         t /= Void
      do
         smart_eiffel.register_agent_switch(t)
         pending_c_function_body.append(once "local_profile.profile=agent_switch_profile+")
         agent_switches.fast_first_index_of(t).append_in(pending_c_function_body)
         pending_c_function_body.append(once ";%Nstart_profile(parent_profile, &local_profile);%N")
      end

   stop_profile is
      require
         ace.profile
         pending_c_function
      do
         pending_c_function_body.append(once "stop_profile(parent_profile, &local_profile);%N")
      end

end -- class C_PRETTY_PRINTER
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