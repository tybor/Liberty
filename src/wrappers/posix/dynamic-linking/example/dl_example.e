class DL_EXAMPLE
	-- Example of dynamical linker loader interface. It should work out-of-the-box, but I found an nice SmartEiffel bug producing a wrong gcc command.

	-- Compile it using the provided Makefile

insert DYNAMIC_LINKING_LOADER; DL_FLAGS

create {ANY} make

feature {ANY}
	lib: STRING "libglib-2.0.so" 

	make
		local dl: DL_LOADER
		do
			l := new_dynamic_shared_object(lib, rtld_now)
			l2 := dl.new_dynamic_shared_object(lib, rtld_now)

			check
				l ~ l2
			end

			print (l.symbol("g_date_new").out)

			check 
				l.symbol("g_date_new") = l2.symbol("g_date_new")
			end
		end
	l,l2: DYNAMIC_SHARED_OBJECT
end -- DL_EXAMPLE

-- Copyright 2010 Paolo Redaelli 2013 Cyril Adrian 

-- This file is part of wrappers for Liberty Eiffel.
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
