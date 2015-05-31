//tatami和书房
use <cabinets.scad>
use <parts.scad>
module tatami_study(){

union(){
difference(){
//总空间
translate([-230,-250,-250])
cube([230+2770+230,7340,250+2760+250]);
//减掉书房窗
translate([-230,930,540])
cube([230,1420,1750]);
//书房空间
cube([2770,2460,2760]);
translate([0,2460,0])
cube([1510,620,2760]);
//连接客厅大门
translate([2770-80,2460+220,0])
cube([310,1040,2360]);
//两门中间的门厅
translate([1510+310-70,2460+220,0])
cube([70+870,1040,2360]);
//两扇门
translate([1510+310,2460,0])
cube([870,220,2130]);
translate([1510+310,2460+220+1040,0])
cube([870,220,2130]);
//tatami空间
translate([0,2460+1480,0])
cube([2770,2460,2760]);
//tatami飘窗
translate([80,2460+1480+2460,510])
cube([1470,690,1790]);
//tatami衣柜空间
translate([0,2460+640+220,0])
cube([1510,620,2760]);
}
//书房灯
translate([2770-1350,1180,2760])
light();
//书房开关
translate([1520+310-150,2460,1400])
up_switch();
//书房插座
translate([2770-420,0,400])
down_socket();
translate([0,2460+640-300,530])
left_socket();
translate([0,2460+640-300,530-90])
left_socket();
translate([0,2460+640-300,530-2*90])
left_socket();
translate([0,2460+640-300,530-3*90])
left_socket();

//书桌
translate([0,2460+640-750-680-600,0])
bookcase();


//tatami开关
translate([1500+310-210,2460+1480,1400])
down_switch();
//tatami灯
translate([2770-1430,2460+1480+2460-1260,2760])
light();
//tatami插座
translate([2770,2460+1480+2460-1100,900])
right_socket();
translate([0,2460+1480+2460-250,870])
left_socket();
translate([0,2460+1480+860,870])
left_socket();
//次卧衣柜
translate([0,2460+640+220,0])
tatami_wardrobe();
translate([0,2460+1480,0])
tatami();
}
}



module view_floor(){
//房顶厚度
floor_thickness = 1000;
//去除足够大的平面
maxlength = 100000;
maxwidth = 100000;
//略低于房屋高度的切除面
lowerheight= 2600;

difference(){
tatami_study();
translate([0,0,lowerheight])
cube([maxlength,maxwidth,floor_thickness],center = true);
}
}

view_floor();
//tatami_study();