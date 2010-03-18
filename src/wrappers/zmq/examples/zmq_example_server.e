class ZMQ_EXAMPLE_SERVER
	-- Port of the server of the simple example at http://www.zeromq.org/area:docs-v20
insert MEMORY -- To check for memory leaks
creation {} make
feature
	make is
		local ctx: ZMQ_CONTEXT; s: ZMQ_SOCKET; query, answer: ZMQ_STRING_MESSAGE
		do
			foo
			create ctx
			s := ctx.new_rep_socket
			-- Bind to the TCP transport and port 5555 on the 'lo' interface
			s.bind("tcp://lo:5555")

			from until False loop -- i.e. "forever do"
				create query
				s.receive(query) -- Receive a message, blocks until one is available
				("Received query: '"+query.to_string+"' (Note: DbC says that concatenating into ropes with '|' triggers some bugs; Paolo solve them!).%N").print_on(std_output)
				query.close -- message closing may be automatically done by the garbage collector.

				create answer.with_string(answer_body.intern)
				s.send(answer) -- Send back our canned response
				answer.close
				full_collect -- To clean up Eiffel side and see if memory is leaked on C side
			end

		end
		answer_body: STRING is "OK" -- shall be FIXED_STRING is once Result:="OK".intern end

	foo is
		-- Dummy plugin feature to work around SE bug
		external "plug_in"
		alias "{
			location: "../library/externals/"
			module_name: "plugin"
			feature_name: "/*bug-workaround*/"
		}"
		end
end -- class ZMQ_EXAMPLE_SERVER