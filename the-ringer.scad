include <libraries/arduino/arduino.scad>
include <tripod-nut-manual.scad>;

led_sign_w = 30.5;
led_sign_h = 14.1;
renderBox = 0;
renderLedHoles = 0;
renderLid = 1;


if (renderLid) {
	enclosureLid();
}

if (renderLedHoles) {
	led_holes_z_spacing = 20;
	led_holes_x_spacing = 38.25;


	color("blue") rotate([90,90,0]) translate([-20, 8 /* x */, -72.1 /* y */]) standoff(height = 4);
	color("red") rotate([90,90,0]) translate([-20 - led_holes_z_spacing, 8 /* x */, -72.1 /* y */]) standoff(height = 4);

	color("cyan") rotate([90,90,0]) translate([-20 - led_holes_z_spacing, 8 + led_holes_x_spacing /* x */, -72.1 /* y */]) standoff(height = 4);
	color("pink") rotate([90,90,0]) translate([-20, 8 + led_holes_x_spacing /* x */, -72.1 /* y */]) standoff(height = 4);
}

if (renderBox) {
	translate([55/2, 70/2]) bustNut();

	difference() {
		enclosure(heightExtension = 20);
		translate([55/2, 70/2])	cylinder(h = 3.1, r = 2.5, $fn = 100);
		color("pink") translate([23/2, 70, 21.1]) cube([led_sign_w, 5, led_sign_h]);
		
		// LiDAR Holes
		color("black") rotate(a=[90,0,90]) translate([35.45 /2 + 34,24,55]) cylinder( h = 10, r = (2.3/2), $fn = 100);
		color("black") rotate(a=[90,0,90]) translate([-(35.45 /2) + 34,24,55]) cylinder( h = 10, r = (2.3/2), $fn = 100);
		color("black") translate([55,29,12]) cube([10,10.35,5.2]);

	}
}
