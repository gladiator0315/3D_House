use <parts.scad>
use <cabinets.scad>

//主卧和主卫房间
module bedroom(){

union(){
difference(){
//总空间
translate([-230,-250,-250])
cube([230+3070+230,250+1600+230+90+890+3700+690,250+2760+250]);

//主卫空间
cube([3070,1600,2760]);
//主卫窗户
translate([3070,800-310,1580])
cube([230,620,560]);
//主卫主卧门
translate([90,1600,0])
cube([790,230,2110]);
//主卧窗户
translate([1320,1600+230+90+890+3700,500])
cube([1650,690,1800]);
//主卧客厅门
translate([-230,1600+230+90,0])
cube([230,890,2120]);
//主卧空间
translate([0,1600+230,0])
cube([3050,90+890+3700,2760]);
}
//卫生间开关
translate([90+780+270,1600,1400])
up_switch();
translate([90+780+270-90,1600,1400])
up_switch();
//卫生间插座
translate([0,1150,1480])
left_socket();
//卫生间灯
translate([400,0,2000])
down_bathlight();
//主卧开关
translate([0,1600+230+90+890+280,1400])
left_switch();
//主卧插座
//靠客厅墙
translate([0,1600+230+90+890+1650,400])
left_socket();
translate([0,1600+230+90+890+1800,400])
left_socket();
//靠床墙
translate([3050,1600+230+90+890+3700-550,400])
right_socket();
translate([3050,1600+230+90+890+3700-550+90,400])
right_socket();
//电话口
translate([3050,1600+230+90+750,400])
right_socket();
//报警接口
translate([3050,1600+230+90+750,880])
alert_box();
//双控
translate([3050,1600+230+90+1430,880])
right_switch();
//插座
translate([3050,1600+230+90+930,400])
right_socket();
translate([90+790+5,1600+230,0])
wardrobe();
}


}



//bedroom();
module view_floor(){
//房顶厚度
floor_thickness = 1000;
//去除足够大的平面
maxlength = 100000;
maxwidth = 100000;
//略低于房屋高度的切除面
lowerheight= 2600;

difference(){
bedroom();
translate([0,0,lowerheight])
cube([maxlength,maxwidth,floor_thickness],center = true);
}
}

view_floor();