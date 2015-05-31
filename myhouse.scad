//created 2015-4-16
//by xdw
//my house 3D model



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
}

//饭厅+客厅算作一个living_room
module livingroom(){

//与门廊连接门洞宽度
connect_main_door_width = 1100;
wall_thickness = 310;
//阳台墙厚度
outer_thickness = 250;
//面对进门方向长度
length = 6470;
//宽度
width = 3450;
//高度(不含吊顶)
height = 2760;
//门统一宽度
door_width = 1040; 
//门洞距离顶部高度
top=300;
//阳台门洞距离墙的宽度
door2wall = 700;
//靠次卧的电视墙宽度
tv_wall = 2700;
//靠主卧的墙宽度
bed_wall = 3700;
//靠厨房推拉门上方高度
push_door_top = 650;
//靠厨房推拉门宽度
push_door_width = 1620;
//靠厨房推拉门与门廊中间的墙
push_door_wall = 710;



difference(){
//外墙空间
translate([-wall_thickness,-wall_thickness,-wall_thickness])
cube([width+2*wall_thickness,length+wall_thickness+outer_thickness,height+2*wall_thickness]);
//墙内空间
cube([width,length,height]);
//靠门廊门洞,此处门洞宽度用固定值1100
translate([0,-wall_thickness,0])
cube([connect_main_door_width,wall_thickness,2050]);
//阳台门洞
translate([door2wall,length,0])
cube([width-2*door2wall,outer_thickness,height-top]);
//次卧门洞
//此处门洞比正常还要矮100mm
translate([-wall_thickness,length-tv_wall-door_width,0])
cube([wall_thickness,door_width,height-top-100]);
//主卧门洞
translate([width,length-bed_wall-door_width,0])
cube([wall_thickness,door_width,height-top]);
//厨房饭厅门洞
translate([door_width+push_door_wall,-wall_thickness,0])
cube([push_door_width,wall_thickness,height-push_door_top]);

}
}


//次卫空间
module sub_toilet(){
wall_thickness = 310;
//面对进门方向长度
length = 1870;
//宽度
width = 1650;
//高度(不含吊顶)
height = 2760;
//吊顶高度
top = 400;
//门统一宽度
door_width = 1040;
//门统一高度
door_height = 2050;
//窗户尺寸
win_width = 580;
win_height = 740;


difference(){ 
//外墙空间
translate([-2*wall_thickness-length,-wall_thickness,-wall_thickness])
cube([(length+2*wall_thickness),width+2*wall_thickness,height+2*wall_thickness]);
//室内空间
translate([-wall_thickness-length,0,0])
cube([length,width,height-top]);
//门洞
translate([-wall_thickness,width-door_width,0])
cube([wall_thickness,door_width,door_height]);
//窗子
translate([-length-2*wall_thickness,width-door_width,1100])
cube([wall_thickness,win_width,win_height]);

}
}


//榻榻米与书房还有中间空间看作一个整体

module sub_bedrooms()
{
  module tatami(){}
  module study(){}
}





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
//porch();
//livingroom();
//sub_toilet();
translate([0,0,lowerheight])
cube([maxlength,maxwidth,floor_thickness],center = true);
}
}

//鞋柜门廊空间
porch();
//客厅+饭厅
//livingroom();
//次卫
//sub_toilet();


//view_floor();


//各个房间组合
module house(){

union(){
translate([0,1560,0])
livingroom();
porch();
sub_toilet();
}
}
//house();