class G_VALUE_PANGO_STYLE

inherit
	G_VALUE

insert
	PANGO_STYLE

create {ANY} make_pango_style, from_pango_style

feature {} -- Creations

	make_pango_style is
			-- create a new PangoStyle G_VALUE
		local
			ptr: POINTER
		do
			ptr := malloc_g_value
			handle := g_value_init (ptr, pango_type_style)
			check handle = ptr end
		end

	from_pango_style (a_pango_style: INTEGER) is
		local
			ptr: POINTER
		do
			ptr := malloc_g_value
			handle := g_value_init (ptr, pango_type_style)
			check handle = ptr end
			g_value_set_enum (handle, a_pango_style)
		end

feature {ANY} -- Commands

	set (a_pango_style: INTEGER) is
		require
			is_valid_pango_style (a_pango_style)
		do
			g_value_set_enum (handle, a_pango_style)
		end

feature {} -- External calls

	pango_type_style: INTEGER is
			-- The GObject type for PangoStyle.
		external "C macro use <pango/pango.h>"
		alias "PANGO_TYPE_STYLE"
		end

invariant
	holds (pango_type_style)
end -- class G_VALUE_PANGO_STYLE


-- Copyright 2008,2010 Paolo Redaelli 2008 Raphael Mack 2013 Cyril Adrian 

-- This file is part of Pango wrappers for Liberty Eiffel.
--
-- This library is free software: you can redistribute it and/or modify
-- it under the terms of the GNU Lesser General Public License as published by
-- the Free Software Foundation, version 2 of the License.
--
-- Liberty Eiffel is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with Liberty Eiffel.  If not, see <http://www.gnu.org/licenses/>.
--
