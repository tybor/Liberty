class HTTP_SERVER

insert
	SERVER[HTTP_CONNECTION]
		redefine
			log
		end

creation {ANY}
	make

feature {ANY}
	is_alive: BOOLEAN is
		do
			Result := not server.done
		end

	log (a_message: STRING) is
		local
			msg: STRING
		do
			if logger /= Void then
				msg := once ""
				msg.copy(once "[")
				msg.append(current_time)
				msg.append(once "] ")
				msg.append(a_message)
				logger.call([msg])
			end
		end

feature {}
	current_time: STRING is
		local
			date: TIME; t: MICROSECOND_TIME; ms: INTEGER
		do
			t.update
			date := t.time
			ms := t.microsecond // 1000
			check
				ms.in_range(0, 999)
			end
			Result := once ""
			Result.clear_count
			date.year.append_in(Result)
			Result.extend('/')
			if date.month < 10 then
				Result.extend('0')
			end
			date.month.append_in(Result)
			Result.extend('/')
			if date.day < 10 then
				Result.extend('0')
			end
			date.day.append_in(Result)
			Result.extend(' ')
			if date.hour < 10 then
				Result.extend('0')
			end
			date.hour.append_in(Result)
			Result.extend(':')
			if date.minute < 10 then
				Result.extend('0')
			end
			date.minute.append_in(Result)
			Result.extend(':')
			if date.second < 10 then
				Result.extend('0')
			end
			date.second.append_in(Result)
			Result.extend('.')
			if ms < 100 then
				Result.extend('0')
				if ms < 10 then
					Result.extend('0')
				end
			end
			ms.append_in(Result)
		end

feature {HTTP_CONNECTION}
	shutdown is
			-- A connection asked the server to shut down
		do
			server.shutdown
		end

	halt is
			-- A connection asked the server to halt
		do
			server.halt
		end

	connection_done (a_connection: HTTP_CONNECTION) is
			-- A connection is about to finish.
		do
			release_connection(a_connection)
			connections := connections - 1
			if server.done then
				handle_shutdown(server)
			end
		end

feature {}
	error_handler: PROCEDURE[TUPLE[STRING]]
			-- error handler

	connection_factory: FUNCTION[TUPLE, HTTP_CONNECTION]
			-- the HTTP connection factory

	make (a_error_handler: like error_handler; a_connection_factory: like connection_factory) is
		do
			error_handler := a_error_handler
			connection_factory := a_connection_factory
		end

	handle_error (msg: STRING) is
		do
			if error_handler /= Void then
				error_handler.call([msg])
			else
				std_error.put_string(msg)
				std_error.put_new_line
			end
		end

	connections_pool: RECYCLING_POOL[HTTP_CONNECTION] is
		once
			create Result.make
		end

	new_connection: HTTP_CONNECTION is
		do
			if connections_pool.is_empty then
				Result := connection_factory.item([])
			else
				Result := connections_pool.item
			end
			Result.set_server(Current)
		end

	release_connection (cnx: HTTP_CONNECTION) is
		do
			connections_pool.recycle(cnx)
		end

end -- class HTTP_SERVER