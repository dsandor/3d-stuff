difference() {
  color("blue") cube( [ 32.88, 15.10, 6 ], center = true);
  color("orange") translate([0,0,2]) cube( [ 32.88 - 3, 15.10 - 3, 7 ], center = true);

  color("pink") rotate([45, 0, 0]) translate([-10.11/2, 4, -6]) cube([ 10.11, 5, 5]);
}

// color("yellow") translate([(32.88/2) + 1.91, 0, 0]) cylinder( h = 6, r = 4.25, center = true, $fn = 100 );

difference() {
  color("yellow") translate([(32.88/2) + 1.91, 0, 0]) cylinder( h = 6, r = 4.25, center = true, $fn = 100 );
  color("black") translate([(32.88/2) + 1.91, 0, 0]) cylinder( h = 8, r = 2.33/2, center = true, $fn = 100 );
}


difference() {
  color("green") translate([-(32.88/2) - 1.91, 0, 0]) cylinder( h = 6, r = 4.25, center = true, $fn = 100 );
  color("black") translate([-(32.88/2) - 1.91, 0, 0]) cylinder( h = 8, r = 2.33/2, center = true, $fn = 100 );
}

// cylinder(h = height, r1 = BottomRadius, r2 = TopRadius, center = true/false);
