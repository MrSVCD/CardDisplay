$fn=90;
h=80;

difference(){
    union(){
        minkowski(){
            union(){
                hull(){
                    translate([3,3]) hull(){
                        translate([   2,   2,0])cylinder(h=1,r=2);
                        translate([   2,43-2,0])cylinder(h=1,r=2);
                        translate([80-2,   2,0])cylinder(h=1,r=2);
                        translate([80-2,43-2,0])cylinder(h=1,r=2);
                        translate([80/2,(43/2)]) translate([-25/2,-13/2,h])cube([25,13,1]);
                    }
                }
                
                hull(){
                    translate([86/2,(43/2)+3]) translate([-29/2,-10.5-6,h]) cube([29,28,4]);
                    translate([86/2,(43/2)+3]) cube([1,1,1],center=true);
                }
            }
            cylinder(h=1,r=2);
        }
        minkowski(){
            cube([86,55,4]);
            cylinder(h=1,r=3);
        }
 
        translate([86/2,55/2]){
            translate([-31/2,5]) cylinder(h=h+5,r=3);
            translate([ 31/2,5]) cylinder(h=h+5,r=3);
            translate([-31/2,-15]) cylinder(h=h+5,r=3);
            translate([ 31/2,-15]) cylinder(h=h+5,r=3);
        }

        translate([  -2,55-10]) cylinder(h=10,d=7);
        translate([  -2,    5]) cylinder(h=10,d=7);
        translate([86+2,55-10]) cylinder(h=10,d=7);
        translate([86+2,    5]) cylinder(h=10,d=7);
    }

    cube([86,55,1.5]);

    translate([3,3]) hull(){
        translate([   2,   2,-8])cylinder(h=10,r=2);
        translate([   2,43-2,-8])cylinder(h=10,r=2);
        translate([80-2,   2,-8])cylinder(h=10,r=2);
        translate([80-2,43-2,-8])cylinder(h=10,r=2);
        translate([80/2,(43/2)]) translate([-25/2,-13/2,h])cube([25,13,1]);
    }

    translate([86/2,(43/2)+3]) translate([-29/2,-10.5-6,h]) {
        translate([0,0,3]) cube([29,28,2]);
        translate([1,8/2,1]) cube([27,20,4]);
        translate([(29-12)/2,0,1]) cube([12,28,6]);
    }

    translate([86/2,(43/2)+3]) translate([-25/2,-13/2,h])cube([25,13,1]);

    translate([86/2,55/2]){
        translate([-32/2,  5,h-2]) cylinder(h=10,d=2.8);
        translate([ 32/2,  5,h-2]) cylinder(h=10,d=2.8);
        translate([-32/2,-15,h-2]) cylinder(h=10,d=2.8);
        translate([ 32/2,-15,h-2]) cylinder(h=10,d=2.8);
    }

    translate([  -2,55-10]) cylinder(h=10,d=2.8);
    translate([  -2,    5]) cylinder(h=10,d=2.8);
    translate([86+2,55-10]) cylinder(h=10,d=2.8);
    translate([86+2,    5]) cylinder(h=10,d=2.8);

    translate([-25,-25,-1])cube([200,200,2.5]);
}