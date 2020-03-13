draw_set_font(FRegular)

if instance_exists(SpecialCustomer) or kid = true {draw_self()}

if (orderString!="") and global.served = false and global.choice = true and kid = false and !instance_exists(SpecialCustomer) {
	draw_self()
	draw_text_ext(x-285,y, orderString,33,380)
	
}

/*
draw_text(x-50,y+100,global.served)
draw_text(x-50,y+150,global.choice)
draw_text(x-50,y+200,firstclick)
draw_text(x-50,y+250,global.mobsterserved)
draw_text(x-50,y+300,global.customertime)
*/