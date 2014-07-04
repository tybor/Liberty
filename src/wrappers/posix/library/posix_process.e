deferred class POSIX_PROCESS
	-- A process as described in the POSIX standard.

	-- Commands and queries of this class are loosely modelled after the
	-- multiprocessing API of Python
	-- (http://docs.python.org/library/multiprocessing.html).
insert 
	ERRNO
	MULTIPROCESSING
feature {ANY} 
	child_process_id: like process_id
		-- The process ID of the child process

	is_child: BOOLEAN
		do
			Result := child_process_id=0
		end

	start
		-- Create the new process and make it run 
		-- TODO:require not_invoked_multiple_times: not 
		do
			child_process_id := fork
			if     child_process_id =  0 then run; die_with_code(exit_success_code) -- executed by the child process
			elseif child_process_id = -1 then -- there is an error
				if errno = eagain then not_yet_implemented
				elseif errno = enomem then not_yet_implemented
				else not_yet_implemented -- unknown error code
				end
			else -- nothing, this is executed by the father process
			end
		end

	run
		-- The command that will be executed in the child process
		deferred
		end

	terminate
		-- Send SIGTERM signal to Current process
		do
			not_yet_implemented
		end

	is_running: BOOLEAN
		do
			not_yet_implemented
		end
end -- class POSIX_PROCESS

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

