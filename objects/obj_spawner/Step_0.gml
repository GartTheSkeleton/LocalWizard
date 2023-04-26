if (!global.paused) {
	timer += 1

	if timer > 120
		{
		for (i=0;i<(level*3);i++)
			{
			instance_create_depth(x,y,depth,obj_enemy)
			xp += 1
			newxy = choose(
			[room_width/2,-100],
			[room_width/2,room_height+100],
			[-100,-100],
			[room_width+100,-100],
			[-100,room_height+100],
			[room_width/4,-100],
			[room_width/4,room_height+100],
			[room_width+100,room_height+100],
			[room_width+100,room_height/2]
			)
			x = newxy[0]
			y = newxy[1]
			}
		timer = 0
		}

	if xp > level*200
		{
		level += 1
		xp = 0
		}
}