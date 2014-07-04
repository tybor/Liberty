deferred class XML2_PARSER

insert PARSER_EXTERNALS
feature {ANY} 
	parse_file (an_xml_file: STRING): XML2_DOC
		-- parse the XML file named `an_xml_file' and build a tree. Automatic
		-- support for ZLIB/Compress compressed document is provided by default
		-- if found at compile-time. The resulting XML2_DOC will be Void if the
		-- file was not wellformed.
	require name_not_void: an_xml_file/=Void
	local p: POINTER
	do
		debug 
			print ("Parsing "+an_xml_file+"%N")
		end
		p:=xml_parse_file(an_xml_file.to_external)
		if p.is_not_null then 
			create Result.from_external_pointer(p)
		end
	end 
end -- class XML2_PARSER

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


