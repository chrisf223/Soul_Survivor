if !(instance_exists(obj_enemyParent)){
	audio_play_sound(snd_player_death,0,false)
	room_goto(Room_Lose)
}


