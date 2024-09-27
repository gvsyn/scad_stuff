//include <BOSL/constants.scad>
//use <BOSL/paths.scad>
//square([27,9]);
$fn=40;
y1=13;
y2=9.2;
edges=[[0,0],[0,y1],[2,y1],[3,y2+1],[5,y2],[22,y2],[24,y2+1],[25,y1],[27,y1],[27,0]];
difference() {
    rotate([90,0,0]) {
        difference() {
            linear_extrude(72, convexity = 2, slices = 50) {
                polygon(edges);
            };
            translate([5.5, 5, -1]) {
                cylinder(h=18, r=2.2);
                translate([0, 0, 13]) {
                    cube([7, 15, 1.3], center=true);
                };
            };
            translate([21.5, 5, -1]) {
                cylinder(h=18, r=2.2);
                translate([0, 0, 13]) {
                    cube([7, 15, 1.3], center=true);
                };
            };
        };
    };
    translate([13.5, -20, -0.1]) {
        cylinder(r=3.5, h=11, $fn=80);
        cylinder(r=5.5, h=4.8, $fn=80);
    };
    translate([13.5, -33, -0.1]) {
        cylinder(r=4, h=11, $fn=80);
        translate([0,0,0.3]){
            cylinder(r=5.8, h=10, $fn=6);
        };
    };
};
translate([13.5, -8, y2-0.001]) {
    cylinder(h=3.5, r1=4, r2=2, center=true, $fn=80);
};