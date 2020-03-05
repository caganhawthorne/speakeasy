draw_set_halign(fa_center)
draw_self()
if(paused){
	draw_set_font(FPaused)
	draw_sprite_ext(screenShot,0,0,0,1,1,0,c_white,1)
    draw_sprite_ext(SPaused,0,-10,0,1,1,0,c_white,.75)
}
// Reset so that all other elements go back to where they are supposed to be drawn
draw_set_halign(fa_left)
draw_set_font(FRegular)