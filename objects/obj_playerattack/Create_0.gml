event_inherited();

targetx = obj_player.targetspotx
targety = obj_player.targetspoty

damage = obj_player.attackdamage

// Calculate the direction from the spawn point to the target point
direction = point_direction(x, y, targetx, targety);

// Set the bullet's speed (adjust the value as needed)
speed = 12;

