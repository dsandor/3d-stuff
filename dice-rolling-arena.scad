wall_height = 50.8;
wall_thickness = 6.35;
arena_radius = (152.4 / 2);

difference() {
    
    color("green") cylinder(h = wall_height, r = arena_radius + wall_thickness, $fn = 100);

    color("blue") translate([0,0, wall_thickness]) cylinder(h = wall_height, r = arena_radius, $fn = 100);
}