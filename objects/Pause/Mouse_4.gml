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
	audio_play_sound(m_pause, 700, true)
}
//When resuming game, resume music
else {
	//Stop pause music
	audio_stop_sound(m_pause)
	//Resume level music
	if(global.level = 1) {
		audio_resume_all()
	}
	if(global.level = 2) {
		audio_resume_all()
	}
	if(global.level = 3) {
		audio_resume_all()
	}
	if(global.level = 4) {
		audio_resume_all()
	}
	if(global.level = 5) {
		audio_resume_all()
	}
}
