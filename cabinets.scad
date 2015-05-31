//Cabinets柜子集合


//次卧衣柜(左下角原点)
module tatami_wardrobe(){
cube([1520,600,2400]);
}

//tatami_wardrobe();


//tatami
//左下角原点
module tatami(){
cube([2790,2470,500]);

}
//tatami();

//鞋柜
module shoe(){
difference(){
cube([400,1140,2400]);
translate([0,0,2400-80-700-611])
cube([400-18,518,611]);
}
}
//shoe();

//主卧衣柜
module wardrobe(){
cube([2100,600,2770]);
}
//wardrobe();

//书柜
module bookcase(){
difference(){
union(){
cube([620,750+680,780]);
translate([0,750+680,0])
cube([1520,600,780]);
translate([0,750+680+250,780])
cube([1520,350,1590]);
}

translate([50,750+680,0])
cube([1442,600-18,780-36]);
translate([18,36+750+36,100])
cube([620-18,250,780-36-100]);
translate([18,36,0])
cube([620-18,750,780-36]);
translate([18,750+680+250,780])
cube([1510-2*18,350-18,590]);
}
}
bookcase();