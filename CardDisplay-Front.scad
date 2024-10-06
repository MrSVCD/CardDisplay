$fn=90;

difference(){
    minkowski(){
        translate([-15,-10,1]) cube([86+30,70,1]);
        cylinder(h=4,r1=2,r2=4);
    }

    translate([0,0,4.5]) cube([86,55,2]);

    translate([3,3]) hull(){
        translate([   2,   2])cylinder(h=10,r=2);
        translate([   2,43-2])cylinder(h=10,r=2);
        translate([80-2,   2])cylinder(h=10,r=2);
        translate([80-2,43-2])cylinder(h=10,r=2);
    }

    translate([  -2,55-10]) cylinder(h=10,d=3.2);
    translate([  -2,    5]) cylinder(h=10,d=3.2);
    translate([86+2,55-10]) cylinder(h=10,d=3.2);
    translate([86+2,    5]) cylinder(h=10,d=3.2);

    translate([  -12,55-10]) cylinder(h=10,d=3.2);
    translate([  -12,    5]) cylinder(h=10,d=3.2);
    translate([86+12,55-10]) cylinder(h=10,d=3.2);
    translate([86+12,    5]) cylinder(h=10,d=3.2);
}