draw_set_alpha(text_alpha)
if global.pay > 0 {draw_set_color(c_lime)}
else {draw_set_color(c_red)}
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_text_transformed(x,y-100,"+$"+string(global.pay),5,5,image_angle)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_color(c_white)
draw_set_alpha(1)
