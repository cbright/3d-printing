include <tri_45_45_90.scad>

difference(){
    difference(){
        cube(size = [100,120,5], center = false);

        translate([10,20,-5]){
            tri_45_45_90(70,90,30);
        }
    }

    translate([100,130,0]){
        mirror([0,-1,0]){
            mirror([1,0,0]){
                translate([10,20,-5]){
                    tri_45_45_90(70,90,30);
                }
            }
        }
    }
}

cube(size = [100,10,10], center = false);

difference(){
    difference(){
        cube(size = [100,5,40], center = false);
        inset_screw([25,1.25,20],[90,0,180]);
    }
    inset_screw([75,1.25,20],[90,0,180]);
}

module inset_screw(pos, rot){
    translate(pos){
        rotate(rot){
            cylinder(h = 4, d1 = 4, d2 = 8);
            translate([0,0,-19]){
                cylinder(h = 20,d = 4);
            }
        }
    }
}