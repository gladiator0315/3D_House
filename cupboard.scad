//橱柜
module cupboard(){
union(){
cube([600,1130,840]);
translate([600,0,0])
cube([2442,,600,840]);
//靠墙吊柜
translate([0,0,840+700])
color("red")
cube([500,600,700]);
translate([3042-450-900-20,0,840+700])
color("red")
cube([450+900,600,700]);
}

}
cupboard();