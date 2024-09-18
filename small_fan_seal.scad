$fn=50;
dist=13.1;
difference() {
    minkowski()
    {
        cube([28,28,0.3], center = true);
        cylinder(r=2,h=0.3);
    }
    for(step = [0, 90, 180, 270]){
        rotate(step){
            translate([dist,dist,-0.2]){
                cylinder(r=1.8,h=1);
            }
        }
    }

    cylinder(r=15.2,h=2, center = true);
}