// Checks to see what drinks have been unlocked and draws them if there are
// NOT MEANT TO BE CLICKED ON, JUST TO SEE WHAT YOU HAVE
// if we want to do that, they will have to be converted to objects and created instead of drawn
for (i = 0; i < array_length_1d(global.drinklist); i += 1){
	if global.drinklist[i] = "vodka"{draw_sprite(SVodka,0,64,544)}
	if global.drinklist[i] = "gin"{draw_sprite(SGin,0,164,544)}
	if global.drinklist[i] = "rum"{draw_sprite(SRum,0,264,544)}
	if global.drinklist[i] = "whiskey"{draw_sprite(SWhiskey,0,364,544)}
}
// Same, but with toppings
for (i = 0; i < array_length_1d(global.toppinglist); i += 1){
	if global.toppinglist[i] = "rocks"{draw_sprite(SRocks,0,64,664)}
	if global.toppinglist[i] = "orange"{draw_sprite(SOrange,0,184,664)}
	if global.toppinglist[i] = "lime"{draw_sprite(SLime,0,304,664)}
	if global.toppinglist[i] = "lemon"{draw_sprite(SLemon,0,424,664)}
}

// Sets default draw color to white, if there are conflicts it is because of ScrClockTimer
draw_set_color(c_white)