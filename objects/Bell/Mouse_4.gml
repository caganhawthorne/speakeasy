// Allows for the code to work if the choose to serve option has already been interacted with and there is something being made currently

// Checks to see if the customer has requested "any" toppings
any = false

if global.topping = "any" {any = true}

// Any toppings version
if instance_number(ChooseServe) = 0 and array_length_1d(global.makercontains) > 0 and any = true{
	if global.customertype = "cop" {
		global.served = true
		room_goto(LoseRoom)
		}
	else {
		correct = false
		if global.makercontains[0] = global.order[0] and global.makercontains[1] = global.order[1] {correct = true}
		else {correct = false}
		if correct = true {global.served = true}
		else {global.choice = false}
		// The customer currently just leaves if you get the order wrong. Works the same way as denying them service
	}
	
}

// Toppings version
if instance_number(ChooseServe) = 0 and array_length_1d(global.makercontains) > 0 and any = false{
	if global.customertype = "cop" {
		global.served = true
		room_goto(LoseRoom)
		}
	else {
		// Check to see if the drink made is correct. If so, served = true
		// Final check
		correct = false
		// See how many string variables are shared between order and makercontains
		if global.order = global.makercontains {correct = true}
		for (i = 0; i < array_length_1d(global.makercontains); i += 1){
			for (j = 0; j < array_length_1d(global.order); j += 1){
				if global.makercontains[i] = global.order[j] {correct = true}
				else {correct = false}
			}
		}
		if correct = true {
			global.served = true
			//Random coin sound
			//Create randomized variable
			coinJarsnd = irandom(3)
			// Play certain sound at random
			if coinJarsnd = 1 {audio_play_sound(snd_tips1, 500, false);}
			if coinJarsnd = 2 {audio_play_sound(snd_tips2, 500, false);}
			if coinJarsnd = 3 {audio_play_sound(snd_tips3, 500, false);}
			}
		else {global.choice = false}
		// The customer currently just leaves if you get the order wrong. Works the same way as denying them service
	}
}

// Same as clear
global.clear = true
// Gives the objects time to move back
alarm[0] = room_speed

//Bell sounds when clicked
audio_play_sound(snd_bell, 400, false)