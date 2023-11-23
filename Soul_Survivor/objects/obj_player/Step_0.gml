if player_direction == direction_facing.left or player_direction == direction_facing.right {
	sprite_index = spr_playerIdleSide
}
if player_direction == direction_facing.up {
	sprite_index = spr_playerIdleUp
}
if player_direction == direction_facing.down {
	sprite_index = spr_playerIdleDown
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


if canShootPistol == true {

	canShootPistol = false
	alarm[0] = 45
	instance_create_layer(x,y,"Instances",obj_pistolBullet)
}

randomInt = irandom(3)
if canShootAR == true {
	canShootAR = false
	alarm[1] = 200
	instance_create_layer(x,y,"Instances",obj_arBullet)
}

if canShootRocketLauncher == true {
	canShootRocketLauncher = false
	alarm[3] = 500
	instance_create_layer(x,y,"Instances",obj_rocket)
}


if health <= 0 {
	instance_destroy()
}

if experience == levelUpNumber {
	levelUpNumber += 50
	level ++
}

