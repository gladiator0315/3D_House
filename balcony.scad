//阳台
use <parts.scad>
module balcony(){
union(){
difference(){
translate([-230,-250,-250])
cube([230+3450+230,1250+250+250,2760+250+250]);
//左窗
translate([-230,1250-640,0])
cube([230,640,2760-380]);
//右窗
translate([3450,1250-640,0])
cube([230,640,2760-380]);
//正窗
translate([170,1250,0])
cube([3100,250,2760-370]);
//内空间
cube([3450,1250,2760]);
//阳台客厅门洞
translate([700,-250,0])
cube([2050,250,2760]);
}
//阳台灯
translate([1700,1250-620,2760])
light();
//插座
translate([700+2050+350,0,400])
down_socket();

}
}
balcony();