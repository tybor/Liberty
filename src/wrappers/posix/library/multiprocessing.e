deferred class MULTIPROCESSING
	-- Facilities for multiprocessing
insert UNISTD_EXTERNALS
feature {ANY} 
	processors_count: INTEGER
		-- Number of processors available in the machine
		external "plug_in"
		alias "{
			location: "externals"
			module_name: "plugin"
			feature_name: "processors_count()"
			}"
		end

	process_id: INTEGER_32
		do
			Result:=getpid
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

