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
class LIBERTY_INTERPRETER_POSTCONDITION_BROWSER

inherit
   LIBERTY_INTERPRETER_EXPRESSIONS
      redefine
         make, visit_liberty_old
      end
   LIBERTY_ASSERTION_VISITOR

create {LIBERTY_INTERPRETER}
   make

feature {LIBERTY_INTERPRETER_FEATURE_CALL}
   gather_old (contract: LIBERTY_ASSERTIONS)
      do
         if contract /= Void then
            interpreter.start_gathering_old_values
            contract.accept(Current)
            interpreter.finished_gathering_old_values
         end
      end

feature {LIBERTY_OLD}
   visit_liberty_old (v: LIBERTY_OLD)
      do
         if not interpreter.has_old_value(v.expression) then
            interpreter.start_evaluating_old_value
            v.expression.accept(Current)
            interpreter.add_old_value(v.expression, eval_as_right_value)
         end
      end

feature {LIBERTY_ASSERTIONS_AND_THEN}
   visit_liberty_assertions_and_then (v: LIBERTY_ASSERTIONS_AND_THEN)
      do
         v.left.accept(Current)
         v.right.accept(Current)
      end

feature {LIBERTY_ASSERTIONS_OR_ELSE}
   visit_liberty_assertions_or_else (v: LIBERTY_ASSERTIONS_OR_ELSE)
      do
         v.left.accept(Current)
         v.right.accept(Current)
      end

feature {LIBERTY_CHECK}
   visit_liberty_check (v: LIBERTY_CHECK)
      do
         check False end
      end

feature {LIBERTY_ENSURE}
   visit_liberty_ensure (v: LIBERTY_ENSURE)
      do
         gather_written_assertions(v)
      end

feature {LIBERTY_ENSURE_THEN}
   visit_liberty_ensure_then (v: LIBERTY_ENSURE_THEN)
      do
         gather_written_assertions(v)
      end

feature {LIBERTY_INVARIANT}
   visit_liberty_invariant (v: LIBERTY_INVARIANT)
      do
         check False end
      end

feature {LIBERTY_REQUIRE}
   visit_liberty_require (v: LIBERTY_REQUIRE)
      do
         check False end
      end

feature {LIBERTY_REQUIRE_ELSE}
   visit_liberty_require_else (v: LIBERTY_REQUIRE_ELSE)
      do
         check False end
      end

feature {LIBERTY_REQUIRE_THEN}
   visit_liberty_require_then (v: LIBERTY_REQUIRE_THEN)
      do
         check False end
      end

feature {LIBERTY_VARIANT}
   visit_liberty_variant (v: LIBERTY_VARIANT)
      do
         check False end
      end

feature {}
   gather_written_assertions (contract: LIBERTY_WRITTEN_ASSERTIONS)
      local
         assertions: TRAVERSABLE[LIBERTY_ASSERTION]
         i: INTEGER
      do
         assertions := contract.assertions
         from
            i := assertions.lower
         until
            i > assertions.upper
         loop
            assertions.item(i).assertion.accept(Current)
            i := i + 1
         end
      end

feature {}
   make (a_interpreter: like interpreter)
      do
         interpreter := a_interpreter
      end

invariant
   interpreter /= Void

end -- class LIBERTY_INTERPRETER_POSTCONDITION_BROWSER
