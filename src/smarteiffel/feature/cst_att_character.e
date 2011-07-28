-- This file is part of SmartEiffel The GNU Eiffel Compiler Tools and Libraries.
-- See the Copyright notice at the end of this file.
--
class CST_ATT_CHARACTER

inherit
   CST_ATT

creation {ANY}
   make

feature {ANY}
   accept (visitor: CST_ATT_CHARACTER_VISITOR) is
      do
         visitor.visit_cst_att_character(Current)
      end

feature {}
   value_memory: CHARACTER_CONSTANT

   add_into_ (ft: like feature_text; fd: DICTIONARY[ANONYMOUS_FEATURE, FEATURE_NAME]) is
      do
         add_into_shared(ft, fd)
      end

   make (rt: like result_type; cc: CHARACTER_CONSTANT) is
      require
         rt.is_character
         cc /= Void
      do
         result_type := rt
         value_memory := cc
      ensure
         result_type = rt
         value_memory = cc
      end

   pretty_constant_value (indent_level: INTEGER) is
      do
         value_memory.pretty(indent_level)
      end

end -- class CST_ATT_CHARACTER
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