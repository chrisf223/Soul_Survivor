if player_direction == direction_facing.left or player_direction == direction_facing.right {
	sprite_index = spr_playerIdleSide
}
if player_direction == direction_facing.up {
	sprite_index = spr_playerIdleUp
}
if player_direction == direction_facing.down {
	sprite_index = spr_playerIdleDown
}

if currentHealth <= 0 {
	global.gameOver = true
}

x = clamp(x, sprite_width/2, room_width-sprite_width/2)
y = clamp(y, sprite_height/2, room_height-sprite_height/2)

if keyboard_check(vk_left) or keyboard_check(ord("A")){
	x -= walk_speed
	image_xscale = -1
	sprite_index = spr_playerRunningSide
	player_direction = direction_facing.left
	
}
if keyboard_check(vk_right) or keyboard_check(ord("D")) {
	x += walk_speed
	image_xscale = 1
	sprite_index = spr_playerRunningSide
	player_direction = direction_facing.right
}
if keyboard_check(vk_down) or keyboard_check(ord("S")) {
	y += walk_speed
	if !(keyboard_check(vk_left)) and !(keyboard_check(ord("A"))) and !(keyboard_check(vk_right)) and !(keyboard_check(ord("D"))) {
		sprite_index = spr_playerRunningDown
		player_direction = direction_facing.down
	}
}
if keyboard_check(vk_up) or keyboard_check(ord("W")) {
	y -= walk_speed
	if !(keyboard_check(vk_left)) and !(keyboard_check(ord("A"))) and !(keyboard_check(vk_right)) and !(keyboard_check(ord("D"))) {
		sprite_index = spr_playerRunningUp
		player_direction = direction_facing.up
	}
}


if experience == levelUpNumber {
	levelUpNumber += 50
	level ++
}

slot[0] = "pistol"
slot[1] = "assault rifle"
slot[2] = "submachine gun"
slot[3] = "grenade launcher"
slot[4] = "rocket launcher"
slot[5] = "sniper rifle"



