depth = -y

if !global.paused
{
if distance_to_object(obj_player) < range
	{
	pickedup = true
	}
	
if pickedup = true
	{
	move_towards_point(obj_player.x,obj_player.y,magspd)
	magspd += 1
	}
	
if distance_to_object(obj_player) < 32
	{
	obj_player.xp += 1
	instance_destroy(self)
	}

timer -= 1

if timer <= 260 && timer > 100
	{
	image_alpha = .75
	}
if timer <= 100
	{
	image_alpha = .5
	}

if timer <= 0
	{
	instance_destroy(self)
	}
	
if xspd != 0
	{
	if xspd > 0
		{
		xspd -= .5
		}
	if xspd < 0
		{
		xspd += .5
		}
	}

if yspd < 0
	{
	yspd += .5
	}

if y > starty
	{
	yspd = 0
	}

y += yspd
x += xspd
}