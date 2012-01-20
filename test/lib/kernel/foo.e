class FOO
creation default_create, make
feature 
	make (an_x: INTEGER; a_z: INTEGER_32; an_i: INTEGER_8) is
		-- creation
	do
		x:=an_x; z:=a_z; i:=an_i
	end

	set_next (a_next: like next) is do next:=a_next end
	set_bar (a_bar: like bar) is do bar:=a_bar end
	x,y: INTEGER
	z: INTEGER_32
	i: INTEGER_8
	j: INTEGER_16


	next: FOO
	bar: BAR
end
