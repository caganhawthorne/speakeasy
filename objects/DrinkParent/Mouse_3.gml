// Send it back to where it first was if not in the drink-making square

if place_meeting(x,y,MakeDrink) and MakeDrink.hascup and !place_meeting(x,y,DrinkParent){
	
	if (audioPlayed = false) {
		if global.makercontains[0] = "shot"
		{
			soundPick = choose(snd_s_down0,snd_s_pour1) 
			audio_play_sound(soundPick, 1000, false);
		}
		if global.makercontains[0] = "champagne"
		{
			audio_play_sound(snd_f_pour0, 1000, false);
		}
		if global.makercontains[0] = "martini"
		{
			audio_play_sound(snd_m_pour0, 1000, false);
		}
		audioPlayed = true;
	}
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