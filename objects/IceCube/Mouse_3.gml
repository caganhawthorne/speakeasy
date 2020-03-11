// Send it back to where it first was if not in the drink-making square

if place_meeting(x,y,MakeDrink) and MakeDrink.hascup and !place_meeting(x,y,IceBucket){
	//Play pouring sounds
	if (audioPlayed = false) 
	{
		//Shot glass pour w/ & without ice
		if position_meeting(x,y,DrinkParent) and global.makercontains[0] = "shot"
		{
			audio_play_sound(snd_s_iceF, 1000, false);
		}
		else if global.makercontains[0] = "shot"
		{
			audio_play_sound(snd_s_iceE, 1000, false);
		}
		//Flute glass pour w/ & without ice
		else if position_meeting(x,y,DrinkParent) and global.makercontains[0] = "champagne"
		{
			audio_play_sound(snd_f_iceF, 1000, false);
		}
		else if global.makercontains[0] = "champagne"
		{
			audio_play_sound(snd_f_iceE, 1000, false);
		}
		//Martini glass pour w/ & without ice
		else if position_meeting(x,y,DrinkParent) and global.makercontains[0] = "martini"
		{
			audio_play_sound(snd_m_iceF, 1000, false);
		}
		else if global.makercontains[0] = "martini"
		{
			audio_play_sound(snd_m_iceE, 1000, false);
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