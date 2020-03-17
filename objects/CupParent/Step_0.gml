// Moves the cup back if clear is clicked
if global.clear = true {
	x = firstx
	y = firsty
	audioPlayed = false;
}

// Moves with mouse if held onto
if moving = true and global.grab = true {
	x = mouse_x
	y = mouse_y
	// display the text on the DrinkMake sprite
	with MakeDrink {image_index = 0}
}

if instance_number(Customer) = 0 and instance_number(SpecialCustomer) = 0{
	// Sends them back to their first position if the player submits an order
	x = firstx
	y = firsty
	with MakeDrink {image_index = 0}
}

// Change the sprite based on contents
if place_meeting(x,y,MakeDrink) and place_meeting(x,y,DrinkParent) and place_meeting(x,y,IceCube) {image_index = 3}
else if place_meeting(x,y,MakeDrink) and place_meeting(x,y,DrinkParent) {image_index = 1}
else if place_meeting(x,y,MakeDrink) and place_meeting(x,y,IceCube) {image_index = 2}
else {image_index = 0}

// Changes the color of the cup depending on what is in it
if place_meeting(x,y,MakeDrink) {
	for (i = 0; i < array_length_1d(global.makercontains); i++) {
		// This drink ones have to be written like this and I don't know why
		if place_meeting(Whiskey.x,Whiskey.y,MakeDrink) {image_blend = make_color_rgb(148,117,63)}
		else if global.makercontains[i] = "lime" {image_blend = make_color_rgb(101,235,134)}
		else if global.makercontains[i] = "strawberry" {image_blend = make_color_rgb(235,101,125)}
		else if global.makercontains[i] = "lemon" {image_blend = make_color_rgb(215,235,101)}
		else if place_meeting(Gin.x,Gin.y,MakeDrink) or place_meeting(Vodka.x,Vodka.y,MakeDrink) {image_blend = make_color_rgb(219,219,219)}
		else {image_blend = initblend}
	}
}
else {image_blend = initblend}