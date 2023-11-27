/// @description Insert description here
// You can write your code in this editor

if !instance_exists(obj_bat)
{
	repeat(wave) {
		instance_create_layer(x, y, "Instances", obj_bat)
	}
	wave += 1
}




