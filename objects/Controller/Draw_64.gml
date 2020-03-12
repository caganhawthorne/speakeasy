// Draws the current money total
draw_set_font(FRegular)
draw_set_color(c_black)
draw_text(30,30,"$ "+string(global.money)+" / "+string(global.moneyneeded))
// Draws the current level
draw_text(30,70,"Day "+string(global.level)+" of 5")

// TESTING

draw_text(30,110,"Time: "+string(global.time))

// draw_text(0,60,string(alarm[0]))
