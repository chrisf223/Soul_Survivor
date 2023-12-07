if !(instance_exists(obj_enemyParent)){
	audio_play_sound(snd_player_death,0,false)
	audio_stop_sound(snd_backround_music)
	room_goto(Room_Lose)
}


