use <dot/rounded_cube.scad>
use <dot/hollow_out.scad>
use <dot/rounded_square.scad>
//$fn=80;

difference() {
    linear_extrude(16) {
    difference() {
        union() {
            square([10, 75]);
            translate([-8.9, 0, 0]) {
                rounded_square([9,60],0.5);
            };
        };
        translate([1,6,0]) {
            square([9, 64]);
        };
        translate([1,4,0]) {
            square([5,5]);
        };
        translate([1,70,0]) {
            square([6,2]);
        };
        translate([-5,-5,0]) {
            rounded_square([2,60],0.25);
        };
        translate([-9,-0.1,0]) {
            square([4,10]);
        };
    };
    };
    translate([-5,0,6]) {
        cube([15, 16, 17]);
    };
    translate([-.1,60,6]) {
        cube([15, 26, 17]);
    };
};