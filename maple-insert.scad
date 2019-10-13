/*
difference() {
  color("red") scale([1.7,1.1]) cylinder(r = 40, h=3);
  translate([0,0, 2]) maple();
}
*/

maple();

module maple() {
  translate([-5, -5, 0]) import("./maple.stl");
  translate([-.5, 28.9, 0]) color("blue") cylinder(r=3, h=2, $fn=100);
}