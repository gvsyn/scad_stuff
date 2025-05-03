use <dot/rounded_cube.scad>
use <dot/hollow_out.scad>
use <dot/rounded_square.scad>
$fn=80;
union() {
    difference() {
        // outside
        rounded_cube([138, 50, 29], 1);
        // hollow the cube out
        translate([0,0,1.5]) {
            cube([138,50,33]);
        };
    translate([69, 16, 0]) {
    rotate([0,0,90]) {
        translate([0, 6, 0]) {
            linear_extrude(5) {
                rounded_square([16, 26], 1);
            };
        };
        translate([0, 48, 0]) {
            linear_extrude(5) {
                rounded_square([16, 12], 1);
            };
        };
    };
    };
    };
    translate([1.58, 1.5, 0.5]) {
        cube([3, 47, 3]);
    };
    translate([69, 1.5, 0.5]) {
        cube([3, 47, 3]);
    };
    translate([133, 1.5, 0.5]) {
        cube([3, 47, 3]);
    };

};