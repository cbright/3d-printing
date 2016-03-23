
union(){
    difference(){
        cube([45,41,40]);//outer cube
        translate([5,5,-1]){
            cube([100,31,45]);
        }
        //bottom
        divet([15,6.5,10]);
        divet([35,6.5,10]);
        divet([15,6.5,30]);
        divet([35,6.5,30]);
        
        //upper
        divet([15,34.5,10]);
        divet([35,34.5,10]);
        divet([15,34.5,30]);
        divet([35,34.5,30]);
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