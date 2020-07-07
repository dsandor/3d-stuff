/*
nodemcu long/wide 48.5mm
        sort side 25.75mm
        board thickness 1.66

*/

max_board_width = 48.5;
board_thickness = 1.66;
wall_thickness = 2;
l = max_board_width + (wall_thickness * 2);
w = 12;
h = 6;

difference() {
  cube([l, w, h], center = true);
  color("pink") translate([0, 0, 1.5]) cube([max_board_width, 1.66, 3], center = true);
  color("red") translate([-((max_board_width - 14)/2), 1.5, 1.5]) cube([10, 2, 3], center=true);
}

