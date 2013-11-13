-- This file is part of a Liberty Eiffel library.
-- See the full copyright at the end.
--
class PACKRAT_GRAMMAR
   --
   -- The packrat grammar written using the packrat parser :-)
   --

   -- Note that the original grammar is extended with "tags" which
   -- will allow the implementation of semantic actions.

   -- The grammar is:
   --
   -- grammar     <- (nonterminal '<-' sp pattern)+
   -- pattern     <- alternative ('/' sp alternative)*
   -- alternative <- ([!&] sp suffix / suffix tag?)+
   -- suffix      <- primary ([*+?] sp)*
   -- primary     <- '(' sp pattern ')' sp / '.' sp / literal /
   --                charclass / nonterminal !'<-'
   -- literal     <- ['] (!['] .)* ['] sp
   -- charclass   <- '[' (!']' (. '-' . / .))* ']' sp
   -- nonterminal <- [a-zA-Z]+ sp
   -- sp          <- [ \t\n]*
   -- tag         <- '{' (!'}' .)+ '}' sp
   --

insert
   PACKRAT_FEATURES

create {ANY}
   make, with_reducer

feature {}
   init is
      do
         reset
      end

   with_reducer (a_reducer: like reducer) is
      require
         a_reducer /= Void
      do
         reducer := a_reducer
         init
      ensure
         reducer = a_reducer
      end

   make is
      do
         with_reducer(default_reducer)
      end

   default_reducer: PACKRAT_DEFAULT_REDUCER is
      once
         create Result.make
      end

   default_table: PARSE_TABLE[PACKRAT_PARSE_CONTEXT] is
      once
         Result := {PARSE_TABLE[PACKRAT_PARSE_CONTEXT] <<
            -- ----------------------------------------------------------------------
            -- THE GRAMMAR

            "grammar", create {PACKRAT_NON_TERMINAL}
            .make(seq(<< seq(<< ref("nonterminal") >>, one, Void, agent reduce_nonterminal_def), ref("'<-'"), ref("sp"), ref("pattern") >>,
                         one_or_more, Void, agent reduce_grammar));

            "pattern",     create {PACKRAT_NON_TERMINAL}
            .make(seq(<< seq(<< ref("alternative") >>,
                                one, Void, agent reduce_pattern_first_alternative),
                         seq(<< ref("'/'"), ref("sp"), ref("alternative") >>,
                                zero_or_more, Void, agent reduce_pattern_alternative) >>,
                         one, Void, agent reduce_pattern));

            "alternative", create {PACKRAT_NON_TERMINAL}
            .make(seq(<< seq(<< ref("[!&]"), ref("sp"), ref("suffix") >>,
                                one, Void, agent reduce_alternative_lookahead)
                         /
                         seq(<< ref("suffix"),
                                seq(<< ref("tag") >>,
                                       zero_or_one, Void, agent reduce_alternative_suffix_tag) >>,
                                one, Void, agent reduce_alternative_tag) >>,
                         one_or_more, Void, agent reduce_alternative));

            "suffix",      create {PACKRAT_NON_TERMINAL}
            .make(seq(<< ref("primary"), seq(<< ref("[*+?]"), ref("sp") >>,
                                                zero_or_one, Void, agent reduce_quantifier) >>,
                         one, Void, agent reduce_suffix));

            "primary",     create {PACKRAT_NON_TERMINAL}
            .make(seq(<< ref("'('"), ref("sp"), ref("pattern"), ref("')'"), ref("sp") >>,
                         one, Void, agent reduce_primary_as_nested_pattern)
                  /
                  seq(<< ref("'.'"), ref("sp") >>,
                         one, Void, agent reduce_primary_as_any)
                  /
                  seq(<< ref("literal") >>,
                         one, Void, agent reduce_primary_as_literal)
                  /
                  seq(<< ref("charclass") >>,
                         one, Void, agent reduce_primay_as_charclass)
                  /
                  seq(<< ref("nonterminal"), ~ref("'<-'") >>,
                         one, Void, agent reduce_primary_as_nonterminal));

            "literal",     create {PACKRAT_NON_TERMINAL}
            .make(seq(<< seq(<< ref("[']") >>,
                                one, Void, agent reduce_literal_start),
                         seq(<< ~ref("[']"), ref(".") >>,
                                zero_or_more, Void, agent reduce_literal_string), ref("[']"), ref("sp") >>,
                         one, Void, agent reduce_literal));

            "charclass",   create {PACKRAT_NON_TERMINAL}
            .make(seq(<< seq(<< ref("'['") >>,
                                one, Void, agent reduce_charclass_start),
                         seq(<< ~ref("']'"),
                                seq(<< ref("."), ref("'-'"), ref(".") >>,
                                       one, Void, agent reduce_charclass_range)
                                /
                                seq(<< ref(".") >>,
                                       one, Void, agent reduce_charclass_char) >>,
                                zero_or_more, Void, agent reduce_charclass_class), ref("']'"), ref("sp") >>,
                          one, Void, agent reduce_charclass));

            "nonterminal", create {PACKRAT_NON_TERMINAL}
            .make(seq(<< seq(<< ref("[a-zA-Z]") >>,
                                one_or_more, Void, agent reduce_nonterminal_name), ref("sp") >>,
                         one, Void, agent reduce_nonterminal));

            "sp",          create {PACKRAT_NON_TERMINAL}
            .make(seq(<< ref("[ \t\n]") >>,
                         zero_or_more, Void, agent reduce_space));

            "tag",         create {PACKRAT_NON_TERMINAL}
            .make(seq(<< seq(<< ref("'{'"), >>,
                                one, Void, agent reduce_tag_start),
                         seq(<< ~ref("'}'"), ref(".") >>,
                                zero_or_more, Void, agent reduce_tag_string), ref("'}'"), ref("sp") >>,
                         one, Void, agent reduce_tag));

            -- ----------------------------------------------------------------------
            -- THE LOW-LEVEL PATTERNS (hardcoded)

            "'<-'",        create {PACKRAT_TERMINAL}.make(agent parse_string(?, "<-"), agent reduce_image_left_arrow(?));
            "'/'",         create {PACKRAT_TERMINAL}.make(agent parse_string(?, "/"),  agent reduce_image_slash(?));
            "[!&]",        create {PACKRAT_TERMINAL}.make(agent parse_lookahead,       agent reduce_image_not_and(?));
            "[*+?]",       create {PACKRAT_TERMINAL}.make(agent parse_quantifier,      agent reduce_image_star_plus_why(?));
            "'('",         create {PACKRAT_TERMINAL}.make(agent parse_string(?, "("),  agent reduce_image_open_paren(?));
            "')'",         create {PACKRAT_TERMINAL}.make(agent parse_string(?, ")"),  agent reduce_image_close_paren(?));
            ".",           create {PACKRAT_TERMINAL}.make(agent parse_any,             agent reduce_image_anychar(?));
            "[']",         create {PACKRAT_TERMINAL}.make(agent parse_string(?, "%'"), agent reduce_image_quote(?));
            "'-'",         create {PACKRAT_TERMINAL}.make(agent parse_string(?, "-"),  agent reduce_image_hyphen(?));
            "'.'",         create {PACKRAT_TERMINAL}.make(agent parse_string(?, "."),  agent reduce_image_dot(?));
            "'['",         create {PACKRAT_TERMINAL}.make(agent parse_string(?, "["),  agent reduce_image_open_bracket(?));
            "']'",         create {PACKRAT_TERMINAL}.make(agent parse_string(?, "]"),  agent reduce_image_close_bracket(?));
            "'{'",         create {PACKRAT_TERMINAL}.make(agent parse_string(?, "{"),  agent reduce_image_open_curly(?));
            "'}'",         create {PACKRAT_TERMINAL}.make(agent parse_string(?, "}"),  agent reduce_image_close_curly(?));
            "[a-zA-Z]",    create {PACKRAT_TERMINAL}.make(agent parse_character,       agent reduce_image_letter(?));
            "[ \t\n]",     create {PACKRAT_TERMINAL}.make(agent parse_space,           agent reduce_image_space(?));
         >> }
      end

   table_memory: PARSE_TABLE[PACKRAT_PARSE_CONTEXT]

feature {ANY}
   table: PARSE_TABLE[PACKRAT_PARSE_CONTEXT] is
      do
         if table_memory = Void then
            reset_table
         end
         Result := table_memory
      end

   reset is
      do
         create position
      end

feature {EIFFELTEST_TOOLS} -- test only
   set_table (a_table: like table; a_root: like root) is
      do
         table_memory := a_table
         root := a_root
      ensure
         table = a_table
      end

   root: STRING

   reset_table is
      do
         set_table(default_table, once "grammar")
      end

feature {} -- low-level parsers
   parse_lookahead (buffer: MINI_PARSER_BUFFER): PACKRAT_IMAGE is
      do
         if not buffer.end_reached then
            inspect
               buffer.current_character
            when '&', '!' then
               Result := new_image(buffer.current_character)
               next_character(buffer)
            else
            end
            buffer.clear_mark
         end
      end

   parse_quantifier (buffer: MINI_PARSER_BUFFER): PACKRAT_IMAGE is
      do
         if not buffer.end_reached then
            inspect
               buffer.current_character
            when '*', '+', '?' then
               Result := new_image(buffer.current_character)
               next_character(buffer)
            else
            end
            buffer.clear_mark
         end
      end

   parse_character (buffer: MINI_PARSER_BUFFER): PACKRAT_IMAGE is
      do
         if not buffer.end_reached then
            inspect
               buffer.current_character
            when 'a'..'z', 'A'..'Z' then
               Result := new_image(buffer.current_character)
               next_character(buffer)
            else
            end
            buffer.clear_mark
         end
      end

   parse_space (buffer: MINI_PARSER_BUFFER): PACKRAT_IMAGE is
      do
         if not buffer.end_reached then
            inspect
               buffer.current_character
            when ' ', '%T', '%N' then
               Result := new_image(buffer.current_character)
               next_character(buffer)
            else
            end
            buffer.clear_mark
         end
      end

feature {ANY}
   parse_table (a_source: ABSTRACT_STRING): like default_table is
      require
         a_source /= Void
         reducer = default_reducer
      local
         parser: PACKRAT_PARSER
         buffer: MINI_PARSER_BUFFER
      do
         if table_memory = Void then
            reset_table
         end

         create parser
         create buffer.initialize_with(a_source)

         if parser.eval(buffer, table, root) and then parser.error = Void then
            Result := default_reducer.parsed_table
         else
            error := parser.error
         end
      end

   error: PARSE_ERROR

feature {} -- reducer proxy (because SmartEiffel crashes if the agents are built in the once method)
   reducer: PACKRAT_REDUCER

   reduce_nonterminal_def is
      do
         reducer.reduce_nonterminal_def
      end

   reduce_grammar is
      do
         reducer.reduce_grammar
      end

   reduce_pattern_first_alternative is
      do
         reducer.reduce_pattern_first_alternative
      end

   reduce_pattern_alternative is
      do
         reducer.reduce_pattern_alternative
      end

   reduce_pattern is
      do
         reducer.reduce_pattern
      end

   reduce_pattern_map (alt: PACKRAT_ALTERNATIVE) is
      do
         reducer.reduce_pattern_map(alt)
      end

   reduce_alternative_lookahead is
      do
         reducer.reduce_alternative_lookahead
      end

   reduce_alternative_suffix_tag is
      do
         reducer.reduce_alternative_suffix_tag
      end

   reduce_alternative_tag is
      do
         reducer.reduce_alternative_tag
      end

   reduce_alternative is
      do
         reducer.reduce_alternative
      end

   reduce_quantifier is
      do
         reducer.reduce_quantifier
      end

   reduce_suffix is
      do
         reducer.reduce_suffix
      end

   reduce_primary_as_nested_pattern is
      do
         reducer.reduce_primary_as_nested_pattern
      end

   reduce_primary_as_any is
      do
         reducer.reduce_primary_as_any
      end

   reduce_primary_as_literal is
      do
         reducer.reduce_primary_as_literal
      end

   reduce_primay_as_charclass is
      do
         reducer.reduce_primay_as_charclass
      end

   reduce_primary_as_nonterminal is
      do
         reducer.reduce_primary_as_nonterminal
      end

   reduce_literal_start is
      do
         reducer.reduce_literal_start
      end

   reduce_literal_string is
      do
         reducer.reduce_literal_string
      end

   reduce_literal is
      do
         reducer.reduce_literal
      end

   reduce_tag_start is
      do
         reducer.reduce_tag_start
      end

   reduce_tag_string is
      do
         reducer.reduce_tag_string
      end

   reduce_tag is
      do
         reducer.reduce_tag
      end

   reduce_charclass_start is
      do
         reducer.reduce_charclass_start
      end

   reduce_charclass_range is
      do
         reducer.reduce_charclass_range
      end

   reduce_charclass_char is
      do
         reducer.reduce_charclass_char
      end

   reduce_charclass_class is
      do
         reducer.reduce_charclass_class
      end

   reduce_charclass is
      do
         reducer.reduce_charclass
      end

   reduce_nonterminal_name is
      do
         reducer.reduce_nonterminal_name
      end

   reduce_nonterminal is
      do
         reducer.reduce_nonterminal
      end

   reduce_space is
      do
         reducer.reduce_space
      end

   reduce_image_left_arrow (image: PARSER_IMAGE) is
      do
         reducer.reduce_image_left_arrow(image)
      end

   reduce_image_slash (image: PARSER_IMAGE) is
      do
         reducer.reduce_image_slash(image)
      end

   reduce_image_not_and (image: PARSER_IMAGE) is
      do
         reducer.reduce_image_not_and(image)
      end

   reduce_image_star_plus_why (image: PARSER_IMAGE) is
      do
         reducer.reduce_image_star_plus_why(image)
      end

   reduce_image_open_paren (image: PARSER_IMAGE) is
      do
         reducer.reduce_image_open_paren(image)
      end

   reduce_image_close_paren (image: PARSER_IMAGE) is
      do
         reducer.reduce_image_close_paren(image)
      end

   reduce_image_anychar (image: PARSER_IMAGE) is
      do
         reducer.reduce_image_anychar(image)
      end

   reduce_image_letter (image: PARSER_IMAGE) is
      do
         reducer.reduce_image_letter(image)
      end

   reduce_image_string (image: PARSER_IMAGE) is
      do
         reducer.reduce_image_string(image)
      end

   reduce_image_quote (image: PARSER_IMAGE) is
      do
         reducer.reduce_image_quote(image)
      end

   reduce_image_hyphen (image: PARSER_IMAGE) is
      do
         reducer.reduce_image_hyphen(image)
      end

   reduce_image_dot (image: PARSER_IMAGE) is
      do
         reducer.reduce_image_dot(image)
      end

   reduce_image_open_bracket (image: PARSER_IMAGE) is
      do
         reducer.reduce_image_open_bracket(image)
      end

   reduce_image_close_bracket (image: PARSER_IMAGE) is
      do
         reducer.reduce_image_close_bracket(image)
      end

   reduce_image_open_curly (image: PARSER_IMAGE) is
      do
         reducer.reduce_image_open_curly(image)
      end

   reduce_image_close_curly (image: PARSER_IMAGE) is
      do
         reducer.reduce_image_close_curly(image)
      end

   reduce_image_space (image: PARSER_IMAGE) is
      do
         reducer.reduce_image_space(image)
      end

invariant
   reducer /= Void

end -- class PACKRAT_GRAMMAR
--
-- Copyright (c) 2009 by all the people cited in the AUTHORS file.
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in
-- all copies or substantial portions of the Software.
--
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
-- THE SOFTWARE.
