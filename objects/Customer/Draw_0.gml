// Have to do it this way to make the fade effect work
if global.customertype = "regular" {draw_sprite_ext(SBasicCustomers,pick,x,y,1,1,0,c_white,alpha)}
else if global.customertype = "cop" {draw_sprite_ext(SCops,pick,x,y,1,1,0,c_white,alpha)}
else {draw_sprite_ext(SSpecialCustomers,pick,x,y,1,1,0,c_white,alpha)}
if global.ismob = true {draw_text(x,y-200,string(global.customertime))}

//draw_text(0,300,string(alpha))
//draw_text(0,330,string(global.choice))
//draw_text(0,310,string(global.served))
//draw_text(0,320,string(instance_number(Speech)))