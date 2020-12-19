module cover() {
  cylinder(h=10, d=51, center=true, $fn=200);
  translate([0,0,5]) cylinder(h=2, d=59, center=true, $fn=200);
}

module slot() {
  translate([15, 0, 0]) {
    cube([30, 3, 20], center=true);
    
  }
  cylinder(h=12, d=8, center=true, $fn=100);
}

difference() {
  cover();
  slot();
}