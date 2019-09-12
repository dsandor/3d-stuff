nut_height = 6;
include <tripod-nut.scad>;
include <pizero-module.scad>;

box_wall_thickness = 2.5;
cube_height = 55/2;
cube_short_length = 42;
cube_long_length = 74;

difference() {

	color("LightBlue") translate([0,0,cube_height/2 ]) cube([cube_short_length,cube_long_length,cube_height], center = true);
	color("LightGreen") translate([0,0,cube_height/2 + ( box_wall_thickness)]) cube([cube_short_length-(2 * box_wall_thickness),cube_long_length-(2 * box_wall_thickness),cube_height-(1 * box_wall_thickness)], center = true);
	color("magenta") cylinder( h = nut_height + box_wall_thickness + 4, r = (6.35/2) - 0.2, $fn = 100);
	color("black") rotate(a=[90,0,90]) translate([35.45 /2,16.5,0]) cylinder( h = box_wall_thickness + 20, r = (2.3/2), $fn = 100);
	color("black") rotate(a=[90,0,90]) translate([-(35.45 /2),16.5,0]) cylinder( h = box_wall_thickness + 20, r = (2.3/2), $fn = 100);
	color("pink") translate([6,-(10.35/2),10-6.2]) cube([20,10.35,5.2]); // cube( [ 8, 10.35, 5.2 ]);

	// holes for mount (pi)
	color("magenta") translate([11.7,27.76,0]) cylinder( h = nut_height + box_wall_thickness + 8, r = 1.4, $fn = 100);
	color("blue") translate([-11.4,27.76,0]) cylinder( h = nut_height + box_wall_thickness + 8, r = 1.4, $fn = 100);
	color("Green") translate([-11.3,-30.2,0]) cylinder( h = nut_height + box_wall_thickness + 8, r = 1.4, $fn = 100);
	color("yellow") translate([11.65,-30.2,0]) cylinder( h = nut_height + box_wall_thickness + 8, r = 1.4, $fn = 100);

	color("orange") translate([6,-(10.35/2),10-6.2]) cube([20,10.35,5.2]); // cube( [ 8, 10.35, 5.2 ]);

	// cutout for SD card
	color("yellow") translate([-7.95,-42.2,6 /* vertical on wall*/]) cube([16, 10, 6]);

	// micro usb / power hole
	color("black") translate([13, 14, 6]) cube([12,12, 6.5]);

}

difference() {
	color("pink") rotate(a=[0,0,90]) translate([-34,-15.5,4]) base();	
	color("orange") translate([6,-(10.35/2),10-6.2]) cube([20,10.35,5.2]); // cube( [ 8, 10.35, 5.2 ]);

}


