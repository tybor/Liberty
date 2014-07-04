deferred class READLINE_CECIL

feature {} -- The CECIL completion functions
   completion_start (text: POINTER; start, end_: INTEGER)
      deferred
      end

   completion_more (text: POINTER; state: INTEGER): POINTER
      deferred
      end

   completion_done (text: POINTER)
      deferred
      end

end

-- Liberty Eiffel wrappers for GNU readline library Copyright (C) 2012 Cyril Adrian 
-- 
-- The GNU C Library is free software; you can redistribute it and/or
-- modify it under the terms of the GNU Lesser General Public
-- License as published by the Free Software Foundation; either
-- version 2.1 of the License, or (at your option) any later version.
-- 
-- The GNU C Library is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-- Lesser General Public License for more details.
-- 
-- You should have received a copy of the GNU Lesser General Public
-- License along with the GNU C Library; if not, write to the Free
-- Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA
-- 02110-1301 USA

