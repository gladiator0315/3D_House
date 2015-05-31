//插座示意图
module socket()
{
difference(){
cube([5,90,90]);
translate([0,40,50])
cube([5,5,15]);
translate([0,30,25])
cube([5,5,15]);
translate([0,50,25])
cube([5,5,15]);
}
}
//定义4个方向插座,都以右上角对准原点
module left_socket(){
translate([0,-90,-90])
socket();
}
module right_socket(){
translate([-5,90,0])
left_socket();
}
module up_socket(){
rotate(90,[0,0,1])
right_socket();
}

module down_socket(){
translate([90,5,0])
up_socket();
}

//开关示意图
module switch()
{
difference(){
cube([5,90,90]);
translate([0,20,20])
cube([5,45,45]);
}

}

//定义4个方向的开关,都以开关右上角对准原点
module left_switch(){
translate([0,-90,-90])
switch();
}

module right_switch(){
translate([-5,0,-90])
switch();
}

module down_switch(){
translate([90,0,-90])
rotate(90,[0,0,1])
switch();
}

module up_switch(){
translate([-90,0,-90])
rotate(90,[0,0,-1])
switch();
}
//吸顶灯示意图
module light(){
translate([0,0,-50])
cylinder(50,80,110,center);
}
//x方向墙半径r,深deep的空洞模型
module xhole(r,deep){
rotate(90,[0,1,0])
cylinder(deep,r,r,center);
}
//xhole(30,100);
//light();
module right_bathlight(){
translate([-35,0,0])
union(){
sphere(25);
translate([15,0,0])
rotate(90,[0,1,0])
cylinder(25,12,12,center);
}
}
module down_bathlight(){
rotate(90,[0,0,-1])
right_bathlight();
}


module alert_box(){
translate([-5,0,-90])
difference(){
cube([5,90,90]);

rotate(90,[0,1,0])
translate([-45,45,0])
cylinder(6,10,10,center);

}

}
alert_box();