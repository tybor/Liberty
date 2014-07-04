-- This file is part of Liberty Eiffel.
--
-- Liberty Eiffel is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, version 3 of the License.
--
-- Liberty Eiffel is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with Liberty Eiffel.  If not, see <http://www.gnu.org/licenses/>.
--
expanded class LIBERTY_TAGS

feature {ANY} -- Tags on expressions
   is_void: LIBERTY_TAG_REF[TRISTATE]
         -- This tag checks if the expression is always Void.
      once
         create Result.make("is void".intern)
      end

   has_side_effect: LIBERTY_TAG_REF[TRISTATE]
         -- This tag checks if the expression has side effects (useful to drop targets when optimizing).
      once
         create Result.make("has side effect".intern)
      end

   runtime_set: LIBERTY_TAG_REF[COLLECTION[LIBERTY_ACTUAL_TYPE]]
         -- This tag contains the complete set of actual types an expression may have at runtime.
      once
         create Result.make("runtime set".intern)
      end

feature {ANY} -- Tags on features (used by the interpreter)
   once_flag: LIBERTY_TAG_REF[LIBERTY_INTERPRETER_OBJECT]
         -- This tag indicates that the once feature has already been called; it contains the feature's Result
         -- if it exists.
      once
         create Result.make("once flag".intern)
      end

   plugin_agent: LIBERTY_TAG_REF[FOREIGN_AGENT]
         -- The low-level foreign function to call
      once
         create Result.make("plugin agent".intern)
      end

end
