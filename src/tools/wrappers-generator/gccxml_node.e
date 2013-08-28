deferred class GCCXML_NODE
	-- An XML node generated by gccxml

inherit XML_COMPOSITE_NODE
insert 
	SHARED_SETTINGS
	DESCRIPTIONS
feature {ANY} -- Assigned name
	assigned_name: STRING
		-- The name under which Current will be forcefully wrapped to.

	set_name (a_name: STRING) is
		-- Set `assigned_name' to `a_name'.
	require a_name/=Void
	do
		assigned_name:=a_name.twin
	ensure definition: assigned_name.is_equal(a_name)
	end

	has_assigned_name: BOOLEAN is
		do
			Result:= assigned_name/=Void
		end

feature {ANY} -- Collection-like command
	do_all (a_procedure: PROCEDURE[TUPLE[GCCXML_NODE]]) is
			-- Apply 'a_procedure' to all heir nodes of known type.
		local i: INTEGER; node: GCCXML_NODE
		do
			from i:=1 until i>children_count loop
				node ?= child(i)
				if node/=Void then 
					a_procedure.call([node])
				end
				i:=i+1
			end
		end

	emit_wrappers is
		-- Recursively descend the tree invoking emit_wrapper on WRAPPER_CLASS nodes.
	local i: INTEGER; node: GCCXML_NODE; wrapper: WRAPPER_CLASS
	do
		from i:=1 until i>children_count loop
			node ?= child(i)
			wrapper ?= node
			if wrapper/=Void then wrapper.emit_wrapper end
			if node/=Void then node.emit_wrappers end
			i:=i+1
		end
	end
end -- class GCCXML_NODE

-- Copyright 2008,2009,2010 Paolo Redaelli

-- wrappers-generator  is free software: you can redistribute it and/or modify it
-- under the terms of the GNU General Public License as published by the Free
-- Software Foundation, either version 2 of the License, or (at your option)
-- any later version.

-- wrappers-generator is distributed in the hope that it will be useful, but
-- WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
-- or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
-- more details.

-- You should have received a copy of the GNU General Public License along with
-- this program.  If not, see <http://www.gnu.org/licenses/>.
