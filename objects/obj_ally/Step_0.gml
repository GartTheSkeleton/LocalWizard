depth = -y
mytarget = instance_nearest(x,y,obj_enemy)
if (x > room_width) or (x < 0) or (y > room_height) or (y < 0)
	{
	move_towards_point(room_width/2,room_height/2,3);
	}
else if distance_to_object(mytarget) < 12
	{
	
	move_towards_point(mytarget.x,mytarget.y,spd)
	attackcooldown += 1
	if distance_to_object(instance_nearest(x,y,obj_enemy)) < 32
		{
		var _x = calculate_midpoint(mytarget)
		speed = 0
		if attackcooldown > 45
			{
			instance_create_depth(_x[0],_x[1],depth,obj_allyattack)
			attackcooldown = 0
			}
		
		}
	}
