-- This file is part of SmartEiffel The GNU Eiffel Compiler Tools and Libraries.
-- See the Copyright notice at the end of this file.
--
class ARGUMENT_NAME1
   --
   -- An argument name in some declaration list.
   --

inherit
   LOCAL_ARGUMENT1

insert
   ARGUMENT_NAME

creation {ANY}
   make

feature {ANY}
   collect (type: TYPE): TYPE is
      do
         Result := result_type.resolve_in(type)
      end

   adapt_for (type: TYPE): like Current is
         --|*** (PH 25/08/04) should be identical with 
         --|*** LOCAL_NAME1.adapt_for, so put it in LOCAL_ARGUMENT1.
      local
         tm: TYPE_MARK
      do
         tm := result_type.resolve_in(type).canonical_type_mark
         if result_type = tm then
            Result := Current
         else
            Result := twin
            Result.set_result_type(tm)
         end
      end

   accept (visitor: ARGUMENT_NAME1_VISITOR) is
      do
         visitor.visit_argument_name1(Current)
      end

feature {DECLARATION_LIST}
   name_clash_check (type: TYPE) is
      do
         name_clash_check_(type, once "Conflict between argument/feature name (VRFA).")
      end

feature {}
   make (sp: POSITION; n: STRING) is
      require
         not sp.is_unknown
         not n.is_empty
      do
         start_position := sp
         hashed_string := string_aliaser.hashed_string(n)
         to_string := hashed_string.to_string
      ensure
         start_position = sp
         to_string.is_equal(n) and string_aliaser.registered_one(to_string)
      end

end -- class ARGUMENT_NAME1
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