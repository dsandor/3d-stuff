$fn = 100;
hole_diameter = 3.8;
height = 41.2;
width = 32;
vert_hole_space = 28.34;
horiz_hole_space = 15.7;
wall_thickness = 3;

difference() {
  color("lightblue") cube([height, height, width]);
  color("lightblue") translate([wall_thickness,wall_thickness,-1]) cube([height+2, height+2, width+2]);

  four_holes();
  two_holes();
}

module four_holes() {
    // Holes
  rotate([90,0,0]) translate([7.58,7.58,-1 * (wall_thickness + 1)]) cylinder(h = wall_thickness+2, d = hole_diameter);
  rotate([90,0,0]) translate([7.58 + 28.34,7.58,-1 * (wall_thickness + 1)]) cylinder(h = wall_thickness+2, d = hole_diameter);
  rotate([90,0,0]) translate([7.58 + 28.34,7.58 + 15.7,-1 * (wall_thickness + 1)]) cylinder(h = wall_thickness+2, d = hole_diameter);
  rotate([90,0,0]) translate([7.58,7.58 + 15.7,-1 * (wall_thickness + 1)]) cylinder(h = wall_thickness+2, d = hole_diameter);
}

module two_holes() {
  rotate([90,0,90]) translate([18,width/2,-1 * (1 )]) cylinder(h = wall_thickness+2, d = hole_diameter);
  rotate([90,0,90]) translate([32,width/2,-1 * (1 )]) cylinder(h = wall_thickness+2, d = hole_diameter);
}

/*
  // Holes
  rotate([90,0,0]) translate([7.58,7.58,-1 * (wall_thickness + 1)]) cylinder(h = wall_thickness+2, d = hole_diameter);
  rotate([90,0,0]) translate([7.58 + 28.34,7.58,-1 * (wall_thickness + 1)]) cylinder(h = wall_thickness+2, d = hole_diameter);
  rotate([90,0,0]) translate([7.58 + 28.34,7.58 + 15.7,-1 * (wall_thickness + 1)]) cylinder(h = wall_thickness+2, d = hole_diameter);
  rotate([90,0,0]) translate([7.58,7.58 + 15.7,-1 * (wall_thickness + 1)]) cylinder(h = wall_thickness+2, d = hole_diameter);
*/