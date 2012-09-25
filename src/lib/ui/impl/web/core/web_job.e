-- This file is part of a Liberty Eiffel library.
-- See the full copyright at the end.
--
class WEB_JOB

inherit
   UI_JOB
      redefine
         connect
      end

create {USER_INTERFACE}
   connect

feature {LOOP_ITEM}
   prepare (events: EVENTS_SET) is
      do
         events.expect(server.event_connection)
      end

   is_ready (events: EVENTS_SET): BOOLEAN is
      do
         Result := events.event_occurred(server.event_connection)
      end

   continue is
      local
         stream: SOCKET_INPUT_OUTPUT_STREAM
         cnx: WEB_CONNECTION
      do
         stream := server.new_stream(True)
         if stream /= Void and then stream.is_connected then
            create cnx.make(window, conf, stream)
            on_new_job.call([cnx])
         else
            log.error.put_line(once "Could not connect to client!")
         end
      end

   done: BOOLEAN is
      do
         Result := server = Void or else not server.can_connect
      end

   restart is
      do
         server := conf.new_server
      end

feature {UI_ITEM}
   new_bridge_window (id: FIXED_STRING): WEB_WINDOW is
      do
      end

   new_bridge_panel (id: FIXED_STRING): WEB_PANEL is
      do
      end

   new_bridge_menu (id: FIXED_STRING): WEB_MENU is
      do
      end

   new_bridge_text_field (id: FIXED_STRING): WEB_TEXT_FIELD is
      do
      end

   new_bridge_button (id: FIXED_STRING): WEB_BUTTON is
      do
      end

feature {}
   connect (a_window: like window; a_on_new_job: like on_new_job) is
      do
         Precursor(a_window, a_on_new_job)
         create conf.make(a_window.id)
      end

   server: SOCKET_SERVER
   conf: WEB_CONFIGURATION

end -- class WEB_JOB
--
-- Copyright (c) 2012 Cyril ADRIAN <cyril.adrian@gmail.com>.
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
