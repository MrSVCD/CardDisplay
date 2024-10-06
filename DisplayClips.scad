$fn=90;
difference(){
    union(){
        hull(){
            cylinder(h=3,d=7);
            translate([20,0]) cylinder(h=3,d=7);
        }
        translate([0,1.6])cube([2,1.9,3.5]);
        translate([18,1.6])cube([2,1.9,3.5]);
    }
    cylinder(h=10,d=3.2);
    translate([20,0]) cylinder(h=10,d=3.2);
}