use<cabinets.scad>
use<parts.scad>

//鞋柜门廊空间
module porch(){

//进门门厅墙厚度
enter_wall_thick = 250;
//厨房和次卫墙厚度
side_wall_thick = 230;
//与客厅隔墙厚度
kt_wall_thick =150;

//面对进门水平方向长度
length = 1570;
//垂直大门，鞋柜空间宽度
width = 1130;
//高度
height = 2760;
//吊顶
top = 380;
//门洞距离吊顶高度
door_top = 320;



union(){
difference(){
//外墙空间
translate([-side_wall_thick,-enter_wall_thick,-enter_wall_thick])
cube([(length+2*side_wall_thick), (width+enter_wall_thick+kt_wall_thick), (height+2*enter_wall_thick)]);
//墙内空间
cube([length,width,height-top]);
//大门门洞
translate([200,-enter_wall_thick,0])
cube([900,enter_wall_thick,height-top-door_top]);
//客厅门洞
translate([0,width,0])
cube([1100,kt_wall_thick,2130]);
//客卫门洞
translate([-side_wall_thick,185,0])
cube([side_wall_thick,790,2130]);
}
//进门左手墙次卫开关
translate([0,0,1380])
switch();

//进门右手墙门廊开关
translate([90+1100+190,0,1300])
rotate(90,[0,0,1])
switch();

translate([1570-400,0,0])
shoe();
}

}
porch();