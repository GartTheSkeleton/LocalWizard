event_inherited()

if distance_to_object(mytarget) > 128
	{
	idletimer += 1
	
	if idletimer >= 230
		{
		var _flip = choose(1,-1)
		
		facing = _flip
		image_xscale = facing
		
		//if moving = false
		//	{
		//	moving = true
		//	}
		//else
		//	{
		//	moving = false
		//	}
		
		
		moving = !moving
		
		idletimer = 0
		}
	else
		{
		speed = 0
		}
	if moving = true
			{
			x += spd*facing
			if x >= room_width or x <= 0
				{
				if facing = 1
					{facing = -1}
				else
					{facing = 1}
				}
			}
	}

if obj_chronos.tod = "Day" and instance_number(obj_enemy) = 1
	{
	move_towards_point(obj_player.x,obj_player.y,1)
	if distance_to_point(obj_player.x,obj_player.y) < 64
		{speed = 0}
	}

