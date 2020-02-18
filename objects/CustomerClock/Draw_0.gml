// Make sure the base of the clock is drawn
draw_self()
// Draws the timer circle
script_execute(ScrClockTimer,x,y,global.customertime,room_speed*30,color,32,1)

// TESTING ONLY

draw_text(0,80,string(global.customertime))