use <dot/rounded_cube.scad>
use <dot/hollow_out.scad>
use <dot/rounded_square.scad>
$fn=80;

union() {
    difference() {
        // outside
        rounded_cube([126, 50, 5], 0.8);
        // hollow the cube out
        translate([-1,-1,2]) {
            cube([128,52,4]);
        };
        translate([22, 15, -1]) {
            rounded_cube([26, 20, 5], 0.8);
        }
        translate([65, 15, -1]) {
            rounded_cube([12, 20, 5], 0.8);
        }
        translate([65, 3, -1]) {
            rounded_cube([14.5, 10, 5], 0.2);
        }
        translate([106, 12, -1]) {
            rounded_cube([13, 23, 5], 0.8);
        }
    };

    translate([3,3,2]) {
        cube([2, 44, 1.5 ]);
    };
    translate([121,3,2]) {
        cube([2, 44, 2]);
    };
    difference() {
        translate([60,4,2]) {
            cube([2, 44, 2]);
        };
        translate([60,9,2]) {
            cube([2,34, 2]);
        };
    };
};
