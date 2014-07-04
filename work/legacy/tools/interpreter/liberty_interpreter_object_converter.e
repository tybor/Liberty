-- This file is part of Liberty Eiffel.
--
-- Liberty Eiffel is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, version 3 of the License.
--
-- Liberty Eiffel is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with Liberty Eiffel.  If not, see <http://www.gnu.org/licenses/>.
--
class LIBERTY_INTERPRETER_OBJECT_CONVERTER

inherit
   LIBERTY_TYPE_CONVERTER

insert
   LOGGING

create {LIBERTY_INTERPRETER}
   make

feature {ANY}
   convert_object (a_source: like source; a_target_type: LIBERTY_ACTUAL_TYPE): LIBERTY_INTERPRETER_OBJECT
      require
         a_source.type.converts_to(a_target_type)
      do
         debug ("interpreter.convert")
            log.trace.put_string(once "Converting from ")
            log.trace.put_string(a_source.result_type.known_type.full_name)
            log.trace.put_string(once " to ")
            log.trace.put_line(a_target_type.full_name)
         end
         interpreter.ensure_built(a_target_type)
         source := a_source
         a_source.type.do_convert(a_target_type, Current)
         Result := converted
         converted := Void
      ensure
         Result.type = a_target_type
      end

feature {}
   source: LIBERTY_INTERPRETER_OBJECT
   converted: LIBERTY_INTERPRETER_OBJECT

feature {LIBERTY_UNIVERSE} -- Legacy conversion rules
   convert_integer_8_16
      local
         int: LIBERTY_INTERPRETER_OBJECT_NATIVE[INTEGER_64]
      do
         int ::= source
         converted := interpreter.new_integer_16(int.item.to_integer_16, int.position)
      end

   convert_integer_8_32
      local
         int: LIBERTY_INTERPRETER_OBJECT_NATIVE[INTEGER_64]
      do
         int ::= source
         converted := interpreter.new_integer_32(int.item.to_integer_32, int.position)
      end

   convert_integer_8_64
      local
         int: LIBERTY_INTERPRETER_OBJECT_NATIVE[INTEGER_64]
      do
         int ::= source
         converted := interpreter.new_integer_64(int.item, int.position)
      end

   convert_integer_16_32
      local
         int: LIBERTY_INTERPRETER_OBJECT_NATIVE[INTEGER_64]
      do
         int ::= source
         converted := interpreter.new_integer_32(int.item.to_integer_32, int.position)
      end

   convert_integer_16_64
      local
         int: LIBERTY_INTERPRETER_OBJECT_NATIVE[INTEGER_64]
      do
         int ::= source
         converted := interpreter.new_integer_64(int.item, int.position)
      end

   convert_integer_32_64
      local
         int: LIBERTY_INTERPRETER_OBJECT_NATIVE[INTEGER_64]
      do
         int ::= source
         converted := interpreter.new_integer_64(int.item, int.position)
      end

   convert_real_32_64
      local
         flt: LIBERTY_INTERPRETER_OBJECT_NATIVE[REAL_128]
      do
         flt ::= source
         converted := interpreter.new_real_64(flt.item.force_to_real_64, flt.position)
      end

   convert_real_32_80
      local
         flt: LIBERTY_INTERPRETER_OBJECT_NATIVE[REAL_128]
      do
         flt ::= source
         converted := interpreter.new_real_80(flt.item.force_to_real_64, flt.position)
      end

   convert_real_32_128
      local
         flt: LIBERTY_INTERPRETER_OBJECT_NATIVE[REAL_128]
      do
         flt ::= source
         converted := interpreter.new_real_128(flt.item, flt.position)
      end

   convert_real_64_80
      local
         flt: LIBERTY_INTERPRETER_OBJECT_NATIVE[REAL_128]
      do
         flt ::= source
         converted := interpreter.new_real_80(flt.item, flt.position)
      end

   convert_real_64_128
      local
         flt: LIBERTY_INTERPRETER_OBJECT_NATIVE[REAL_128]
      do
         flt ::= source
         converted := interpreter.new_real_128(flt.item, flt.position)
      end

   convert_real_80_128
      local
         flt: LIBERTY_INTERPRETER_OBJECT_NATIVE[REAL_128]
      do
         flt ::= source
         converted := interpreter.new_real_128(flt.item, flt.position)
      end

   convert_integer_64_real_128
      local
         flt: LIBERTY_INTERPRETER_OBJECT_NATIVE[INTEGER_64]
      do
         flt ::= source
         converted := interpreter.new_real_128(flt.item, flt.position)
      end

   convert_integer_64_real_80
      local
         flt: LIBERTY_INTERPRETER_OBJECT_NATIVE[INTEGER_64]
      do
         flt ::= source
         converted := interpreter.new_real_80(flt.item, flt.position)
      end

   convert_integer_32_real_128
      local
         flt: LIBERTY_INTERPRETER_OBJECT_NATIVE[INTEGER_64]
      do
         flt ::= source
         converted := interpreter.new_real_128(flt.item.to_integer_32, flt.position)
      end

   convert_integer_32_real_80
      local
         flt: LIBERTY_INTERPRETER_OBJECT_NATIVE[INTEGER_64]
      do
         flt ::= source
         converted := interpreter.new_real_80(flt.item.to_integer_32, flt.position)
      end

   convert_integer_32_real_64
      local
         flt: LIBERTY_INTERPRETER_OBJECT_NATIVE[INTEGER_64]
      do
         flt ::= source
         converted := interpreter.new_real_64(flt.item.to_integer_32, flt.position)
      end

   convert_integer_16_real_128
      local
         flt: LIBERTY_INTERPRETER_OBJECT_NATIVE[INTEGER_64]
      do
         flt ::= source
         converted := interpreter.new_real_128(flt.item.to_integer_16, flt.position)
      end

   convert_integer_16_real_80
      local
         flt: LIBERTY_INTERPRETER_OBJECT_NATIVE[INTEGER_64]
      do
         flt ::= source
         converted := interpreter.new_real_80(flt.item.to_integer_16, flt.position)
      end

   convert_integer_16_real_64
      local
         flt: LIBERTY_INTERPRETER_OBJECT_NATIVE[INTEGER_64]
      do
         flt ::= source
         converted := interpreter.new_real_64(flt.item.to_integer_16, flt.position)
      end

   convert_integer_16_real_32
      local
         flt: LIBERTY_INTERPRETER_OBJECT_NATIVE[INTEGER_64]
      do
         flt ::= source
         converted := interpreter.new_real_32(flt.item.to_integer_16, flt.position)
      end

   convert_integer_8_real_128
      local
         flt: LIBERTY_INTERPRETER_OBJECT_NATIVE[INTEGER_64]
      do
         flt ::= source
         converted := interpreter.new_real_128(flt.item.to_integer_8, flt.position)
      end

   convert_integer_8_real_80
      local
         flt: LIBERTY_INTERPRETER_OBJECT_NATIVE[INTEGER_64]
      do
         flt ::= source
         converted := interpreter.new_real_80(flt.item.to_integer_8, flt.position)
      end

   convert_integer_8_real_64
      local
         flt: LIBERTY_INTERPRETER_OBJECT_NATIVE[INTEGER_64]
      do
         flt ::= source
         converted := interpreter.new_real_64(flt.item.to_integer_8, flt.position)
      end

   convert_integer_8_real_32
      local
         flt: LIBERTY_INTERPRETER_OBJECT_NATIVE[INTEGER_64]
      do
         flt ::= source
         converted := interpreter.new_real_32(flt.item.to_integer_8, flt.position)
      end

feature {}
   make (a_interpreter: like interpreter)
      require
         a_interpreter /= Void
      do
         interpreter := a_interpreter
      ensure
         interpreter = a_interpreter
      end

   interpreter: LIBERTY_INTERPRETER

end -- class LIBERTY_INTERPRETER_OBJECT_CONVERTER
