class XML2_NODE_CACHE
	-- A singleton wrapper factory and cache for XML2_NODEs.

inherit 
	CACHING_FACTORY[XML2_NODE]
		redefine default_create end
	SINGLETON
		redefine default_create end

feature {ANY} 	
	default_create
		do
			create wrappers.make
		end
	
	wrapper (a_pointer: POINTER): XML2_NODE
		-- XML2_NODE wrapper for `a_pointer'
	do
		Result:=wrappers.reference_at(a_pointer)
		if Result=Void then
			create Result.from_external_pointer(a_pointer)
			wrappers.put(Result,a_pointer)
			Result.set_shared
		end
	end
end -- class XML2_NODE_CACHE

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

