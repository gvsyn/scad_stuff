use <dot/rounded_cube.scad>
use <dot/hollow_out.scad>
use <dot/rounded_square.scad>
/* 
  Zero3+PiSugar box. 
  Will need USB-C holes, HDMI
  Space enough to hit the buttons, and some holes for air and viewing LEDs
  Will NOT need space for GPIO access
  
  This will need some bits to attach it to the projector. Should
  do the trick nicely. Hopefully the zero3 will manage to power it.
  Otherwise it'll be time for the USB power limit bypass
  
  Don't forget: spacers that will be between the outer holes and the PCB
  to attach it to the case, I guess. 
  
  Maybe simple zip tie attach it to the beamer
*/
$fn=80;
rotate([0,180,0]){
difference() {
    rounded_cube([36, 68, 32], 0.5);
    translate([1,1,1]) {
        cube([34, 66, 30]);
    };

    translate([0, 6, 20]) {
        rotate([0,90,0]) {
            linear_extrude(5) {
                rounded_square([14, 26], 1);
            };
        };
    };
    translate([0, 50, 20]) {
        rotate([0,90,0]) {
            linear_extrude(5) {
                rounded_square([14, 10], 1);
            };
        };
    };
hole=1.8;
translate([6.5, 4.5, 28]) {
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
//cube([38,70,12]);
};
};
