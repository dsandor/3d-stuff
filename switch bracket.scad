$fn = 100;
hole_diameter = 3.8;
height = 41.2;
width = 32;
vert_hole_space = 28.34;
horiz_hole_space = 15.7;
wall_thickness = 3;

draft = 1;

difference() {
  color("lightblue") cube([height, height, width]);
  
  if (draft) {
    color("lightblue") translate([-0.1,wall_thickness,-1]) cube([height+2, height+2, width+2]);
  } else {
    color("lightblue") translate([wall_thickness,wall_thickness,-1]) cube([height+2, height+2, width+2]);
  }

  four_holes();
  two_holes();
}

if (draft) {
  translate([0, 0, 15]) cube([4,3.3,3]);
}

module four_holes() {
  // Top right            [up/dn, left/rt, ..]
  rotate([90,0,0]) translate([10.58,8.08 + 5,-1 * (wall_thickness + 1)]) cylinder(h = wall_thickness+2, d = hole_diameter);
  // bottom right
  rotate([90,0,0]) translate([7.58 + 19.25,8.08 + 5,-1 * (wall_thickness + 1)]) cylinder(h = wall_thickness+2, d = hole_diameter);
  // bottom left
  rotate([90,0,0]) translate([7.58 + 19.25,7.58 + 15.2,-1 * (wall_thickness + 1)]) cylinder(h = wall_thickness+2, d = hole_diameter);
  // top left
  rotate([90,0,0]) translate([10.58,7.58 + 15.2,-1 * (wall_thickness + 1)]) cylinder(h = wall_thickness+2, d = hole_diameter);
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