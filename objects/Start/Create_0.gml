// TESTER TO START GAME. CURRENTLY USED TO INITIALIZE
// SOME MAJOR GLOBAL VARIABLES. DO SOMETHING WITH THESE LATER

// Sets the global level
global.level = 1
// Sets the current money total
global.money = 0

audio_stop_all()
audio_play_sound(m_menu, 1000, true);