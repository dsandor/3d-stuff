echo(version=version());

color("LightBlue") difference() {
	cylinder( h = 30, r = (31.2 / 2), center = true, $fn = 100 );
	cylinder( h = 31, r = (25.2 / 2), center = true, $fn = 100 );
	translate([0,-(32.75/2),2]) rotate([00,90,90]) color("LightGreen") cylinder ( h = 8, r = 2.75, $fn = 50 );
}

color("Pink") difference() {
	translate([0,0,-15]) cylinder ( h = 6, r = 30, center = true, $fn = 100 );

	translate([22,0,-18]) color("LightGreen") cylinder ( h = 8, r = 2.75, $fn = 50 );
	translate([-22,0,-18]) color("LightGreen") cylinder ( h = 8, r = 2.75, $fn = 50 );
	translate([0,22,-18]) color("LightGreen") cylinder ( h = 8, r = 2.75, $fn = 50 );
	translate([0,-22,-18]) color("LightGreen") cylinder ( h = 8, r = 2.75, $fn = 50 );
}
