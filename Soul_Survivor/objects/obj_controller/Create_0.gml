
// calls alarm 0 after 20 steps to get player location
alarm[0] = 20

global.level = 1

audio_play_sound(snd_backround_music,0,true)

// spawns 1 zombie every 360 steps
zombieSpawnAlarm = 360
alarm[1] = zombieSpawnAlarm

// spawns 1 wraith every 900 steps
wraithSpawnAlarm = 900
alarm[2] = wraithSpawnAlarm

// spawns 1 bat every 330 steps
batSpawnAlarm = 330
alarm[3] = batSpawnAlarm

// spawns 1 scarab every 300 steps
scarabSpawnAlarm = 300
alarm[4] = scarabSpawnAlarm

// spawns 1 mummy every 420 steps
mummySpawnAlarm = 420
alarm[5] = mummySpawnAlarm

// timer
t_min = 5
t_sec = 0
t_mil = 0 
alarm[6] = 6
timerX = window_get_width() / 2
timerY = 24

