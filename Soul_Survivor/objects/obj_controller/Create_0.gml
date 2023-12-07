
// calls alarm 0 after 20 steps to get player location
alarm[0] = 20

global.level = 1

audio_play_sound(snd_backround_music,0,true)

// spawns 1 zombie every 180 steps
zombieSpawnAlarm = 180
alarm[1] = zombieSpawnAlarm

// spawns 1 wraith every 300 steps
wraithSpawnAlarm = 300
alarm[2] = wraithSpawnAlarm

// spawns 1 bat every 180 steps
batSpawnAlarm = 180
alarm[3] = batSpawnAlarm

// spawns 1 scarab every 120 steps
scarabSpawnAlarm = 120
alarm[4] = scarabSpawnAlarm

// spawns 1 mummy every 240 steps
mummySpawnAlarm = 240
alarm[5] = mummySpawnAlarm

// timer
t_min = 10
t_sec = 0
t_mil = 0 
alarm[6] = 6
timerX = window_get_width() / 2
timerY = 24
