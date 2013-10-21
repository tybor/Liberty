indexing
	description: "Shared keys used in creation agents for GObject wrappers"
	copyright: "(C) 2010 Paolo Redaelli "
	license: "LGPL v2 or later"

deferred class SHARED_EIFFEL_KEY

inherit ANY undefine is_equal, copy end

feature {} -- Implementation

	eiffel_key: G_QUARK is
			-- The quark used to store a pointer to Current into the
			-- underlying gobject.
		once
			create Result.from_string (eiffel_key_label)
		end
	
	eiffel_key_label: STRING is
			-- The key used to store a pointer to Current into the
			-- underlying gobject.
		"eiffel-wrapper"
end
