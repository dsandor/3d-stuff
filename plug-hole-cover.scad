module cover() {
  cylinder(h=10, d=51, center=true, $fn=200);
  translate([0,0,5]) cylinder(h=2, d=59, center=true, $fn=200);
}

cover();