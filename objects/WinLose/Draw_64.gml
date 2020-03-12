// Displays the lose text to see why you lost

draw_set_halign(fa_center)
draw_set_color(c_black)
draw_set_font(FRegular)
if image_index = 1 {draw_text(room_width/2,(room_height/2)+400,global.losemessage)}
draw_set_halign(fa_left)