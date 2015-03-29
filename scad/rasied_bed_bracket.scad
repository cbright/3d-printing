module screwhole(x,y,z){
    translate([x,y,z]){
        cylinder(h = 4,r=.125,center = true);
    }
}

difference(){
    difference(){
        difference(){
            difference(){
                difference(){
                    cube([3,4,1],center = true);
                    translate([0,-0.5,0.5]){
                        cube([2,4,1],center = true);  
                    }
                }
                screwhole(1.25,1.5,0);
            }
            screwhole(1.25,-1.5,0);
        }
        screwhole(-1.25,-1.5,0);
    }
    
    screwhole(-1.25,1.5,0);
}