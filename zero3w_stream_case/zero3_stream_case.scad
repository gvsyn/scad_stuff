use <dot/rounded_cube.scad>
use <dot/hollow_out.scad>
use <dot/rounded_square.scad>
$fn=80;
rotate([90,0,0]) {
translate([13.5,2,2]) {
    cube([1,4,48]);
};
difference() {
    // outside
    rounded_cube([126, 58, 50], 0.8);
    // hollow the cube out
    translate([3,3,3]) {
        cube([120,57,44]);
    };
    // zero3w mounting holes
    rotate([0,0,90]) {
        hole=1.75;
        translate([31, -80, 45]) {
            cylinder(6, r=hole);
            translate([0, 58, 0]) {
                cylinder(6, r=hole);
            };
            translate([23, 0, 0]) {
                cylinder(6, r=hole);
                translate([0, 58, 0]) {
                    cylinder(6, r=hole);
                }
            };
        };
    };
    // hdmi board mount
    rotate([0,90,0]) {
        hole=1.75;
        translate([-36.5, 20, 121]) {
            cylinder(6, r=hole);
            translate([0, 30, 0]) {
                cylinder(6, r=hole);
            };
            translate([23, 0, 0]) {
                cylinder(6, r=hole);
                translate([0, 30, 0]) {
                    cylinder(6, r=hole);
                }
            };
        };
    };
    // noctua end hole
    rotate([0,90,0]) {
        hole=2.75;
        translate([-41.5, 17.5, -1]) {
            translate([16.5,16.5,0]) {
                cylinder(6,r=19.5);
            };
            cylinder(6, r=hole);
            translate([0, 33, 0]) {
                cylinder(6, r=hole);
            };
            translate([33, 0, 0]) {
                cylinder(6, r=hole);
                translate([0, 33, 0]) {
                    cylinder(6, r=hole);
                }
            };
        };
    };
    
    rotate([0,0,90]) {
        for (i = [29:-5:0]) {
            translate([33,i-120,-1]) {
                    linear_extrude(60) {
                        rounded_square([17,3], 0.5);
                    }
            };
        };
    };
};

};