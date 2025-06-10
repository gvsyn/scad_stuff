include <BOSL/constants.scad>
use <BOSL/beziers.scad>
use <BOSL/paths.scad>
use <dot/bijection_offset.scad>
use <dot/rounded_square.scad>

$fn=80;

intersection() {
    // bounding parts (for the curved top, etc)
    union() {
        translate([16.5, 29, 0]){
            cylinder(h=20, r=28, $fn=160);
        };
        cube([30,50,37]);
    };
union() {
    // the bulk of the back plate (with holes cut)
    difference() {
        translate([-1,0,0]) {
            cube([29, 62, 12]);
        };
        translate([4.4, 16, -.01]) {
            linear_extrude(13) {
                rounded_square([8.5, 34.8], 1.4);
            };
        };
        translate([16.5, 16.4, 11.6]) {
            linear_extrude(0.5) {
                rounded_square([8.9, 22.8], 0.8);
            };
        };
        linear_extrude(12) {
            polygon([[-1, 0], [-1, 12], [1,0]]);
        };
// grub mounts right
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
// grub mounts left
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
// upper cam part (with the two curves)
    difference() {
        translate([4, 51, 0]) {
            cube([24, 11, 19]);
        };

        translate([16, 62, 36]) {
            rotate([90,0,0]) {
                cylinder(h=15, r=20, $fn=80);
            };
        };
        translate([16, 39, 12.01]) {
            cylinder(h=12, r=17, $fn=80);
        };
    };
};
};
