-- This file is part of SmartEiffel The GNU Eiffel Compiler Tools and Libraries.
-- See the Copyright notice at the end of this file.
--
class RUNNER_NON_VOID_FRAME
   -- specific to NON_VOID_NO_DISPATCH optimized calls

inherit
   RUNNER_FRAME
      rename
         make as make_frame
      end

create {RUNNER_FEATURES}
   make

feature {RUNNER_FEATURES}
   start_position: POSITION is
      do
         Result := non_void.start_position
      end

feature {RUNNER_FACET}
   name: FEATURE_NAME is
      do
         Result := feature_stamp.name
      end

   arguments: TRAVERSABLE[RUNNER_OBJECT] is
      do
         -- always Void
      end

   type_of_current: TYPE is
      do
         Result := non_void.context_type
      end

   type_of_result: TYPE is
      do
         Result := non_void.dynamic_type
      end

   feature_stamp: FEATURE_STAMP is
      do
         Result := non_void.feature_stamp
      end

   formal_arguments: FORMAL_ARG_LIST is
      do
         -- always Void
      end

feature {}
   make (a_processor: like processor; a_caller: like caller; a_target: like target; a_non_void: like non_void) is
      require
         a_processor /= Void
         a_target /= Void
         a_non_void /= Void
         a_non_void.external_function /= Void
      do
         non_void := a_non_void
         make_frame(a_processor, a_caller, a_target)
      ensure
         processor = a_processor
         caller = a_caller
         target = a_target
         non_void = a_non_void
      end

   non_void: NON_VOID_NO_DISPATCH

   local_vars: LOCAL_VAR_LIST is
      do
         -- always Void
      end

invariant
   non_void /= Void

end -- class RUNNER_NON_VOID_FRAME
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
