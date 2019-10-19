import ("./libraries/rounded-corners.scad");


caseInnerWidth = 70.6;
caseInnerLength = 50.5;
caseThickness = 2;
caseHeight = 27;

difference() {
	cube([caseInnerWidth + (2 * caseThickness), caseInnerLength + (2 * caseThickness), caseHeight + (2 * caseThickness)]);
	
	translate([caseThickness, caseThickness, caseThickness]) cube([caseInnerWidth, caseInnerLength, caseHeight + caseThickness + .01]);

	// hole in side of case for USB to feather board
	translate([(caseInnerWidth) + caseThickness - 4, (caseInnerLength / 2) - (caseThickness * 2), caseThickness]) color("SlateBlue") cube([8, 12, 8]);

	// cutout for sensor
	translate([caseInnerWidth/2 - (26.1 / 2) + caseThickness, caseInnerLength + caseThickness + 4.8, caseThickness]) rotate([90, 0, 0]) distSensorBB(renderBoard = false);
}

// mounts for feather board
translate([(caseInnerWidth) + caseThickness - (50.9), (caseInnerLength/2) + caseThickness - (22.9/2)]) featherBoard();

// screw mounts for lid
color("DeepPink") lidMount();

// add in mounts for sensor	
translate([caseInnerWidth/2 - (26.1 / 2) + caseThickness, caseInnerLength + caseThickness + 4.8, caseThickness]) rotate([90, 0, 0]) distSensorBB(renderBoard = false, renderSensorCutoutBox = false);

module lidMount() {
	// origin
	translate([caseThickness - (1.7/2), caseThickness - (1.7/2), (caseHeight - 1 - caseThickness)]) screwMount(screwMountHeight = 5);

	// bottom right
	translate([- (1.7/2) + caseInnerWidth, caseThickness - (1.7/2), (caseHeight - 1 - caseThickness)]) screwMount(screwMountHeight = 5);

	// origin
	translate([caseThickness - (1.7/2), - (1.7/2) + caseInnerLength, (caseHeight - 1 - caseThickness)]) screwMount(screwMountHeight = 5);

	// origin
	translate([- (1.7/2) + caseInnerWidth, - (1.7/2) + caseInnerLength, (caseHeight - 1 - caseThickness)]) screwMount(screwMountHeight = 5);
}

module featherBoard(boardThickness = 2, screwMountHeight = 2.5) {
	shortSide = 22.9;
	longSide = 50.9;
	screwMountRadius = 1.7;
	screwHoleRadius = 0.5;
	//screwMountHeight = 2.5;
	//boardThickness = 2;

	color("black") cube([longSide, shortSide, boardThickness]);

	// closest to origin corner.
	// bottom left
	translate([screwMountRadius * 0.5, (screwMountRadius * .5), 0]) screwMount(screwMountHeight = 2.5 + 2);
		// top left
	translate([(screwMountRadius * .5), shortSide - (screwMountRadius * 2.5), 0]) screwMount(screwMountHeight = 2.5 + 2);

	// top right
	translate([longSide - (screwMountRadius * 2.5), shortSide - (screwMountRadius * 2.5), 0]) screwMount(screwMountHeight = 2.5 + 2);

	// bottom right
	translate([longSide - (screwMountRadius * 2.5), (screwMountRadius * .5), 0]) screwMount(screwMountHeight = 2.5 + 2);
}

module screwMount(screwMountRadius = 1.7, screwMountHeight = 2.5, screwHoleRadius = 0.5) {
	difference() {
		color("white") translate([screwMountRadius, screwMountRadius, 0]) cylinder(r=screwMountRadius, h=(screwMountHeight), $fn=100);
		color("green") translate([screwMountRadius, screwMountRadius, 0]) cylinder(r=screwHoleRadius, h=(screwMountHeight) + 0.2, $fn=100);
	}
}

/* 
	the VL53 lidar.
	Thickness includes the qwiic connector mount heights.
*/
module distSensorBB(boardX = 26.1, boardY = 26.1, boardThickness = 4.8, renderBoard = true, renderSensorCutoutBox = true) {
	mountRadius = 2.54;
	mountHeight = 3.6;

	if (renderBoard) {
		color("LightSteelBlue") cube([boardX, boardY, boardThickness]);
	}

	if (renderSensorCutoutBox) {
		translate([boardX/2, boardY/2, 0]) cube([7, 4, 8]);
	}

	//translate([0, 0, boardThickness]) screwMount(screwMountRadius = 2.54);
	//translate([boardX - (2.54 * 2), 0, boardThickness]) screwMount(screwMountRadius = 2.54);
	translate([boardX - (mountRadius * 2), boardY - (mountRadius * 2), boardThickness]) screwMount(screwMountRadius = mountRadius, screwMountHeight = mountHeight);
	translate([0, boardY - (mountRadius * 2), boardThickness]) screwMount(screwMountRadius = mountRadius, screwMountHeight = mountHeight);
}