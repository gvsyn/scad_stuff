use <dot/rounded_square.scad>
$fn=80;

linear_extrude(3) {
    difference() {
        rounded_square([24.5, 42.8], 1.4);
        translate([3,5,0]) {
            rounded_square([8.5, 34.8], 1.4);
        };
    };
};