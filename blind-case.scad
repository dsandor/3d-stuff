/*
nodemcu long/wide 48.5mm
        sort side 25.75mm
        board thickness 1.66

*/

max_board_width = 50;
board_thickness = 2;
wall_thickness = 2;
l = max_board_width + (wall_thickness * 2);
//w = 12;
w = (board_thickness * 2) + (wall_thickness * 2);
h = 6;

module draw_slot(number, draw_wire_notch) {
  translate([0,w * number,0])
  difference() {
    cube([l, w, h], center = true);
    color("pink") translate([0, 0, 1.5]) cube([max_board_width, 1.66, 3], center = true);
    if (draw_wire_notch) color("red") translate([-((max_board_width - 14)/2), 1.5, 1.5]) cube([10, 2, 3], center=true);
  }
}

draw_slot(0, true);
draw_slot(1, true);
draw_slot(2);
