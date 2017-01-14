/**
 * Design for a Stevenson Screen type container
 *
 * License:  Attribution-ShareAlike 4.0 International 
 * https://creativecommons.org/licenses/by-sa/4.0/
 *
 * Based on an original idea from http://jeelabs.net/boards/6/topics/1857
 *
**/

$fn=50;
id=65;
od=105;
sectionheight=33;
walls=2;
bolt=4.2;
top_depth=walls+1;
pillar_radius = (id/2)+(bolt*walls)+walls;
pillarheight=(sectionheight-(walls*2));

/*
// Base
base();

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
*/

// Top Section
translate([0,0,sectionheight*2-(walls*2)]) {
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
    base_thickness=walls+1;
    difference() {
        union() {
            cylinder(base_thickness,(od-1)/2,(od-1)/2);
            translate([0,-((id-walls)/2),base_thickness]) divider();
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