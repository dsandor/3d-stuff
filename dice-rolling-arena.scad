include <./MCAD/shapes.scad>;

inch = 25.4;

wall_height = 2 * inch;
wall_thickness = 1/4 * inch;
arena_radius = (4.5 * inch) / 2;
arena_diameter = arena_radius * 2;
center = true;

difference() {
    
    color("lightblue") hexagon( arena_diameter, wall_height );
    color("darkblue") translate([0, 0, wall_thickness]) hexagon( arena_diameter - wall_thickness, wall_height + wall_thickness );
}