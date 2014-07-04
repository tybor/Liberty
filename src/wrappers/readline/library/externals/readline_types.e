-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class READLINE_TYPES


insert ANY undefine is_equal, copy end

	STANDARD_C_LIBRARY_TYPES

<<<<<<< HEAD
feature {ANY} -- C type definitions (typedefs)
	histdata_t: POINTER is
=======
feature -- C type definitions (typedefs)
	histdata_t: POINTER
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		-- typedef histdata_t
		-- Empty by design, used for anchored declarations.
	do
	ensure Result.is_default
	end

	keymap: POINTER
		-- typedef Keymap
		-- Empty by design, used for anchored declarations.
	do
	ensure Result.is_default
	end

end
