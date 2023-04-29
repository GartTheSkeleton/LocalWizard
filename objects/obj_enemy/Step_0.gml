if (!global.paused)
	{
	depth = -y
	
	if distance_to_object(obj_structure) <= atkrange
		{
		speed = 0
		mytarget = instance_nearest(x,y,obj_structure)
		
		attackwindup += 1
		
		if attackwindup >= 60
			{
			readytoattack = true
			}
		
		if readytoattack = true
			{
			dir = calculate_direction(mytarget)
			switch dir
				{
				case "above":
				instance_create_depth(x,y-atkrange,depth,obj_enemyattack)
				break;
				
				case "below":
				instance_create_depth(x,y+atkrange,depth,obj_enemyattack)
				break;
				
				case "left":
				instance_create_depth(x-atkrange,y,depth,obj_enemyattack)
				break;
				
				case "right":
				instance_create_depth(x+atkrange,y,depth,obj_enemyattack)
				break;
				
				default:
				instance_create_depth(x,y,depth,obj_enemyattack)
				break;
				}
			readytoattack = false
			attackwindup = 0
			}
		//attack the structure
		}
	else if distance_to_object(obj_player) <= atkrange
		{
		speed = 0
		speed = 0
		mytarget = instance_nearest(x,y,obj_player)
		
		attackwindup += 1
		
		if attackwindup >= 60
			{
			readytoattack = true
			}
		
		if readytoattack = true
			{
			dir = calculate_direction(mytarget)
			switch dir
				{
				case "above":
				instance_create_depth(x,y-atkrange,depth,obj_enemyattack)
				break;
				
				case "below":
				instance_create_depth(x,y+atkrange,depth,obj_enemyattack)
				break;
				
				case "left":
				instance_create_depth(x-atkrange,y,depth,obj_enemyattack)
				break;
				
				case "right":
				instance_create_depth(x+atkrange,y,depth,obj_enemyattack)
				break;
				
				default:
				instance_create_depth(x,y,depth,obj_enemyattack)
				break;
				}
			readytoattack = false
			attackwindup = 0
			}
		
		}
	else if distance_to_object(obj_ally) <= atkrange
		{
		speed = 0
		speed = 0
		mytarget = instance_nearest(x,y,obj_ally)
		
		attackwindup += 1
		
		if attackwindup >= 60
			{
			readytoattack = true
			}
		
		if readytoattack = true
			{
			dir = calculate_direction(mytarget)
			switch dir
				{
				case "above":
				instance_create_depth(x,y-atkrange,depth,obj_enemyattack)
				break;
				
				case "below":
				instance_create_depth(x,y+atkrange,depth,obj_enemyattack)
				break;
				
				case "left":
				instance_create_depth(x-atkrange,y,depth,obj_enemyattack)
				break;
				
				case "right":
				instance_create_depth(x+atkrange,y,depth,obj_enemyattack)
				break;
				
				default:
				instance_create_depth(x,y,depth,obj_enemyattack)
				break;
				}
			readytoattack = false
			attackwindup = 0
			}
		
		}
	else
		{
		targetstructure = instance_nearest(x,y,obj_structure)
	
		if distance_to_object(obj_player) < distance_to_object(targetstructure)
			{
			move_towards_point(obj_player.x,obj_player.y,spd)
			}
		else if distance_to_object(instance_nearest(x,y,obj_ally)) < distance_to_object(targetstructure)
			{
			move_towards_point(instance_nearest(x,y,obj_ally).x,instance_nearest(x,y,obj_ally).y,spd)
			}
		else
			{
			move_towards_point(targetstructure.x,targetstructure.y,spd)
			}
		}
	
	
	if hp <= 0
		{
		var _mycorpse = instance_create_depth(x,y,depth,obj_corpse)
			{
			_mycorpse.sprite_index = deathsprite
			}
		
		var _choose = choose(1,1,1,2,2,3)
	
		for (i=0;i<_choose;i++)
			{
			instance_create_depth(x,y,depth,obj_xp)
			}
	
	
		instance_destroy(self)
		}
	}
else
	{
	speed = 0
	}