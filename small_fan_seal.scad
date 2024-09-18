$fn=50;
dist=12.6;
difference() {
    minkowski()
    {
        cube([29,29,0.45], center = true);
        cylinder(r=2,h=0.45);
    }
    for(step = [0, 90, 180, 270]){
        rotate(step){
            translate([dist,dist,-0.3]){
                cylinder(r=1.8,h=1);
            }
        }
    }

    cylinder(r=15.1,h=2, center = true);
}