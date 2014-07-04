class C_FUNCTION_TYPE
   -- A "FunctionType" node in an XML file made by gccxml which represents a function type wrapped as a POINTER
   -- Th node usually has a "returns" attribute, currently unused.

inherit
   GCCXML_NODE
   IDENTIFIED_NODE
   TYPED_NODE
   STORABLE_NODE

create {ANY}
   make

feature {ANY}
   store
      do
         types.fast_put(Current, id)
      end

   wrapper_type: STRING "POINTER"

   is_fundamental: BOOLEAN False

   is_void: BOOLEAN False

   has_wrapper: BOOLEAN True
         -- invariant name.is_equal(once U"FunctionType")

end -- class C_FUNCTION_TYPE
-- Copyright 2008,2009,2010 Paolo Redaelli
-- wrappers-generator  is free software: you can redistribute it and/or modify it
-- under the terms of the GNU General Public License as publhed by the Free
-- Software Foundation, either version 2 of the License, or (at your option)
-- any later version.
-- wrappers-generator is distributed in the hope that it will be useful, but
-- WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
-- or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
-- more details.
-- You should have received a copy of the GNU General Public License along with
-- th program.  If not, see <http://www.gnu.org/licenses/>.
