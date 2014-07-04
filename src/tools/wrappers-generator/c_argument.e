class C_ARGUMENT
   -- An "Argument" node of an XML file made by gccxml.

inherit
   C_FUNCTION_ARGUMENT
   NAMED_NODE
   TYPED_NODE

insert
   NAME_CONVERTER

create {ANY}
   make

feature {ANY}
   is_ellipsis: BOOLEAN False

   is_fundamental: BOOLEAN
      do
         Result := types.at(dequalify(type)).is_fundamental
      end

   is_void: BOOLEAN
      do
         Result := types.at(dequalify(type)).is_void
      end

   has_wrapper: BOOLEAN
      do
         Result := types.at(dequalify(type)).has_wrapper
      end

   wrapper_type: STRING
      do
         Result := types.at(dequalify(type)).wrapper_type
      end

   placeholder: STRING
         -- The placeholder name of Current, suitable for Liberty as a newly created string.
      do
         if c_name = Void then
            -- Nameless prototype: providing sound default, using
            -- line and column, which are locally unique.
            Result := "an_argument_l"
            line.append_in(Result)
            Result.append(once "_c")
            column.append_in(Result)
         else
            Result := eiffel_argument(c_name.to_utf8)
         end
      ensure
         Result /= Void
         not Result.is_empty
      end

   put_on (a_buffer: FORMATTER)
      require else
         has_wrapper
      local
         a_placeholder, a_wrapper_type: STRING
      do
         -- Cache results of `placeholder' and `wrapper_type' queries
         a_placeholder := placeholder
         a_wrapper_type := wrapper_type
         log(once "@(1): @(2) ",
         <<a_placeholder, a_wrapper_type>>)
         a_buffer.put_message(once "@(1): @(2)",
         <<a_placeholder, a_wrapper_type>>)
      end

end -- class C_ARGUMENT
