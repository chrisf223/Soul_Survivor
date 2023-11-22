sprite_index = spr_playerIdle
x = clamp(x, sprite_width/2, room_width-sprite_width/2)
y = clamp(y, sprite_height/2, room_height-sprite_height/2)

if keyboard_check(vk_left) or keyboard_check(ord("A")){
	x -= walk_speed
	image_xscale = -1
	sprite_index = spr_playerRunning
	player_direction = direction_facing.left
	
}
if keyboard_check(vk_right) or keyboard_check(ord("D")) {
	x += walk_speed
	image_xscale = 1
	sprite_index = spr_playerRunning
	player_direction = direction_facing.right
}
if keyboard_check(vk_down) or keyboard_check(ord("S")) {
	y += walk_speed
	sprite_index = spr_playerRunning
	player_direction = direction_facing.down
}
if keyboard_check(vk_up) or keyboard_check(ord("W")) {
	y -= walk_speed
	sprite_index = spr_playerRunning
	player_direction = direction_facing.up
}
if  keyboard_check(vk_alt) {
	instance_destroy()
}


