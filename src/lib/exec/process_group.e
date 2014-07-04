-- This file is part of a Liberty Eiffel library.
-- See the full copyright at the end.
--
deferred class PROCESS_GROUP

feature {ANY}
   wait: PROCESS
         -- Wait for a process to finish and return it. If a process has already finished but hasn't been
         -- waited for, return it immediately. If all processes have already been waited for, return `Void'.
      deferred
      end

   finished: PROCESS
         -- If a process has already finished but hasn't been waited for, return it immediately. If all
         -- finished processes have already been waited for, return `Void'.
      deferred
      end

   count: INTEGER
      deferred
      ensure
         Result.in_range(0, capacity)
      end

   capacity: INTEGER
      deferred
      ensure
         Result >= 0
      end

end -- class PROCESS_GROUP
--
-- Copyright (c) 2009-2014 by all the people cited in the AUTHORS file.
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software
-- furnished to do so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in
-- all copies or substantial portions of the Software.
--
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
-- THE SOFTWARE.
