// Sets it to win if win room and loss if it's lose room
audio_stop_all()
if room = WinRoom {
	image_index = 0
	audio_play_sound(m_win,500,true)
}
else {
	image_index = 1
	audio_play_sound(m_lose,500,true)
}

