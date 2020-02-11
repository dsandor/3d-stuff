
baseAndRackNotch();
railCap();

module railCap() {
	color("LightBlue") difference() {
		cylinder( h = 30, r = (31.2 / 2), center = true, $fn = 150 );
		cylinder( h = 31, r = (25.2 / 2), center = true, $fn = 150 );
		translate([0,-(32.75/2),2]) rotate([00,90,90]) color("LightGreen") cylinder ( h = 8, r = 2.75, $fn = 100 );
	}
}

module baseAndRackNotch() {
	difference() {
		translate([-31.2/2, -31.2/2, -21]) cube([31.2, 31.2, 9.5]);
		color("gray") translate([15.5, 8.5, -21]) rotate([0, 0, 45]) cube([10,10,10]);
		color("gray") translate([-15.5, 8.5, -21]) rotate([0, 0, 45]) cube([10,10,10]);
		color("gray") translate([-14, -23, -21]) rotate([0, 0, 45]) cube([10,13,10]);
		color("gray") translate([17.8, -25, -21]) rotate([0, 0, 45]) cube([10,13,10]);
	}

	color("magenta") translate([31.2/2, -(31.2/4), -21]) cube([20, 15.70, 9.5]);	
}