/// @description Insert description here
// You can write your code in this editor

var grenade = instance_create_layer(x,y,"Instances",obj_grenade)

grenade.direction = irandom_range(45, 135)	
grenade.speed = 4
grenade.gravity = 0.1
grenade.friction = 0.01
