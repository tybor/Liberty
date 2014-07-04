-- This file is part of a Liberty Eiffel library.
-- See the full copyright at the end.
--
class MOCK_EXPECTATION_GROUPS

insert
   EIFFELTEST_TOOLS
   DISPOSABLE

create {MOCK_EXPECTATIONS}
   make

feature {MOCK_EXPECTATIONS}
   expect (expectations: TRAVERSABLE[MOCK_EXPECTATION])
      require
         not is_replaying
      do
         groups.last.expect(expectations)
      end

   next
      require
         not is_replaying
      do
         groups.add_last(create {MOCK_EXPECTATION_GROUP}.make)
      end

   replay_all
      require
         not is_replaying
      do
         check_index.set_item(groups.lower)
      ensure
         is_replaying
      end

   is_replaying: BOOLEAN
      do
         Result := groups.valid_index(check_index.item)
      end

feature {}
   check_all_done
      require
         is_replaying
      do
         message_assert(agent all_done_message, all_done)
      end

feature {MOCK_EXPECTATIONS}
   check_call (a_target: MOCK_OBJECT; a_feature_name: FIXED_STRING; a_arguments: TUPLE): MOCK_EXPECTATION
      require
         a_target /= Void
         a_feature_name.is_interned
         a_arguments /= Void
         is_replaying
      do
         from
         until
            Result /= Void or else not groups.valid_index(check_index.item)
         loop
            Result := groups.item(check_index.item).check_call(a_target, a_feature_name, a_arguments)
            if Result = Void then
               groups.item(check_index.item).all_called
               check_index.increment
            end
         end
      ensure
         Result /= Void implies Result.can_call(a_target, a_feature_name, a_arguments)
      end

feature {}
   make
      do
         create groups.with_capacity(2)
         create check_index.set_item(groups.lower - 1)
         groups.add_last(create {MOCK_EXPECTATION_GROUP}.make)
      end

   check_index: COUNTER
   groups: FAST_ARRAY[MOCK_EXPECTATION_GROUP]

   all_done_message: STRING
      require
         not all_done
      do
         Result := "Some features were not called:%N"
         groups.for_each(agent {MOCK_EXPECTATION_GROUP}.all_done_message_in(Result))
      end

   all_done: BOOLEAN
      do
         Result := groups.for_all(agent {MOCK_EXPECTATION_GROUP}.all_done)
      end

   dispose
      do
         if is_replaying then
            check_all_done
         end
      end

invariant
   not groups.is_empty

end -- class MOCK_EXPECTATION_GROUPS
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
