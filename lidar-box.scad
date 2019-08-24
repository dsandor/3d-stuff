nut_height = 6;
include <tripod-nut.scad>;

box_wall_thickness = 2.5;

difference() {
	color("LightBlue") translate([0,0,55/2 + (nut_height - 3)]) cube([40,70,55], center = true);
	color("LightGreen") translate([0,0,55/2 + (nut_height - 3 + (2 * box_wall_thickness))]) cube([40-(2 * box_wall_thickness),70-(2 * box_wall_thickness),55-(2 * box_wall_thickness)], center = true);
	color("magenta") cylinder( h= nut_height + box_wall_thickness + 4, r = (6.35/2) - 0.2, $fn = 100);
}