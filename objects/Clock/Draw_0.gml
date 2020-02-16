// Make sure the base of the clock is drawn
draw_self()
// Draws the timer circle
script_execute(ScrClockTimer,x,y,global.time,room_speed*120,color,32,1)

// TESTING ONLY

draw_text(0,40,string(global.time))