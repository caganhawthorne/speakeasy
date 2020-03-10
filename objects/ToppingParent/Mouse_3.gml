// Send it back to where it first was if not in the drink-making square or if there is already a cup
if place_meeting(x,y,MakeDrink) and !place_meeting(x,y,ToppingParent) and place_meeting(x,y,CupParent){
	moving = false
	global.grab = false
	x = MakeDrink.x
	y = MakeDrink.y
	// PLACES THE SPRITE BEHIND EVERYTHING SO THAT YOU DON'T SEE IT
	depth = 1
	// Sets the MakeDrink sprite to its second image
	with MakeDrink {image_index = 1}
}
else {
	moving = false
	global.grab = false
	x = firstx
	y = firsty
}