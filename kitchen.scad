use <parts.scad>
module kitchen(){
union(){
difference(){
translate([-230,-250,-250])
cube([230+3060+820+950+250,250+1650+250,2760+250+250]);

//厨房推拉门
translate([0,1650,0])
cube([1600,250,2100]);

// 厨房空间
cube([3060,1650,2760]);
//烟道旁空间
translate([3060,520,0])
cube([820,1130,2400]);

//烟道小缺口
translate([3060+820-110,400,0])
cube([110,120,2760]);
//生活阳台空间
translate([3060+820,0,0])
cube([950,1650,2760]);
// 生活阳台窗
translate([1600+3230,610,260])
cube([250,1040,2130]);
}
//厨房插座
translate([0,1650-450,1400])
left_socket();
translate([0,1650-570,1400])
left_socket();
translate([330,0,1300])
down_socket();
translate([1700,0,1300])
down_socket();
translate([900,0,630])
down_socket();
translate([800,0,2100])
down_socket();
translate([3060-350,0,640])
down_socket();
translate([3060+820+100,0,1540])
down_socket();
translate([3060+820+600,0,1430])
down_socket();
translate([3060+820+950-410,1650,550])
up_socket();



}




}


kitchen();