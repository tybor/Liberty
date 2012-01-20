class BAR
creation default_create, make
feature 
	make (an_a, a_b, a_c: CHARACTER) is
		-- 
	do
		a:=an_a; b:=a_b; c:=a_c
	end

	set_bar (a_bar: like bar) is do bar:=a_bar end
	a,b,c: CHARACTER
	bar: BAR
end
