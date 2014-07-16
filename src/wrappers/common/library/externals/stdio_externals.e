-- Th file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class STDIO_EXTERNALS


insert ANY undefine is_equal, copy end

		STANDARD_C_LIBRARY_TYPES
feature {} -- External calls

	clearerr (a_stream: POINTER) 
               -- clearerr
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "clearerr"
               }"
               end

	clearerr_unlocked (a_stream: POINTER) 
               -- clearerr_unlocked
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "clearerr_unlocked"
               }"
               end

	ctermid (a_s: POINTER): POINTER 
               -- ctermid
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "ctermid"
               }"
               end

	cuserid (a_s: POINTER): POINTER 
               -- cuserid
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "cuserid"
               }"
               end

	fclose (a_stream: POINTER): INTEGER 
               -- fclose
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "fclose"
               }"
               end

	fcloseall: INTEGER 
               -- fcloseall
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "fcloseall()"
               }"
               end

	fdopen (a_fd: INTEGER; a_modes: POINTER): POINTER 
               -- fdopen
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "fdopen"
               }"
               end

	feof (a_stream: POINTER): INTEGER 
               -- feof
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "feof"
               }"
               end

	ferror (a_stream: POINTER): INTEGER 
               -- ferror
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "ferror"
               }"
               end

	fflush (a_stream: POINTER): INTEGER 
               -- fflush
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "fflush"
               }"
               end

	fflush_unlocked (a_stream: POINTER): INTEGER 
               -- fflush_unlocked
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "fflush_unlocked"
               }"
               end

	fgetc (a_stream: POINTER): INTEGER 
               -- fgetc
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "fgetc"
               }"
               end

	fgetpos (a_stream: POINTER; a_pos: POINTER): INTEGER 
               -- fgetpos
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "fgetpos"
               }"
               end

	fgetpos64 (a_stream: POINTER; a_pos: POINTER): INTEGER 
               -- fgetpos64
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "fgetpos64"
               }"
               end

	fileno (a_stream: POINTER): INTEGER 
               -- fileno
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "fileno"
               }"
               end

	fileno_unlocked (a_stream: POINTER): INTEGER 
               -- fileno_unlocked
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "fileno_unlocked"
               }"
               end

	flockfile (a_stream: POINTER) 
               -- flockfile
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "flockfile"
               }"
               end

	fmemopen (a_s: POINTER; a_len: like long_unsigned; a_modes: POINTER): POINTER 
               -- fmemopen
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "fmemopen"
               }"
               end

	fopen (a_filename: POINTER; a_modes: POINTER): POINTER 
               -- fopen
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "fopen"
               }"
               end

	fopen64 (a_filename: POINTER; a_modes: POINTER): POINTER 
               -- fopen64
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "fopen64"
               }"
               end

       -- function fopencookie (at line 314 in file /usr/include/stdio.h is not wrappable
	fputc (a_c: INTEGER; a_stream: POINTER): INTEGER 
               -- fputc
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "fputc"
               }"
               end

	fputs (a_s: POINTER; a_stream: POINTER): INTEGER 
               -- fputs
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "fputs"
               }"
               end

	fputs_unlocked (a_s: POINTER; a_stream: POINTER): INTEGER 
               -- fputs_unlocked
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "fputs_unlocked"
               }"
               end

	freopen (a_filename: POINTER; a_modes: POINTER; a_stream: POINTER): POINTER 
               -- freopen
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "freopen"
               }"
               end

	freopen64 (a_filename: POINTER; a_modes: POINTER; a_stream: POINTER): POINTER 
               -- freopen64
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "freopen64"
               }"
               end

	fscanf (a_stream: POINTER; a_format: POINTER): INTEGER 
               -- fscanf (variadic call) 
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "fscanf"
               }"
               end

	fseek (a_stream: POINTER; an_off: like long; a_whence: INTEGER): INTEGER 
               -- fseek
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "fseek"
               }"
               end

	fseeko (a_stream: POINTER; an_off: like long; a_whence: INTEGER): INTEGER 
               -- fseeko
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "fseeko"
               }"
               end

	fseeko64 (a_stream: POINTER; an_off: like long; a_whence: INTEGER): INTEGER 
               -- fseeko64
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "fseeko64"
               }"
               end

	fsetpos (a_stream: POINTER; a_pos: POINTER): INTEGER 
               -- fsetpos
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "fsetpos"
               }"
               end

	fsetpos64 (a_stream: POINTER; a_pos: POINTER): INTEGER 
               -- fsetpos64
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "fsetpos64"
               }"
               end

	ftell (a_stream: POINTER): like long 
               -- ftell
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "ftell"
               }"
               end

	ftello (a_stream: POINTER): like long 
               -- ftello
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "ftello"
               }"
               end

	ftello64 (a_stream: POINTER): like long 
               -- ftello64
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "ftello64"
               }"
               end

	ftrylockfile (a_stream: POINTER): INTEGER 
               -- ftrylockfile
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "ftrylockfile"
               }"
               end

	funlockfile (a_stream: POINTER) 
               -- funlockfile
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "funlockfile"
               }"
               end

	fwrite (a_ptr: POINTER; a_size: like long_unsigned; a_n: like long_unsigned; a_s: POINTER): like long_unsigned 
               -- fwrite
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "fwrite"
               }"
               end

	fwrite_unlocked (a_ptr: POINTER; a_size: like long_unsigned; a_n: like long_unsigned; a_stream: POINTER): like long_unsigned 
               -- fwrite_unlocked
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "fwrite_unlocked"
               }"
               end

	getc (a_stream: POINTER): INTEGER 
               -- getc
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "getc"
               }"
               end

	getdelim (a_lineptr: POINTER; a_n: POINTER; a_delimiter: INTEGER; a_stream: POINTER): like long 
               -- getdelim
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "getdelim"
               }"
               end

	-- `hidden' function __getdelim skipped.
	gets (a_s: POINTER): POINTER 
               -- gets
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "gets"
               }"
               end

	getw (a_stream: POINTER): INTEGER 
               -- getw
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "getw"
               }"
               end

	open_memstream (a_bufloc: POINTER; a_sizeloc: POINTER): POINTER 
               -- open_memstream
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "open_memstream"
               }"
               end

	pclose (a_stream: POINTER): INTEGER 
               -- pclose
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "pclose"
               }"
               end

	perror (a_s: POINTER) 
               -- perror
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "perror"
               }"
               end

	popen (a_command: POINTER; a_modes: POINTER): POINTER 
               -- popen
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "popen"
               }"
               end

	putc (a_c: INTEGER; a_stream: POINTER): INTEGER 
               -- putc
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "putc"
               }"
               end

	puts (a_s: POINTER): INTEGER 
               -- puts
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "puts"
               }"
               end

	putw (a_w: INTEGER; a_stream: POINTER): INTEGER 
               -- putw
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "putw"
               }"
               end

	remove (a_filename: POINTER): INTEGER 
               -- remove
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "remove"
               }"
               end

	rename_external (an_old: POINTER; a_new: POINTER): INTEGER 
               -- rename
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "rename"
               }"
               end

	renameat (an_oldfd: INTEGER; an_old: POINTER; a_newfd: INTEGER; a_new: POINTER): INTEGER 
               -- renameat
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "renameat"
               }"
               end

	rewind (a_stream: POINTER) 
               -- rewind
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "rewind"
               }"
               end

	scanf (a_format: POINTER): INTEGER 
               -- scanf (variadic call) 
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "scanf"
               }"
               end

	setbuf (a_stream: POINTER; a_buf: POINTER) 
               -- setbuf
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "setbuf"
               }"
               end

	setbuffer (a_stream: POINTER; a_buf: POINTER; a_size: like long_unsigned) 
               -- setbuffer
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "setbuffer"
               }"
               end

	setlinebuf (a_stream: POINTER) 
               -- setlinebuf
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "setlinebuf"
               }"
               end

	setvbuf (a_stream: POINTER; a_buf: POINTER; a_modes: INTEGER; a_n: like long_unsigned): INTEGER 
               -- setvbuf
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "setvbuf"
               }"
               end

	sscanf (a_s: POINTER; a_format: POINTER): INTEGER 
               -- sscanf (variadic call) 
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "sscanf"
               }"
               end

	stderr: POINTER
               -- stderr
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "stderr"
               }"
               end

       address_of_stderr: POINTER
               -- Address of stderr
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "&stderr"
               }"
               end

       set_stderr (a_value: POINTER)
               -- Set variable stderr value
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "set_stderr"
               }"
               end

	stdin: POINTER
               -- stdin
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "stdin"
               }"
               end

       address_of_stdin: POINTER
               -- Address of stdin
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "&stdin"
               }"
               end

       set_stdin (a_value: POINTER)
               -- Set variable stdin value
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "set_stdin"
               }"
               end

	stdout: POINTER
               -- stdout
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "stdout"
               }"
               end

       address_of_stdout: POINTER
               -- Address of stdout
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "&stdout"
               }"
               end

       set_stdout (a_value: POINTER)
               -- Set variable stdout value
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "set_stdout"
               }"
               end

	tempnam (a_dir: POINTER; a_pfx: POINTER): POINTER 
               -- tempnam
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "tempnam"
               }"
               end

	tmpfile: POINTER 
               -- tmpfile
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "tmpfile()"
               }"
               end

	tmpfile64: POINTER 
               -- tmpfile64
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "tmpfile64()"
               }"
               end

	tmpnam (a_s: POINTER): POINTER 
               -- tmpnam
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "tmpnam"
               }"
               end

	tmpnam_r (a_s: POINTER): POINTER 
               -- tmpnam_r
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "tmpnam_r"
               }"
               end

	ungetc (a_c: INTEGER; a_stream: POINTER): INTEGER 
               -- ungetc
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "ungetc"
               }"
               end

	vfscanf (a_s: POINTER; a_format: POINTER; an_arg: POINTER): INTEGER 
               -- vfscanf
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "vfscanf"
               }"
               end

	vscanf (a_format: POINTER; an_arg: POINTER): INTEGER 
               -- vscanf
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "vscanf"
               }"
               end

	vsscanf (a_s: POINTER; a_format: POINTER; an_arg: POINTER): INTEGER 
               -- vsscanf
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "vsscanf"
               }"
               end


end -- class STDIO_EXTERNALS
