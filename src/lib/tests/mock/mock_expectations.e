-- This file is part of a Liberty Eiffel library.
-- See the full copyright at the end.
--
expanded class MOCK_EXPECTATIONS

feature {EIFFELTEST_TOOLS}
   expect (expectations: TRAVERSABLE[MOCK_EXPECTATION])
      require
         not is_replaying
      do
         groups.expect(expectations)
      end

   next
      require
         not is_replaying
      do
         groups.next
      end

   replay_all
      require
         not is_replaying
      do
         groups.replay_all
      ensure
         is_replaying
      end

   is_replaying: BOOLEAN
      do
         Result := groups.is_replaying
      end

feature {MOCK_EXPECT}
   check_call (a_target: MOCK_OBJECT; a_feature_name: FIXED_STRING; a_arguments: TUPLE): MOCK_EXPECTATION
      require
         a_target /= Void
         a_feature_name.is_interned
         a_arguments /= Void
         is_replaying
      do
         Result := groups.check_call(a_target, a_feature_name, a_arguments)
      ensure
         Result /= Void implies Result.can_call(a_target, a_feature_name, a_arguments)
      end

feature {}
   groups: MOCK_EXPECTATION_GROUPS
      once
         create Result.make
      end

end -- class MOCK_EXPECTATIONS
--
-- Copyright (c) 2013 Cyril ADRIAN <cyril.adrian@gmail.com>
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
