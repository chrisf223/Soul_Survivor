if canHitPlayer = true {
	canHitPlayer = false
	other.currentHealth -= damage
	alarm[1] = 30
}
	
x -= dcos(point_direction(x, y, other.x, other.y))
y += dsin(point_direction(x, y, other.x, other.y))




