include <./MCAD/shapes.scad>;

inch = 25.4;

wall_height = 1 * inch;
wall_thickness = 1/4 * inch;
arena_radius = (4.5 * inch) / 2;
arena_diameter = arena_radius * 2;
center = true;
draw_box = false;
draw_inlay = true;

difference() {

    if (draw_box) {    
      color("lightblue") hexagon( arena_diameter, wall_height );
      color("darkblue") translate([0, 0, wall_thickness]) hexagon( arena_diameter - wall_thickness, wall_height + wall_thickness );
    }

    if (draw_inlay) {
      color("pink") hexagon( (arena_diameter - wall_thickness) - 0.25, wall_thickness / 2 );
    }
}