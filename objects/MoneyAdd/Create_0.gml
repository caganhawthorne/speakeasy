depth = -8
// Checks if the player has just met a lose condition, deletes self if true
if global.customertype = "cop" {instance_destroy()}
// Sets the text to be drawn and its opacity
text = global.pay
text_alpha = 1
// Adds the pay to the total money
global.money += global.pay

//Coin Sound played if paid
if(global.pay > 0) {
	//Random coin sound
			//Create randomized variable
			coinJarsnd = irandom(3)
			// Play certain sound at random
			if coinJarsnd = 1 {audio_play_sound(snd_tips1, 500, false);}
			if coinJarsnd = 2 {audio_play_sound(snd_tips2, 500, false);}
			if coinJarsnd = 3 {audio_play_sound(snd_tips3, 500, false);}
}
else {
	audio_play_sound(snd_moneyLost, 500, false);
}