use <dot/rounded_cube.scad>
use <dot/hollow_out.scad>
use <dot/rounded_square.scad>

$fn=80;
intersection() {
    rounded_cube([36, 68, 33], 0.5);
    cube([38,70,1]);
};
color("green"){
translate([1.35,1.35,1]) {
    linear_extrude(2.5) {
        hollow_out(0.8) {
            rounded_square([33.3,65.3], 3);
        };
    };
};
};