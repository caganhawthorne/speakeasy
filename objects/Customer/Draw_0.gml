// Have to do it this way to make the fade effect work
if global.customertype = "regular" {draw_sprite_ext(SCustomer,0,x,y,1,1,0,c_white,alpha)}
else {draw_sprite_ext(SCustomer,1,x,y,1,1,0,c_white,alpha)}