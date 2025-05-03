use <dot/rounded_cube.scad>
use <dot/hollow_out.scad>
use <dot/rounded_square.scad>
$fn=80;
difference() {
    // outside
    rounded_cube([138, 50, 34], 0.5);
    // hollow the cube out
    translate([1.5,1.5,1.5]) {
        cube([135,47,33]);
    };
    // hole for thingy
    translate([67,28-6,0]) {
        linear_extrude(4) {
            rounded_square([7,14], 0.5);
        };
    };
        
    // lop off a couple of mm for lid
    translate([0,0,33.4]) {
        cube([140,52,2]);
    };
    // add zero3 mount holes
    hole=1.75;
    rotate([90,90,0]) {
        translate([-28, 7, -50]) {
            cylinder(6, r=hole);
            translate([0, 58, 0]) {
                cylinder(6, r=hole);
            };
            translate([23, 0, 0]) {
                cylinder(6, r=hole);
                translate([0, 58, 0]) {
                    cylinder(6, r=hole);
                }
            };
        };
    };
    // slots
    // top
    rotate([0,0,90]) {
        for (i = [29:-10:0]) {
            translate([i+15,-2,22]) {
                rotate([0, 90 ,90]) {
                    linear_extrude(4) {
                        rounded_square([16,7], 0.5);
                    }
                };
            };
        };
    };
    // base
    rotate([0,0,90]) {
        for (i = [29:-5:0]) {
            translate([i+15,-140,25]) {
                rotate([0, 90 ,90]) {
                    linear_extrude(10) {
                        rounded_square([12,3], 0.5);
                    }
                };
            };
        };
    };
    // behind sensor
    for (i = [29:-5:0]) {
        translate([i+100,48,25]) {
            rotate([0, 90 ,90]) {
                linear_extrude(3) {
                    rounded_square([12,3], 0.5);
                }
            };
        };
    };
    // sensor cutouts
    translate([130,3,1.2]) {
    rotate([0, -90, 90]) {
        translate([11.6, 18, 0]) {
            linear_extrude(5) {
                circle(d=20.5);
            };
        };
        translate([2, 1.9, 0]) {
            linear_extrude(5) {
                rounded_square([22,1.5], 0.25);
            };
        };
        translate([1.9, 38.75, 0]) {
            linear_extrude(5) {
                rounded_square([16.2,9.85], 0.25);
            };
        };
    };
    };
};