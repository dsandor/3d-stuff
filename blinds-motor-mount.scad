difference() {
  cube([36,47, 22], center=true);
  // translate([0,0,0]) cylinder(r=14.1, h=19, $fn=100, center=true);
  color("blue") translate([0,0,3]) cylinder(r=14.1, h=25, $fn=100, center=true);
  color("red") translate([5.7,0,6]) cube([17,18,30.5], center=true);
  color("black") translate([10,0,6]) cube([17,15,30.5], center=true);
  
  color("purple") translate([0,17.4,10]) cylinder(r=3.35, h=2, $fn=100);
  color("orange") translate([0,14.05,11]) cube([6.7,6.7,2], center=true);
  
  color("purple") translate([0,-17.4,10]) cylinder(r=3.35, h=2, $fn=100);
  color("orange") translate([0,-14.05,11]) cube([6.7,6.7,2], center=true);

  color("green") translate([0,-17.4,6]) cylinder(r=1.5, h=5, $fn=100);
  color("green") translate([0,17.4,6]) cylinder(r=1.5, h=5, $fn=100);

}

// color("purple") translate([0,17.4,10]) cylinder(r=3.35, h=1, $fn=100);
// color("orange") translate([0,14.05,10]) cube([6.7,6.7,2], center=true);

