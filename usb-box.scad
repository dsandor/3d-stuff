echo(version=version());

color("red")
    difference() {
        linear_extrude(height = 10, center = true)
                difference() {
                    square([125, 86], center = true);
                    square([119, 80], center = true);
                }
        translate([0,42,-0.5]) linear_extrude(height = (10 - 1.75)) square([119, 4], center = true);
    }

            
color("blue")
    translate([0,0,-5]) {
        linear_extrude(height = 1.75)
            difference() {
                square([125, 86], center = true);
            }
        }


    color("magenta") translate([(61 - 5.5 - 3), (41 - 3.5 - 3), 0]) cylinder( h = 8, r = 1.5, center = true );
    color("SteelBlue") translate([(-61 + 5.5 + 3), (41 - 3.5 - 3), 0]) cylinder( h = 8, r = 1.5, center = true );
    color("OrangeRed") translate([(61 - 5.5 - 3), -(41 - 3.5 - 3), 0]) cylinder( h = 8, r = 1.5, center = true );
    color("green") translate([-(61 - 5.5 - 3), -(41 - 3.5 - 3), 0]) cylinder( h = 8, r = 1.5, center = true );


    color("black") translate([(61 - 5.5 - 3), (41 - 3.5 - 3), -3]) cylinder( h = 1.5, r = 3.5, center = true );
    color("black") translate([(-61 + 5.5 + 3), (41 - 3.5 - 3), -3]) cylinder( h = 1.5, r = 3.5, center = true );
    color("black") translate([(61 - 5.5 - 3), -(41 - 3.5 - 3), -3]) cylinder( h = 1.5, r = 3.5, center = true );
    color("black") translate([-(61 - 5.5 - 3), -(41 - 3.5 - 3), -3]) cylinder( h = 1.5, r = 3.5, center = true );
