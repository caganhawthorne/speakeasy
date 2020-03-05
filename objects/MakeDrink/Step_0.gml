// Reaaaally bad way of doing this but the simplest way I could think of
// Constantly rewrites the makercontains variable to see what is contained within the maker square
global.makercontains = []
// hascup makes sure that you have a cup selected first
if place_meeting(x,y,ShotGlass){
	global.makercontains[array_length_1d(global.makercontains)] = "shot"
	hascup = true
}
else if place_meeting(x,y,ChampagneGlass){
	global.makercontains[array_length_1d(global.makercontains)] = "champagne"
	hascup = true
}
else if place_meeting(x,y,MartiniGlass){
	global.makercontains[array_length_1d(global.makercontains)] = "martini"
	hascup = true
}
else {
	hascup = false
}

if hascup = true{
	if place_meeting(x,y,IceCube) {
		global.makercontains[array_length_1d(global.makercontains)] = "ice"
	}
	else {global.makercontains[array_length_1d(global.makercontains)] = "no ice"}
	if place_meeting(x,y,Whiskey){
		global.makercontains[array_length_1d(global.makercontains)] = "whiskey"
		hasdrink = true
	}
	else if place_meeting(x,y,Vodka){
		global.makercontains[array_length_1d(global.makercontains)] = "vodka"
		hasdrink = true
	}
	else if place_meeting(x,y,Gin){
		global.makercontains[array_length_1d(global.makercontains)] = "gin"
		hasdrink = true
	}
	else {
	hasdrink = false
	}
	if place_meeting(x,y,Lemon){
		global.makercontains[array_length_1d(global.makercontains)] = "lemon"
	}
	if place_meeting(x,y,Lime){
		global.makercontains[array_length_1d(global.makercontains)] = "lime"
	}
	if place_meeting(x,y,Strawberry){
		global.makercontains[array_length_1d(global.makercontains)] = "strawberry"
	}
}
// Adds the distinction of "none" if there is no topping
if array_length_1d(global.makercontains) = 3 {global.makercontains[array_length_1d(global.makercontains)] = "none"}