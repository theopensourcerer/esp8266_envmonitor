/**
 * Design for a Stevenson Screen type container
 *
 * License:  Attribution-ShareAlike 4.0 International 
 * https://creativecommons.org/licenses/by-sa/4.0/
 *
 * Based on an original idea from http://jeelabs.net/boards/6/topics/1857
 *
**/


/*
 * makeBase:base,
   makeBottom:bottom,
   makeMiddle:middle,
   makeTop,top,
   makeAll:all
 *
**/
part = "makeAll"; 

$fn=50;
id=65;
od=105;
sectionheight=33;
walls=2;
bolt=4.2;
top_depth=walls+1;
pillar_radius = (id/2)+(bolt*walls)+walls;
pillarheight=(sectionheight-(walls*2));
containerHeight = 83;

nutSize = 6;
nutHeight = 3;
nutThread = 3.2;
boltLength = 8;

pcbWidth = 31.5;
pcbHeight = 52.5;
pcbThickness = 1.75;
pcbHoleCentres = 24;

// Base
//base();

mountingPlate();
/*
internalCase();

// Bottom Section
color("DeepSkyBlue", 0.5) translate([0,0,walls*2]) {
    difference() {
        section();
        translate([pillar_radius,0,0]) {
            bolthole();        }
        translate([-pillar_radius/2,((pillar_radius)*sin(120)),0]) {
            bolthole();
        }
        translate([-pillar_radius/2,-((pillar_radius)*sin(120)),0]) {
            bolthole();
        }
    }
}

//Middle Section
color("DeepSkyBlue", 0.5) translate([0,0,sectionheight]) {
    difference() {
        section();
        translate([pillar_radius,0,0]) {
            bolthole();        }
        translate([-pillar_radius/2,((pillar_radius)*sin(120)),0]) {
            bolthole();
        }
        translate([-pillar_radius/2,-((pillar_radius)*sin(120)),0]) {
            bolthole();
        }
    }
}


// Top Section
%translate([0,0,sectionheight*2-(walls*2)]) {
    difference() {
        section();
        translate([pillar_radius,0,0]) {
            bolthole();
        }
        translate([-pillar_radius/2,((pillar_radius)*sin(120)),0]) {
            bolthole();
        }
        translate([-pillar_radius/2,-((pillar_radius)*sin(120)),0]) {
            bolthole();
        }
    }
}

// Top
color("DeepSkyBlue", 0.5) translate([0,0,sectionheight*3-(top_depth*2+1)]) top();
*/
module section() {
    difference() {
        cylinder(sectionheight,(od+walls)/2,(id+walls)/2 );
        cylinder(sectionheight,(od/2),(id/2));
    }
    // Skirt
    translate([0,0,-walls*2]) {
        difference() {
            cylinder(walls*2,(od+walls)/2,(od+walls)/2);
            cylinder(walls*2,od/2,od/2);
        }
    }
    translate([pillar_radius,0,0]) {
         pillar();
    }
    translate([-pillar_radius/2,((pillar_radius)*sin(120)),0]) {
        pillar();
    }
    translate([-pillar_radius/2,-((pillar_radius)*sin(120)),0]) {
        pillar();
    }    
}

module pillar() {
    translate([0,0,walls*2]) {
        difference(){
            cylinder(pillarheight,bolt*walls, bolt*walls);
            bolthole();
        }
    }
}

module bolthole() {
    cylinder(pillarheight,bolt/2,bolt/2);
}

module base() {
    base_thickness=walls;
    difference() {
        union() {
            cylinder(base_thickness,(od-4)/2,(od-4)/2);
            translate([0,0,base_thickness]) {
                cylinder(base_thickness,(od-4)/2,(od-8)/2);
            }
            translate([0,-((id-walls)/2),base_thickness*2]) divider();
        }
        translate([pillar_radius,0,0]) {
            bolthole();
        }
        translate([-pillar_radius/2,((pillar_radius)*sin(120)),0]) {
            bolthole();
        }
        translate([-pillar_radius/2,-((pillar_radius)*sin(120)),0]) {
            bolthole();
        }
    }
}

module top() {
    cylinder(top_depth,(id+walls)/2,(id+walls)/2);
    translate([pillar_radius,0,0]) {
        lobe();
    }
    translate([-pillar_radius/2,((pillar_radius)*sin(120)),0]) {
        rotate(120) lobe();
    }
    translate([-pillar_radius/2,-((pillar_radius)*sin(120)),0]) {
        rotate(-120) lobe();
    }
    translate([0,-((id-walls)/2),top_depth-(walls*2)]) divider();
}

module lobe() {
    difference(){
        hull() {
            cylinder(top_depth,bolt*walls, bolt*walls);
            translate([-bolt*walls,0,0]) {
                cylinder(top_depth,bolt*walls, bolt*walls);
            }
        }
        cylinder(top_depth,bolt,bolt);
    }
}
module divider() {
    widthOfBaseBlock=walls*3;
    difference() {
        cube([widthOfBaseBlock,id-walls,walls]);
        translate([(widthOfBaseBlock/4),0,0]){
            cube([walls+(walls/2),id-walls,walls*2]);
        }
    }
}

module mountingPlate() {
    difference() {
        union() {
            // Plate
            translate([walls,-((id-walls)/2), walls*2]) {
                cube([walls,id-walls,(pillarheight*3)+(walls/2)]);
            }
            // External top bar
            translate([-walls,-((id-walls)/2), containerHeight+(walls*2)]) {
                cube([walls*2, id-walls,walls*2]);
            }
            // Side bar
            translate([0,-((id-walls)/2)+walls,walls*3]) {
                cube([walls,walls,containerHeight-walls*2.5]);
            }
            // Side bar
            translate([0,((id-walls)/2)-(walls*2),walls*3]) {
                cube([walls, walls,containerHeight-walls*2.5]);
            }
            // Internal top bar
            translate([0,-(id-(walls*5))/2,containerHeight-(walls-1)]) {
                cube([walls,id-(walls*5), walls]);
            }
            // PCB top mount
            translate([walls,-27,(walls*2)+74]) {
                rotate([0,180,0]) {
                    pcbTopMount();
                }
            }
            translate([walls,-27,(walls*2)+(74-50)]) {
                rotate([0,180,0]) {
                    pcbBottomMount();
                }
            }
        }
        // Battery case mounting hole
        translate([walls-1,((id-walls)/2)-(walls*2)-11-(3/2),(walls*2)+39]) {
            rotate([0, 90,0]) {
                cylinder(d=3.2,h=walls+2);
            }
        }
        // Sensor cable access
        translate([walls-1,0,5]) {
            rotate([0,90,0]){
                cylinder(d=8,h=walls+2);
            }
        }
        // BME280 mounting holes
        translate([-1,0,(walls*2)+24.3]) {
            rotate([0,90,0]) {
                cylinder(d=3.2,h=walls+2);
                bolt(nutSize,nutHeight, nutThread,boltLength);

                translate([0,-10,0]) {
                    cylinder(d=3.2,h=walls+2);
                bolt(nutSize,nutHeight, nutThread,boltLength);

                }
            }
        }
    }
}

module internalCase() {
    odia = id-walls;
    idia = id-(walls*2.5);
    translate([0, 0, walls*2]) {        
        difference() {
            cylinder(h=containerHeight,d1=odia,d2=odia);
            cylinder(h=containerHeight-walls,d1=idia,d2=idia);
            translate([walls,-id/2,0]) {
                cube([id/2, id, containerHeight]);
            }
            translate([0,-odia/2,0]) {
                cube([walls,odia,walls]);
            }  
        }
    }
}

module pcbTopMount() {
    diff = (pcbWidth-pcbHoleCentres) / 2;
    difference() {
        cube([nutHeight+1,pcbWidth,nutSize]);
        translate([0,diff,(nutThread/2)]){
            rotate([0,90,0]) {
                bolt(nutSize,nutHeight, nutThread,boltLength,true);
            }
        }
        translate([0,(pcbWidth-diff),(nutThread/2)]){
            rotate([0,90,0]) {
                bolt(nutSize,nutHeight, nutThread,boltLength, true);
            }
        }
    }
}

module pcbBottomMount() {
        translate([0,0,-2]) {
            cube([nutHeight+1,pcbWidth,nutSize+2]);
        }
        translate([nutHeight+1,0,0]) {
            cube([pcbThickness,pcbWidth,nutSize]);
        }
        translate([nutHeight+1+pcbThickness,0,-2]) {
            cube([walls,pcbWidth,nutSize+2]);
        }
}

// Nut
module nut(width,height,thread) {
    difference() {
        cylinder(d=width/(cos(180/6)), h=height, $fn=6);
        translate([0,0,-0.5]) {
            cylinder(d=thread,h=height+1);
        }
    }
}

module bolt(width,height,thread,length,hull) {
    cylinder(d=width/(cos(180/6)), h=height, $fn=6);
    if(hull) {
        hull(){
            translate([0,0,height]) {
                cylinder(d=thread,h=length);
            }
            translate([thread,0,height]) {
                cylinder(d=thread,h=length);
            }
        }
    } else {
        translate([0,0,height]) {
            cylinder(d=thread,h=length);
        }
    }
}