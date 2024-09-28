include <BOSL/constants.scad>
use <BOSL/beziers.scad>
use <BOSL/paths.scad>
use <dot/bijection_offset.scad>
use <dot/rounded_square.scad>

$fn=80;

intersection() {
    union() {
        translate([16, 15, 0]){
            cylinder(h=20, r=43, $fn=160);
        };
        cube([26,50,30]);
    };
union() {

    difference() {
        cube([28, 62, 12]);
        translate([4.4, 16, -.01]) {
            linear_extrude(13) {
                rounded_square([8.5, 34.8], 0.5);
            };
        };
        translate([16.5, 16.4, 11.6]) {
            linear_extrude(0.5) {
                rounded_square([8.9, 22.8], 0.5);
            };
        };
translate([12.7, 33, 6]) {
    rotate([90, 0, 90]) {
        cylinder(h=16, r=2.3);
        translate([-4.15, -4.15, 1]) {
            cube([8.3, 15, 2.4]);
        };
    };
    translate([0,11,0]) {
    rotate([90, 0, 90]) {
        cylinder(h=16, r=2.3);
        translate([-4.15, -4.15, 1]) {
            cube([8.3, 15, 2.4]);
        };
    };
    };
};
translate([4.5, 33, 6]) {
    rotate([90, 0, 270]) {
        cylinder(h=16, r=2.3);
        translate([-4.15, -4.15, 1]) {
            cube([8.3, 15, 2.4]);
        };
    };
    translate([0,11,0]) {
            rotate([90, 0, 270]) {
        cylinder(h=16, r=2.3);
        translate([-4.15, -4.15, 1]) {
            cube([8.3, 15, 2.4]);
        };
    };
};
};
    translate([7, 4.5, 0]) {
        cylinder(h=19, r=2.25);
        translate([0,0,-.01]){
            cylinder(h=4, r=4.05);
        };
        translate([14.4, 0, 0]) {
            cylinder(h=19, r=2.25);
        translate([0,0,-.01]){
            cylinder(h=4, r=4.05);
        };
        };
    };
    };

    difference() {
        translate([4, 51, 0]) {
            cube([24, 11, 18]);
        };

        translate([16, 62, 35]) {
            rotate([90,0,0]) {
                cylinder(h=15, r=20, $fn=80);
            };
        };
        translate([16, 36, 12.01]) {
            cylinder(h=12, r=20, $fn=80);
        };
    };
};
};
