deferred class SHARED_XML2_NODE_CACHE
	-- Shared access to XML2_NODE_CACHE singleton
insert ANY undefine copy, is_equal end 
feature {ANY}
	cache: XML2_NODE_CACHE
		once
			create Result
		end
end -- class SHARED_XML2_NODE_CACHE

-- Liberty Eiffel wrappers for libxml2 library Copyright (C) 2010 Paolo Redaelli,
-- 
-- The GNU C Library is free software; you can redistribute it and/or
-- modify it under the terms of the GNU Lesser General Public
-- License as published by the Free Software Foundation; either
-- version 2.1 of the License, or (at your option) any later version.
-- 
-- The GNU C Library is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-- Lesser General Public License for more details.
-- 
-- You should have received a copy of the GNU Lesser General Public
-- License along with the GNU C Library; if not, write to the Free
-- Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA
-- 02110-1301 USA

