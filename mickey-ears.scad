ear_radius = 50;
ear_height = 3;
cutout_radius = ear_radius + 22;
$fn = 100;

difference() {
	color("darkgray") cylinder(h = ear_height, r = ear_radius);
	color("pink") translate([ear_radius + 22, ear_radius, -.5]) cylinder(h = ear_height + 1, r = cutout_radius - 10);
}