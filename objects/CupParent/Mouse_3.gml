// Send it back to where it first was if not in the drink-making square or if there is already a cup
if place_meeting(x,y,MakeDrink) and !place_meeting(x,y,CupParent){
	//Glass sound effects
	if (audioPlayed = false) {
		if object_get_name(object_index) = ShotGlass 
		{
			//audio_play_sound(snd_s_down0, 600, false);
			soundPick0 = choose(snd_s_down0, snd_s_down1) 
			audio_play_sound(soundPick0, 1000, false);
		}
		if object_get_name(object_index) = MartiniGlass 
		{
			//audio_play_sound(snd_m_down0, 600, false);
			soundPick1 = choose(snd_m_down0, snd_m_down1) 
			audio_play_sound(soundPick1, 1000, false);
		}
		if object_get_name(object_index) = ChampagneGlass 
		{
			//audio_play_sound(snd_f_down0, 600, false);
			soundPick2 = choose(snd_f_down0, snd_f_down1) 
			audio_play_sound(soundPick2, 1000, false);
		}
		audioPlayed = true;
	}
	moving = false
	global.grab = false
	x = MakeDrink.x
	y = MakeDrink.y
	// Sets the MakeDrink sprite to its second image
	with MakeDrink {image_index = 1}
}
else {
	moving = false
	global.grab = false
	x = firstx
	y = firsty
}