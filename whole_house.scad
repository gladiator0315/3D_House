use<porch.scad>
use<subtoilet.scad>
use<living_room.scad>
use<tatami_study.scad>
use<bedroom.scad>
use<kitchen.scad>
use<balcony.scad>
module whole_house(){
union(){
porch();
translate([-3000,185-790,-250])
subtoilet();
translate([0,1280,0])
living_room();
translate([-2770-230,185+790+90+250,0])
tatami_study();
translate([3450+230,1280+1900-90-230-1600,0])
bedroom();
translate([1100+700,1160+150-250-1650,0])
kitchen();
translate([0,1280+1900+880+3700+250,0])
balcony();
}
}

//whole_house();
//去房顶观察
module view_floor(){
//房顶厚度
floor_thickness = 1000;
//去除足够大的平面
maxlength = 100000;
maxwidth = 100000;
//略低于房屋高度的切除面
lowerheight= 2600;

difference(){
whole_house();
translate([0,0,lowerheight])
cube([maxlength,maxwidth,floor_thickness],center = true);
}
}
view_floor();