$fn=80;
rotate([0,180,0]) {
difference() {
    cube([42,40,10]);
    translate([10,20,-2]) {
        rotate([90,0,0]) {
            cylinder(h=41, r=10.78, center=true);
        };
    };
    translate([32,20,-2]) {
        rotate([90,0,0]) {
            cylinder(h=41, r=10.78, center=true);
        };
    };
    translate([21,20,12]) {
        rotate([90,0,0]) {
            cylinder(h=41, r=4.5, center=true);
        };
    };
};
};