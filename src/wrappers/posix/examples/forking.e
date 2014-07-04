class FORKING
create {ANY} make
feature {ANY} 
	make
		do
			print("Father genertaing 5 childred%N")
			create children.with_capacity(5);
			5.times(agent add_child)
			-- Eventually children.for_all(agent {MY_CHILD}.wait or join...)
			print("Done%N")
		end

	children: FAST_ARRAY[POSIX_PROCESS]
	add_child is 
		do 
			children.add_last(create {MY_CHILD}.start) 
		end
end

-- Copyright 2012 Paolo Redaelli - 2013 Cyril Adrian 

-- This file is part of Posix wrappers for Liberty Eiffel.
--
-- This library is free software: you can redistribute it and/or modify
-- it under the terms of the GNU Lesser General Public License as published by
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

