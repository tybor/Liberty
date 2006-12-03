indexing
	description: "."
	copyright: "(C) 2006 Paolo Redaelli <paolo.redaelli@poste.it>"
	license: "LGPL v2 or later"
	date: "$Date:$"
	revision: "$Revision:$"

class ITERATOR_ON_G_LIST [ITEM->SHARED_C_STRUCT]
inherit
	ITERATOR [ITEM]
	WRAPPER_HANDLER
insert
	WRAPPER_FACTORY [ITEM]
	G_LIST_EXTERNALS
	
creation make
	
feature {} -- Creation
	make (a_list: G_LIST[ITEM]) is
		require valid_list: a_list/=Void
		do
			list := a_list.handle
		end
	
feature {} -- Implementation
	list: POINTER
	current_element: POINTER
feature -- Iterator's features
	start is
		do
			current_element := list
		end
	
	is_off: BOOLEAN is
		do
			Result:=(current_element.is_null)
		end
	
	item: ITEM is
			-- TODO: suboptimal implementation
		do
			Result := new_item
			Result.from_external_pointer (g_list_get_data
													(current_element))
			-- Note: This implementation create a new wrapper object for
			-- each call to item. This is cleary inefficient. A possible
			-- solution could be to add singleton DICTIONARY that stores
			-- wrapper object and its wrapped C structure
		end
	
	next is
		do
			current_element := g_list_get_next (current_element)
		end

feature -- Bi-directional iterator features.
	is_at_first: BOOLEAN is
			-- Is Current iterator at the beginning of the G_LIST?
		do
			Result := (current_element = list)
		end
	
	prev is
		require past_start: not is_at_first
		do
			current_element := g_list_get_prev (current_element)
		end
feature
	dispose is
		do
			-- Note: disposing an interator is a no-operation.
		end
end
