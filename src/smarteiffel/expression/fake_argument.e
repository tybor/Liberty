-- This file is part of SmartEiffel The GNU Eiffel Compiler Tools and Libraries.
-- See the Copyright notice at the end of this file.
--
class FAKE_ARGUMENT
   --
   -- This pseudo expression is used to simulate some argument. (Used for example for -cecil calls.)
   --

inherit
   EXPRESSION

creation {ANY}
   make

feature {ANY}
   is_current: BOOLEAN is False

   is_implicit_current: BOOLEAN is False

   is_writable: BOOLEAN is False

   is_static: BOOLEAN is False

   is_manifest_string: BOOLEAN is False

   is_result: BOOLEAN is False

   is_void: BOOLEAN is False

   use_current (type: TYPE): BOOLEAN is
      do
      end

   side_effect_free (type: TYPE): BOOLEAN is
      do
         Result := True
      end

   declaration_type: TYPE

   precedence: INTEGER is
      do
         Result := atomic_precedence
      end

   result_type: TYPE_MARK

   start_position: POSITION

   specialize_in (type: TYPE): like Current is
      do
         if declaration_type = Void then
            declaration_type := result_type.resolve_in(type)
         end
         Result := Current
      end

   specialize_thru (parent_type: TYPE; parent_edge: PARENT_EDGE; new_type: TYPE): like Current is
      do
         Result := Current
      end

   has_been_specialized: BOOLEAN is True

   specialize_2 (type: TYPE): like Current is
      do
         Result := Current
      end

   resolve_in (type: TYPE): TYPE is
      do
         Result := result_type.resolve_in(type)
      end

   collect (type: TYPE): TYPE is
      do
         Result := result_type.resolve_in(type)
      end

   adapt_for (type: TYPE): like Current is
      do
         Result := Current
      end

   safety_check (type: TYPE) is
      do
      end

   non_void_no_dispatch_type (type: TYPE): TYPE is
      do
      end

   simplify (type: TYPE): FAKE_ARGUMENT is
      do
         Result := Current
      end

   compile_to_jvm (type: TYPE) is
      do
         -- jvm_offset: INTEGER
         not_yet_implemented
         -- jvm_offset := jvm.argument_offset_of(Current)
         -- result_type.run_type.jvm_push_local(jvm_offset)
      end

   jvm_branch_if_false (type: TYPE): INTEGER is
      do
         compile_to_jvm(type)
         Result := code_attribute.opcode_ifeq
      end

   jvm_branch_if_true (type: TYPE): INTEGER is
      do
         compile_to_jvm(type)
         Result := code_attribute.opcode_ifne
      end

   jvm_assign_creation, jvm_assign (type: TYPE) is
      do
         check
            False
         end
      end

   compile_target_to_jvm (type: TYPE) is
      do
         compile_to_jvm(type)
      end

   pretty, pretty_target, bracketed_pretty (indent_level: INTEGER) is
      do
         check
            False
         end
      end

   extra_bracket_flag: BOOLEAN is False

   short (type: TYPE) is
      do
         check
            False
         end
      end

   short_target (type: TYPE) is
      do
         check
            False
         end
      end

   accept (visitor: FAKE_ARGUMENT_VISITOR) is
      do
         visitor.visit_fake_argument(Current)
      end

feature {CODE, EFFECTIVE_ARG_LIST}
   inline_dynamic_dispatch_ (code_accumulator: CODE_ACCUMULATOR; type: TYPE) is
      do
         code_accumulator.current_context.add_last(Current)
      end

feature {FAKE_ARGUMENT_VISITOR}
   rank: INTEGER

feature {}
   make (target_type: TYPE; sp: like start_position; rt: like result_type; r: like rank) is
      require
         not sp.is_unknown
         rt /= Void
         target_type /= Void
         r > 0
      do
         start_position := sp
         result_type := rt.to_static(target_type)
         rank := r
      ensure
         result_type.is_static
         rank = r
      end

invariant
   not start_position.is_unknown

   rank > 0

   result_type.is_static

end -- class FAKE_ARGUMENT
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