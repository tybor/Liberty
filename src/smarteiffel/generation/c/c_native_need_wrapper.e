-- This file is part of SmartEiffel The GNU Eiffel Compiler Tools and Libraries.
-- See the Copyright notice at the end of this file.
--
class C_NATIVE_NEED_WRAPPER
   --
   -- Do we need some extra C wrapping function to perform this native action?
   --

inherit
   NATIVE_VISITOR
      undefine
         is_equal
      end

insert
   C_COMPILATION_MIXIN
      undefine
         is_equal
      end
   SINGLETON

create {C_PRETTY_PRINTER}
   make

feature {ANY}
   for_rf7 (rf7: RUN_FEATURE_7): BOOLEAN is
      do
         Result := for(rf7.base_feature.native, rf7.type_of_current, rf7.base_feature.first_name.to_string)
      end

   for_rf8 (rf8: RUN_FEATURE_8): BOOLEAN is
      do
         Result := for(rf8.base_feature.native, rf8.type_of_current, rf8.base_feature.first_name.to_string)
      end

feature {}
   for (native: NATIVE; a_type_of_current: like type_of_current; a_name: like name): BOOLEAN is
      local
         old_type_of_current: like type_of_current; old_name: like name
      do
         old_type_of_current := type_of_current
         old_name := name
         type_of_current := a_type_of_current
         name := a_name

         flag := False
         native.accept(Current)
         Result := flag

         type_of_current := old_type_of_current
         name := old_name
      end

feature {}
   flag: BOOLEAN
   type_of_current: TYPE
   name: STRING

feature {NATIVE_BUILT_IN}
   visit_native_built_in (visited: NATIVE_BUILT_IN) is
      do
         if as_and_then = name then
            check
               not flag -- Must not wrap semi-strict operator!
            end
         elseif as_or_else = name then
            check
               not flag -- Must not wrap semi-strict operator!
            end
         elseif as_implies = name then
            check
               not flag -- Must not wrap semi-strict operator!
            end
         elseif as_sedb_breakpoint = name then
            check
               not flag -- Well, `sedb_breakpoint' is really special.
            end
         elseif ace.sedb then
            -- To see built_in while debugging.
            flag := True
         elseif as_is_equal = name or else as_standard_is_equal = name then
            if type_of_current.is_agent then
               flag := True
            elseif type_of_current.live_type.is_tagged then
               flag := True
            elseif type_of_current.live_type.writable_attributes = Void then
               flag := not ace.boost
            elseif type_of_current.is_user_expanded then
               flag := True
            end
         elseif as_twin = name or else as_standard_twin = name then
            flag := True
         elseif as_deep_twin = name then
            flag := True
         elseif as_is_deep_equal = name then
            flag := True
         elseif type_of_current.is_native_array and then as_calloc = name then
            flag := expanded_initializer(type_of_current.private_generic_list.item(1))
         end
      end

feature {NATIVE_C_PLUS_PLUS}
   visit_native_c_plus_plus (visited: NATIVE_C_PLUS_PLUS) is
      do
         flag := True
      end

feature {NATIVE_C}
   visit_native_c (visited: NATIVE_C) is
      do
         visited.parse_external_tag
         flag := ace.no_check and then not visited.c_inline
      end

feature {NATIVE_JAVA}
   visit_native_java (visited: NATIVE_JAVA) is
      do
         check
            not flag
         end
      end

feature {NATIVE_PLUG_IN}
   visit_native_plug_in (visited: NATIVE_PLUG_IN) is
      do
         -- *** VERIFIER ***
      end

feature {}
   make is
      do
      end

end -- class C_NATIVE_NEED_WRAPPER
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