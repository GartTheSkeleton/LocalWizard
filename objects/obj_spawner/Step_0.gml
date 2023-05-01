// Spawning logic
spawn_timer++;

if obj_chronos.tod = "Night"
{
	if (spawn_timer >= spawn_interval/global.day) {
	    instance_create_layer(x, y, "Instances", currentenemy);
	    spawn_timer = 0;
	}
}

// Move spawner 15 degrees left or right around the room's edge
angle += choose(-move_angle, move_angle,move_angle*2,-move_angle*2,move_angle/2,-move_angle/2);

if global.day > 2
	{
	currentenemy = choose(obj_enemy,obj_enemy,obj_enemy,obj_orc)
	}
	
if global.day > 5
	{
	currentenemy = choose(obj_enemy,obj_enemy,obj_orc)
	}


// Update the spawner's position
x = room_width/2  + ((room_width) * cos(degtorad(angle)));
y = room_height/2  + ((room_height) * sin(degtorad(angle)));
