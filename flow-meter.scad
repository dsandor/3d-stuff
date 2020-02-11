wall_thickness = 2;
display_width = 66.24;
display_height = 27.44;
disp_cutout_width = 50.32;
disp_cutout_height = 19.2;
box_height = 18;

what_to_render = "box"; // box or lid

if (what_to_render == "box") {
  difference() {

    // outer cube
    cube([display_width + (2 * wall_thickness), display_height + (2 * wall_thickness), box_height + (2 * wall_thickness)], center = true);

    // inner cube volume
    translate([0, 0, wall_thickness]) cube([display_width, display_height, box_height + 0.1], center = true);
    
    // display cutout
    color("red") translate([1.4, 0, -(box_height/2)]) cube([disp_cutout_width, disp_cutout_height, box_height + 1], center = true);
  }
}

