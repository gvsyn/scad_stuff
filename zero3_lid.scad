use <dot/rounded_cube.scad>
use <dot/hollow_out.scad>
use <dot/rounded_square.scad>

$fn=80;
intersection() {
    rounded_cube([36, 68, 33], 0.5);
    cube([38,70,1]);
};
translate([1.4,1.4,1]) {
    linear_extrude(1.5) {
        hollow_out(0.5) {
            rounded_square([33.6,65.6], 0.5);
        };
    };
};