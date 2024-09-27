include <BOSL/constants.scad>
use <BOSL/beziers.scad>
use <BOSL/paths.scad>

$fn=40;
y1=13;
y2=9.2;
alice=[
    [2, y1], [2, y1-1],
    [4, y2], [5, y2]
];
bob=[
    [22, y2], [23, y2],
    [25, y1-1], [25, y1]
];
edges=
    concat([[0,0], [0,y1]], 
    bezier_polyline(alice, N=3), // needs to curve
    bezier_polyline(bob, N=3), // the other curve
    [[27,y1],[27,0]]);
difference() {
    rotate([90,0,0]) {
        difference() {
            linear_extrude(72, convexity = 2, slices = 50) {
                polygon(edges);
            };
            translate([5.5, 5, -1]) {
                cylinder(h=19, r=2.05);
                translate([-3.5, 0, 13]) {
                    cube([7, 15, 1.7]);
                };
            };
            translate([21.5, 5, -1]) {
                cylinder(h=19, r=2.05);
                translate([-3.5, 0, 13]) {
                    cube([7, 15, 1.7]);
                };
            };
        };
    };
    translate([13.5, -20, -0.1]) {
        cylinder(r=3.5, h=11, $fn=80);
        cylinder(r=5.5, h=4.8, $fn=80);
        translate([0, 0, 4.8]) {
            cylinder(h=1, r1=5.5, r2=4.5, $fn=80);
        };
    };
    translate([13.5, -33, -0.1]) {
        cylinder(r=4, h=11, $fn=80);
        translate([0,0,0.3]){
            cylinder(r=5.8, h=10, $fn=6);
        };
    };
};
translate([13.5, -8, y2-0.001]) {
    cylinder(h=3.5, r1=3.8, r2=2, center=true, $fn=80);
};