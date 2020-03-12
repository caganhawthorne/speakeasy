draw_set_font(FRegular)

if instance_exists(SpecialCustomer) {draw_self()}

if (orderString!="") and global.served = false and global.choice = true {
	draw_self()
	draw_text_ext(x-285,y, orderString,33,380)
	
}