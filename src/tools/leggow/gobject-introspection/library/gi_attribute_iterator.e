class GI_ATTRIBUTE_ITERATOR
   --    An opaque structure used to iterate over attributes in a GIBaseInfo struct.

inherit
	ITERATOR[FIXED_STRING]
	WRAPPER

insert GIATTRIBUTE_ITER_STRUCT

create {GI_BASE_INFO} from_base_info

feature {} -- Implementation
	base: GI_BASE_INFO 
feature {} -- Creation
	from_base_info (a_base: GI_BASE_INFO) is
		do
			base:=a_base
			-- allocate 
		end
feature {ANY} -- Iterating
	start is
		do
			not_yet_implemented -- allocate
			next
		end

	next is
		local np, vp: POINTER
		do
			
		end

	is_off: BOOLEAN is
		do
		end

	name: FIXED_STRING

	item: FIXED_STRING
end -- class GI_ATTRIBUTE_ITERATOR

-- Copyright (C) 2013 Paolo Redaelli <paolo.redaelli@gmail.com>
-- 
-- This library is free software; you can redistribute it and/or
-- modify it under the terms of the GNU Lesser General Public License
-- as published by the Free Software Foundation; either version 2.1 of
-- the License, or (at your option) any later version.
-- 
-- This library is distributed in the hope that it will be useful, but
-- WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-- Lesser General Public License for more details.
-- 
-- You should have received a copy of the GNU Lesser General Public
-- License along with this library; if not, write to the Free Software
-- Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
-- 02110-1301 USA
	
