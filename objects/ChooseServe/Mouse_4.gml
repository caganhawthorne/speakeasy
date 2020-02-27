// Choose to serve or not
if image_index = 0 
	{
	global.choice = true
	room_goto(RMakeDrink);
	}
else {global.choice = false}
instance_destroy()