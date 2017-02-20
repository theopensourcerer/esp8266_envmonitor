/*
 * Grabber
 */
$fn=50;
width = 4;
depth = 4;
length = 120;

bracketLength=13;
topdia = 45;
bottomdia = 50;

top();

leg();
module leg() {
    cube([width,length,depth]);
    translate([0,,0,depth]) {
        gripper();
    }
    translate([0,length,0]) {
        brace();
    }
 }
 
module gripper() {
    gripper=10;
    difference() {
        cube([width,gripper,depth]);
        translate([0,gripper-depth,0]) {
            prism(width,depth,depth-1);
        }
    }
}

module brace() {
    brace=10;
    difference() {
        union() {
            translate([0,brace/2,brace/2]) {
                rotate([0,90,0]) cylinder(d=10,h=depth);
            }
            cube([width,brace,brace/2]);
        }
        translate([0,brace/2,brace/2]) {
            rotate([0,90,0]) cylinder(d=width,h=depth*2);
        }
    }
}

module top() {
    height=depth*2;
    cylinder(d1=bottomdia,d2=topdia,h=height);
    for(r=[0,120,240]) rotate([0, 0, r]) translate([topdia/2-depth,0, 0]) bracket();
    hook();
}

module bracket() {
    translate([0,-(depth+(depth/2)),0]) {
        difference(){
            cube([bracketLength,depth*3,depth*2]);
            translate([0,depth,0]) {
                cube([bracketLength,depth,depth*2]);
            }
            translate([bracketLength-depth,depth*3.5,depth]) {
                rotate([90,0,0]) cylinder(d=3,h=depth*4);
            }
        }
    }
}

module prism(l, w, h){
    polyhedron(
        points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
        faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
    );
}

module hook() {
    cylinder(d=topdia/2,h=depth*5);
    translate([0,depth,depth*5]) {
        difference() {
            rotate([90,0,0]) cylinder(d=topdia/2.13,h=depth*2);
            rotate([90,0,0]) cylinder(d=topdia/4,h=depth*2.1);
        }
    }
}