target = obj_enemyParent.instance_nearest(x,y,obj_enemyParent)

direction = point_direction(x,y,target.x,target.y)
speed = bullet_speed
image_angle = direction
if phy_angular_velocity >= 0 and phy_angular_velocity<= 90 {
	image_angle = 90
}
	
