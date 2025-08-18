include <BOSL/constants.scad>
use <BOSL/beziers.scad>
use <BOSL/paths.scad>
use <dot/bijection_offset.scad>

module triangle(o_len, a_len, depth)
{
    linear_extrude(height=depth)
    {
        polygon(points=[[0,0],[a_len,0],[0,o_len]], paths=[[0,1,2]]);
    }
}


$fn=120;
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
        [[0,0], [0,y1]], 
        bezier_polyline(alice, N=3), // needs to curve
        bezier_polyline(bob, N=3), // the other curve
        [[27,y1],[27,0]]
    );
union() {
    difference() {
        translate([0,-77,0]) {
            cube([27,2,21]);
        }
        translate([5,-77,9.2]){
            cube([17,2,17]);
        };
    };
    translate([0,-76.8,12]) {
        rotate([90,0,90]) {
            triangle(9,14,1);
            translate([0,0,26]) {
                triangle(9,14,1);
            };
        };
    };
difference() {
    rotate([90,0,0]) { 
        difference() {
            linear_extrude(75, convexity = 2, slices = 50) {
                polygon(edges);
            };
            translate([6.3, 5, -1]) {
                cylinder(h=19, r=2.3);
                translate([-4.15, -4.15, 12.5]) {
                    cube([8.3, 15, 2.4]);
                };
            };
            translate([20.7, 5, -1]) {
                cylinder(h=19, r=2.3);
                translate([-4.15, -4.15, 12.5]) {
                    cube([8.3, 15, 2.4]);
                };
            };
        };
    };
    translate([13.5, -22.4, -0.1]) {
        cylinder(r=3.5, h=11, $fn=80);
        cylinder(r=5.5, h=5.7, $fn=80);
        translate([0, 0, 5.7]) {
            cylinder(h=1, r1=5.5, r2=3.5, $fn=80);
        };
    };
    translate([13.5, -35.3, -0.1]) {
        cylinder(r=3.5, h=11, $fn=80);
        translate([0,0,0.6]){
            cylinder(r=6, h=10, $fn=6);
        };
    };
};
translate([13.5, -7.8, y2-0.001]) {
    cylinder(h=3.5, r1=3.8, r2=2, center=true, $fn=80);
};

};