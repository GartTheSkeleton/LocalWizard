if (!global.paused) {
	keyup = keyboard_check(vk_up)
	keydown = keyboard_check(vk_down)
	keyleft = keyboard_check(vk_left)
	keyright = keyboard_check(vk_right)
	
	keyup = keyboard_check(ord("W"))
	keydown = keyboard_check(ord("S"))
	keyleft = keyboard_check(ord("A"))
	keyright = keyboard_check(ord("D"))

	depth = -y

	movex = keyright - keyleft
	movey = keydown - keyup
	
	xspd = spd*movex
	yspd = spd*movey

	if place_meeting(x+xspd,y,obj_wall)
		{
		movex = 0
		}
	if place_meeting(x,y+yspd,obj_wall)
		{
		movey = 0
		}

	x += movex*spd
	y += movey*spd


	if attackcooldown > 0 
		{
		attackcooldown -= 1
		}
	if repaircooldown > 0
		{
		repaircooldown -= 1
		}

	nearestobject = instance_nearest(x,y,obj_object)

	if nearestobject.object_index = obj_structure
		{
		if nearestobject.hp >= nearestobject.maxhp or repaircooldown != 0
			{
			nearestobject = instance_nearest(x,y,obj_enemy)
			}
		}

	if distance_to_object(nearestobject) <= range
		{
		action = true
		}
	else
		{
		action = false
		}
	
	if action = true
		{
		targetspotx = nearestobject.x
		targetspoty = nearestobject.y
	
		if nearestobject.object_index = obj_enemy
			{
			//attack
			if attackcooldown = 0
				{
				instance_create_depth(x,y,depth+1,obj_playerattack)
				if level >= 2
					{
					with instance_create_depth(x,y,depth,obj_playerattack)
						{
						calculate_angle(15)
						}
					with instance_create_depth(x,y,depth,obj_playerattack)
						{
						calculate_angle(345)
						}
					}
				if level >= 3
					{
					with instance_create_depth(x,y,depth+1,obj_playerattack)
						{
						calculate_angle(45)
						}
					with instance_create_depth(x,y,depth+1,obj_playerattack)
						{
						calculate_angle(315)
						}
					}
				if level >= 4
					{
					with instance_create_depth(x,y,depth+1,obj_playerattack)
						{
						calculate_angle(90)
						}
					with instance_create_depth(x,y,depth+1,obj_playerattack)
						{
						calculate_angle(270)
						}
					}
				if level >= 5
					{
					with instance_create_depth(x,y,depth,obj_playerattack)
						{
						calculate_angle(180)
						}
					with instance_create_depth(x,y,depth,obj_playerattack)
						{
						calculate_angle(135)
						}
					with instance_create_depth(x,y,depth,obj_playerattack)
						{
						calculate_angle(225)
						}
					}
				if level >= 6
					{
					with instance_create_depth(x,y,depth,obj_playerattack)
						{
						calculate_angle(30)
						}
					with instance_create_depth(x,y,depth,obj_playerattack)
						{
						calculate_angle(330)
						}
					}
				if level >= 7
					{
					with instance_create_depth(x,y,depth,obj_playerattack)
						{
						calculate_angle(60)
						}
					with instance_create_depth(x,y,depth,obj_playerattack)
						{
						calculate_angle(300)
						}
					with instance_create_depth(x,y,depth,obj_playerattack)
						{
						calculate_angle(75)
						}
					with instance_create_depth(x,y,depth,obj_playerattack)
						{
						calculate_angle(285)
						}
					}
				if level >= 8
					{
					with instance_create_depth(x,y,depth,obj_playerattack)
						{
						calculate_angle(165)
						}
					with instance_create_depth(x,y,depth,obj_playerattack)
						{
						calculate_angle(150)
						}
					with instance_create_depth(x,y,depth,obj_playerattack)
						{
						calculate_angle(210)
						}
					with instance_create_depth(x,y,depth,obj_playerattack)
						{
						calculate_angle(195)
						}
					}
				if level >= 9
					{
					with instance_create_depth(x,y,depth,obj_playerattack)
						{
						calculate_angle(240)
						}
					with instance_create_depth(x,y,depth,obj_playerattack)
						{
						calculate_angle(255)
						}
					with instance_create_depth(x,y,depth,obj_playerattack)
						{
						calculate_angle(105)
						}
					with instance_create_depth(x,y,depth,obj_playerattack)
						{
						calculate_angle(120)
						}
					}
				
			
				attackcooldown = attackspeed
				}
			}
		if nearestobject.object_index = obj_structure
			{
			//repair
			if repaircooldown = 0
				{
				nearestobject.hp += repair
				repaircooldown = repairspeed
				instance_create_depth(x,y-(sprite_height/2),depth-1,obj_healbloom)
				}
			}
		}

	if xp >= leveltable
		{
		level += 1
		xp -= leveltable
		leveltable *= 2
		}
		
	
	if iframe = true
		{
		counter += 1
		if counter > 45
			{
			iframe = false
			counter = 0
			}
		}
}