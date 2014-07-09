-- This file is part of Liberty Eiffel The GNU Eiffel Compiler Tools and Libraries.
-- See the Copyright notice at the end of this file.
--
class C_TYPE_FOR_EXTERNAL

inherit
   TYPE_MARK_VISITOR

insert
   C_TYPE_FOR_RESULT
      redefine
         for, visit_native_array_type_mark
      end

create {C_PRETTY_PRINTER}
   make

feature {ANY}
   for (type_mark: TYPE_MARK): STRING
      require else
         type_mark = Void
      do
         if type_mark = Void then
            Result := once "void"
         elseif type_mark.is_reference then
            Result := once "void*"
         else
            Result := Precursor(type_mark)
         end
      end

feature {NATIVE_ARRAY_TYPE_MARK}
   visit_native_array_type_mark (visited: NATIVE_ARRAY_TYPE_MARK)
      do
         visited.generic_list.first.accept(Current)
         buffer.extend('*')
      end

end -- class C_TYPE_FOR_EXTERNAL
--
-- ------------------------------------------------------------------------------------------------------------------------------
-- Copyright notice below. Please read.
--
-- Liberty Eiffel is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License,
-- as published by the Free Software Foundation; either version 2, or (at your option) any later version.
-- Liberty Eiffel is distributed in the hope that it will be useful but WITHOUT ANY WARRANTY; without even the implied warranty
-- of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details. You should have
-- received a copy of the GNU General Public License along with Liberty Eiffel; see the file COPYING. If not, write to the Free
-- Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA.
--
-- Copyright(C) 2011-2014: Cyril ADRIAN, Paolo REDAELLI, Raphael MACK
--
-- http://www.gnu.org/software/liberty-eiffel/
--
--
-- Liberty Eiffel is based on SmartEiffel (Copyrights below)
--
-- Copyright(C) 1994-2002: INRIA - LORIA (INRIA Lorraine) - ESIAL U.H.P.       - University of Nancy 1 - FRANCE
-- Copyright(C) 2003-2006: INRIA - LORIA (INRIA Lorraine) - I.U.T. Charlemagne - University of Nancy 2 - FRANCE
--
-- Authors: Dominique COLNET, Philippe RIBET, Cyril ADRIAN, Vincent CROIZIER, Frederic MERIZEN
--
-- ------------------------------------------------------------------------------------------------------------------------------