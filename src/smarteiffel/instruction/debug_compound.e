-- This file is part of SmartEiffel The GNU Eiffel Compiler Tools and Libraries.
-- See the Copyright notice at the end of this file.
--
class DEBUG_COMPOUND
   --
   -- The instruction "debug ... end".
   --

inherit
   INSTRUCTION

creation {EIFFEL_PARSER}
   make

feature {ANY}
   start_position: POSITION

   end_mark_comment: BOOLEAN is True

   side_effect_free (type: TYPE): BOOLEAN is
      do
         Result := ace.boost and then (must_be_generated(type) implies compound.side_effect_free(type))
      end

   specialize_in (new_type: TYPE): like Current is
      local
         c: like compound
      do
         if compound = Void then
            Result := Current
         else
            c := compound.specialize_in(new_type)
            Result := current_or_twin_init(c)
         end
      end

   specialize_thru (parent_type: TYPE; parent_edge: PARENT_EDGE; new_type: TYPE): like Current is
      local
         c: like compound
      do
         if compound = Void then
            Result := Current
         else
            c := compound.specialize_thru(parent_type, parent_edge, new_type)
            Result := current_or_twin_init(c)
         end
      end

   has_been_specialized: BOOLEAN is
      do
         if compound = Void then
            Result := True
         else
            Result := compound.has_been_specialized
         end
      end

   specialize_2 (type: TYPE): like Current is
      local
         c: like compound
      do
         if compound = Void then
            Result := Current
         else
            c := compound.specialize_2(type)
            Result := current_or_twin_init(c)
         end
      end

   collect (t: TYPE): TYPE is
      local
         dummy: TYPE
      do
         if must_be_generated(t) and then compound /= Void then
            dummy := compound.collect(t)
         end
      end

   adapt_for (type: TYPE): like Current is
      local
         c: like compound
      do
         if must_be_generated(type) then
            if compound /= Void then
               c := compound.adapt_for(type)
               Result := current_or_twin_init(c)
            else
               Result := Current
            end
         else
            Result := Current
         end
      end

   safety_check (type: TYPE) is
      do
         if compound /= Void then
            compound.safety_check(type)
         end
      end

   simplify (type: TYPE): INSTRUCTION is
      do
         smart_eiffel.magic_count_increment
         if must_be_generated(type) then
            if compound /= Void then
               Result := compound.simplify(type)
            end
         end
      end

   compile_to_jvm (type: TYPE) is
      do
         if must_be_generated(type) then
            if compound /= Void then
               compound.compile_to_jvm(type)
            end
         end
      end

   use_current (type: TYPE): BOOLEAN is
      do
         if compound /= Void then
            if ace.boost implies must_be_generated(type) then
               Result := compound.use_current(type)
            end
         end
      end

   pretty (indent_level: INTEGER) is
      local
         i: INTEGER
      do
         pretty_printer.set_indent_level(indent_level)
         pretty_printer.keyword(once "debug")
         if key_list /= Void then
            pretty_printer.put_character('(')
            from
               i := key_list.lower
            until
               i > key_list.upper
            loop
               key_list.item(i).pretty(indent_level + 1)
               i := i + 1
               if i <= key_list.upper then
                  pretty_printer.put_character(',')
                  if not pretty_printer.zen_mode then
                     pretty_printer.put_character(' ')
                  end
               end
            end
            pretty_printer.put_character(')')
         end
         pretty_printer.set_indent_level(indent_level + 1)
         if compound /= Void then
            compound.pretty(indent_level + 1)
         end
         pretty_printer.set_indent_level(indent_level)
         pretty_printer.keyword(once "end")
         if pretty_printer.print_end_of_statement then
            pretty_printer.put_end_of(once "debug")
         end
      end

   accept (visitor: DEBUG_COMPOUND_VISITOR) is
      do
         visitor.visit_debug_compound(Current)
      end

feature {DEBUG_COMPOUND}
   init (c: like compound) is
      require
         c /= Void
      do
         compound := c
      ensure
         compound = c
      end

feature {DEBUG_KEY_SUPPORT}
   match_debug_key (key: STRING): BOOLEAN is
      require
         not key.is_equal("yes") and not key.is_equal("no")
      local
         i: INTEGER
      do
         if key_list /= Void then
            from
               i := key_list.upper
            until
               Result or else i < key_list.lower
            loop
               Result := key_list.item(i).to_string.is_equal(key)
               i := i - 1
            end
         end
      end

feature {CODE, EFFECTIVE_ARG_LIST}
   inline_dynamic_dispatch_ (code_accumulator: CODE_ACCUMULATOR; type: TYPE) is
      do
         if must_be_generated(type) then
            if compound /= Void then
               compound.inline_dynamic_dispatch_(code_accumulator, type)
            end
         end
      end

feature {DEBUG_COMPOUND, DEBUG_COMPOUND_VISITOR}
   key_list: FAST_ARRAY[MANIFEST_STRING]

   compound: INSTRUCTION

   must_be_generated (type: TYPE): BOOLEAN is
         -- Note: during the execution of this routine, the
         -- `default_assertion_level' may be switched from `level_boost' to
         -- `level_no'.
         --|*** Do we want this ? (FM - june 9th 2004)
      do
         if compound /= Void then
            Result := ace.is_debug_checked(Current, type)
         end
      end

feature {}
   make (sp: like start_position; kl: like key_list; c: like compound) is
      require
         not sp.is_unknown
      do
         start_position := sp
         key_list := kl
         compound := c
      ensure
         start_position = sp
         key_list = kl
         compound = c
      end

   current_or_twin_init (c: like compound): like Current is
      require
         c /= Void
      do
         if c = compound then
            Result := Current
         else
            Result := twin
            Result.init(c)
         end
      ensure
         Result.compound = c
      end

invariant
   not start_position.is_unknown

end -- class DEBUG_COMPOUND
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