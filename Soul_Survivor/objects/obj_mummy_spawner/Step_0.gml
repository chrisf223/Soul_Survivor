/// @description Insert description here
// You can write your code in this editor


if !instance_exists(obj_mummy)
{
	repeat(wave) {
		instance_create_layer(x, y, "Instances", obj_mummy)
	}
	wave += 1
}



