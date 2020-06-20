height = 46;
width = 30;
thickness = 4;

// cube [x,y,z]
difference() {
  color("blue") cube([(height * 2) + (thickness * 1), width, height + thickness]);
  color("green") cube([height, width + 1, height]);
  translate([height + thickness, 0, thickness]) color("green") cube([height, width + 1, height]);
  
  // holes
  translate([height / 4, width / 2, height]) cylinder(h = thickness, d = 5, $fn = 100);
  translate([(height / 4) * 3, width / 2, height]) cylinder(h = thickness, d = 5, $fn = 100);
}


