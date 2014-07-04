class BODY

create {ANY}
	jupiter, saturn, uranus, neptune, sun

feature {ANY}
	pi: REAL 3.141592653589793

	solar_mass: REAL
		once
			Result := 4 * pi * pi
		end

	days_per_year: REAL 365.24

	x: REAL

	y: REAL

	z: REAL

	vx: REAL

	vy: REAL

	vz: REAL

	mass: REAL

	set_x (a: REAL)
		do
			x := a
		end

	set_y (a: REAL)
		do
			y := a
		end

	set_z (a: REAL)
		do
			z := a
		end

	set_vx (a: REAL)
		do
			vx := a
		end

	set_vy (a: REAL)
		do
			vy := a
		end

	set_vz (a: REAL)
		do
			vz := a
		end

	jupiter
		do
			x := 4.84143144246472090e+00
			y := -1.16032004402742839e+00
			z := -1.03622044471123109e-01
			vx := 1.66007664274403694e-03 * days_per_year
			vy := 7.69901118419740425e-03 * days_per_year
			vz := -6.90460016972063023e-05 * days_per_year
			mass := 9.54791938424326609e-04 * solar_mass
		end

	saturn
		do
			x := 8.34336671824457987e+00
			y := 4.12479856412430479e+00
			z := -4.03523417114321381e-01
			vx := -2.76742510726862411e-03 * days_per_year
			vy := 4.99852801234917238e-03 * days_per_year
			vz := 2.30417297573763929e-05 * days_per_year
			mass := 2.85885980666130812e-04 * solar_mass
		end

	uranus
		do
			x := 1.28943695621391310e+01
			y := -1.51111514016986312e+01
			z := -2.23307578892655734e-01
			vx := 2.96460137564761618e-03 * days_per_year
			vy := 2.37847173959480950e-03 * days_per_year
			vz := -2.96589568540237556e-05 * days_per_year
			mass := 4.36624404335156298e-05 * solar_mass
		end

	neptune
		do
			x := 1.53796971148509165e+01
			y := -2.59193146099879641e+01
			z := 1.79258772950371181e-01
			vx := 2.68067772490389322e-03 * days_per_year
			vy := 1.62824170038242295e-03 * days_per_year
			vz := -9.51592254519715870e-05 * days_per_year
			mass := 5.15138902046611451e-05 * solar_mass
		end

	sun
		do
			mass := solar_mass
		end

	offset_momentum (px: REAL; py: REAL; pz: REAL)
		do
			vx := -px / solar_mass
			vy := -py / solar_mass
			vz := -pz / solar_mass
		end

end -- class BODY
