paused = !paused
// Creates a screenshot to display while the game is paused
if(!sprite_exists(screenShot))
{
        screenShot = sprite_create_from_surface(application_surface,0,0,1920,1080,0,0,0,0)
}
if(paused = true) {
	// Stop level music
	audio_pause_all()
	//Play pause music
	audio_play_sound(snd_pause, 700, true)
}
else {
	audio_stop_sound(snd_pause)
	if(global.level = 2) {
		audio_resume_all()
	}
	
}
