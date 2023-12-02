t_mil -= 1

if t_mil = -1 {
	t_mil = 9
	t_sec -= 1
}

if t_sec = -1 {
	t_sec = 59
	t_min -= 1
}

if !(t_sec =0 and t_min = 0 and t_mil = 0) {
	alarm[0] = fps/10
} 
else {
	room_goto(Room_Win)
}


