-- This file is part of SmartEiffel The GNU Eiffel Compiler Tools and Libraries.
-- See the Copyright notice at the end of this file.
--
class RUNNER_AGENT_LAUNCHER

insert
   RUNNER_PROCESSOR_FACET

creation {RUNNER_FEATURES}
   make

feature {RUNNER_FACET}
   arguments: FAST_ARRAY[RUNNER_OBJECT]
   target: RUNNER_OBJECT

   start_position: POSITION is
      do
         Result := agent_launcher.target.start_position
      end

   code: CODE is
      do
         Result := agent_object.code
      end

   result_type: TYPE is
      do
         Result := agent_launcher.agent_args.agent_result
      end

   feature_stamp: FEATURE_STAMP is
      do
         Result := agent_object.feature_stamp
      end

feature {}
   make (a_processor: like processor; a_agent_launcher: like agent_launcher) is
      require
         a_agent_launcher /= Void
      do
         processor := a_processor
         agent_launcher := a_agent_launcher
         agent_object ::= processor.expressions.eval(agent_launcher.target)
         create arguments.make(agent_object.upper)
         target := agent_operand(-1)
         (1 |..| agent_object.upper).do_all(agent put_agent_argument)
      ensure
         agent_launcher = a_agent_launcher
      end

   launcher_argument_index: INTEGER
   agent_launcher: AGENT_LAUNCHER
   agent_object: RUNNER_AGENT_OBJECT

feature {}
   agent_operand (rank: INTEGER): RUNNER_OBJECT is
      local
         arg: RUNNER_OBJECT
         open: RUNNER_OPEN_OPERAND
      do
         arg := agent_object.operand(rank)
         if open ?:= arg then
            open ::= arg

            launcher_argument_index := launcher_argument_index + 1
            Result := processor.expressions.eval(agent_launcher.fake_tuple.expression(launcher_argument_index))
         else
            Result := arg
         end
      end

   put_agent_argument (rank: INTEGER) is
      require
         rank.in_range(1, agent_object.upper)
      do
         arguments.put(agent_operand(rank), rank - 1)
      end

invariant
   agent_launcher /= Void
   agent_object /= Void
   target /= Void
   arguments /= Void

end -- class RUNNER_AGENT_LAUNCHER
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
