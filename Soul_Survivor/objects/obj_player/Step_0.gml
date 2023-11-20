if keyboard_check(vk_left) or keyboard_check(ord("A")) {
	x -= walk_speed
}
if keyboard_check(vk_right) or keyboard_check(ord("D")) {
	x += walk_speed
}
if keyboard_check(vk_down) or keyboard_check(ord("S")) {
	y += walk_speed
}
if keyboard_check(vk_up) or keyboard_check(ord("W")) {
	y -= walk_speed
}

