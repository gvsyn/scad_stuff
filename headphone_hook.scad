include <BOSL/constants.scad>
use <BOSL/beziers.scad>
use <BOSL/paths.scad>
use <dot/bijection_offset.scad>

$fn=200;
y1=13;
y2=9.2;
alice=[
    [2.1, y1], [2.1, y1-0.5],
    [3.9, y2], [4.9, y2]
];
bob=[
    [22.1, y2], [23.1, y2],
    [25, y1-0.5], [25, y1]
];

edges=
    concat(
        [[0,7], [0,8]],
//        bezier_polyline(alice, N=3), // needs to curve
//        bezier_polyline(bob, N=3), // the other curve
        [[55, 8], [55, 1]],
        [[11, 1], [11, -16]],
        [[70, -16], [70, -23]],
        [[3, -23], [3, -13]],
        [[-50,-13],[-50,7]]
    );
difference() {
    linear_extrude(30, convexity = 2, slices = 50) {
        polygon(edges);
    };
    difference() {
        translate([-45,-01,0]){
            cube([45,15,33]);
        };
        translate([-45,-27,15]) {
            rotate([0,90,0]) {
                cylinder(h=46, r=30.5);
            };
        };
    };
};