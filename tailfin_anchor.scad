difference() {
	cylinder(h = 25, d = 26);
    cylinder(h = 27, d1 = 6, d2 = 6);
	translate([0, 0, 13]) {
        cylinder(h = 2, d1 = 6, d2 = 11.5, center = true);
    }
    translate([0,0,26]) {
        cylinder(h = 24, d1 = 11.5, d2 = 11.5, center = true);
    }
}

//translate([0, 0, 10]) { 
//		cylinder(h = 2, d1 = 6, d2 = 7.5);
//}


//difference() {
//    cylinder(h = 16, d = 26, center = true);
//    cylinder(h = 26, d = 6, center = true);
//}
