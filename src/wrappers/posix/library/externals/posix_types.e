-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class POSIX_TYPES


insert ANY undefine is_equal, copy end

	STANDARD_C_LIBRARY_TYPES

<<<<<<< HEAD
feature {ANY} -- C type definitions (typedefs)
	in_port_t: like uint16_t is
=======
feature -- C type definitions (typedefs)
	in_port_t: like uint16_t
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
		-- typedef in_port_t
		-- Empty by design, used for anchored declarations.
	do
	ensure Result.is_default
	end

	umode_t: NATURAL_16
		-- typedef umode_t
		-- Empty by design, used for anchored declarations.
	do
	ensure Result.is_default
	end

	in_addr_t: like uint32_t
		-- typedef in_addr_t
		-- Empty by design, used for anchored declarations.
	do
	ensure Result.is_default
	end

end
