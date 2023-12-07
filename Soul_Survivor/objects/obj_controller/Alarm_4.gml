
// deactiveates enemies outside of the viewport
var _vx = camera_get_view_x(view_camera[0])
var _vy = camera_get_view_y(view_camera[0])
var _vw = camera_get_view_width(view_camera[0])
var _vh = camera_get_view_height(view_camera[0])
instance_activate_region(_vx - 250, _vy - 250, _vw + 250, _vh + 250, 1)

instance_deactivate_region(_vx - 300, _vy - 300, _vw + 300, _vh + 300, 0, 1)

// spawns enemies in a random direction around the player outside of the viewport
repeat(1) {
	var dir = irandom_range(0,360)
	var XX = obj_player.x + lengthdir_x(600, dir)
	var YY = obj_player.y + lengthdir_y(600, dir)
	instance_create_layer(XX,YY, "Instances", obj_scarab)
}

alarm[4] = scarabSpawnAlarm


