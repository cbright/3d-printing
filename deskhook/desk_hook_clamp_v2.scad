
thickness = 5;

union(){
    translate([-55,-20,0]){
        cube([55,thickness,14]);
    }
    translate([0,-20,0]){
        cube([thickness,20,14]);
    }
    translate([-55,-20,0]){
        cube([thickness,20,14]);
    }
    difference(){
        cube([33,41,14]);//outer cube
        translate([thickness,thickness,-1]){
            cube([100,31,45]);
        }
        //bottom
        divet([13,6.5,7]);
        divet([26,6.5,7]);
        //divet([15,6.5,30]);
        //divet([35,6.5,30]);
        
        //upper
        divet([13,34.5,7]);
        divet([26,34.5,7]);
        //divet([15,34.5,30]);
        //divet([35,34.5,30]);
    }

    /*translate([0,-40,0]){
        cube([5,50,40]);
    }*/
}

module divet(trans){
            translate(trans){
            rotate(90,[1,0,0]){
                cylinder(5,d=10,center=true);
            }
        }
}