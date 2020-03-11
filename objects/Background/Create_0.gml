/// Background music
audio_stop_all();

if global.level = 1 {audio_play_sound(m_level1, 700, true)}
if global.level = 2 {audio_play_sound(m_level2, 700, true)}
if global.level = 3 {audio_play_sound(m_level3, 700, true)}
if global.level = 4 {audio_play_sound(m_level4, 700, true)}
if global.level = 5 {audio_play_sound(m_level5, 700, true)}