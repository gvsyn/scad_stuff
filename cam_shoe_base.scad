//include <BOSL/constants.scad>
//use <BOSL/paths.scad>
//square([27,9]);
$fn=40;
y1=13;
y2=9;
edges=[[0,0],[0,y1],[2,y1],[5,y2],[22,y2],[25,y1],[27,y1],[27,0]];
lex=72;
lex_s=50;
difference() {
    rotate([90,0,0]) {
        difference() {
            linear_extrude(lex, convexity = 2, slices = 50) {
                polygon(edges);
            };
            translate([5.5, 5, 12]) {    
                cube([7, 15, 1.3], center=true);
            };
            translate([5.5, 5, -1]) {
                cylinder(h=18, r=2.5);
            };
            translate([21.5, 5, 12]) {    
                cube([7, 15, 1.3], center=true);
            };
            translate([21.5, 5, -1]) {
                cylinder(h=18, r=2.5);
            };
        };
    };
    translate([13.5, -22, -0.1]) {
        cylinder(r=4, h=11, $fn=80);
        cylinder(r=6, h=5, $fn=80);
    };
    translate([13.5, -38, -0.1]) {
        cylinder(r=4, h=11, $fn=80);
        translate([0,0,0.3]){
            cylinder(r=5.8, h=10, $fn=6);
        };
    };
};
translate([13.5, -8, y2-0.001]) {
    cylinder(h=2.5, r1=4, r2=2, center=true);
};