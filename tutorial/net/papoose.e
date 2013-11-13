class PAPOOSE
   --
   -- PAPOOSE is not
   -- Apache,
   -- PAPOOSE is
   -- Object
   -- Oriented, written for
   -- Smart
   -- Eiffel
   --
   -- Well... PAPOOSE is just a very, very small HTTP server :-)
   --

create {ANY}
   make

feature {ANY}
   make is
      local
         host: LOCALHOST; tcp: TCP_ACCESS; server: HTTP_SERVER
      do
         create host.make
         create tcp.make(host, 8080, True)
         tcp.set_address_reuse(True) -- to be able to reuse a port in TIME_WAIT state
         create server.make(agent error_handler(?), agent new_connection)
         server.set_logger(agent log(?))
         server.start(tcp)
      end

   log (msg: STRING) is
      do
         access.put_line(msg)
         access.flush
      end

   error_handler (text: STRING) is
      do
         error.put_line(text)
         error.flush
      end

   new_connection: PAPOOSE_CONNECTION is
      do
         create Result.make(Void)
      end

   access: TEXT_FILE_WRITE is
      once
         create Result.connect_for_appending_to(once "access.log")
      end

   error: TEXT_FILE_WRITE is
      once
         create Result.connect_for_appending_to(once "error.log")
      end

end -- class PAPOOSE
