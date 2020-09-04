/*
nodemcu long/wide 48.5mm
        sort side 25.75mm
        board thickness 1.66

*/

max_board_width = 81.25;
board_thickness = 2;
wall_thickness = 2;
l = max_board_width + (wall_thickness * 2);
//w = 12;
w = 32.4;
h = (board_thickness * 2) + 15 + (wall_thickness * 2);
walls = (2 * wall_thickness);

module case() {
	difference() {
		cube([w, l, h], center=true);
		translate([0, 0, wall_thickness]) cube([(w + .1) - (wall_thickness * 2), (l + .1)  - (wall_thickness * 2), h], center=true);
		// 6.75 x 70.5  from top edge 4.75
		color("red") translate([-8, 0, 0]) cube([6.75, 70.6, 28.1], center=true);
		translate([0, 44, 11]) rotate([90,0,0]) cylinder(r = 4, h = 8, $fn=100);
		translate([25,0,1]) rotate([34,180,90]) oledShroudSolid();
	}

	translate([25,0,1]) rotate([34,180,90]) oledShroud();
}

module lid() {
	cube([w, l, 2], center=true);
	translate([-0.5 * w + wall_thickness, -0.50 * l + wall_thickness, 0]) cube([w - (wall_thickness * 2), l - (wall_thickness * 2), 4]);
}

module oledShroud() {
	/*
	w: 29.2
	h: 28.0

	thick: 4.3 (components on back + board + oled display) |---| 
	*/
	

	difference() {
		cube([29.2 + walls, 28.0 + walls, 4.3 + walls], center= true);
		translate([0, 0, wall_thickness]) cube([29.2, 28.0, 4.3 + walls], center=true);
		translate([0, (29.2) / 2, 0]) cube([14, 4, 4.3 + walls], center=true);
	}
}

module oledShroudSolid() {
		cube([29.2 + walls, 28.0 + walls, 4.3 + walls], center= true);
}
// oledShroud();
case();
// lid();