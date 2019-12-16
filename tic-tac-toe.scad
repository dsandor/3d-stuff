
cellx = 30;
celly = 30;
cell_space = 2;
height = cell_space + 5;

boardx = (3 * cellx) + (4 * cell_space);
boardy = (3 * celly) + (4 * cell_space);

difference() {
  cube([boardx, boardy, height], false);

  for(y = [1:3]) {
    for(x = [1:3]) {
      color("blue") translate([(cellx * (x -1)) + (cell_space * x), (celly * (y -1)) + (cell_space * y), cell_space]) cube([cellx, celly, height]);

    }
  }
}

difference() {
  color("pink") translate([-1 * (cell_space + cellx), 0, 0]) cube([cellx + cell_space, boardy, height]);
  color("red") translate([-1 * (cellx), cell_space, cell_space]) cube([cellx, boardy - (2 * cell_space), height]);
}


difference() {
  color("lightgreen") translate([boardx, 0, 0]) cube([cellx + cell_space, boardy, height]);
  color("red") translate([boardx, cell_space, cell_space]) cube([cellx, boardy - (2 * cell_space), height]);
}