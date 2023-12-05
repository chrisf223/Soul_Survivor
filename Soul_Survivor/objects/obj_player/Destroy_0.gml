if player_direction == direction_facing.up {
	instance_create_layer(x,y,"Instances",obj_playerDeathUp)
}
if player_direction == direction_facing.down {
	instance_create_layer(x,y,"Instances",obj_playerDeathDown)
}
if player_direction == direction_facing.right or player_direction == direction_facing.left{
	instance_create_layer(x,y,"Instances",obj_playerDeathSide)
}




