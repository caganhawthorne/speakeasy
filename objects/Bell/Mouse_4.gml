// Allows for the code to work if the choose to serve option has already been interacted with and there is something being made currently

// Checks to see if the customer has requested "any" toppings

// Fixes annoying crash when an idiot mashes the bell
if (!instance_exists(Speech))
{
}

else {
	any = false

	if global.topping = "any" {any = true}

	// Mobster version
	if instance_number(ChooseServe) = 0 and array_length_1d(global.makercontains) = 4 and instance_exists(Mobster) {
		global.mobsterclicked = true
		correct = true
		for (i = 0; i < array_length_1d(global.makercontains); i++) {
			if global.makercontains[i] = "ice" or global.makercontains[i] = "whiskey" or global.makercontains[i] = "none" or global.makercontains[i] = "shot" {cn++}
		}
		if cn != 4 {correct = false}
		if correct = true {global.mobsterserved = true}
		else {global.mobsterserved = false}
	}

	// Kid version
	else if instance_number(ChooseServe) = 0 and array_length_1d(global.makercontains) = 4 and global.customertype = "special" and Customer.pick = 0 {
		global.served = true
	}

	// Any toppings version
	else if Speech.kid = false and instance_number(ChooseServe) = 0 and array_length_1d(global.makercontains) = 4 and any = true{
		if global.customertype = "cop" {
			global.served = true
			global.losemessage = "You served a cop."
			room_goto(LoseRoom)
			}
		else {
			correct = false
			if global.makercontains[0] = global.order[0] and global.makercontains[1] = global.order[1] and global.makercontains[2] = global.order[2]{correct = true}
			else {correct = false}
			if correct = true {global.served = true}
			else {
				global.choice = false
				audio_play_sound(snd_moneyLost,500,false)
			}
			// The customer currently just leaves if you get the order wrong. Works the same way as denying them service
		}
	
	}

	// Toppings version
	else if Speech.kid = false and instance_number(ChooseServe) = 0 and array_length_1d(global.makercontains) = 4 and any = false{
		if global.customertype = "cop" {
			global.served = true
			global.losemessage = "You served a cop."
			room_goto(LoseRoom)
			}
		else {
			// Check to see if the drink made is correct. If so, served = true
			// Final check
			correct = true
			i = 0
			while (i < array_length_1d(global.makercontains) and correct) {
				if global.makercontains[i] != global.order[i] {correct = false}
				i++	
			}
		
			if correct = true {
				global.served = true
				}
			else {
				global.choice = false
				audio_play_sound(snd_moneyLost,500,false)
			}
			// The customer currently just leaves if you get the order wrong. Works the same way as denying them service
		}
	}

	// Same as clear
	global.clear = true
	// Gives the objects time to move back
	alarm[0] = room_speed
}

//Bell sounds when clicked
audio_play_sound(snd_bell, 400, false)